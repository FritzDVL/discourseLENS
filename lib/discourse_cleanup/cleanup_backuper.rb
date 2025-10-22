# frozen_string_literal: true

module DiscourseCleanup
  class CleanupBackuper
    include HasErrors

    def initialize(plugin_name, opts = {})
      @plugin_name = plugin_name
      @opts = opts
      @timestamp = Time.current.strftime("%Y%m%d_%H%M%S")
      @backup_dir = File.join(DiscourseCleanup.backup_path, "#{@plugin_name}_#{@timestamp}")
    end

    def backup_plugin
      log "Starting backup for plugin: #{@plugin_name}"
      
      ensure_backup_directory_exists
      
      success = true
      success &= backup_plugin_files
      success &= backup_plugin_database_data
      success &= backup_plugin_site_settings
      success &= create_backup_metadata
      
      if success
        log "Successfully backed up plugin: #{@plugin_name}"
        { success: true, backup_path: @backup_dir, timestamp: @timestamp }
      else
        log "Failed to backup plugin: #{@plugin_name}"
        cleanup_failed_backup
        { success: false, errors: @errors }
      end
    rescue => e
      log "Error during backup: #{e.message}"
      cleanup_failed_backup
      { success: false, errors: [e.message] }
    end

    private

    def ensure_backup_directory_exists
      FileUtils.mkdir_p(@backup_dir)
      FileUtils.mkdir_p(File.join(@backup_dir, "files"))
      FileUtils.mkdir_p(File.join(@backup_dir, "database"))
      FileUtils.mkdir_p(File.join(@backup_dir, "settings"))
    end

    def backup_plugin_files
      plugin_path = File.join(Rails.root, "plugins", @plugin_name)
      
      unless Dir.exist?(plugin_path)
        add_error("Plugin directory not found: #{plugin_path}")
        return false
      end

      backup_files_path = File.join(@backup_dir, "files", @plugin_name)
      
      begin
        FileUtils.cp_r(plugin_path, backup_files_path)
        log "Backed up plugin files to: #{backup_files_path}"
        true
      rescue => e
        add_error("Failed to backup plugin files: #{e.message}")
        false
      end
    end

    def backup_plugin_database_data
      begin
        plugin_tables = find_plugin_tables
        plugin_store_data = find_plugin_store_data
        
        backup_data = {
          tables: plugin_tables,
          plugin_store: plugin_store_data,
          timestamp: @timestamp
        }
        
        backup_file = File.join(@backup_dir, "database", "#{@plugin_name}_data.json")
        File.write(backup_file, JSON.pretty_generate(backup_data))
        
        log "Backed up database data for #{plugin_tables.count} tables and #{plugin_store_data.count} plugin store entries"
        true
      rescue => e
        add_error("Failed to backup database data: #{e.message}")
        false
      end
    end

    def backup_plugin_site_settings
      begin
        plugin_settings = find_plugin_site_settings
        
        backup_file = File.join(@backup_dir, "settings", "#{@plugin_name}_settings.json")
        File.write(backup_file, JSON.pretty_generate(plugin_settings))
        
        log "Backed up #{plugin_settings.count} site settings"
        true
      rescue => e
        add_error("Failed to backup site settings: #{e.message}")
        false
      end
    end

    def create_backup_metadata
      begin
        metadata = {
          plugin_name: @plugin_name,
          timestamp: @timestamp,
          discourse_version: Discourse::VERSION::STRING,
          backup_version: "1.0",
          created_at: Time.current.iso8601,
          options: @opts
        }
        
        metadata_file = File.join(@backup_dir, "metadata.json")
        File.write(metadata_file, JSON.pretty_generate(metadata))
        
        log "Created backup metadata"
        true
      rescue => e
        add_error("Failed to create backup metadata: #{e.message}")
        false
      end
    end

    def find_plugin_tables
      # Find tables that likely belong to this plugin
      plugin_prefix = @plugin_name.gsub("-", "_")
      
      tables = DB.query_single(<<~SQL)
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
      
      # Get table data for backup
      table_data = {}
      tables.each do |table_name|
        begin
          rows = DB.query("SELECT * FROM #{table_name}")
          table_data[table_name] = rows.map(&:to_h)
        rescue => e
          log "Warning: Could not backup table #{table_name}: #{e.message}"
        end
      end
      
      table_data
    end

    def find_plugin_store_data
      plugin_store_data = {}
      
      begin
        # Get all plugin store data for this plugin
        rows = DB.query(<<~SQL, plugin_name: @plugin_name)
          SELECT key, value, type_name 
          FROM plugin_store_rows 
          WHERE plugin_name = :plugin_name
        SQL
        
        rows.each do |row|
          plugin_store_data[row.key] = {
            value: row.value,
            type_name: row.type_name
          }
        end
      rescue => e
        log "Warning: Could not backup plugin store data: #{e.message}"
      end
      
      plugin_store_data
    end

    def find_plugin_site_settings
      settings = {}
      
      begin
        # Find site settings that likely belong to this plugin
        plugin_prefix = @plugin_name.gsub("-", "_")
        
        SiteSetting.all_settings.each do |setting|
          setting_name = setting[:setting].to_s
          if setting_name.include?(plugin_prefix) || 
             setting_name.include?(@plugin_name.gsub("-", "_")) ||
             setting_name.include?(@plugin_name.split("-").last)
            
            settings[setting_name] = {
              value: SiteSetting.get(setting[:setting]),
              default: setting[:default],
              type: setting[:type]
            }
          end
        end
      rescue => e
        log "Warning: Could not backup site settings: #{e.message}"
      end
      
      settings
    end

    def cleanup_failed_backup
      FileUtils.rm_rf(@backup_dir) if Dir.exist?(@backup_dir)
    end

    def log(message)
      Rails.logger.info("[DiscourseCleanup] #{message}")
      MessageBus.publish(DiscourseCleanup::CLEANUP_LOGS_CHANNEL, message)
    end
  end
end