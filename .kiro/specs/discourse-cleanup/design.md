# Design Document

## Overview

This design outlines a systematic approach to cleaning up Discourse by removing unnecessary plugins and features while preserving core forum functionality. The goal is to create a minimal, maintainable codebase that can be prepared for Lens Protocol integration. The cleanup will be performed in phases to ensure system stability and allow for rollback if issues arise.

## Architecture

### Plugin Classification System

Discourse uses a modular plugin architecture where each plugin can be enabled/disabled via site settings. The cleanup strategy leverages this architecture by categorizing plugins into removal priority levels:

**Priority 1 - Safe to Remove (Non-Essential Features)**
- External service integrations that don't affect core functionality
- Convenience features that duplicate existing functionality
- Specialized content processors that aren't widely used

**Priority 2 - Evaluate for Removal (Context-Dependent)**
- Authentication providers (will be replaced with Lens Protocol)
- Monetization features (may conflict with blockchain architecture)
- Advanced administrative tools (evaluate based on blockchain constraints)

**Priority 3 - Preserve (Core or Anti-Spam Features)**
- Content enhancement plugins that improve user experience
- Gamification features that help with spam detection
- Essential administrative and moderation tools

### Authentication System Analysis

The current authentication system is deeply integrated throughout the codebase with these key components:

- **User Model** (`app/models/user.rb`) - Core user data and relationships
- **Authentication Tokens** (`app/models/user_auth_token.rb`) - Session management
- **Associated Accounts** (`app/models/user_associated_account.rb`) - Third-party auth links
- **Guardian System** (`lib/guardian/`) - Permission and access control
- **Auth Providers** (`lib/auth/`) - Authentication strategy implementations

## Components and Interfaces

### Plugin Management Interface

```ruby
# Site Setting Based Control
class PluginController
  def disable_plugin(plugin_name)
    SiteSetting.set("#{plugin_name}_enabled", false)
    restart_required = check_restart_requirement(plugin_name)
    { disabled: true, restart_required: restart_required }
  end
  
  def remove_plugin_files(plugin_name)
    plugin_path = Rails.root.join("plugins", plugin_name)
    backup_plugin(plugin_path)
    FileUtils.rm_rf(plugin_path)
  end
end
```

### Database Cleanup Interface

```ruby
# Plugin Data Removal
class PluginDataCleaner
  def remove_plugin_data(plugin_name)
    # Remove plugin-specific tables
    plugin_tables = find_plugin_tables(plugin_name)
    plugin_tables.each { |table| drop_table_safely(table) }
    
    # Remove plugin store data
    PluginStore.remove_all_for(plugin_name)
    
    # Remove site settings
    remove_plugin_site_settings(plugin_name)
  end
end
```

### Authentication Boundary Interface

```ruby
# Authentication System Isolation
module AuthenticationBoundary
  def self.identify_auth_touchpoints
    {
      models: %w[User UserAuthToken UserAssociatedAccount],
      controllers: %w[SessionController UsersController],
      middleware: %w[CurrentUser AuthenticationMiddleware],
      services: %w[UserAuthenticator SessionManager]
    }
  end
  
  def self.prepare_for_lens_integration
    # Document current auth flow
    # Identify integration points
    # Create compatibility layer
  end
end
```

## Data Models

### Plugin Classification Data Structure

```ruby
class PluginClassification
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
      action: :evaluate_for_lens_replacement
    },
    
    external_integrations: {
      priority: 1,
      plugins: %w[
        discourse-github
        discourse-patreon
        discourse-zendesk-plugin
        discourse-chat-integration
      ],
      action: :remove_non_essential
    },
    
    content_enhancement: {
      priority: 3,
      plugins: %w[
        discourse-math
        discourse-lazy-videos
        discourse-details
        footnote
        spoiler-alert
      ],
      action: :preserve
    },
    
    gamification: {
      priority: 3,
      plugins: %w[
        discourse-gamification
        discourse-solved
        discourse-reactions
      ],
      action: :preserve_for_spam_detection
    },
    
    chat_features: {
      priority: 1,
      plugins: %w[chat discourse-presence],
      action: :remove_completely
    },
    
    administrative: {
      priority: 3,
      plugins: %w[
        discourse-data-explorer
        automation
        discourse-assign
      ],
      action: :preserve_with_blockchain_adaptations
    }
  }
end
```

### Cleanup State Tracking

```ruby
class CleanupProgress
  include ActiveModel::Model
  
  attr_accessor :phase, :current_plugin, :completed_plugins, :failed_plugins, :rollback_data
  
  def initialize
    @phase = :analysis
    @completed_plugins = []
    @failed_plugins = []
    @rollback_data = {}
  end
  
  def record_plugin_removal(plugin_name, success, backup_path = nil)
    if success
      @completed_plugins << plugin_name
      @rollback_data[plugin_name] = { backup_path: backup_path, timestamp: Time.current }
    else
      @failed_plugins << plugin_name
    end
  end
end
```

## Error Handling

### Rollback Strategy

```ruby
class CleanupRollback
  def self.restore_plugin(plugin_name, backup_data)
    backup_path = backup_data[:backup_path]
    target_path = Rails.root.join("plugins", plugin_name)
    
    begin
      FileUtils.cp_r(backup_path, target_path)
      restore_database_data(plugin_name, backup_data)
      restore_site_settings(plugin_name, backup_data)
      { success: true }
    rescue => e
      { success: false, error: e.message }
    end
  end
end
```

### Dependency Validation

```ruby
class DependencyValidator
  def self.check_plugin_dependencies(plugin_name)
    dependencies = find_plugin_dependencies(plugin_name)
    dependent_plugins = find_dependent_plugins(plugin_name)
    
    {
      can_remove: dependent_plugins.empty?,
      dependencies: dependencies,
      dependent_plugins: dependent_plugins,
      warnings: generate_removal_warnings(plugin_name)
    }
  end
end
```

## Testing Strategy

### Pre-Removal Testing

1. **Functionality Tests**: Verify all core forum features work before removal
2. **Plugin Dependency Tests**: Ensure no critical dependencies will be broken
3. **Database Integrity Tests**: Validate database state before modifications

### Post-Removal Testing

1. **Core Feature Tests**: Verify forum functionality after each plugin removal
2. **Performance Tests**: Ensure removal improves or maintains performance
3. **Integration Tests**: Test remaining plugin interactions

### Rollback Testing

1. **Backup Validation**: Verify backups can be restored successfully
2. **State Consistency**: Ensure rollback returns system to previous state
3. **Data Integrity**: Validate no data corruption during rollback process

## Implementation Phases

### Phase 1: Analysis and Preparation
- Catalog all installed plugins and their purposes
- Analyze plugin dependencies and interactions
- Create comprehensive backup strategy
- Document current authentication system architecture

### Phase 2: Safe Removals (Priority 1 Plugins)
- Remove chat functionality completely
- Remove non-essential external integrations
- Remove convenience features that duplicate core functionality
- Validate system stability after each removal

### Phase 3: Authentication System Preparation
- Document all authentication touchpoints
- Create compatibility layer for future Lens integration
- Isolate authentication logic from core forum features
- Prepare authentication replacement strategy

### Phase 4: Selective Removals (Priority 2 Plugins)
- Evaluate monetization plugins for blockchain compatibility
- Remove authentication providers not needed for Lens integration
- Remove advanced features that conflict with blockchain constraints

### Phase 5: Optimization and Documentation
- Optimize remaining codebase for performance
- Document all changes and removal decisions
- Create migration guide for Lens Protocol integration
- Validate final system meets all requirements

## Security Considerations

### Data Protection During Cleanup
- Encrypt all backup data
- Secure deletion of sensitive plugin data
- Audit trail of all removal operations
- Validation of data integrity throughout process

### Authentication Security
- Maintain secure session management during auth system changes
- Ensure no security vulnerabilities introduced during cleanup
- Preserve essential security features like rate limiting and CSRF protection
- Document security implications of each plugin removal

## Performance Impact

### Expected Improvements
- Reduced memory footprint from fewer loaded plugins
- Faster application startup time
- Reduced database query complexity
- Simplified codebase maintenance

### Monitoring Strategy
- Baseline performance metrics before cleanup
- Monitor key performance indicators during each phase
- Track resource usage improvements
- Validate performance gains meet expectations