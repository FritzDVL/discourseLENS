# Folders to Delete for Minimal Discourse Architecture

## MAJOR FOLDER DELETIONS (Complete Removal)

### 1. ADMIN INTERFACE - Complete Frontend Removal
```bash
# Delete entire admin frontend
rm -rf app/assets/javascripts/discourse/admin/
```
**Impact:** Removes 200+ admin UI components, controllers, routes, models, templates
**Size:** ~70-80% of admin interface code

### 2. THEME SYSTEM - Complete Removal
```bash
# Delete theme build tools
rm -rf app/assets/javascripts/asset-processor/
rm -rf app/assets/javascripts/discourse/app/lib/theme*
rm -rf app/assets/javascripts/discourse/app/components/theme*

# Delete backend theme system
rm -rf lib/stylesheet/
```
**Impact:** Removes entire theme customization and compilation system
**Size:** ~100% of theme functionality

### 3. TESTING INFRASTRUCTURE - Complete Removal
```bash
# Delete all test files and directories
rm -rf app/assets/javascripts/discourse/tests/
find . -name "*.test.mjs" -delete
find . -name "*_test.rb" -delete
find . -name "*_spec.rb" -delete
rm -rf spec/
rm -rf test/
```
**Impact:** Removes all testing infrastructure
**Size:** Significant reduction in development files

### 4. PLUGINS - Complete Removal (as requested earlier)
```bash
# Delete all bundled plugins
rm -rf plugins/
```
**Impact:** Removes polls, reactions, math, local-dates, etc.
**Size:** ~30-40% of extended functionality

### 5. ADMIN BACKEND CONTROLLERS - Complete Removal
```bash
# Delete admin controllers
rm -rf app/controllers/admin/
```
**Impact:** Removes all admin backend functionality
**Size:** ~40+ admin controller files

### 6. DEVELOPMENT TOOLS - Complete Removal
```bash
# Delete development and build tools
rm -rf app/assets/javascripts/custom-proxy/
rm -rf app/assets/javascripts/deprecation-silencer/
rm -rf app/assets/javascripts/dialog-holder/
```
**Impact:** Removes development utilities
**Size:** Development overhead

### 7. MIGRATIONS TOOL - Complete Removal
```bash
# Delete migrations utility (separate from db/migrate)
rm -rf migrations/
```
**Impact:** Removes import/migration tooling
**Size:** Import utilities

### 8. DOCUMENTATION - Complete Removal
```bash
# Delete documentation
rm -rf docs/
find . -name "README.md" -not -path "./README.md" -delete
```
**Impact:** Removes documentation files
**Size:** Documentation overhead

## SELECTIVE FOLDER CLEANUP (Partial Removal)

### 9. Database Migrations - Keep Essential Only
```bash
# Keep only recent essential migrations (example - adjust dates as needed)
cd db/migrate/
# Keep only migrations from last 2 years for core functionality
find . -name "*.rb" -not -newer-than 2023-01-01 -delete
# Or manually review and keep only user/topic/post/category related migrations
```

### 10. Locales - Keep English Only
```bash
# Keep only English locales
cd config/locales/
find . -name "*.yml" -not -name "*en*" -delete
cd ../../plugins/
find . -name "*.yml" -not -name "*en*" -delete
```

### 11. JavaScript Libraries - Remove Non-Essential
```bash
# Remove specific non-essential JS directories
rm -rf app/assets/javascripts/truth-helpers/
rm -rf app/assets/javascripts/ember-cli-progress-ci/
rm -rf app/assets/javascripts/float-kit/
rm -rf app/assets/javascripts/select-kit/
```

## BACKEND MODEL CLEANUP (Selective)

### 12. Remove Admin-Specific Models
```bash
cd app/models/
# Remove admin-specific models (review each before deleting)
rm -f admin_*.rb
rm -f *_report.rb
rm -f theme*.rb
rm -f color_scheme*.rb
rm -f screened_*.rb
rm -f reviewable*.rb
rm -f web_hook*.rb
rm -f embeddable_host.rb
```

### 13. Remove Admin-Specific Controllers (Non-Admin folder)
```bash
cd app/controllers/
# Remove specific admin-related controllers
rm -f theme_javascripts_controller.rb
rm -f stylesheets_controller.rb
rm -f svg_sprite_controller.rb
rm -f qunit_controller.rb
rm -f safe_mode_controller.rb
```

### 14. Remove Admin Views
```bash
# Remove admin-specific view directories
rm -rf app/views/admin/
rm -rf app/views/email/  # If not using advanced email templates
```

## ESTIMATED IMPACT

**Total Size Reduction:**
- **Frontend:** ~75-80% reduction
- **Backend:** ~50-60% reduction  
- **Overall Codebase:** ~60-70% reduction

**Remaining Core:**
- Topic/Post CRUD
- User management (keeping advanced features as requested)
- Categories
- Basic search
- Email system (keeping as requested)
- Backup system (keeping as requested)
- Core UI components
- Essential business logic

## EXECUTION ORDER

1. **Start with complete folder deletions** (safest, biggest impact)
2. **Test application still runs** after each major deletion
3. **Proceed with selective cleanup** 
4. **Fix any broken dependencies** as they arise

## SAFETY NOTES

- **Backup first:** `cp -r discourse-original discourse-backup`
- **Test incrementally:** Run app after each major deletion
- **Version control:** Commit after each successful deletion
- **Database:** Keep all migrations initially, clean up later

This approach will give you the **minimal viable Discourse** with modern UI/UX but without the complexity of admin interfaces, themes, and advanced features.