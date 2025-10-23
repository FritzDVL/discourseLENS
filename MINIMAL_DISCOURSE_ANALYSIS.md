# Minimal Discourse Architecture Analysis

## Goal
Identify the minimal architecture that maintains Discourse's frontend style while being translatable to a different framework.

**KEEP:**
- Advanced User Features (badges, profiles, user directory)
- Email System (notifications, digests, etc.)
- Backup/Import System

**REMOVE for Minimal Architecture:**

## 1. ADMIN INTERFACE (MASSIVE REMOVAL - 70-80% reduction)

### Frontend Admin Components to Remove:
```
app/assets/javascripts/discourse/admin/
├── adapters/ (ALL - 13+ files)
├── components/ (200+ files including):
│   ├── admin-theme-editor.gjs
│   ├── admin-site-settings-*.gjs
│   ├── admin-reports-*.gjs
│   ├── admin-dashboard-*.gjs
│   ├── theme-*.gjs (10+ theme management files)
│   ├── install-theme-*.gjs
│   └── [Most admin UI components]
├── controllers/ (50+ files)
├── models/ (20+ files including):
│   ├── admin-plugin.js
│   ├── theme.js
│   ├── site-setting.js
│   └── [Most admin models]
├── routes/ (60+ files)
├── services/ (8+ files)
└── templates/ (100+ files)
```

### Backend Admin Components to Remove:
```
app/controllers/admin/ (ALL - 40+ controllers)
app/models/ (Admin-specific models):
├── admin_dashboard_*.rb
├── admin_notice.rb
└── [Admin-only models]
```

## 2. THEME SYSTEM (COMPLETE REMOVAL)

### Frontend Theme Files:
```
app/assets/javascripts/
├── asset-processor/
│   ├── add-theme-globals.js
│   ├── theme-hbs-ast-transforms.js
│   ├── theme-rollup.js
│   └── [Theme build tools]
├── discourse/app/lib/
│   ├── theme-*.js (5+ files)
│   ├── popular-themes.js
│   └── theme-settings-store.js
└── discourse/app/components/
    ├── theme-*.gjs (10+ files)
    └── install-theme-*.gjs
```

### Backend Theme Files:
```
app/controllers/
├── theme_javascripts_controller.rb
└── admin/themes_controller.rb

app/models/
├── theme*.rb (Multiple theme models)
├── color_scheme*.rb
└── [Theme-related models]

lib/stylesheet/ (Theme compilation system)
```

## 3. ADVANCED SEARCH & ANALYTICS

### Search Components:
```
app/controllers/
├── admin/search_*.rb
└── admin/search_logs_controller.rb

app/assets/javascripts/discourse/admin/
├── components/admin-search*.gjs
├── controllers/admin-search*.js
└── routes/admin-search*.js
```

### Analytics & Reporting:
```
app/controllers/admin/reports_controller.rb
app/assets/javascripts/discourse/admin/
├── components/admin-report*.gjs (10+ files)
├── controllers/admin-reports.js
└── routes/admin-reports/
```

## 4. WEBHOOK SYSTEM

```
app/controllers/
├── webhooks_controller.rb
└── admin/web_hooks_controller.rb

app/models/
├── web_hook*.rb
└── [Webhook models]

app/assets/javascripts/discourse/admin/
├── components/webhook-*.gjs
└── [Webhook admin UI]
```

## 5. EMBEDDING SYSTEM

```
app/controllers/
├── embed_controller.rb
└── admin/embedding_controller.rb

app/models/embeddable_host.rb
lib/embed.rb
```

## 6. ADVANCED MODERATION TOOLS

```
app/controllers/
├── reviewables_controller.rb
├── admin/screened_*.rb
└── [Advanced moderation]

app/models/
├── reviewable*.rb
├── screened_*.rb
└── [Moderation models]
```

## 7. DEVELOPMENT/TESTING INFRASTRUCTURE

```
app/assets/javascripts/
├── **/*.test.mjs (All test files)
├── discourse/testem.js
├── discourse/tests/ (Entire test suite)
└── [Development utilities]
```

## 8. INTERNATIONALIZATION (If English-only)

```
config/locales/ (Keep only en.yml)
lib/i18n/ (Simplify)
app/controllers/extra_locales_controller.rb
```

## MINIMAL CORE ARCHITECTURE

### Essential Backend (Ruby/Rails):
```
app/
├── controllers/
│   ├── application_controller.rb
│   ├── topics_controller.rb
│   ├── posts_controller.rb
│   ├── categories_controller.rb
│   ├── users_controller.rb
│   ├── session_controller.rb
│   ├── notifications_controller.rb
│   ├── search_controller.rb (basic)
│   ├── uploads_controller.rb
│   └── [Core CRUD controllers]
├── models/
│   ├── user.rb
│   ├── topic.rb
│   ├── post.rb
│   ├── category.rb
│   ├── notification.rb
│   ├── upload.rb
│   └── [Core data models]
├── mailers/ (KEEP - as requested)
├── jobs/ (Essential background jobs only)
└── views/ (Basic templates only)
```

### Essential Frontend (Ember.js):
```
app/assets/javascripts/discourse/app/
├── components/ (Core UI components):
│   ├── topic-list.gjs
│   ├── post.gjs
│   ├── composer.gjs
│   ├── user-card.gjs
│   ├── navigation.gjs
│   └── [Essential UI components]
├── controllers/ (Core controllers only)
├── models/ (Core data models)
├── routes/ (Core routing)
├── services/ (Essential services)
└── templates/ (Core templates)
```

## ESTIMATED SIZE REDUCTION

**Frontend JavaScript:**
- Remove ~80% of admin interface
- Remove ~100% of theme system
- Remove ~70% of advanced features
- **Total: ~75% reduction**

**Backend Ruby:**
- Remove ~60% of admin controllers
- Remove ~100% of theme system
- Remove ~50% of advanced features
- **Total: ~55% reduction**

**Database Migrations:**
- Remove theme-related migrations
- Remove admin-specific migrations
- Remove advanced feature migrations
- **Total: ~40% reduction**

## FRAMEWORK TRANSLATION STRATEGY

### Core Components to Preserve UI/UX:
1. **Topic List Component** - Main discussion view
2. **Post Component** - Individual post rendering
3. **Composer** - Post creation interface
4. **Navigation** - Category/topic navigation
5. **User Interface** - Login, profiles, notifications
6. **Search Interface** - Basic search functionality

### API Endpoints to Maintain:
1. `/topics` - Topic CRUD
2. `/posts` - Post CRUD  
3. `/categories` - Category management
4. `/users` - User management
5. `/notifications` - User notifications
6. `/search` - Basic search
7. `/uploads` - File uploads

This minimal architecture would provide:
- Modern discussion interface (Discourse's key value)
- User management and profiles
- Email notifications
- Backup/restore capability
- Clean, translatable codebase (~40% of original size)