# frozen_string_literal: true

module DiscourseCleanup
  class CleanupManager
    include HasErrors

    def initialize(plugin_name, opts = {})
      @plugin_name = plugin_name
      @opts = opts
      @dry_run = opts[:dry_run] || false
    end

    def remove_plugin
      log "Starting removal of plugin: #{@plugin_name} (dry_run: #{@dry_run})"
      
      DiscourseCleanup.mark_as_running!
      
      begin
        success = true
        success &= validate_plugin_exists
        success &= check_plugin_dependencies
        success &= disable_plugin_via_settings
        success &= remove_plugin_database_data unless @dry_run
        success &= remove_plugin_files unless @dry_run
        success &= validate_system_stability
        
        if success
          log "Successfully removed plugin: #{@plugin_name}"
          { success: true, plugin_name: @plugin_name }
        else
          log "Failed to remove plugin: #{@plugin_name}"
          { success: false, errors: @errors }
        end
      rescue => e
        log "Error during plugin removal: #{e.message}"
        { success: false, errors: [e.message] }
      ensure
        DiscourseCleanup.mark_as_not_running!
      end
    end

    private

    def validate_plugin_exists
      plugin_path = File.join(Rails.root, "plugins", @plugin_name)
      
      unless Dir.exist?(plugin_path)
        add_error("Plugin directory not found: #{plugin_path}")
        return false
      end
      
      log "Plugin directory found: #{plugin_path}"
      true
    end

    def check_plugin_dependencies
      begin
        dependent_plugins = find_dependent_plugins
        
        if dependent_plugins.any?
          add_error("Cannot remove plugin #{@plugin_name}. The following plugins depend on it: #{dependent_plugins.join(', ')}")
          return false
        end
        
        log "No dependent plugins found"
        true
      rescue => e
        add_error("Failed to check plugin dependencies: #{e.message}")
        false
      end
    end

    def disable_plugin_via_settings
      begin
        # Try to disable the plugin via site settings
        plugin_enabled_setting = "#{@plugin_name.gsub('-', '_')}_enabled"
        
        if SiteSetting.respond_to?(plugin_enabled_setting)
          unless @dry_run
            SiteSetting.set(plugin_enabled_setting, false)
          end
          log "Disabled plugin via site setting: #{plugin_enabled_setting}"
        else
          log "No site setting found for plugin: #{plugin_enabled_setting}"
        end
        
        true
      rescue => e
        log "Warning: Could not disable plugin via settings: #{e.message}"
        true # Not a critical failure
      end
    end

    def remove_plugin_database_data
      begin
        plugin_tables = find_plugin_tables
        plugin_store_entries = find_plugin_store_entries
        
        # Remove plugin store data
        plugin_store_entries.each do |key|
          PluginStore.remove(@plugin_name, key)
          log "Removed plugin store entry: #{key}"
        end
        
        # Remove plugin-specific tables (be very careful here)
        plugin_tables.each do |table_name|
          if safe_to_drop_table?(table_name)
            DB.exec("DROP TABLE IF EXISTS #{table_name} CASCADE")
            log "Dropped table: #{table_name}"
          else
            log "Skipped dropping table (safety check failed): #{table_name}"
          end
        end
        
        # Remove plugin-specific site settings
        remove_plugin_site_settings
        
        log "Removed database data for plugin: #{@plugin_name}"
        true
      rescue => e
        add_error("Failed to remove plugin database data: #{e.message}")
        false
      end
    end

    def remove_plugin_files
      begin
        plugin_path = File.join(Rails.root, "plugins", @plugin_name)
        
        if Dir.exist?(plugin_path)
          FileUtils.rm_rf(plugin_path)
          log "Removed plugin files: #{plugin_path}"
        end
        
        true
      rescue => e
        add_error("Failed to remove plugin files: #{e.message}")
        false
      end
    end

    def validate_system_stability
      begin
        validator = SystemValidator.new
        validation_result = validator.validate_core_functionality
        
        unless validation_result[:success]
          add_error("System validation failed after plugin removal: #{validation_result[:errors].join(', ')}")
          return false
        end
        
        log "System validation passed"
        true
      rescue => e
        add_error("Failed to validate system stability: #{e.message}")
        false
      end
    end

    def find_dependent_plugins
      dependent_plugins = []
      
      # Check all other plugins for dependencies on this plugin
      Dir.glob(File.join(Rails.root, "plugins", "*")).each do |plugin_dir|
        next unless File.directory?(plugin_dir)
        plugin_dir_name = File.basename(plugin_dir)
        next if plugin_dir_name == @plugin_name
        
        # Check plugin.rb file for dependencies
        plugin_file = File.join(plugin_dir, "plugin.rb")
        if File.exist?(plugin_file)
          content = File.read(plugin_file)
          if content.include?(@plugin_name) || content.include?("depend_on")
            dependent_plugins << plugin_dir_name
          end
        end
      end
      
      dependent_plugins
    end

    def find_plugin_tables
      plugin_prefix = @plugin_name.gsub("-", "_")
      
      DB.query_single(<<~SQL)
        SELECT table_name 
        FROM information_schema.tables 
        WHERE table_schema = 'public' 
        AND table_type = 'BASE TABLE'
        AND (
          table_name LIKE '#{plugin_prefix}_%' 
          OR table_name LIKE '%_#{plugin_prefix}_%'
          OR table_name LIKE '%#{plugin_prefix.split('_').last}%'
        )
      SQL
    end

    def find_plugin_store_entries
      rows = DB.query(<<~SQL, plugin_name: @plugin_name)
        SELECT key FROM plugin_store_rows WHERE plugin_name = :plugin_name
      SQL
      
      rows.map(&:key)
    end

    def safe_to_drop_table?(table_name)
      # Safety checks to prevent dropping core Discourse tables
      core_tables = %w[
        users posts topics categories groups
        user_actions site_settings uploads
        notifications badges user_badges
        post_actions topic_users category_users
      ]
      
      return false if core_tables.include?(table_name)
      return false unless table_name.include?(@plugin_name.gsub("-", "_"))
      
      true
    end

    def remove_plugin_site_settings
      plugin_prefix = @plugin_name.gsub("-", "_")
      
      SiteSetting.all_settings.each do |setting|
        setting_name = setting[:setting].to_s
        if setting_name.include?(plugin_prefix) || 
           setting_name.include?(@plugin_name.gsub("-", "_")) ||
           setting_name.include?(@plugin_name.split("-").last)
          
          begin
            # Reset to default value instead of deleting
            SiteSetting.set(setting[:setting], setting[:default])
            log "Reset site setting to default: #{setting_name}"
          rescue => e
            log "Warning: Could not reset site setting #{setting_name}: #{e.message}"
          end
        end
      end
    end

    def log(message)
      Rails.logger.info("[DiscourseCleanup] #{message}")
      MessageBus.publish(DiscourseCleanup::CLEANUP_LOGS_CHANNEL, message)
    end
  end
end