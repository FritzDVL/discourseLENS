# frozen_string_literal: true

module DiscourseCleanup
  class CleanupProgress
    include ActiveModel::Model
    include ActiveModel::Serialization

    attr_accessor :phase, :current_plugin, :completed_plugins, :failed_plugins, 
                  :rollback_data, :started_at, :updated_at, :total_plugins

    PHASES = %i[
      analysis
      backup_creation
      safe_removals
      authentication_preparation
      selective_removals
      optimization
      validation
      completed
      failed
    ].freeze

    def initialize(attributes = {})
      @phase = :analysis
      @completed_plugins = []
      @failed_plugins = []
      @rollback_data = {}
      @started_at = Time.current
      @updated_at = Time.current
      @total_plugins = 0
      
      super(attributes)
    end

    def record_plugin_removal(plugin_name, success, backup_path = nil)
      @updated_at = Time.current
      
      if success
        @completed_plugins << plugin_name unless @completed_plugins.include?(plugin_name)
        @rollback_data[plugin_name] = { 
          backup_path: backup_path, 
          timestamp: Time.current,
          phase: @phase
        }
        log("Successfully removed plugin: #{plugin_name}")
      else
        @failed_plugins << plugin_name unless @failed_plugins.include?(plugin_name)
        log("Failed to remove plugin: #{plugin_name}")
      end
      
      save_progress
    end

    def record_plugin_backup(plugin_name, success, backup_path = nil)
      @updated_at = Time.current
      
      if success
        @rollback_data[plugin_name] ||= {}
        @rollback_data[plugin_name][:backup_path] = backup_path
        @rollback_data[plugin_name][:backup_timestamp] = Time.current
        log("Successfully backed up plugin: #{plugin_name}")
      else
        log("Failed to backup plugin: #{plugin_name}")
      end
      
      save_progress
    end

    def advance_phase(new_phase)
      return false unless PHASES.include?(new_phase)
      return false unless can_advance_to_phase?(new_phase)
      
      @phase = new_phase
      @updated_at = Time.current
      log("Advanced to phase: #{new_phase}")
      
      save_progress
      true
    end

    def set_current_plugin(plugin_name)
      @current_plugin = plugin_name
      @updated_at = Time.current
      save_progress
    end

    def completion_percentage
      return 0 if @total_plugins == 0
      
      completed_count = @completed_plugins.count
      (completed_count.to_f / @total_plugins * 100).round(2)
    end

    def duration
      return 0 unless @started_at
      
      end_time = phase_completed? ? @updated_at : Time.current
      end_time - @started_at
    end

    def phase_completed?
      @phase == :completed
    end

    def has_failures?
      @failed_plugins.any?
    end

    def can_rollback?
      @rollback_data.any? && @completed_plugins.any?
    end

    def get_rollback_data(plugin_name)
      @rollback_data[plugin_name]
    end

    def summary
      {
        phase: @phase,
        current_plugin: @current_plugin,
        completed_plugins: @completed_plugins.count,
        failed_plugins: @failed_plugins.count,
        total_plugins: @total_plugins,
        completion_percentage: completion_percentage,
        duration_seconds: duration.to_i,
        can_rollback: can_rollback?,
        has_failures: has_failures?,
        started_at: @started_at&.iso8601,
        updated_at: @updated_at&.iso8601
      }
    end

    def detailed_status
      {
        **summary,
        completed_plugin_list: @completed_plugins,
        failed_plugin_list: @failed_plugins,
        rollback_available_for: @rollback_data.keys,
        phase_history: load_phase_history
      }
    end

    def self.current
      @current_progress ||= load_progress || new
    end

    def self.reset!
      @current_progress = new
      @current_progress.save_progress
      @current_progress
    end

    private

    def can_advance_to_phase?(new_phase)
      current_index = PHASES.index(@phase)
      new_index = PHASES.index(new_phase)
      
      return false unless current_index && new_index
      
      # Can advance to next phase or jump to failed/completed
      new_index == current_index + 1 || 
      [:failed, :completed].include?(new_phase)
    end

    def save_progress
      progress_data = {
        phase: @phase,
        current_plugin: @current_plugin,
        completed_plugins: @completed_plugins,
        failed_plugins: @failed_plugins,
        rollback_data: @rollback_data,
        started_at: @started_at&.iso8601,
        updated_at: @updated_at&.iso8601,
        total_plugins: @total_plugins
      }
      
      Discourse.redis.set(progress_key, JSON.generate(progress_data))
      save_phase_history
    end

    def self.load_progress
      data = Discourse.redis.get(progress_key)
      return nil unless data
      
      begin
        parsed_data = JSON.parse(data)
        progress = new
        
        progress.phase = parsed_data["phase"]&.to_sym || :analysis
        progress.current_plugin = parsed_data["current_plugin"]
        progress.completed_plugins = parsed_data["completed_plugins"] || []
        progress.failed_plugins = parsed_data["failed_plugins"] || []
        progress.rollback_data = parsed_data["rollback_data"] || {}
        progress.total_plugins = parsed_data["total_plugins"] || 0
        
        if parsed_data["started_at"]
          progress.started_at = Time.parse(parsed_data["started_at"])
        end
        
        if parsed_data["updated_at"]
          progress.updated_at = Time.parse(parsed_data["updated_at"])
        end
        
        progress
      rescue JSON::ParserError => e
        Rails.logger.error("Failed to parse cleanup progress: #{e.message}")
        nil
      end
    end

    def save_phase_history
      history = load_phase_history
      history << {
        phase: @phase,
        timestamp: @updated_at&.iso8601,
        completed_plugins_count: @completed_plugins.count,
        failed_plugins_count: @failed_plugins.count
      }
      
      # Keep only last 50 entries
      history = history.last(50)
      
      Discourse.redis.set(phase_history_key, JSON.generate(history))
    end

    def load_phase_history
      data = Discourse.redis.get(phase_history_key)
      return [] unless data
      
      begin
        JSON.parse(data)
      rescue JSON::ParserError
        []
      end
    end

    def self.progress_key
      "discourse_cleanup_progress"
    end

    def progress_key
      self.class.progress_key
    end

    def phase_history_key
      "discourse_cleanup_phase_history"
    end

    def log(message)
      Rails.logger.info("[DiscourseCleanup::Progress] #{message}")
      MessageBus.publish(DiscourseCleanup::CLEANUP_LOGS_CHANNEL, message)
    end
  end
end