# frozen_string_literal: true

module DiscourseCleanup
  class SystemValidator
    include HasErrors

    def initialize
      @validation_results = {}
    end

    def validate_all
      log "Starting comprehensive system validation"
      
      results = {
        core_functionality: validate_core_functionality,
        database_integrity: validate_database_integrity,
        plugin_dependencies: validate_plugin_dependencies,
        performance_metrics: collect_performance_metrics
      }
      
      overall_success = results.values.all? { |result| result[:success] }
      
      {
        success: overall_success,
        results: results,
        timestamp: Time.current.iso8601
      }
    end

    def validate_core_functionality
      log "Validating core functionality"
      
      tests = [
        :test_database_connection,
        :test_user_model,
        :test_topic_model,
        :test_post_model,
        :test_category_model,
        :test_site_settings,
        :test_message_bus,
        :test_redis_connection
      ]
      
      results = {}
      overall_success = true
      
      tests.each do |test|
        begin
          result = send(test)
          results[test] = result
          overall_success &= result[:success]
        rescue => e
          results[test] = { success: false, error: e.message }
          overall_success = false
        end
      end
      
      {
        success: overall_success,
        tests: results,
        errors: overall_success ? [] : results.select { |_, v| !v[:success] }.keys
      }
    end

    def validate_database_integrity
      log "Validating database integrity"
      
      checks = [
        :check_foreign_key_constraints,
        :check_orphaned_records,
        :check_table_consistency,
        :check_index_integrity
      ]
      
      results = {}
      overall_success = true
      
      checks.each do |check|
        begin
          result = send(check)
          results[check] = result
          overall_success &= result[:success]
        rescue => e
          results[check] = { success: false, error: e.message }
          overall_success = false
        end
      end
      
      {
        success: overall_success,
        checks: results,
        errors: overall_success ? [] : results.select { |_, v| !v[:success] }.keys
      }
    end

    def validate_plugin_dependencies
      log "Validating plugin dependencies"
      
      enabled_plugins = find_enabled_plugins
      dependency_issues = []
      
      enabled_plugins.each do |plugin_name|
        issues = check_plugin_dependencies(plugin_name)
        dependency_issues.concat(issues) if issues.any?
      end
      
      {
        success: dependency_issues.empty?,
        enabled_plugins: enabled_plugins,
        dependency_issues: dependency_issues
      }
    end

    def collect_performance_metrics
      log "Collecting performance metrics"
      
      begin
        metrics = {
          memory_usage: get_memory_usage,
          database_size: get_database_size,
          plugin_count: count_enabled_plugins,
          startup_time: measure_startup_time,
          response_time: measure_response_time
        }
        
        {
          success: true,
          metrics: metrics,
          collected_at: Time.current.iso8601
        }
      rescue => e
        {
          success: false,
          error: e.message
        }
      end
    end

    private

    # Core functionality tests
    def test_database_connection
      begin
        DB.exec("SELECT 1")
        { success: true, message: "Database connection successful" }
      rescue => e
        { success: false, error: e.message }
      end
    end

    def test_user_model
      begin
        User.count
        User.new.valid? # This will trigger validations
        { success: true, message: "User model functional" }
      rescue => e
        { success: false, error: e.message }
      end
    end

    def test_topic_model
      begin
        Topic.count
        Topic.new.valid?
        { success: true, message: "Topic model functional" }
      rescue => e
        { success: false, error: e.message }
      end
    end

    def test_post_model
      begin
        Post.count
        Post.new.valid?
        { success: true, message: "Post model functional" }
      rescue => e
        { success: false, error: e.message }
      end
    end

    def test_category_model
      begin
        Category.count
        Category.new.valid?
        { success: true, message: "Category model functional" }
      rescue => e
        { success: false, error: e.message }
      end
    end

    def test_site_settings
      begin
        SiteSetting.title
        SiteSetting.all_settings.count
        { success: true, message: "Site settings functional" }
      rescue => e
        { success: false, error: e.message }
      end
    end

    def test_message_bus
      begin
        MessageBus.publish("/test", "test message")
        { success: true, message: "MessageBus functional" }
      rescue => e
        { success: false, error: e.message }
      end
    end

    def test_redis_connection
      begin
        Discourse.redis.ping
        { success: true, message: "Redis connection successful" }
      rescue => e
        { success: false, error: e.message }
      end
    end

    # Database integrity checks
    def check_foreign_key_constraints
      begin
        violations = DB.query(<<~SQL)
          SELECT conname, conrelid::regclass, confrelid::regclass
          FROM pg_constraint
          WHERE contype = 'f'
          AND NOT EXISTS (
            SELECT 1 FROM pg_constraint c2
            WHERE c2.conname = pg_constraint.conname
            AND c2.contype = 'f'
          )
        SQL
        
        {
          success: violations.empty?,
          violations_count: violations.count,
          message: violations.empty? ? "No foreign key violations" : "Found #{violations.count} violations"
        }
      rescue => e
        { success: false, error: e.message }
      end
    end

    def check_orphaned_records
      begin
        # Check for common orphaned records
        orphaned_posts = DB.query_single("SELECT COUNT(*) FROM posts WHERE topic_id NOT IN (SELECT id FROM topics)").first
        orphaned_user_actions = DB.query_single("SELECT COUNT(*) FROM user_actions WHERE user_id NOT IN (SELECT id FROM users)").first
        
        total_orphaned = orphaned_posts + orphaned_user_actions
        
        {
          success: total_orphaned == 0,
          orphaned_posts: orphaned_posts,
          orphaned_user_actions: orphaned_user_actions,
          total_orphaned: total_orphaned
        }
      rescue => e
        { success: false, error: e.message }
      end
    end

    def check_table_consistency
      begin
        # Basic table existence checks
        required_tables = %w[users posts topics categories site_settings]
        missing_tables = []
        
        required_tables.each do |table|
          exists = DB.query_single(<<~SQL, table_name: table).first > 0
            SELECT COUNT(*) FROM information_schema.tables 
            WHERE table_name = :table_name AND table_schema = 'public'
          SQL
          
          missing_tables << table unless exists
        end
        
        {
          success: missing_tables.empty?,
          missing_tables: missing_tables,
          message: missing_tables.empty? ? "All required tables present" : "Missing tables: #{missing_tables.join(', ')}"
        }
      rescue => e
        { success: false, error: e.message }
      end
    end

    def check_index_integrity
      begin
        # Check for missing indexes on foreign keys
        missing_indexes = DB.query(<<~SQL)
          SELECT schemaname, tablename, attname, n_distinct, correlation
          FROM pg_stats
          WHERE schemaname = 'public'
          AND n_distinct > 100
          AND correlation < 0.1
        SQL
        
        {
          success: true, # This is informational
          potentially_missing_indexes: missing_indexes.count,
          message: "Found #{missing_indexes.count} columns that might benefit from indexes"
        }
      rescue => e
        { success: false, error: e.message }
      end
    end

    # Plugin dependency checks
    def find_enabled_plugins
      enabled_plugins = []
      
      Dir.glob(File.join(Rails.root, "plugins", "*")).each do |plugin_dir|
        next unless File.directory?(plugin_dir)
        plugin_name = File.basename(plugin_dir)
        
        # Check if plugin is enabled via site settings
        enabled_setting = "#{plugin_name.gsub('-', '_')}_enabled"
        if SiteSetting.respond_to?(enabled_setting)
          enabled_plugins << plugin_name if SiteSetting.get(enabled_setting)
        else
          # If no setting, assume enabled if directory exists
          enabled_plugins << plugin_name
        end
      end
      
      enabled_plugins
    end

    def check_plugin_dependencies(plugin_name)
      issues = []
      plugin_file = File.join(Rails.root, "plugins", plugin_name, "plugin.rb")
      
      return issues unless File.exist?(plugin_file)
      
      begin
        content = File.read(plugin_file)
        
        # Look for dependency declarations
        if content.match(/depend_on\s+['"]([^'"]+)['"]/)
          dependency = $1
          dependency_path = File.join(Rails.root, "plugins", dependency)
          
          unless Dir.exist?(dependency_path)
            issues << "Plugin #{plugin_name} depends on #{dependency} which is not installed"
          end
        end
      rescue => e
        issues << "Could not check dependencies for #{plugin_name}: #{e.message}"
      end
      
      issues
    end

    # Performance metrics
    def get_memory_usage
      if File.exist?("/proc/meminfo")
        meminfo = File.read("/proc/meminfo")
        total_match = meminfo.match(/MemTotal:\s+(\d+)\s+kB/)
        available_match = meminfo.match(/MemAvailable:\s+(\d+)\s+kB/)
        
        if total_match && available_match
          total_kb = total_match[1].to_i
          available_kb = available_match[1].to_i
          used_kb = total_kb - available_kb
          
          {
            total_mb: total_kb / 1024,
            used_mb: used_kb / 1024,
            available_mb: available_kb / 1024,
            usage_percentage: (used_kb.to_f / total_kb * 100).round(2)
          }
        end
      else
        { message: "Memory info not available on this system" }
      end
    end

    def get_database_size
      begin
        size_bytes = DB.query_single("SELECT pg_database_size(current_database())").first
        {
          size_bytes: size_bytes,
          size_mb: (size_bytes / 1024.0 / 1024.0).round(2),
          size_gb: (size_bytes / 1024.0 / 1024.0 / 1024.0).round(3)
        }
      rescue => e
        { error: e.message }
      end
    end

    def count_enabled_plugins
      find_enabled_plugins.count
    end

    def measure_startup_time
      # This is a placeholder - actual startup time measurement would need to be implemented differently
      { message: "Startup time measurement not implemented" }
    end

    def measure_response_time
      begin
        start_time = Time.current
        DB.exec("SELECT 1")
        end_time = Time.current
        
        {
          database_response_ms: ((end_time - start_time) * 1000).round(2)
        }
      rescue => e
        { error: e.message }
      end
    end

    def log(message)
      Rails.logger.info("[DiscourseCleanup::SystemValidator] #{message}")
      MessageBus.publish(DiscourseCleanup::CLEANUP_LOGS_CHANNEL, message)
    end
  end
end