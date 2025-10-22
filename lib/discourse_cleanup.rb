# frozen_string_literal: true

require_relative 'discourse_cleanup/cleanup_backuper'
require_relative 'discourse_cleanup/cleanup_manager'
require_relative 'discourse_cleanup/cleanup_rollback'
require_relative 'discourse_cleanup/system_validator'
require_relative 'discourse_cleanup/plugin_classifier'
require_relative 'discourse_cleanup/cleanup_progress'
require_relative 'discourse_cleanup/cleanup_coordinator'

module DiscourseCleanup
  class OperationRunningError < RuntimeError
  end

  CLEANUP_LOGS_CHANNEL = "/admin/cleanup/logs"
  BACKUP_DIR = "cleanup_backups"

  def self.backup_plugin!(plugin_name, opts = {})
    CleanupBackuper.new(plugin_name, opts).backup_plugin
  end

  def self.remove_plugin!(plugin_name, opts = {})
    raise OperationRunningError if is_operation_running?
    
    CleanupManager.new(plugin_name, opts).remove_plugin
  end

  def self.rollback_plugin!(plugin_name, opts = {})
    raise OperationRunningError if is_operation_running?
    
    CleanupRollback.new(plugin_name, opts).restore_plugin
  end

  def self.validate_system!
    SystemValidator.new.validate_all
  end

  def self.mark_as_running!
    Discourse.redis.setex(running_key, 60, "1")
    save_start_logs_message_id
    keep_it_running
  end

  def self.is_operation_running?
    !!Discourse.redis.get(running_key)
  end

  def self.mark_as_not_running!
    Discourse.redis.del(running_key)
  end

  def self.operations_status
    {
      is_operation_running: is_operation_running?,
      backup_directory_exists: backup_directory_exists?,
      available_backups: available_backups
    }
  end

  def self.logs
    id = start_logs_message_id
    MessageBus.backlog(CLEANUP_LOGS_CHANNEL, id).map { |m| m.data }
  end

  def self.backup_directory_exists?
    Dir.exist?(backup_path)
  end

  def self.available_backups
    return [] unless backup_directory_exists?
    
    Dir.glob(File.join(backup_path, "*")).select { |f| File.directory?(f) }
       .map { |f| File.basename(f) }
  end

  def self.backup_path
    @backup_path ||= File.join(Rails.root, "tmp", BACKUP_DIR)
  end

  private

  def self.running_key
    "discourse_cleanup_operation_is_running"
  end

  def self.keep_it_running
    db = RailsMultisite::ConnectionManagement.current_db

    Thread.new do
      RailsMultisite::ConnectionManagement.with_connection(db) do
        Thread.current.name = "keep_cleanup_running"

        while true
          Discourse.redis.expire(running_key, 1.minute)
          sleep 30.seconds
        end
      end
    end
  end

  def self.save_start_logs_message_id
    id = MessageBus.last_id(CLEANUP_LOGS_CHANNEL)
    Discourse.redis.set(start_logs_message_id_key, id)
  end

  def self.start_logs_message_id
    Discourse.redis.get(start_logs_message_id_key).to_i
  end

  def self.start_logs_message_id_key
    "cleanup_start_logs_message_id"
  end
end