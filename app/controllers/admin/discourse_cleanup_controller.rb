# frozen_string_literal: true

class Admin::DiscourseCleanupController < Admin::AdminController
  def index
    render json: {
      status: DiscourseCleanup.operations_status,
      progress: DiscourseCleanup::CleanupProgress.current.summary
    }
  end

  def analyze
    coordinator = DiscourseCleanup::CleanupCoordinator.new
    plan = coordinator.get_cleanup_plan
    
    render json: plan
  end

  def start_cleanup
    dry_run = params[:dry_run] == 'true'
    
    coordinator = DiscourseCleanup::CleanupCoordinator.new(dry_run: dry_run)
    result = coordinator.start_cleanup
    
    render json: result
  end

  def backup_plugin
    plugin_name = params[:plugin_name]
    
    if plugin_name.blank?
      render json: { success: false, error: "Plugin name is required" }, status: 400
      return
    end
    
    result = DiscourseCleanup.backup_plugin!(plugin_name)
    render json: result
  end

  def remove_plugin
    plugin_name = params[:plugin_name]
    dry_run = params[:dry_run] == 'true'
    
    if plugin_name.blank?
      render json: { success: false, error: "Plugin name is required" }, status: 400
      return
    end
    
    result = DiscourseCleanup.remove_plugin!(plugin_name, dry_run: dry_run)
    render json: result
  end

  def rollback
    plugin_name = params[:plugin_name]
    
    coordinator = DiscourseCleanup::CleanupCoordinator.new
    result = coordinator.rollback_cleanup(plugin_name)
    
    render json: result
  end

  def validate_system
    result = DiscourseCleanup.validate_system!
    render json: result
  end

  def progress
    progress = DiscourseCleanup::CleanupProgress.current
    render json: progress.detailed_status
  end

  def logs
    logs = DiscourseCleanup.logs
    render json: { logs: logs }
  end

  def backups
    backups = DiscourseCleanup.available_backups.map do |backup|
      backup_path = File.join(DiscourseCleanup.backup_path, backup)
      metadata_file = File.join(backup_path, "metadata.json")
      
      backup_info = { name: backup, path: backup_path }
      
      if File.exist?(metadata_file)
        begin
          metadata = JSON.parse(File.read(metadata_file))
          backup_info.merge!(metadata)
        rescue JSON::ParserError
          backup_info[:error] = "Invalid metadata"
        end
      end
      
      backup_info
    end
    
    render json: { backups: backups }
  end
end