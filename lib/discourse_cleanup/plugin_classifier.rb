# frozen_string_literal: true

module DiscourseCleanup
  class PluginClassifier
    CATEGORIES = {
      authentication: {
        priority: 2,
        plugins: %w[
          discourse-oauth2-basic
          discourse-openid-connect
          discourse-microsoft-auth
          discourse-apple-auth
          discourse-login-with-amazon
        ],
        action: :evaluate_for_lens_replacement,
        description: "Authentication providers that will be replaced with Lens Protocol"
      },
      
      external_integrations: {
        priority: 1,
        plugins: %w[
          discourse-github
          discourse-patreon
          discourse-zendesk-plugin
          discourse-chat-integration
          discourse-rss-polling
        ],
        action: :remove_non_essential,
        description: "External service integrations that are not essential for core forum functionality"
      },
      
      monetization: {
        priority: 1,
        plugins: %w[
          discourse-patreon
          discourse-subscriptions
          discourse-adplugin
          discourse-affiliate
        ],
        action: :remove_blockchain_incompatible,
        description: "Monetization features that conflict with blockchain architecture"
      },
      
      content_enhancement: {
        priority: 3,
        plugins: %w[
          discourse-math
          discourse-lazy-videos
          discourse-details
          discourse-graphviz
          discourse-local-dates
          footnote
          spoiler-alert
          discourse-templates
        ],
        action: :preserve,
        description: "Content enhancement plugins that improve user experience"
      },
      
      gamification: {
        priority: 3,
        plugins: %w[
          discourse-gamification
          discourse-solved
          discourse-reactions
          discourse-post-voting
          discourse-topic-voting
        ],
        action: :preserve_for_spam_detection,
        description: "Gamification features that help with spam detection and user engagement"
      },
      
      chat_features: {
        priority: 1,
        plugins: %w[chat discourse-presence],
        action: :remove_completely,
        description: "Chat and real-time features that are not needed for forum discussions"
      },
      
      administrative: {
        priority: 3,
        plugins: %w[
          discourse-data-explorer
          automation
          discourse-assign
          discourse-user-notes
          discourse-policy
        ],
        action: :preserve_with_blockchain_adaptations,
        description: "Administrative tools needed for forum management"
      },
      
      convenience: {
        priority: 1,
        plugins: %w[
          discourse-cakeday
          discourse-calendar
          discourse-narrative-bot
          checklist
        ],
        action: :evaluate_for_removal,
        description: "Convenience features that may not be essential"
      },
      
      security: {
        priority: 3,
        plugins: %w[
          discourse-hcaptcha
        ],
        action: :preserve,
        description: "Security-related plugins that help prevent spam and abuse"
      },
      
      development: {
        priority: 2,
        plugins: %w[
          styleguide
          discourse-lti
        ],
        action: :evaluate_for_removal,
        description: "Development and testing tools"
      }
    }.freeze

    def self.classify_plugin(plugin_name)
      CATEGORIES.each do |category, config|
        if config[:plugins].include?(plugin_name)
          return {
            category: category,
            priority: config[:priority],
            action: config[:action],
            description: config[:description]
          }
        end
      end
      
      # Unknown plugin - classify as low priority for evaluation
      {
        category: :unknown,
        priority: 2,
        action: :evaluate_manually,
        description: "Unknown plugin that needs manual evaluation"
      }
    end

    def self.get_plugins_by_priority(priority)
      plugins = []
      
      CATEGORIES.each do |category, config|
        if config[:priority] == priority
          plugins.concat(config[:plugins])
        end
      end
      
      plugins
    end

    def self.get_plugins_by_action(action)
      plugins = []
      
      CATEGORIES.each do |category, config|
        if config[:action] == action
          plugins.concat(config[:plugins])
        end
      end
      
      plugins
    end

    def self.get_removal_plan
      plan = {
        phase_1_safe_removals: get_plugins_by_priority(1),
        phase_2_evaluations: get_plugins_by_priority(2),
        phase_3_preserve: get_plugins_by_priority(3)
      }
      
      # Add installed status
      plan.each do |phase, plugins|
        plan[phase] = plugins.map do |plugin_name|
          {
            name: plugin_name,
            installed: plugin_installed?(plugin_name),
            classification: classify_plugin(plugin_name)
          }
        end
      end
      
      plan
    end

    def self.analyze_current_installation
      installed_plugins = find_installed_plugins
      
      analysis = {
        total_plugins: installed_plugins.count,
        by_category: {},
        by_priority: { 1 => [], 2 => [], 3 => [] },
        unknown_plugins: []
      }
      
      installed_plugins.each do |plugin_name|
        classification = classify_plugin(plugin_name)
        
        # Group by category
        category = classification[:category]
        analysis[:by_category][category] ||= []
        analysis[:by_category][category] << plugin_name
        
        # Group by priority
        priority = classification[:priority]
        analysis[:by_priority][priority] << plugin_name
        
        # Track unknown plugins
        if category == :unknown
          analysis[:unknown_plugins] << plugin_name
        end
      end
      
      analysis
    end

    def self.generate_cleanup_recommendations
      analysis = analyze_current_installation
      
      recommendations = {
        immediate_removals: [],
        evaluate_for_removal: [],
        preserve: [],
        unknown_plugins: analysis[:unknown_plugins]
      }
      
      analysis[:by_priority][1].each do |plugin_name|
        classification = classify_plugin(plugin_name)
        recommendations[:immediate_removals] << {
          plugin: plugin_name,
          reason: classification[:description],
          action: classification[:action]
        }
      end
      
      analysis[:by_priority][2].each do |plugin_name|
        classification = classify_plugin(plugin_name)
        recommendations[:evaluate_for_removal] << {
          plugin: plugin_name,
          reason: classification[:description],
          action: classification[:action]
        }
      end
      
      analysis[:by_priority][3].each do |plugin_name|
        classification = classify_plugin(plugin_name)
        recommendations[:preserve] << {
          plugin: plugin_name,
          reason: classification[:description],
          action: classification[:action]
        }
      end
      
      recommendations
    end

    private

    def self.plugin_installed?(plugin_name)
      Dir.exist?(File.join(Rails.root, "plugins", plugin_name))
    end

    def self.find_installed_plugins
      Dir.glob(File.join(Rails.root, "plugins", "*"))
         .select { |f| File.directory?(f) }
         .map { |f| File.basename(f) }
    end
  end
end