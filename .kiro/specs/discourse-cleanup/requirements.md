# Requirements Document

## Introduction

This project aims to create a minimal, clean version of Discourse by removing unnecessary plugins, features, and components while maintaining core forum functionality. The goal is to prepare the codebase for backend replacement with Lens Protocol by eliminating non-essential features that would complicate the migration process.

## Glossary

- **Discourse_Core**: The essential forum functionality including topics, posts, users, categories, and basic moderation
- **Plugin_System**: Modular extensions that add features beyond core forum functionality
- **Chat_Feature**: Real-time messaging functionality separate from forum discussions
- **Authentication_Providers**: Third-party login systems (OAuth, SSO, etc.)
- **Gamification_Features**: Points, badges, voting systems, and user engagement mechanics
- **Integration_Plugins**: Connectors to external services (GitHub, Patreon, Zendesk, etc.)
- **Content_Enhancement**: Features that modify how content is displayed or processed (math, videos, etc.)
- **Administrative_Tools**: Advanced moderation and analytics features beyond basic forum management

## Requirements

### Requirement 1

**User Story:** As a developer preparing Discourse for Lens Protocol integration, I want to remove all chat-related functionality, so that the codebase focuses solely on forum discussions.

#### Acceptance Criteria

1. WHEN the chat plugin is removed, THE Discourse_Core SHALL continue to function without real-time messaging capabilities
2. THE Discourse_Core SHALL maintain all topic-based discussion functionality after chat removal
3. THE Discourse_Core SHALL not reference any chat-related database tables or models after cleanup
4. THE Discourse_Core SHALL not include chat-related JavaScript components or routes after removal

### Requirement 2

**User Story:** As a developer preparing for Lens Protocol integration, I want to identify and isolate the authentication system components, so that they can be replaced with Lens Protocol wallet-based authentication.

#### Acceptance Criteria

1. THE Discourse_Core SHALL have clearly identified authentication boundaries and interfaces
2. WHEN authentication components are analyzed, THE Discourse_Core SHALL reveal all user model dependencies and session management
3. THE Discourse_Core SHALL maintain functional separation between authentication logic and core forum features
4. THE Discourse_Core SHALL document all authentication touchpoints for future Lens Protocol replacement

### Requirement 3

**User Story:** As a developer preserving anti-spam capabilities, I want to retain gamification features that help identify legitimate users, so that the forum maintains effective bot and spam detection.

#### Acceptance Criteria

1. THE Discourse_Core SHALL maintain trust levels and reputation systems for spam prevention
2. THE Discourse_Core SHALL preserve badge systems that indicate user credibility and engagement
3. THE Discourse_Core SHALL retain voting mechanisms that help surface quality content and identify problematic posts
4. THE Discourse_Core SHALL keep user activity tracking features that support automated moderation

### Requirement 4

**User Story:** As a developer evaluating external integrations, I want to understand which service integrations are essential versus optional, so that I can make informed decisions about what to remove.

#### Acceptance Criteria

1. THE Discourse_Core SHALL be analyzed to categorize external integrations by importance and functionality
2. WHEN external integrations are evaluated, THE Discourse_Core SHALL identify which provide core forum features versus convenience features
3. THE Discourse_Core SHALL document the purpose and dependencies of each external service integration
4. THE Discourse_Core SHALL maintain essential integrations while removing purely optional convenience features

### Requirement 5

**User Story:** As a developer preserving the rich text editing experience, I want to retain all content enhancement plugins that improve the writing and reading experience, so that users can create high-quality posts with images, formatting, and specialized content.

#### Acceptance Criteria

1. THE Discourse_Core SHALL maintain the comprehensive text editor with all formatting capabilities
2. THE Discourse_Core SHALL preserve image uploading, embedding, and display features
3. THE Discourse_Core SHALL retain specialized content processors like math rendering, code highlighting, and video embedding
4. THE Discourse_Core SHALL keep all content enhancement plugins that improve user experience and content quality

### Requirement 6

**User Story:** As a developer preserving administrative capabilities, I want to retain advanced administrative tools and moderation features, so that forum administrators have comprehensive control over their communities.

#### Acceptance Criteria

1. THE Discourse_Core SHALL maintain all advanced user management and content moderation capabilities
2. THE Discourse_Core SHALL preserve comprehensive site settings and configuration management
3. THE Discourse_Core SHALL retain analytics, data exploration, and automation features for administrative use
4. THE Discourse_Core SHALL adapt administrative tools to work with blockchain constraints (hiding rather than deleting content)

### Requirement 7

**User Story:** As a developer understanding external integrations, I want to categorize plugins by their functionality, so that I can make informed decisions about what to remove for a Lens Protocol forum.

#### Acceptance Criteria

1. THE Discourse_Core SHALL categorize plugins into: authentication providers, monetization tools, developer integrations, content enhancers, and administrative tools
2. THE Discourse_Core SHALL identify which plugins provide bidirectional sync (forum ↔ external service) versus unidirectional features
3. THE Discourse_Core SHALL document which plugins are purely convenience features versus those that provide essential functionality
4. THE Discourse_Core SHALL prioritize removing plugins that conflict with blockchain-based architecture (like centralized payment systems)

### Requirement 8

**User Story:** As a developer ensuring system stability, I want to identify and preserve core dependencies, so that the cleaned Discourse installation remains functional.

#### Acceptance Criteria

1. THE Discourse_Core SHALL maintain all essential Ruby gems and JavaScript dependencies
2. WHEN optional plugins are removed, THE Discourse_Core SHALL not have broken dependency references
3. THE Discourse_Core SHALL pass all core functionality tests after cleanup
4. THE Discourse_Core SHALL maintain database integrity without removed plugin tables