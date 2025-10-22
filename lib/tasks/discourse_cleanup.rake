# frozen_string_literal: true

namespace :discourse_cleanup do
  desc "Analyze current Discourse installation and generate cleanup recommendations"
  task analyze: :environment do
    puts "Analyzing current Discourse installation..."
    
    coordinator = DiscourseCleanup::CleanupCoordinator.new
    plan = coordinator.get_cleanup_plan
    
    puts "\n=== CURRENT STATE ==="
    puts "Total plugins installed: #{plan[:current_state][:total_plugins]}"
    puts "Priority 1 (safe removal): #{plan[:current_state][:by_priority][1].count}"
    puts "Priority 2 (evaluate): #{plan[:current_state][:by_priority][2].count}"
    puts "Priority 3 (preserve): #{plan[:current_state][:by_priority][3].count}"
    puts "Unknown plugins: #{plan[:current_state][:unknown_plugins].count}"
    
    puts "\n=== RECOMMENDATIONS ==="
    puts "Immediate removals: #{plan[:recommendations][:immediate_removals].count}"
    puts "Evaluate for removal: #{plan[:recommendations][:evaluate_for_removal].count}"
    puts "Preserve: #{plan[:recommendations][:preserve].count}"
    
    if plan[:recommendations][:immediate_removals].any?
      puts "\n=== IMMEDIATE REMOVALS ==="
      plan[:recommendations][:immediate_removals].each do |rec|
        puts "- #{rec[:plugin]}: #{rec[:reason]}"
      end
    end
    
    if plan[:recommendations][:evaluate_for_removal].any?
      puts "\n=== EVALUATE FOR REMOVAL ==="
      plan[:recommendations][:evaluate_for_removal].each do |rec|
        puts "- #{rec[:plugin]}: #{rec[:reason]}"
      end
    end
    
    if plan[:recommendations][:unknown_plugins].any?
      puts "\n=== UNKNOWN PLUGINS (Manual Review Needed) ==="
      plan[:recommendations][:unknown_plugins].each do |plugin|
        puts "- #{plugin}"
      end
    end
    
    puts "\nEstimated plugins to be removed: #{plan[:estimated_removals]}"
    puts "Plugins to be preserved: #{plan[:preserved_plugins]}"
  end

  desc "Start the cleanup process (use DRY_RUN=true for simulation)"
  task cleanup: :environment do
    dry_run = ENV['DRY_RUN'] == 'true'
    
    puts "Starting cleanup process#{dry_run ? ' (DRY RUN)' : ''}..."
    
    coordinator = DiscourseCleanup::CleanupCoordinator.new(dry_run: dry_run)
    result = coordinator.start_cleanup
    
    if result[:success]
      puts "Cleanup completed successfully!"
      puts "Summary: #{result[:summary]}"
    else
      puts "Cleanup failed!"
      puts "Errors: #{result[:errors]&.join(', ')}" if result[:errors]
      puts "Error: #{result[:error]}" if result[:error]
    end
  end

  desc "Backup a specific plugin"
  task :backup_plugin, [:plugin_name] => :environment do |t, args|
    plugin_name = args[:plugin_name]
    
    if plugin_name.blank?
      puts "Usage: rake discourse_cleanup:backup_plugin[plugin_name]"
      exit 1
    end
    
    puts "Backing up plugin: #{plugin_name}..."
    
    result = DiscourseCleanup.backup_plugin!(plugin_name)
    
    if result[:success]
      puts "Backup completed successfully!"
      puts "Backup path: #{result[:backup_path]}"
    else
      puts "Backup failed!"
      puts "Errors: #{result[:errors]&.join(', ')}"
    end
  end

  desc "Remove a specific plugin"
  task :remove_plugin, [:plugin_name] => :environment do |t, args|
    plugin_name = args[:plugin_name]
    dry_run = ENV['DRY_RUN'] == 'true'
    
    if plugin_name.blank?
      puts "Usage: rake discourse_cleanup:remove_plugin[plugin_name]"
      puts "Use DRY_RUN=true for simulation"
      exit 1
    end
    
    puts "Removing plugin: #{plugin_name}#{dry_run ? ' (DRY RUN)' : ''}..."
    
    result = DiscourseCleanup.remove_plugin!(plugin_name, dry_run: dry_run)
    
    if result[:success]
      puts "Plugin removal completed successfully!"
    else
      puts "Plugin removal failed!"
      puts "Errors: #{result[:errors]&.join(', ')}"
    end
  end

  desc "Rollback a specific plugin or all plugins"
  task :rollback, [:plugin_name] => :environment do |t, args|
    plugin_name = args[:plugin_name]
    
    if plugin_name.present?
      puts "Rolling back plugin: #{plugin_name}..."
    else
      puts "Rolling back all plugins..."
    end
    
    coordinator = DiscourseCleanup::CleanupCoordinator.new
    result = coordinator.rollback_cleanup(plugin_name)
    
    if result[:success]
      puts "Rollback completed successfully!"
    else
      puts "Rollback failed!"
      puts "Error: #{result[:error]}"
    end
  end

  desc "Validate system integrity"
  task validate: :environment do
    puts "Validating system integrity..."
    
    result = DiscourseCleanup.validate_system!
    
    puts "\n=== VALIDATION RESULTS ==="
    puts "Overall success: #{result[:success]}"
    
    if result[:results][:core_functionality]
      puts "\nCore functionality: #{result[:results][:core_functionality][:success] ? 'PASS' : 'FAIL'}"
      if result[:results][:core_functionality][:errors].any?
        puts "Errors: #{result[:results][:core_functionality][:errors].join(', ')}"
      end
    end
    
    if result[:results][:database_integrity]
      puts "Database integrity: #{result[:results][:database_integrity][:success] ? 'PASS' : 'FAIL'}"
      if result[:results][:database_integrity][:errors].any?
        puts "Errors: #{result[:results][:database_integrity][:errors].join(', ')}"
      end
    end
    
    if result[:results][:plugin_dependencies]
      puts "Plugin dependencies: #{result[:results][:plugin_dependencies][:success] ? 'PASS' : 'FAIL'}"
      if result[:results][:plugin_dependencies][:dependency_issues].any?
        puts "Issues: #{result[:results][:plugin_dependencies][:dependency_issues].join(', ')}"
      end
    end
    
    if result[:results][:performance_metrics] && result[:results][:performance_metrics][:success]
      metrics = result[:results][:performance_metrics][:metrics]
      puts "\n=== PERFORMANCE METRICS ==="
      puts "Memory usage: #{metrics[:memory_usage]}" if metrics[:memory_usage]
      puts "Database size: #{metrics[:database_size]}" if metrics[:database_size]
      puts "Plugin count: #{metrics[:plugin_count]}" if metrics[:plugin_count]
    end
  end

  desc "Show cleanup progress and status"
  task status: :environment do
    progress = DiscourseCleanup::CleanupProgress.current
    
    puts "=== CLEANUP STATUS ==="
    puts "Phase: #{progress.phase}"
    puts "Current plugin: #{progress.current_plugin || 'None'}"
    puts "Completed plugins: #{progress.completed_plugins.count}"
    puts "Failed plugins: #{progress.failed_plugins.count}"
    puts "Total plugins: #{progress.total_plugins}"
    puts "Completion: #{progress.completion_percentage}%"
    puts "Duration: #{progress.duration.to_i} seconds"
    puts "Can rollback: #{progress.can_rollback?}"
    puts "Has failures: #{progress.has_failures?}"
    
    if progress.completed_plugins.any?
      puts "\nCompleted plugins:"
      progress.completed_plugins.each { |plugin| puts "  - #{plugin}" }
    end
    
    if progress.failed_plugins.any?
      puts "\nFailed plugins:"
      progress.failed_plugins.each { |plugin| puts "  - #{plugin}" }
    end
    
    puts "\nOperation running: #{DiscourseCleanup.is_operation_running?}"
    puts "Backup directory exists: #{DiscourseCleanup.backup_directory_exists?}"
    puts "Available backups: #{DiscourseCleanup.available_backups.count}"
  end

  desc "List all available backups"
  task list_backups: :environment do
    backups = DiscourseCleanup.available_backups
    
    if backups.any?
      puts "=== AVAILABLE BACKUPS ==="
      backups.each do |backup|
        backup_path = File.join(DiscourseCleanup.backup_path, backup)
        metadata_file = File.join(backup_path, "metadata.json")
        
        if File.exist?(metadata_file)
          begin
            metadata = JSON.parse(File.read(metadata_file))
            puts "#{backup}:"
            puts "  Plugin: #{metadata['plugin_name']}"
            puts "  Created: #{metadata['created_at']}"
            puts "  Discourse version: #{metadata['discourse_version']}"
          rescue
            puts "#{backup}: (metadata unavailable)"
          end
        else
          puts "#{backup}: (no metadata)"
        end
      end
    else
      puts "No backups found."
    end
  end

  desc "Clean up old backups (keeps last 5 for each plugin)"
  task cleanup_backups: :environment do
    return unless DiscourseCleanup.backup_directory_exists?
    
    puts "Cleaning up old backups..."
    
    backups_by_plugin = {}
    DiscourseCleanup.available_backups.each do |backup|
      plugin_name = backup.split('_').first
      backups_by_plugin[plugin_name] ||= []
      backups_by_plugin[plugin_name] << backup
    end
    
    removed_count = 0
    backups_by_plugin.each do |plugin_name, backups|
      # Sort by timestamp (newest first) and keep only the last 5
      sorted_backups = backups.sort.reverse
      old_backups = sorted_backups[5..-1] || []
      
      old_backups.each do |backup|
        backup_path = File.join(DiscourseCleanup.backup_path, backup)
        FileUtils.rm_rf(backup_path)
        puts "Removed old backup: #{backup}"
        removed_count += 1
      end
    end
    
    puts "Removed #{removed_count} old backups."
  end
end