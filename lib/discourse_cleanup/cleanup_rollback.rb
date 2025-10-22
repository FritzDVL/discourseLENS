# frozen_string_literal: true

module DiscourseCleanup
  class CleanupRollback
    include HasErrors

    def initialize(plugin_name, opts = {})
      @plugin_name = plugin_name
      @opts = opts
      @backup_path = opts[:backup_path]
    end

    def restore_plugin
      log "Starting rollback for plugin: #{@plugin_name}"
      
      DiscourseCleanup.mark_as_running!
      
      begin
        success = true
        success &= validate_backup_exists
        success &= load_backup_metadata
        success &= restore_plugin_files
        success &= restore_plugin_database_data
        success &= restore_plugin_site_settings
        success &= validate_restoration
        
        if success
          log "Successfully restored plugin: #{@plugin_name}"
          { success: true, plugin_name: @plugin_name }
        else
          log "Failed to restore plugin: #{@plugin_name}"
          { success: false, errors: @errors }
        end
      rescue => e
        log "Error during plugin restoration: #{e.message}"
        { success: false, errors: [e.message] }
      ensure
        DiscourseCleanup.mark_as_not_running!
      end
    end

    def self.find_latest_backup(plugin_name)
      backup_dirs = Dir.glob(File.join(DiscourseCleanup.backup_path, "#{plugin_name}_*"))
                       .select { |f| File.directory?(f) }
                       .sort_by { |f| File.mtime(f) }
      
      backup_dirs.last
    end

    private

    def validate_backup_exists
      @backup_path ||= self.class.find_latest_backup(@plugin_name)
      
      unless @backup_path && Dir.exist?(@backup_path)
        add_error("No backup found for plugin: #{@plugin_name}")
        return false
      end
      
      log "Found backup at: #{@backup_path}"
      true
    end

    def load_backup_metadata
      metadata_file = File.join(@backup_path, "metadata.json")
      
      unless File.exist?(metadata_file)
        add_error("Backup metadata not found: #{metadata_file}")
        return false
      end
      
      begin
        @metadata = JSON.parse(File.read(metadata_file))
        log "Loaded backup metadata for #{@metadata['plugin_name']} created at #{@metadata['created_at']}"
        true
      rescue => e
        add_error("Failed to load backup metadata: #{e.message}")
        false
      end
    end

    def restore_plugin_files
      begin
        plugin_backup_path = File.join(@backup_path, "files", @plugin_name)
        plugin_target_path = File.join(Rails.root, "plugins", @plugin_name)
        
        unless Dir.exist?(plugin_backup_path)
          add_error("Plugin files backup not found: #{plugin_backup_path}")
          return false
        end
        
        # Remove existing plugin directory if it exists
        FileUtils.rm_rf(plugin_target_path) if Dir.exist?(plugin_target_path)
        
        # Restore plugin files
        FileUtils.cp_r(plugin_backup_path, plugin_target_path)
        
        log "Restored plugin files to: #{plugin_target_path}"
        true
      rescue => e
        add_error("Failed to restore plugin files: #{e.message}")
        false
      end
    end

    def restore_plugin_database_data
      begin
        database_backup_file = File.join(@backup_path, "database", "#{@plugin_name}_data.json")
        
        unless File.exist?(database_backup_file)
          log "No database backup found, skipping database restoration"
          return true
        end
        
        backup_data = JSON.parse(File.read(database_backup_file))
        
        # Restore plugin store data
        restore_plugin_store_data(backup_data["plugin_store"] || {})
        
        # Restore table data (be very careful here)
        restore_table_data(backup_data["tables"] || {})
        
        log "Restored database data"
        true
      rescue => e
        add_error("Failed to restore database data: #{e.message}")
        false
      end
    end

    def restore_plugin_site_settings
      begin
        settings_backup_file = File.join(@backup_path, "settings", "#{@plugin_name}_settings.json")
        
        unless File.exist?(settings_backup_file)
          log "No site settings backup found, skipping settings restoration"
          return true
        end
        
        settings_data = JSON.parse(File.read(settings_backup_file))
        
        settings_data.each do |setting_name, setting_data|
          begin
            if SiteSetting.respond_to?("#{setting_name}=")
              SiteSetting.set(setting_name, setting_data["value"])
              log "Restored site setting: #{setting_name}"
            end
          rescue => e
            log "Warning: Could not restore site setting #{setting_name}: #{e.message}"
          end
        end
        
        log "Restored #{settings_data.count} site settings"
        true
      rescue => e
        add_error("Failed to restore site settings: #{e.message}")
        false
      end
    end

    def restore_plugin_store_data(plugin_store_data)
      plugin_store_data.each do |key, data|
        begin
          PluginStore.set(@plugin_name, key, data["value"])
          log "Restored plugin store entry: #{key}"
        rescue => e
          log "Warning: Could not restore plugin store entry #{key}: #{e.message}"
        end
      end
    end

    def restore_table_data(tables_data)
      tables_data.each do |table_name, rows|
        begin
          # Only restore tables that are safe and belong to the plugin
          next unless safe_to_restore_table?(table_name)
          
          # Create table if it doesn't exist (this is complex and might need manual intervention)
          log "Warning: Table restoration for #{table_name} may require manual intervention"
          
          # For now, just log what would be restored
          log "Would restore #{rows.count} rows to table: #{table_name}"
        rescue => e
          log "Warning: Could not restore table #{table_name}: #{e.message}"
        end
      end
    end

    def safe_to_restore_table?(table_name)
      # Only restore tables that clearly belong to the plugin
      plugin_prefix = @plugin_name.gsub("-", "_")
      table_name.include?(plugin_prefix)
    end

    def validate_restoration
      begin
        # Check if plugin files exist
        plugin_path = File.join(Rails.root, "plugins", @plugin_name)
        unless Dir.exist?(plugin_path)
          add_error("Plugin files were not restored properly")
          return false
        end
        
        # Run basic system validation
        validator = SystemValidator.new
        validation_result = validator.validate_core_functionality
        
        unless validation_result[:success]
          add_error("System validation failed after restoration: #{validation_result[:errors].join(', ')}")
          return false
        end
        
        log "Restoration validation passed"
        true
      rescue => e
        add_error("Failed to validate restoration: #{e.message}")
        false
      end
    end

    def log(message)
      Rails.logger.info("[DiscourseCleanup] #{message}")
      MessageBus.publish(DiscourseCleanup::CLEANUP_LOGS_CHANNEL, message)
    end
  end
end