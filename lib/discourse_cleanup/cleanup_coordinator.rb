# frozen_string_literal: true

module DiscourseCleanup
  class CleanupCoordinator
    include HasErrors

    def initialize(opts = {})
      @opts = opts
      @dry_run = opts[:dry_run] || false
      @progress = CleanupProgress.current
    end

    def start_cleanup
      log "Starting Discourse cleanup process (dry_run: #{@dry_run})"
      
      return { success: false, error: "Cleanup already in progress" } if DiscourseCleanup.is_operation_running?
      
      DiscourseCleanup.mark_as_running!
      @progress.advance_phase(:analysis)
      
      begin
        success = true
        success &= analyze_current_state
        success &= create_backups if success && !@dry_run
        success &= perform_safe_removals if success
        success &= prepare_authentication_system if success
        success &= perform_selective_removals if success
        success &= optimize_and_validate if success
        
        if success
          @progress.advance_phase(:completed)
          log "Cleanup process completed successfully"
          { success: true, summary: @progress.summary }
        else
          @progress.advance_phase(:failed)
          log "Cleanup process failed"
          { success: false, errors: @errors, summary: @progress.summary }
        end
      rescue => e
        @progress.advance_phase(:failed)
        log "Cleanup process encountered an error: #{e.message}"
        { success: false, error: e.message, summary: @progress.summary }
      ensure
        DiscourseCleanup.mark_as_not_running!
      end
    end

    def get_cleanup_plan
      log "Generating cleanup plan"
      
      analysis = PluginClassifier.analyze_current_installation
      recommendations = PluginClassifier.generate_cleanup_recommendations
      
      {
        current_state: analysis,
        recommendations: recommendations,
        estimated_removals: recommendations[:immediate_removals].count + 
                           recommendations[:evaluate_for_removal].count,
        preserved_plugins: recommendations[:preserve].count
      }
    end

    def rollback_cleanup(plugin_name = nil)
      log "Starting cleanup rollback#{plugin_name ? " for #{plugin_name}" : ""}"
      
      return { success: false, error: "Cleanup operation in progress" } if DiscourseCleanup.is_operation_running?
      
      DiscourseCleanup.mark_as_running!
      
      begin
        if plugin_name
          rollback_single_plugin(plugin_name)
        else
          rollback_all_plugins
        end
      rescue => e
        log "Rollback failed: #{e.message}"
        { success: false, error: e.message }
      ensure
        DiscourseCleanup.mark_as_not_running!
      end
    end

    private

    def analyze_current_state
      log "Analyzing current Discourse installation"
      @progress.advance_phase(:analysis)
      
      begin
        analysis = PluginClassifier.analyze_current_installation
        @progress.total_plugins = analysis[:total_plugins]
        
        log "Found #{analysis[:total_plugins]} installed plugins"
        log "Priority 1 (safe removal): #{analysis[:by_priority][1].count} plugins"
        log "Priority 2 (evaluate): #{analysis[:by_priority][2].count} plugins"
        log "Priority 3 (preserve): #{analysis[:by_priority][3].count} plugins"
        log "Unknown plugins: #{analysis[:unknown_plugins].count} plugins"
        
        # Run initial system validation
        validator = SystemValidator.new
        validation_result = validator.validate_core_functionality
        
        unless validation_result[:success]
          add_error("Initial system validation failed: #{validation_result[:errors].join(', ')}")
          return false
        end
        
        log "Initial system validation passed"
        true
      rescue => e
        add_error("Failed to analyze current state: #{e.message}")
        false
      end
    end

    def create_backups
      log "Creating backups for plugins to be removed"
      @progress.advance_phase(:backup_creation)
      
      plugins_to_backup = PluginClassifier.get_plugins_by_priority(1) + 
                         PluginClassifier.get_plugins_by_priority(2)
      
      plugins_to_backup.select! { |plugin| plugin_installed?(plugin) }
      
      success = true
      plugins_to_backup.each do |plugin_name|
        @progress.set_current_plugin(plugin_name)
        
        backuper = CleanupBackuper.new(plugin_name, @opts)
        result = backuper.backup_plugin
        
        @progress.record_plugin_backup(plugin_name, result[:success], result[:backup_path])
        
        unless result[:success]
          add_error("Failed to backup plugin #{plugin_name}: #{result[:errors]&.join(', ')}")
          success = false
        end
      end
      
      log "Backup phase completed. Success: #{success}"
      success
    end

    def perform_safe_removals
      log "Performing safe plugin removals (Priority 1)"
      @progress.advance_phase(:safe_removals)
      
      safe_removal_plugins = PluginClassifier.get_plugins_by_priority(1)
                                           .select { |plugin| plugin_installed?(plugin) }
      
      success = true
      safe_removal_plugins.each do |plugin_name|
        @progress.set_current_plugin(plugin_name)
        
        unless @dry_run
          manager = CleanupManager.new(plugin_name, @opts)
          result = manager.remove_plugin
          
          @progress.record_plugin_removal(plugin_name, result[:success])
          
          unless result[:success]
            add_error("Failed to remove plugin #{plugin_name}: #{result[:errors]&.join(', ')}")
            success = false
          end
        else
          log "DRY RUN: Would remove plugin #{plugin_name}"
          @progress.record_plugin_removal(plugin_name, true)
        end
      end
      
      log "Safe removal phase completed. Success: #{success}"
      success
    end

    def prepare_authentication_system
      log "Preparing authentication system for Lens Protocol integration"
      @progress.advance_phase(:authentication_preparation)
      
      begin
        # Document current authentication system
        auth_analysis = analyze_authentication_system
        
        # Save authentication analysis for future reference
        save_authentication_analysis(auth_analysis)
        
        log "Authentication system analysis completed"
        true
      rescue => e
        add_error("Failed to prepare authentication system: #{e.message}")
        false
      end
    end

    def perform_selective_removals
      log "Performing selective plugin removals (Priority 2)"
      @progress.advance_phase(:selective_removals)
      
      evaluation_plugins = PluginClassifier.get_plugins_by_priority(2)
                                         .select { |plugin| plugin_installed?(plugin) }
      
      success = true
      evaluation_plugins.each do |plugin_name|
        @progress.set_current_plugin(plugin_name)
        
        # For now, we'll be conservative and not remove Priority 2 plugins automatically
        # This phase is for manual evaluation and selective removal
        log "EVALUATION: Plugin #{plugin_name} marked for manual evaluation"
      end
      
      log "Selective removal phase completed. Success: #{success}"
      success
    end

    def optimize_and_validate
      log "Optimizing system and running final validation"
      @progress.advance_phase(:optimization)
      
      begin
        # Run comprehensive system validation
        validator = SystemValidator.new
        validation_result = validator.validate_all
        
        unless validation_result[:success]
          add_error("Final system validation failed")
          return false
        end
        
        # Clean up any orphaned data
        cleanup_orphaned_data unless @dry_run
        
        log "Optimization and validation completed successfully"
        true
      rescue => e
        add_error("Failed during optimization and validation: #{e.message}")
        false
      end
    end

    def rollback_single_plugin(plugin_name)
      rollback = CleanupRollback.new(plugin_name)
      result = rollback.restore_plugin
      
      if result[:success]
        @progress.completed_plugins.delete(plugin_name)
        @progress.failed_plugins.delete(plugin_name)
        log "Successfully rolled back plugin: #{plugin_name}"
      end
      
      result
    end

    def rollback_all_plugins
      success = true
      @progress.completed_plugins.dup.each do |plugin_name|
        result = rollback_single_plugin(plugin_name)
        success &= result[:success]
      end
      
      if success
        CleanupProgress.reset!
        log "Successfully rolled back all plugins"
      end
      
      { success: success }
    end

    def analyze_authentication_system
      {
        models: %w[User UserAuthToken UserAssociatedAccount],
        controllers: find_auth_controllers,
        middleware: find_auth_middleware,
        providers: find_auth_providers,
        touchpoints: find_auth_touchpoints
      }
    end

    def find_auth_controllers
      Dir.glob(File.join(Rails.root, "app/controllers/**/*_controller.rb"))
         .select { |f| File.read(f).match?(/authentication|session|login|oauth/i) }
         .map { |f| File.basename(f, ".rb") }
    end

    def find_auth_middleware
      Dir.glob(File.join(Rails.root, "lib/middleware/**/*.rb"))
         .select { |f| File.read(f).match?(/auth|session|current_user/i) }
         .map { |f| File.basename(f, ".rb") }
    end

    def find_auth_providers
      Dir.glob(File.join(Rails.root, "lib/auth/**/*.rb"))
         .map { |f| File.basename(f, ".rb") }
    end

    def find_auth_touchpoints
      # This would be a more comprehensive analysis in a real implementation
      %w[
        current_user.rb
        guardian.rb
        application_controller.rb
        session_controller.rb
      ]
    end

    def save_authentication_analysis(analysis)
      analysis_file = File.join(Rails.root, "tmp", "auth_analysis.json")
      File.write(analysis_file, JSON.pretty_generate(analysis))
      log "Saved authentication analysis to: #{analysis_file}"
    end

    def cleanup_orphaned_data
      log "Cleaning up orphaned data"
      
      # Remove orphaned plugin store entries
      orphaned_entries = DB.query(<<~SQL)
        SELECT DISTINCT plugin_name FROM plugin_store_rows 
        WHERE plugin_name NOT IN (
          SELECT DISTINCT plugin_name FROM plugin_store_rows psr
          WHERE EXISTS (
            SELECT 1 FROM information_schema.tables 
            WHERE table_name LIKE '%' || REPLACE(psr.plugin_name, '-', '_') || '%'
          )
        )
      SQL
      
      orphaned_entries.each do |row|
        plugin_name = row.plugin_name
        next if plugin_installed?(plugin_name)
        
        PluginStore.remove_all_for(plugin_name)
        log "Removed orphaned plugin store data for: #{plugin_name}"
      end
    end

    def plugin_installed?(plugin_name)
      Dir.exist?(File.join(Rails.root, "plugins", plugin_name))
    end

    def log(message)
      Rails.logger.info("[DiscourseCleanup::Coordinator] #{message}")
      MessageBus.publish(DiscourseCleanup::CLEANUP_LOGS_CHANNEL, message)
    end
  end
end