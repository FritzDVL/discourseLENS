# Discourse

Open-source community platform.

## Development

Requirements: Ruby 3.3+, PostgreSQL 13+, Redis 7+

## Built With

- Ruby on Rails
- Ember.js  
- PostgreSQL
- Redis

## License

GPL v2.0


## Directory Structure

**Legend:**
- **(F)** = Frontend components (JavaScript, CSS, assets, client-side code)
- **(B)** = Backend components (Ruby, Rails, server-side code, database)
- **(B+F)** = Mixed components (contains both frontend and backend code)

Directory structure:
└── fritzdvl-discourselens/
    ├── README.md
    ├── config.ru (B)
    ├── Gemfile (B)
    ├── LICENSE.txt
    ├── package.json (F)
    ├── pnpm-workspace.yaml (F)
    ├── Rakefile (B)
    ├── .ignore
    ├── app/ (B)
    │   ├── assets/ (F)
    │   │   ├── images/ (F)
    │   │   │   └── push-notifications/ (F)
    │   │   │       └── README.md
    │   │   ├── javascripts/ (F)
    │   │   │   ├── polyfills.js
    │   │   │   ├── .npmrc
    │   │   │   ├── asset-processor/ (F)
    │   │   │   │   ├── add-theme-globals.js
    │   │   │   │   ├── add-theme-globals.test.mjs
    │   │   │   │   ├── babel-replace-imports.js
    │   │   │   │   ├── babel-replace-imports.test.mjs
    │   │   │   │   ├── build.js
    │   │   │   │   ├── content-tag.js
    │   │   │   │   ├── noop.js
    │   │   │   │   ├── package.json
    │   │   │   │   ├── postcss-variable-prefixer.js
    │   │   │   │   ├── postcss.js
    │   │   │   │   ├── rollup-virtual-imports.js
    │   │   │   │   ├── shims.js
    │   │   │   │   ├── theme-hbs-ast-transforms.js
    │   │   │   │   ├── theme-rollup.js
    │   │   │   │   ├── transpiler.js
    │   │   │   │   ├── url-polyfill.js
    │   │   │   │   └── rollup-plugins/
    │   │   │   │       ├── discourse-colocation.js
    │   │   │   │       ├── discourse-extension-search.js
    │   │   │   │       ├── discourse-external-loader.js
    │   │   │   │       ├── discourse-gjs.js
    │   │   │   │       ├── discourse-hbs.js
    │   │   │   │       ├── discourse-index-search.js
    │   │   │   │       ├── discourse-terser.js
    │   │   │   │       └── discourse-virtual-loader.js
    │   │   │   ├── custom-proxy/ (F)
    │   │   │   │   ├── index.js
    │   │   │   │   ├── package.json
    │   │   │   │   └── .npmrc
    │   │   │   ├── deprecation-silencer/ (F)
    │   │   │   │   ├── index.js
    │   │   │   │   └── package.json
    │   │   │   ├── dialog-holder/ (F)
    │   │   │   │   ├── index.js
    │   │   │   │   ├── package.json
    │   │   │   │   ├── addon/
    │   │   │   │   │   ├── components/
    │   │   │   │   │   │   └── dialog-holder.gjs
    │   │   │   │   │   └── services/
    │   │   │   │   │       └── dialog.js
    │   │   │   │   └── app/
    │   │   │   │       ├── components/
    │   │   │   │       │   └── dialog-holder.js
    │   │   │   │       └── services/
    │   │   │   │           └── dialog.js
    │   │   │   ├── discourse/ (F)
    │   │   │   │   ├── ember-cli-build.js
    │   │   │   │   ├── package.json
    │   │   │   │   ├── testem.js
    │   │   │   │   ├── .ember-cli
    │   │   │   │   ├── .npmrc
    │   │   │   │   ├── .watchmanconfig
    │   │   │   │   ├── admin/ (F)
    │   │   │   │   │   ├── adapters/
    │   │   │   │   │   │   ├── api-key.js
    │   │   │   │   │   │   ├── build-plugin.js
    │   │   │   │   │   │   ├── customization-base.js
    │   │   │   │   │   │   ├── email-style.js
    │   │   │   │   │   │   ├── embedding.js
    │   │   │   │   │   │   ├── permalink.js
    │   │   │   │   │   │   ├── site-text.js
    │   │   │   │   │   │   ├── staff-action-log.js
    │   │   │   │   │   │   ├── tag-group.js
    │   │   │   │   │   │   ├── theme.js
    │   │   │   │   │   │   ├── user-field.js
    │   │   │   │   │   │   ├── web-hook-event.js
    │   │   │   │   │   │   └── web-hook.js
    │   │   │   │   │   ├── components/
    │   │   │   │   │   │   ├── admin-area-settings.gjs
    │   │   │   │   │   │   ├── admin-backups-actions.gjs
    │   │   │   │   │   │   ├── admin-backups-logs.gjs
    │   │   │   │   │   │   ├── admin-badges-award.gjs
    │   │   │   │   │   │   ├── admin-badges-index.gjs
    │   │   │   │   │   │   ├── admin-badges-list.gjs
    │   │   │   │   │   │   ├── admin-badges-show.gjs
    │   │   │   │   │   │   ├── admin-badges.gjs
    │   │   │   │   │   │   ├── admin-config-area-card-section.gjs
    │   │   │   │   │   │   ├── admin-config-area-card.gjs
    │   │   │   │   │   │   ├── admin-config-area-empty-list.gjs
    │   │   │   │   │   │   ├── admin-editable-field.gjs
    │   │   │   │   │   │   ├── admin-embedding-host-form.gjs
    │   │   │   │   │   │   ├── admin-filter-controls.gjs
    │   │   │   │   │   │   ├── admin-filtered-site-settings.gjs
    │   │   │   │   │   │   ├── admin-flag-item.gjs
    │   │   │   │   │   │   ├── admin-flags-form.gjs
    │   │   │   │   │   │   ├── admin-font-chooser.gjs
    │   │   │   │   │   │   ├── admin-fonts-form.gjs
    │   │   │   │   │   │   ├── admin-form-row.gjs
    │   │   │   │   │   │   ├── admin-logo-form.gjs
    │   │   │   │   │   │   ├── admin-nav.gjs
    │   │   │   │   │   │   ├── admin-notice.gjs
    │   │   │   │   │   │   ├── admin-penalty-history.gjs
    │   │   │   │   │   │   ├── admin-penalty-post-action.gjs
    │   │   │   │   │   │   ├── admin-penalty-reason.gjs
    │   │   │   │   │   │   ├── admin-penalty-similar-users.gjs
    │   │   │   │   │   │   ├── admin-permalink-form.gjs
    │   │   │   │   │   │   ├── admin-plugin-config-area.gjs
    │   │   │   │   │   │   ├── admin-plugin-config-page.gjs
    │   │   │   │   │   │   ├── admin-plugins-list-item.gjs
    │   │   │   │   │   │   ├── admin-plugins-list.gjs
    │   │   │   │   │   │   ├── admin-report-chart.gjs
    │   │   │   │   │   │   ├── admin-report-counters.gjs
    │   │   │   │   │   │   ├── admin-report-inline-table.gjs
    │   │   │   │   │   │   ├── admin-report-radar.gjs
    │   │   │   │   │   │   ├── admin-report-stacked-chart.gjs
    │   │   │   │   │   │   ├── admin-report-stacked-line-chart.gjs
    │   │   │   │   │   │   ├── admin-report-storage-stats.gjs
    │   │   │   │   │   │   ├── admin-report-table-cell.gjs
    │   │   │   │   │   │   ├── admin-report-table-header.gjs
    │   │   │   │   │   │   ├── admin-report-table-row.gjs
    │   │   │   │   │   │   ├── admin-report-table.gjs
    │   │   │   │   │   │   ├── admin-report.gjs
    │   │   │   │   │   │   ├── admin-reports.gjs
    │   │   │   │   │   │   ├── admin-search-filters.gjs
    │   │   │   │   │   │   ├── admin-search.gjs
    │   │   │   │   │   │   ├── admin-section-landing-item.gjs
    │   │   │   │   │   │   ├── admin-section-landing-wrapper.gjs
    │   │   │   │   │   │   ├── admin-site-settings-changes-banner.gjs
    │   │   │   │   │   │   ├── admin-site-settings-filter-controls.gjs
    │   │   │   │   │   │   ├── admin-theme-editor.gjs
    │   │   │   │   │   │   ├── admin-user-exports-table.gjs
    │   │   │   │   │   │   ├── admin-user-field-item.gjs
    │   │   │   │   │   │   ├── admin-user-fields-form.gjs
    │   │   │   │   │   │   ├── admin-watched-word.gjs
    │   │   │   │   │   │   ├── api-key-item.gjs
    │   │   │   │   │   │   ├── bulk-user-delete-confirmation.gjs
    │   │   │   │   │   │   ├── changes-banner.gjs
    │   │   │   │   │   │   ├── chart.gjs
    │   │   │   │   │   │   ├── color-input.gjs
    │   │   │   │   │   │   ├── color-palette-editor.gjs
    │   │   │   │   │   │   ├── color-palette-list-item.gjs
    │   │   │   │   │   │   ├── dashboard-new-feature-item.gjs
    │   │   │   │   │   │   ├── dashboard-new-features.gjs
    │   │   │   │   │   │   ├── dashboard-period-selector.gjs
    │   │   │   │   │   │   ├── dashboard-problems.gjs
    │   │   │   │   │   │   ├── edit-category-general.gjs
    │   │   │   │   │   │   ├── edit-category-images.gjs
    │   │   │   │   │   │   ├── edit-category-localizations.gjs
    │   │   │   │   │   │   ├── edit-category-panel.gjs
    │   │   │   │   │   │   ├── edit-category-security.gjs
    │   │   │   │   │   │   ├── edit-category-settings.gjs
    │   │   │   │   │   │   ├── edit-category-tab.gjs
    │   │   │   │   │   │   ├── edit-category-tags.gjs
    │   │   │   │   │   │   ├── edit-category-topic-template.gjs
    │   │   │   │   │   │   ├── email-logs-list.gjs
    │   │   │   │   │   │   ├── email-styles-editor.gjs
    │   │   │   │   │   │   ├── embeddable-host.gjs
    │   │   │   │   │   │   ├── emoji-uploader.gjs
    │   │   │   │   │   │   ├── emoji-value-list.gjs
    │   │   │   │   │   │   ├── file-size-input.gjs
    │   │   │   │   │   │   ├── flag-user.gjs
    │   │   │   │   │   │   ├── highlighted-code.gjs
    │   │   │   │   │   │   ├── images-uploader.gjs
    │   │   │   │   │   │   ├── inline-edit-checkbox.gjs
    │   │   │   │   │   │   ├── install-theme-item.gjs
    │   │   │   │   │   │   ├── ip-lookup.gjs
    │   │   │   │   │   │   ├── moderation-history-item.js
    │   │   │   │   │   │   ├── permalink-form.gjs
    │   │   │   │   │   │   ├── plugin-commit-hash.gjs
    │   │   │   │   │   │   ├── screened-ip-address-form.gjs
    │   │   │   │   │   │   ├── secret-value-list.gjs
    │   │   │   │   │   │   ├── setting-validation-message.gjs
    │   │   │   │   │   │   ├── silence-details.gjs
    │   │   │   │   │   │   ├── simple-list.gjs
    │   │   │   │   │   │   ├── site-customization-change-details.gjs
    │   │   │   │   │   │   ├── site-customization-change-field.gjs
    │   │   │   │   │   │   ├── site-setting.gjs
    │   │   │   │   │   │   ├── site-text-summary.gjs
    │   │   │   │   │   │   ├── staff-actions.gjs
    │   │   │   │   │   │   ├── tags-admin-dropdown.js
    │   │   │   │   │   │   ├── tags-uploader.gjs
    │   │   │   │   │   │   ├── theme-setting-editor.js
    │   │   │   │   │   │   ├── theme-setting-relatives-selector.js
    │   │   │   │   │   │   ├── theme-settings-editor.gjs
    │   │   │   │   │   │   ├── theme-site-setting-editor.gjs
    │   │   │   │   │   │   ├── theme-site-settings.gjs
    │   │   │   │   │   │   ├── theme-translation.js
    │   │   │   │   │   │   ├── theme-upload-add.gjs
    │   │   │   │   │   │   ├── themes-grid-card.gjs
    │   │   │   │   │   │   ├── themes-grid-placeholder.gjs
    │   │   │   │   │   │   ├── themes-grid.gjs
    │   │   │   │   │   │   ├── themes-list-item.gjs
    │   │   │   │   │   │   ├── uppy-backup-uploader.gjs
    │   │   │   │   │   │   ├── value-list.gjs
    │   │   │   │   │   │   ├── version-checks.gjs
    │   │   │   │   │   │   ├── watched-word-form.gjs
    │   │   │   │   │   │   ├── watched-word-uploader.gjs
    │   │   │   │   │   │   ├── webhook-event-chooser.gjs
    │   │   │   │   │   │   ├── webhook-event.gjs
    │   │   │   │   │   │   ├── webhook-events.gjs
    │   │   │   │   │   │   ├── webhook-item.gjs
    │   │   │   │   │   │   ├── webhook-status.gjs
    │   │   │   │   │   │   ├── admin-config-area-cards/
    │   │   │   │   │   │   │   ├── install-theme-card.gjs
    │   │   │   │   │   │   │   └── about/
    │   │   │   │   │   │   │       ├── contact-information.gjs
    │   │   │   │   │   │   │       ├── extra-groups.gjs
    │   │   │   │   │   │   │       ├── general-settings.gjs
    │   │   │   │   │   │   │       └── your-organization.gjs
    │   │   │   │   │   │   ├── admin-config-areas/
    │   │   │   │   │   │   │   ├── about.gjs
    │   │   │   │   │   │   │   ├── api-keys-list.gjs
    │   │   │   │   │   │   │   ├── api-keys-new.gjs
    │   │   │   │   │   │   │   ├── api-keys-show.gjs
    │   │   │   │   │   │   │   ├── color-palette.gjs
    │   │   │   │   │   │   │   ├── components.gjs
    │   │   │   │   │   │   │   ├── emojis-list.gjs
    │   │   │   │   │   │   │   ├── emojis-new.gjs
    │   │   │   │   │   │   │   ├── flags.gjs
    │   │   │   │   │   │   │   ├── themes.gjs
    │   │   │   │   │   │   │   ├── user-fields-list.gjs
    │   │   │   │   │   │   │   ├── webhooks-form.gjs
    │   │   │   │   │   │   │   └── webhooks-list.gjs
    │   │   │   │   │   │   ├── form-template/
    │   │   │   │   │   │   │   ├── form.gjs
    │   │   │   │   │   │   │   ├── info-header.gjs
    │   │   │   │   │   │   │   └── row-item.gjs
    │   │   │   │   │   │   ├── modal/
    │   │   │   │   │   │   │   ├── admin-search.gjs
    │   │   │   │   │   │   │   ├── api-key-urls.gjs
    │   │   │   │   │   │   │   ├── badge-preview.gjs
    │   │   │   │   │   │   │   ├── color-scheme-select-base.gjs
    │   │   │   │   │   │   │   ├── custom-date-range.gjs
    │   │   │   │   │   │   │   ├── delete-posts-confirmation.gjs
    │   │   │   │   │   │   │   ├── delete-user-posts-progress.gjs
    │   │   │   │   │   │   │   ├── edit-badge-groupings.gjs
    │   │   │   │   │   │   │   ├── form-template-validation-options.gjs
    │   │   │   │   │   │   │   ├── incoming-email.gjs
    │   │   │   │   │   │   │   ├── install-theme.gjs
    │   │   │   │   │   │   │   ├── merge-users-confirmation.gjs
    │   │   │   │   │   │   │   ├── merge-users-progress.gjs
    │   │   │   │   │   │   │   ├── merge-users-prompt.gjs
    │   │   │   │   │   │   │   ├── penalize-user.gjs
    │   │   │   │   │   │   │   ├── reseed.gjs
    │   │   │   │   │   │   │   ├── scrub-rejected-user.gjs
    │   │   │   │   │   │   │   ├── site-setting-default-categories.gjs
    │   │   │   │   │   │   │   ├── staff-action-log-change.gjs
    │   │   │   │   │   │   │   ├── staff-action-log-details.gjs
    │   │   │   │   │   │   │   ├── start-backup.gjs
    │   │   │   │   │   │   │   ├── tag-upload.gjs
    │   │   │   │   │   │   │   ├── uploaded-image-list.gjs
    │   │   │   │   │   │   │   └── watched-word-testing.gjs
    │   │   │   │   │   │   ├── report-filters/
    │   │   │   │   │   │   │   ├── bool.gjs
    │   │   │   │   │   │   │   ├── category.gjs
    │   │   │   │   │   │   │   ├── filter.js
    │   │   │   │   │   │   │   ├── group.gjs
    │   │   │   │   │   │   │   └── list.gjs
    │   │   │   │   │   │   ├── schema-setting/
    │   │   │   │   │   │   │   ├── editor.gjs
    │   │   │   │   │   │   │   ├── field-input-description.gjs
    │   │   │   │   │   │   │   ├── field.gjs
    │   │   │   │   │   │   │   ├── number-field.gjs
    │   │   │   │   │   │   │   ├── editor/
    │   │   │   │   │   │   │   │   ├── child-tree-node.gjs
    │   │   │   │   │   │   │   │   ├── child-tree.gjs
    │   │   │   │   │   │   │   │   ├── tree-node.gjs
    │   │   │   │   │   │   │   │   └── tree.gjs
    │   │   │   │   │   │   │   └── types/
    │   │   │   │   │   │   │       ├── boolean.gjs
    │   │   │   │   │   │   │       ├── categories.gjs
    │   │   │   │   │   │   │       ├── enum.gjs
    │   │   │   │   │   │   │       ├── float.gjs
    │   │   │   │   │   │   │       ├── groups.gjs
    │   │   │   │   │   │   │       ├── integer.gjs
    │   │   │   │   │   │   │       ├── models.gjs
    │   │   │   │   │   │   │       ├── string.gjs
    │   │   │   │   │   │   │       └── tags.gjs
    │   │   │   │   │   │   └── site-settings/
    │   │   │   │   │   │       ├── bool.gjs
    │   │   │   │   │   │       ├── category-list.gjs
    │   │   │   │   │   │       ├── category.gjs
    │   │   │   │   │   │       ├── color.gjs
    │   │   │   │   │   │       ├── compact-list.gjs
    │   │   │   │   │   │       ├── description.gjs
    │   │   │   │   │   │       ├── emoji-list.gjs
    │   │   │   │   │   │       ├── enum.gjs
    │   │   │   │   │   │       ├── file-size-restriction.gjs
    │   │   │   │   │   │       ├── file-types-list.gjs
    │   │   │   │   │   │       ├── font-list.gjs
    │   │   │   │   │   │       ├── group-list.gjs
    │   │   │   │   │   │       ├── host-list.gjs
    │   │   │   │   │   │       ├── integer.gjs
    │   │   │   │   │   │       ├── job-status.gjs
    │   │   │   │   │   │       ├── list.gjs
    │   │   │   │   │   │       ├── locale-enum.gjs
    │   │   │   │   │   │       ├── locale-list.gjs
    │   │   │   │   │   │       ├── named-list.gjs
    │   │   │   │   │   │       ├── secret-list.gjs
    │   │   │   │   │   │       ├── simple-list.gjs
    │   │   │   │   │   │       ├── string.gjs
    │   │   │   │   │   │       ├── tag-group-list.gjs
    │   │   │   │   │   │       ├── tag-list.gjs
    │   │   │   │   │   │       ├── upload.gjs
    │   │   │   │   │   │       ├── uploaded-image-list.gjs
    │   │   │   │   │   │       ├── url-list.gjs
    │   │   │   │   │   │       └── value-list.gjs
    │   │   │   │   │   ├── controllers/
    │   │   │   │   │   │   ├── admin-api-keys.js
    │   │   │   │   │   │   ├── admin-area-settings-base.js
    │   │   │   │   │   │   ├── admin-badges.js
    │   │   │   │   │   │   ├── admin-config-logo-settings.js
    │   │   │   │   │   │   ├── admin-config-user-api-settings.js
    │   │   │   │   │   │   ├── admin-customize-form-templates.js
    │   │   │   │   │   │   ├── admin-customize-robots-txt.js
    │   │   │   │   │   │   ├── admin-customize-themes.js
    │   │   │   │   │   │   ├── admin-dashboard-tab.js
    │   │   │   │   │   │   ├── admin-embedding.js
    │   │   │   │   │   │   ├── admin-emojis.js
    │   │   │   │   │   │   ├── admin-groups.js
    │   │   │   │   │   │   ├── admin-permalinks.js
    │   │   │   │   │   │   ├── admin-plugins.js
    │   │   │   │   │   │   ├── admin-reports.js
    │   │   │   │   │   │   ├── admin-search-logs.js
    │   │   │   │   │   │   ├── admin-search.js
    │   │   │   │   │   │   ├── admin-site-settings-category.js
    │   │   │   │   │   │   ├── admin-site-settings.js
    │   │   │   │   │   │   ├── admin-site-text.js
    │   │   │   │   │   │   ├── admin-user.js
    │   │   │   │   │   │   ├── admin-watched-words.js
    │   │   │   │   │   │   ├── admin-web-hooks.js
    │   │   │   │   │   │   ├── admin.js
    │   │   │   │   │   │   ├── settings.js
    │   │   │   │   │   │   ├── admin/
    │   │   │   │   │   │   │   ├── backups.js
    │   │   │   │   │   │   │   ├── dashboard-moderation.js
    │   │   │   │   │   │   │   ├── dashboard-reports.js
    │   │   │   │   │   │   │   ├── dashboard.js
    │   │   │   │   │   │   │   ├── whats-new.js
    │   │   │   │   │   │   │   ├── backups/
    │   │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   │   ├── logs.js
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   └── dashboard/
    │   │   │   │   │   │   │       └── general.js
    │   │   │   │   │   │   ├── admin-analytics/
    │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   ├── admin-api-keys/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   ├── new.js
    │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   ├── admin-badges/
    │   │   │   │   │   │   │   ├── award.js
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   ├── settings.js
    │   │   │   │   │   │   │   └── show.js
    │   │   │   │   │   │   ├── admin-config/
    │   │   │   │   │   │   │   ├── color-palettes.js
    │   │   │   │   │   │   │   ├── color-palettes/
    │   │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   │   └── show.js
    │   │   │   │   │   │   │   ├── content/
    │   │   │   │   │   │   │   │   ├── categories-and-tags.js
    │   │   │   │   │   │   │   │   ├── posts-and-topics.js
    │   │   │   │   │   │   │   │   ├── settings.js
    │   │   │   │   │   │   │   │   ├── sharing.js
    │   │   │   │   │   │   │   │   └── stats-and-thresholds.js
    │   │   │   │   │   │   │   ├── developer/
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   ├── experimental/
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   ├── files/
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   ├── flags/
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   ├── group-permissions/
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   ├── interface/
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   ├── legal/
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   ├── localization/
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   ├── login/
    │   │   │   │   │   │   │   │   ├── authenticators.js
    │   │   │   │   │   │   │   │   ├── discourseconnect.js
    │   │   │   │   │   │   │   │   ├── plugin-tab.js
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   ├── navigation/
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   ├── notifications/
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   ├── onebox/
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   ├── rate-limits/
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   ├── search/
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   ├── security/
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   ├── site-admin/
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   ├── spam/
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   ├── trust-levels/
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   └── user-defaults/
    │   │   │   │   │   │   │       └── settings.js
    │   │   │   │   │   │   ├── admin-customize-email-style/
    │   │   │   │   │   │   │   └── edit.js
    │   │   │   │   │   │   ├── admin-customize-form-templates/
    │   │   │   │   │   │   │   └── index.js
    │   │   │   │   │   │   ├── admin-customize-themes/
    │   │   │   │   │   │   │   ├── edit.js
    │   │   │   │   │   │   │   ├── show.js
    │   │   │   │   │   │   │   └── show/
    │   │   │   │   │   │   │       └── index.js
    │   │   │   │   │   │   ├── admin-email/
    │   │   │   │   │   │   │   ├── advanced-test.js
    │   │   │   │   │   │   │   ├── preview-digest.js
    │   │   │   │   │   │   │   ├── server-settings.js
    │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   ├── admin-email-templates/
    │   │   │   │   │   │   │   ├── edit.js
    │   │   │   │   │   │   │   └── index.js
    │   │   │   │   │   │   ├── admin-embedding/
    │   │   │   │   │   │   │   ├── crawlers.js
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   ├── posts-and-topics.js
    │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   ├── admin-emojis/
    │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   ├── admin-groups/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   ├── admin-logs/
    │   │   │   │   │   │   │   ├── screened-emails.js
    │   │   │   │   │   │   │   ├── screened-ip-addresses.js
    │   │   │   │   │   │   │   ├── screened-urls.js
    │   │   │   │   │   │   │   └── staff-action-logs.js
    │   │   │   │   │   │   ├── admin-permalinks/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   ├── admin-plugins/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   └── show/
    │   │   │   │   │   │   │       └── settings.js
    │   │   │   │   │   │   ├── admin-reports/
    │   │   │   │   │   │   │   ├── dashboard-settings.js
    │   │   │   │   │   │   │   └── show.js
    │   │   │   │   │   │   ├── admin-search/
    │   │   │   │   │   │   │   └── index.js
    │   │   │   │   │   │   ├── admin-search-logs/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   └── term.js
    │   │   │   │   │   │   ├── admin-site-text/
    │   │   │   │   │   │   │   ├── edit.js
    │   │   │   │   │   │   │   └── index.js
    │   │   │   │   │   │   ├── admin-user/
    │   │   │   │   │   │   │   ├── badges.js
    │   │   │   │   │   │   │   └── index.js
    │   │   │   │   │   │   ├── admin-users/
    │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   ├── admin-users-list/
    │   │   │   │   │   │   │   └── show.js
    │   │   │   │   │   │   ├── admin-watched-words/
    │   │   │   │   │   │   │   └── action.js
    │   │   │   │   │   │   ├── admin-web-hooks/
    │   │   │   │   │   │   │   ├── edit.js
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   └── show.js
    │   │   │   │   │   │   └── edit-category/
    │   │   │   │   │   │       └── tabs.js
    │   │   │   │   │   ├── helpers/
    │   │   │   │   │   │   ├── check-icon.js
    │   │   │   │   │   │   └── human-size.js
    │   │   │   │   │   ├── lib/
    │   │   │   │   │   │   ├── color-scheme-manager.js
    │   │   │   │   │   │   ├── constants.js
    │   │   │   │   │   │   ├── hex-to-rgba.js
    │   │   │   │   │   │   ├── setting-object-helper.js
    │   │   │   │   │   │   ├── site-setting-filter.js
    │   │   │   │   │   │   ├── site-setting-matcher.js
    │   │   │   │   │   │   └── template-form-fields.js
    │   │   │   │   │   ├── models/
    │   │   │   │   │   │   ├── admin-dashboard.js
    │   │   │   │   │   │   ├── admin-plugin.js
    │   │   │   │   │   │   ├── admin-user.js
    │   │   │   │   │   │   ├── api-key.js
    │   │   │   │   │   │   ├── backup-status.js
    │   │   │   │   │   │   ├── backup.js
    │   │   │   │   │   │   ├── color-scheme-color.js
    │   │   │   │   │   │   ├── color-scheme.js
    │   │   │   │   │   │   ├── email-log.js
    │   │   │   │   │   │   ├── email-preview.js
    │   │   │   │   │   │   ├── email-settings.js
    │   │   │   │   │   │   ├── email-style.js
    │   │   │   │   │   │   ├── email-template.js
    │   │   │   │   │   │   ├── flag-type.js
    │   │   │   │   │   │   ├── form-template.js
    │   │   │   │   │   │   ├── incoming-email.js
    │   │   │   │   │   │   ├── permalink.js
    │   │   │   │   │   │   ├── report.js
    │   │   │   │   │   │   ├── screened-email.js
    │   │   │   │   │   │   ├── screened-ip-address.js
    │   │   │   │   │   │   ├── screened-url.js
    │   │   │   │   │   │   ├── site-setting.js
    │   │   │   │   │   │   ├── site-text.js
    │   │   │   │   │   │   ├── staff-action-log.js
    │   │   │   │   │   │   ├── theme-settings.js
    │   │   │   │   │   │   ├── theme-site-settings.js
    │   │   │   │   │   │   ├── theme.js
    │   │   │   │   │   │   ├── tl3-requirements.js
    │   │   │   │   │   │   ├── user-export.js
    │   │   │   │   │   │   ├── user-field.js
    │   │   │   │   │   │   ├── version-check.js
    │   │   │   │   │   │   ├── watched-word.js
    │   │   │   │   │   │   └── web-hook.js
    │   │   │   │   │   ├── routes/
    │   │   │   │   │   │   ├── admin-analytics.js
    │   │   │   │   │   │   ├── admin-api-keys.js
    │   │   │   │   │   │   ├── admin-api.js
    │   │   │   │   │   │   ├── admin-badges.js
    │   │   │   │   │   │   ├── admin-config-theme-site-settings.js
    │   │   │   │   │   │   ├── admin-config-user-api.js
    │   │   │   │   │   │   ├── admin-config-with-settings-route.js
    │   │   │   │   │   │   ├── admin-customize-email-style.js
    │   │   │   │   │   │   ├── admin-customize-form-templates.js
    │   │   │   │   │   │   ├── admin-customize-robots-txt.js
    │   │   │   │   │   │   ├── admin-customize-themes.js
    │   │   │   │   │   │   ├── admin-customize.js
    │   │   │   │   │   │   ├── admin-email-logs.js
    │   │   │   │   │   │   ├── admin-email-templates.js
    │   │   │   │   │   │   ├── admin-email.js
    │   │   │   │   │   │   ├── admin-embedding.js
    │   │   │   │   │   │   ├── admin-emojis.js
    │   │   │   │   │   │   ├── admin-flags-posts-active.js
    │   │   │   │   │   │   ├── admin-flags-posts-old.js
    │   │   │   │   │   │   ├── admin-flags-topics-index.js
    │   │   │   │   │   │   ├── admin-groups.js
    │   │   │   │   │   │   ├── admin-logs.js
    │   │   │   │   │   │   ├── admin-permalinks.js
    │   │   │   │   │   │   ├── admin-plugins.js
    │   │   │   │   │   │   ├── admin-reports.js
    │   │   │   │   │   │   ├── admin-route-map.js
    │   │   │   │   │   │   ├── admin-search-logs.js
    │   │   │   │   │   │   ├── admin-search.js
    │   │   │   │   │   │   ├── admin-site-settings-category.js
    │   │   │   │   │   │   ├── admin-site-settings.js
    │   │   │   │   │   │   ├── admin-site-text.js
    │   │   │   │   │   │   ├── admin-user-fields.js
    │   │   │   │   │   │   ├── admin-user.js
    │   │   │   │   │   │   ├── admin-users-list.js
    │   │   │   │   │   │   ├── admin-users.js
    │   │   │   │   │   │   ├── admin-watched-words.js
    │   │   │   │   │   │   ├── admin-web-hooks.js
    │   │   │   │   │   │   ├── admin.js
    │   │   │   │   │   │   ├── edit-category.js
    │   │   │   │   │   │   ├── new-category.js
    │   │   │   │   │   │   ├── admin/
    │   │   │   │   │   │   │   ├── backups.js
    │   │   │   │   │   │   │   ├── dashboard-reports.js
    │   │   │   │   │   │   │   ├── dashboard.js
    │   │   │   │   │   │   │   ├── schema.js
    │   │   │   │   │   │   │   ├── whats-new.js
    │   │   │   │   │   │   │   ├── backups/
    │   │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   │   ├── logs.js
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   └── dashboard/
    │   │   │   │   │   │   │       └── general.js
    │   │   │   │   │   │   ├── admin-api/
    │   │   │   │   │   │   │   └── index.js
    │   │   │   │   │   │   ├── admin-api-keys/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   ├── new.js
    │   │   │   │   │   │   │   ├── settings.js
    │   │   │   │   │   │   │   └── show.js
    │   │   │   │   │   │   ├── admin-badges/
    │   │   │   │   │   │   │   ├── award.js
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   ├── settings.js
    │   │   │   │   │   │   │   └── show.js
    │   │   │   │   │   │   ├── admin-config/
    │   │   │   │   │   │   │   ├── about.js
    │   │   │   │   │   │   │   ├── color-palettes.js
    │   │   │   │   │   │   │   ├── customize.js
    │   │   │   │   │   │   │   ├── developer.js
    │   │   │   │   │   │   │   ├── experimental.js
    │   │   │   │   │   │   │   ├── files.js
    │   │   │   │   │   │   │   ├── flags.js
    │   │   │   │   │   │   │   ├── fonts.js
    │   │   │   │   │   │   │   ├── group-permissions.js
    │   │   │   │   │   │   │   ├── legal.js
    │   │   │   │   │   │   │   ├── localization.js
    │   │   │   │   │   │   │   ├── login.js
    │   │   │   │   │   │   │   ├── logo.js
    │   │   │   │   │   │   │   ├── navigation.js
    │   │   │   │   │   │   │   ├── notifications.js
    │   │   │   │   │   │   │   ├── onebox.js
    │   │   │   │   │   │   │   ├── rate-limits.js
    │   │   │   │   │   │   │   ├── search.js
    │   │   │   │   │   │   │   ├── security.js
    │   │   │   │   │   │   │   ├── spam.js
    │   │   │   │   │   │   │   ├── trust-levels.js
    │   │   │   │   │   │   │   ├── color-palettes/
    │   │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   │   └── show.js
    │   │   │   │   │   │   │   ├── content/
    │   │   │   │   │   │   │   │   ├── categories-and-tags.js
    │   │   │   │   │   │   │   │   ├── posts-and-topics.js
    │   │   │   │   │   │   │   │   ├── settings.js
    │   │   │   │   │   │   │   │   ├── sharing.js
    │   │   │   │   │   │   │   │   └── stats-and-thresholds.js
    │   │   │   │   │   │   │   ├── customize/
    │   │   │   │   │   │   │   │   ├── components.js
    │   │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   │   └── themes.js
    │   │   │   │   │   │   │   ├── flags/
    │   │   │   │   │   │   │   │   ├── edit.js
    │   │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   ├── interface/
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   ├── site-admin/
    │   │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   │   └── user-defaults/
    │   │   │   │   │   │   │       └── settings.js
    │   │   │   │   │   │   ├── admin-customize/
    │   │   │   │   │   │   │   ├── colors-show.js
    │   │   │   │   │   │   │   ├── colors.js
    │   │   │   │   │   │   │   └── index.js
    │   │   │   │   │   │   ├── admin-customize-email-style/
    │   │   │   │   │   │   │   ├── edit.js
    │   │   │   │   │   │   │   └── index.js
    │   │   │   │   │   │   ├── admin-customize-form-templates/
    │   │   │   │   │   │   │   ├── edit.js
    │   │   │   │   │   │   │   └── index.js
    │   │   │   │   │   │   ├── admin-customize-themes/
    │   │   │   │   │   │   │   ├── edit.js
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   ├── show.js
    │   │   │   │   │   │   │   └── show/
    │   │   │   │   │   │   │       ├── index.js
    │   │   │   │   │   │   │       └── schema.js
    │   │   │   │   │   │   ├── admin-email/
    │   │   │   │   │   │   │   ├── preview-digest.js
    │   │   │   │   │   │   │   ├── server-settings.js
    │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   ├── admin-email-logs/
    │   │   │   │   │   │   │   ├── bounced.js
    │   │   │   │   │   │   │   ├── received.js
    │   │   │   │   │   │   │   ├── rejected.js
    │   │   │   │   │   │   │   ├── sent.js
    │   │   │   │   │   │   │   └── skipped.js
    │   │   │   │   │   │   ├── admin-email-templates/
    │   │   │   │   │   │   │   ├── edit.js
    │   │   │   │   │   │   │   └── index.js
    │   │   │   │   │   │   ├── admin-embedding/
    │   │   │   │   │   │   │   ├── edit.js
    │   │   │   │   │   │   │   └── new.js
    │   │   │   │   │   │   ├── admin-emojis/
    │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   ├── admin-groups/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   ├── admin-logs/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   ├── screened-emails.js
    │   │   │   │   │   │   │   ├── screened-ip-addresses.js
    │   │   │   │   │   │   │   ├── screened-urls.js
    │   │   │   │   │   │   │   └── staff-action-logs.js
    │   │   │   │   │   │   ├── admin-permalinks/
    │   │   │   │   │   │   │   ├── edit.js
    │   │   │   │   │   │   │   └── index.js
    │   │   │   │   │   │   ├── admin-plugins/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   ├── show.js
    │   │   │   │   │   │   │   └── show/
    │   │   │   │   │   │   │       ├── index.js
    │   │   │   │   │   │   │       └── settings.js
    │   │   │   │   │   │   ├── admin-reports/
    │   │   │   │   │   │   │   ├── dashboard-settings.js
    │   │   │   │   │   │   │   └── show.js
    │   │   │   │   │   │   ├── admin-search/
    │   │   │   │   │   │   │   └── index.js
    │   │   │   │   │   │   ├── admin-search-logs/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   └── term.js
    │   │   │   │   │   │   ├── admin-site-settings/
    │   │   │   │   │   │   │   └── index.js
    │   │   │   │   │   │   ├── admin-site-text/
    │   │   │   │   │   │   │   ├── edit.js
    │   │   │   │   │   │   │   └── index.js
    │   │   │   │   │   │   ├── admin-user/
    │   │   │   │   │   │   │   ├── badges.js
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   └── tl3-requirements.js
    │   │   │   │   │   │   ├── admin-user-fields/
    │   │   │   │   │   │   │   ├── edit.js
    │   │   │   │   │   │   │   └── new.js
    │   │   │   │   │   │   ├── admin-users/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   ├── admin-users-list/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   └── show.js
    │   │   │   │   │   │   ├── admin-watched-words/
    │   │   │   │   │   │   │   ├── action.js
    │   │   │   │   │   │   │   └── index.js
    │   │   │   │   │   │   ├── admin-web-hooks/
    │   │   │   │   │   │   │   ├── edit.js
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   ├── new.js
    │   │   │   │   │   │   │   └── show.js
    │   │   │   │   │   │   └── edit-category/
    │   │   │   │   │   │       ├── index.js
    │   │   │   │   │   │       └── tabs.js
    │   │   │   │   │   ├── services/
    │   │   │   │   │   │   ├── admin-badges.js
    │   │   │   │   │   │   ├── admin-emojis.js
    │   │   │   │   │   │   ├── admin-nav-manager.js
    │   │   │   │   │   │   ├── admin-plugin-nav-manager.js
    │   │   │   │   │   │   ├── admin-search-data-source.js
    │   │   │   │   │   │   ├── admin-sidebar-state-manager.js
    │   │   │   │   │   │   ├── admin-tools.js
    │   │   │   │   │   │   ├── admin-user-fields.js
    │   │   │   │   │   │   └── site-setting-change-tracker.js
    │   │   │   │   │   └── templates/
    │   │   │   │   │       ├── admin-api-keys.gjs
    │   │   │   │   │       ├── admin-badges.gjs
    │   │   │   │   │       ├── admin-customize-email-style.gjs
    │   │   │   │   │       ├── admin-customize-form-templates.gjs
    │   │   │   │   │       ├── admin-customize-robots-txt.gjs
    │   │   │   │   │       ├── admin-customize.gjs
    │   │   │   │   │       ├── admin-email-logs.gjs
    │   │   │   │   │       ├── admin-email.gjs
    │   │   │   │   │       ├── admin-embedding.gjs
    │   │   │   │   │       ├── admin-emojis.gjs
    │   │   │   │   │       ├── admin-groups.gjs
    │   │   │   │   │       ├── admin-logs.gjs
    │   │   │   │   │       ├── admin-permalinks.gjs
    │   │   │   │   │       ├── admin-plugins.gjs
    │   │   │   │   │       ├── admin-reports.gjs
    │   │   │   │   │       ├── admin-search-logs.gjs
    │   │   │   │   │       ├── admin-search.gjs
    │   │   │   │   │       ├── admin-site-settings-category.gjs
    │   │   │   │   │       ├── admin-site-settings.gjs
    │   │   │   │   │       ├── admin-site-text.gjs
    │   │   │   │   │       ├── admin-user-fields.gjs
    │   │   │   │   │       ├── admin-user.gjs
    │   │   │   │   │       ├── admin-users.gjs
    │   │   │   │   │       ├── admin-watched-words.gjs
    │   │   │   │   │       ├── admin-web-hooks.gjs
    │   │   │   │   │       ├── admin.gjs
    │   │   │   │   │       ├── config-user-api-settings.gjs
    │   │   │   │   │       ├── dashboard-new-features.gjs
    │   │   │   │   │       ├── admin/
    │   │   │   │   │       │   ├── backups.gjs
    │   │   │   │   │       │   ├── dashboard-moderation.gjs
    │   │   │   │   │       │   ├── dashboard-reports.gjs
    │   │   │   │   │       │   ├── dashboard-security.gjs
    │   │   │   │   │       │   ├── dashboard.gjs
    │   │   │   │   │       │   ├── schema.gjs
    │   │   │   │   │       │   ├── whats-new.gjs
    │   │   │   │   │       │   ├── backups/
    │   │   │   │   │       │   │   ├── index.gjs
    │   │   │   │   │       │   │   ├── logs.gjs
    │   │   │   │   │       │   │   └── settings.gjs
    │   │   │   │   │       │   └── dashboard/
    │   │   │   │   │       │       └── general.gjs
    │   │   │   │   │       ├── admin-analytics/
    │   │   │   │   │       │   └── settings.gjs
    │   │   │   │   │       ├── admin-api-keys/
    │   │   │   │   │       │   ├── index.gjs
    │   │   │   │   │       │   ├── new.gjs
    │   │   │   │   │       │   ├── settings.gjs
    │   │   │   │   │       │   └── show.gjs
    │   │   │   │   │       ├── admin-badges/
    │   │   │   │   │       │   ├── award.gjs
    │   │   │   │   │       │   ├── index.gjs
    │   │   │   │   │       │   ├── settings.gjs
    │   │   │   │   │       │   └── show.gjs
    │   │   │   │   │       ├── admin-config/
    │   │   │   │   │       │   ├── about.gjs
    │   │   │   │   │       │   ├── color-palettes.gjs
    │   │   │   │   │       │   ├── content.gjs
    │   │   │   │   │       │   ├── customize.gjs
    │   │   │   │   │       │   ├── flags.gjs
    │   │   │   │   │       │   ├── fonts.gjs
    │   │   │   │   │       │   ├── login.gjs
    │   │   │   │   │       │   ├── logo.gjs
    │   │   │   │   │       │   ├── color-palettes/
    │   │   │   │   │       │   │   ├── index.gjs
    │   │   │   │   │       │   │   └── show.gjs
    │   │   │   │   │       │   ├── content/
    │   │   │   │   │       │   │   ├── categories-and-tags.gjs
    │   │   │   │   │       │   │   ├── posts-and-topics.gjs
    │   │   │   │   │       │   │   ├── sharing.gjs
    │   │   │   │   │       │   │   └── stats-and-thresholds.gjs
    │   │   │   │   │       │   ├── customize/
    │   │   │   │   │       │   │   ├── components.gjs
    │   │   │   │   │       │   │   ├── theme-site-settings.gjs
    │   │   │   │   │       │   │   └── themes.gjs
    │   │   │   │   │       │   ├── developer/
    │   │   │   │   │       │   │   └── settings.gjs
    │   │   │   │   │       │   ├── experimental/
    │   │   │   │   │       │   │   └── settings.gjs
    │   │   │   │   │       │   ├── files/
    │   │   │   │   │       │   │   └── settings.gjs
    │   │   │   │   │       │   ├── flags/
    │   │   │   │   │       │   │   ├── edit.gjs
    │   │   │   │   │       │   │   ├── index.gjs
    │   │   │   │   │       │   │   ├── new.gjs
    │   │   │   │   │       │   │   └── settings.gjs
    │   │   │   │   │       │   ├── group-permissions/
    │   │   │   │   │       │   │   └── settings.gjs
    │   │   │   │   │       │   ├── interface/
    │   │   │   │   │       │   │   └── settings.gjs
    │   │   │   │   │       │   ├── legal/
    │   │   │   │   │       │   │   └── settings.gjs
    │   │   │   │   │       │   ├── localization/
    │   │   │   │   │       │   │   └── settings.gjs
    │   │   │   │   │       │   ├── login/
    │   │   │   │   │       │   │   ├── authenticators.gjs
    │   │   │   │   │       │   │   ├── discourseconnect.gjs
    │   │   │   │   │       │   │   ├── plugin-tab.gjs
    │   │   │   │   │       │   │   └── settings.gjs
    │   │   │   │   │       │   ├── navigation/
    │   │   │   │   │       │   │   └── settings.gjs
    │   │   │   │   │       │   ├── notifications/
    │   │   │   │   │       │   │   └── settings.gjs
    │   │   │   │   │       │   ├── onebox/
    │   │   │   │   │       │   │   └── settings.gjs
    │   │   │   │   │       │   ├── rate-limits/
    │   │   │   │   │       │   │   └── settings.gjs
    │   │   │   │   │       │   ├── search/
    │   │   │   │   │       │   │   └── settings.gjs
    │   │   │   │   │       │   ├── security/
    │   │   │   │   │       │   │   └── settings.gjs
    │   │   │   │   │       │   ├── site-admin/
    │   │   │   │   │       │   │   └── settings.gjs
    │   │   │   │   │       │   ├── spam/
    │   │   │   │   │       │   │   └── settings.gjs
    │   │   │   │   │       │   ├── trust-levels/
    │   │   │   │   │       │   │   └── settings.gjs
    │   │   │   │   │       │   └── user-defaults/
    │   │   │   │   │       │       └── settings.gjs
    │   │   │   │   │       ├── admin-customize-email-style/
    │   │   │   │   │       │   └── edit.gjs
    │   │   │   │   │       ├── admin-customize-form-templates/
    │   │   │   │   │       │   ├── edit.gjs
    │   │   │   │   │       │   ├── index.gjs
    │   │   │   │   │       │   └── new.gjs
    │   │   │   │   │       ├── admin-customize-themes/
    │   │   │   │   │       │   ├── edit.gjs
    │   │   │   │   │       │   ├── show.gjs
    │   │   │   │   │       │   └── show/
    │   │   │   │   │       │       ├── index.gjs
    │   │   │   │   │       │       └── schema.gjs
    │   │   │   │   │       ├── admin-email/
    │   │   │   │   │       │   ├── advanced-test.gjs
    │   │   │   │   │       │   ├── preview-digest.gjs
    │   │   │   │   │       │   ├── server-settings.gjs
    │   │   │   │   │       │   └── settings.gjs
    │   │   │   │   │       ├── admin-email-logs/
    │   │   │   │   │       │   ├── bounced.gjs
    │   │   │   │   │       │   ├── received.gjs
    │   │   │   │   │       │   ├── rejected.gjs
    │   │   │   │   │       │   ├── sent.gjs
    │   │   │   │   │       │   └── skipped.gjs
    │   │   │   │   │       ├── admin-email-templates/
    │   │   │   │   │       │   ├── edit.gjs
    │   │   │   │   │       │   └── index.gjs
    │   │   │   │   │       ├── admin-embedding/
    │   │   │   │   │       │   ├── crawlers.gjs
    │   │   │   │   │       │   ├── edit.gjs
    │   │   │   │   │       │   ├── index.gjs
    │   │   │   │   │       │   ├── new.gjs
    │   │   │   │   │       │   ├── posts-and-topics.gjs
    │   │   │   │   │       │   └── settings.gjs
    │   │   │   │   │       ├── admin-emojis/
    │   │   │   │   │       │   ├── index.gjs
    │   │   │   │   │       │   ├── new.gjs
    │   │   │   │   │       │   └── settings.gjs
    │   │   │   │   │       ├── admin-groups/
    │   │   │   │   │       │   ├── index.gjs
    │   │   │   │   │       │   └── settings.gjs
    │   │   │   │   │       ├── admin-logs/
    │   │   │   │   │       │   ├── screened-emails.gjs
    │   │   │   │   │       │   ├── screened-ip-addresses.gjs
    │   │   │   │   │       │   ├── screened-urls.gjs
    │   │   │   │   │       │   └── staff-action-logs.gjs
    │   │   │   │   │       ├── admin-permalinks/
    │   │   │   │   │       │   ├── edit.gjs
    │   │   │   │   │       │   ├── index.gjs
    │   │   │   │   │       │   ├── new.gjs
    │   │   │   │   │       │   └── settings.gjs
    │   │   │   │   │       ├── admin-plugins/
    │   │   │   │   │       │   ├── index.gjs
    │   │   │   │   │       │   ├── show.gjs
    │   │   │   │   │       │   └── show/
    │   │   │   │   │       │       └── settings.gjs
    │   │   │   │   │       ├── admin-reports/
    │   │   │   │   │       │   ├── dashboard-settings.gjs
    │   │   │   │   │       │   ├── index.gjs
    │   │   │   │   │       │   └── show.gjs
    │   │   │   │   │       ├── admin-search/
    │   │   │   │   │       │   └── index.gjs
    │   │   │   │   │       ├── admin-search-logs/
    │   │   │   │   │       │   ├── index.gjs
    │   │   │   │   │       │   └── term.gjs
    │   │   │   │   │       ├── admin-section/
    │   │   │   │   │       │   └── account.gjs
    │   │   │   │   │       ├── admin-site-text/
    │   │   │   │   │       │   ├── edit.gjs
    │   │   │   │   │       │   └── index.gjs
    │   │   │   │   │       ├── admin-user/
    │   │   │   │   │       │   ├── badges.gjs
    │   │   │   │   │       │   ├── index.gjs
    │   │   │   │   │       │   └── tl3-requirements.gjs
    │   │   │   │   │       ├── admin-user-fields/
    │   │   │   │   │       │   ├── edit.gjs
    │   │   │   │   │       │   ├── index.gjs
    │   │   │   │   │       │   └── new.gjs
    │   │   │   │   │       ├── admin-users/
    │   │   │   │   │       │   └── settings.gjs
    │   │   │   │   │       ├── admin-users-list/
    │   │   │   │   │       │   └── show.gjs
    │   │   │   │   │       ├── admin-watched-words/
    │   │   │   │   │       │   └── action.gjs
    │   │   │   │   │       ├── admin-web-hooks/
    │   │   │   │   │       │   ├── edit.gjs
    │   │   │   │   │       │   ├── index.gjs
    │   │   │   │   │       │   ├── new.gjs
    │   │   │   │   │       │   └── show.gjs
    │   │   │   │   │       └── edit-category/
    │   │   │   │   │           └── tabs.gjs
    │   │   │   │   ├── app/
    │   │   │   │   │   ├── app.js
    │   │   │   │   │   ├── array-shim.js
    │   │   │   │   │   ├── deprecation-workflow.js
    │   │   │   │   │   ├── discourse-common-loader-shims.js
    │   │   │   │   │   ├── global-compat.js
    │   │   │   │   │   ├── index.html
    │   │   │   │   │   ├── loader-shims.js
    │   │   │   │   │   ├── mapping-router.js
    │   │   │   │   │   ├── resolver-shims.js
    │   │   │   │   │   ├── resolver.js
    │   │   │   │   │   ├── setup-deprecation-workflow.js
    │   │   │   │   │   ├── adapters/
    │   │   │   │   │   │   ├── email-template.js
    │   │   │   │   │   │   ├── group.js
    │   │   │   │   │   │   ├── list-tag.js
    │   │   │   │   │   │   ├── notification.js
    │   │   │   │   │   │   ├── pending-post.js
    │   │   │   │   │   │   ├── post-reply-history.js
    │   │   │   │   │   │   ├── post-reply.js
    │   │   │   │   │   │   ├── post.js
    │   │   │   │   │   │   ├── published-page.js
    │   │   │   │   │   │   ├── rest.js
    │   │   │   │   │   │   ├── reviewable-explanation.js
    │   │   │   │   │   │   ├── reviewable-settings.js
    │   │   │   │   │   │   ├── reviewable-topic.js
    │   │   │   │   │   │   ├── reviewable.js
    │   │   │   │   │   │   ├── tag-info.js
    │   │   │   │   │   │   ├── tag-notification.js
    │   │   │   │   │   │   ├── tag.js
    │   │   │   │   │   │   ├── topic-list.js
    │   │   │   │   │   │   └── topic.js
    │   │   │   │   │   ├── components/
    │   │   │   │   │   │   ├── about-page-extra-groups.gjs
    │   │   │   │   │   │   ├── about-page-user.gjs
    │   │   │   │   │   │   ├── about-page-users.gjs
    │   │   │   │   │   │   ├── about-page.gjs
    │   │   │   │   │   │   ├── ace-editor.gjs
    │   │   │   │   │   │   ├── activation-controls.gjs
    │   │   │   │   │   │   ├── activation-email-form.gjs
    │   │   │   │   │   │   ├── add-category-tag-classes.gjs
    │   │   │   │   │   │   ├── add-topic-status-classes.gjs
    │   │   │   │   │   │   ├── admin-post-menu.gjs
    │   │   │   │   │   │   ├── anonymous-topic-footer-buttons.gjs
    │   │   │   │   │   │   ├── async-content.gjs
    │   │   │   │   │   │   ├── auth-token-dropdown.js
    │   │   │   │   │   │   ├── avatar-flair.gjs
    │   │   │   │   │   │   ├── avatar-uploader.gjs
    │   │   │   │   │   │   ├── back-button.gjs
    │   │   │   │   │   │   ├── backup-codes.gjs
    │   │   │   │   │   │   ├── badge-button.gjs
    │   │   │   │   │   │   ├── badge-card.gjs
    │   │   │   │   │   │   ├── badge-title.gjs
    │   │   │   │   │   │   ├── basic-topic-list.gjs
    │   │   │   │   │   │   ├── bookmark-actions-dropdown.js
    │   │   │   │   │   │   ├── bookmark-icon.gjs
    │   │   │   │   │   │   ├── bookmark-list.gjs
    │   │   │   │   │   │   ├── bookmark-menu.gjs
    │   │   │   │   │   │   ├── bootstrap-mode-notice.gjs
    │   │   │   │   │   │   ├── bread-crumbs.gjs
    │   │   │   │   │   │   ├── bulk-group-member-dropdown.js
    │   │   │   │   │   │   ├── bulk-select-toggle.gjs
    │   │   │   │   │   │   ├── bulk-select-topics-dropdown.gjs
    │   │   │   │   │   │   ├── calendar-date-time-input.gjs
    │   │   │   │   │   │   ├── card-container.gjs
    │   │   │   │   │   │   ├── card-contents-base.js
    │   │   │   │   │   │   ├── categories-and-latest-topics.gjs
    │   │   │   │   │   │   ├── categories-and-top-topics.gjs
    │   │   │   │   │   │   ├── categories-boxes-topic.gjs
    │   │   │   │   │   │   ├── categories-boxes-with-topics.gjs
    │   │   │   │   │   │   ├── categories-boxes.gjs
    │   │   │   │   │   │   ├── categories-only.gjs
    │   │   │   │   │   │   ├── categories-topic-list.gjs
    │   │   │   │   │   │   ├── categories-with-featured-topics.gjs
    │   │   │   │   │   │   ├── category-list-item.js
    │   │   │   │   │   │   ├── category-logo.gjs
    │   │   │   │   │   │   ├── category-name-fields.gjs
    │   │   │   │   │   │   ├── category-notifications-tracking.gjs
    │   │   │   │   │   │   ├── category-permission-row.gjs
    │   │   │   │   │   │   ├── category-read-only-banner.gjs
    │   │   │   │   │   │   ├── category-title-before.gjs
    │   │   │   │   │   │   ├── category-title-link.gjs
    │   │   │   │   │   │   ├── category-unread.gjs
    │   │   │   │   │   │   ├── cdn-img.gjs
    │   │   │   │   │   │   ├── char-counter.gjs
    │   │   │   │   │   │   ├── choose-message.gjs
    │   │   │   │   │   │   ├── choose-topic.gjs
    │   │   │   │   │   │   ├── color-palette-preview.gjs
    │   │   │   │   │   │   ├── color-picker-choice.js
    │   │   │   │   │   │   ├── color-picker.gjs
    │   │   │   │   │   │   ├── composer-action-title.gjs
    │   │   │   │   │   │   ├── composer-body.js
    │   │   │   │   │   │   ├── composer-container.gjs
    │   │   │   │   │   │   ├── composer-editor.gjs
    │   │   │   │   │   │   ├── composer-fullscreen-prompt.gjs
    │   │   │   │   │   │   ├── composer-message.js
    │   │   │   │   │   │   ├── composer-messages.gjs
    │   │   │   │   │   │   ├── composer-save-button.gjs
    │   │   │   │   │   │   ├── composer-tip-close-button.gjs
    │   │   │   │   │   │   ├── composer-title.gjs
    │   │   │   │   │   │   ├── composer-toggles.gjs
    │   │   │   │   │   │   ├── composer-user-selector.gjs
    │   │   │   │   │   │   ├── conditional-in-element.gjs
    │   │   │   │   │   │   ├── conditional-loading-section.gjs
    │   │   │   │   │   │   ├── conditional-loading-spinner.gjs
    │   │   │   │   │   │   ├── connector-container.js
    │   │   │   │   │   │   ├── cook-text.gjs
    │   │   │   │   │   │   ├── copy-button.gjs
    │   │   │   │   │   │   ├── count-i18n.gjs
    │   │   │   │   │   │   ├── create-invite-uploader.gjs
    │   │   │   │   │   │   ├── create-topic-button.gjs
    │   │   │   │   │   │   ├── custom-html.js
    │   │   │   │   │   │   ├── d-autocomplete-results.gjs
    │   │   │   │   │   │   ├── d-breadcrumbs-container.gjs
    │   │   │   │   │   │   ├── d-breadcrumbs-item.gjs
    │   │   │   │   │   │   ├── d-button.gjs
    │   │   │   │   │   │   ├── d-document.js
    │   │   │   │   │   │   ├── d-editor-original-translation-preview.gjs
    │   │   │   │   │   │   ├── d-editor-preview.gjs
    │   │   │   │   │   │   ├── d-editor.gjs
    │   │   │   │   │   │   ├── d-modal-cancel.gjs
    │   │   │   │   │   │   ├── d-modal.gjs
    │   │   │   │   │   │   ├── d-multi-select.gjs
    │   │   │   │   │   │   ├── d-navigation-item.gjs
    │   │   │   │   │   │   ├── d-navigation.gjs
    │   │   │   │   │   │   ├── d-page-action-button.gjs
    │   │   │   │   │   │   ├── d-page-header.gjs
    │   │   │   │   │   │   ├── d-page-subheader.gjs
    │   │   │   │   │   │   ├── d-section.gjs
    │   │   │   │   │   │   ├── d-select.gjs
    │   │   │   │   │   │   ├── d-stat-tiles.gjs
    │   │   │   │   │   │   ├── d-styles.gjs
    │   │   │   │   │   │   ├── d-textarea.js
    │   │   │   │   │   │   ├── d-toggle-switch.gjs
    │   │   │   │   │   │   ├── d-virtual-height.gjs
    │   │   │   │   │   │   ├── date-input.gjs
    │   │   │   │   │   │   ├── date-picker-future.js
    │   │   │   │   │   │   ├── date-picker-past.js
    │   │   │   │   │   │   ├── date-picker.gjs
    │   │   │   │   │   │   ├── date-time-input-range.gjs
    │   │   │   │   │   │   ├── date-time-input.gjs
    │   │   │   │   │   │   ├── decorated-html.gjs
    │   │   │   │   │   │   ├── deferred-render.gjs
    │   │   │   │   │   │   ├── desktop-notification-config.gjs
    │   │   │   │   │   │   ├── directory-item-user-field-value.gjs
    │   │   │   │   │   │   ├── directory-item.gjs
    │   │   │   │   │   │   ├── directory-table.gjs
    │   │   │   │   │   │   ├── discourse-banner.gjs
    │   │   │   │   │   │   ├── discourse-linked-text.gjs
    │   │   │   │   │   │   ├── discourse-root.js
    │   │   │   │   │   │   ├── discourse-tag-bound.gjs
    │   │   │   │   │   │   ├── discourse-topic.js
    │   │   │   │   │   │   ├── discovery-topics-list.js
    │   │   │   │   │   │   ├── dropdown-menu.gjs
    │   │   │   │   │   │   ├── edit-topic-timer-form.gjs
    │   │   │   │   │   │   ├── email-dropdown.js
    │   │   │   │   │   │   ├── ember-text-field.gjs
    │   │   │   │   │   │   ├── empty-state.gjs
    │   │   │   │   │   │   ├── empty-topic-filter.gjs
    │   │   │   │   │   │   ├── expand-post.gjs
    │   │   │   │   │   │   ├── expanding-text-area.gjs
    │   │   │   │   │   │   ├── fast-edit.gjs
    │   │   │   │   │   │   ├── featured-topic.gjs
    │   │   │   │   │   │   ├── filter-input.gjs
    │   │   │   │   │   │   ├── flag-action-type.gjs
    │   │   │   │   │   │   ├── flag-selection.gjs
    │   │   │   │   │   │   ├── flash-message.gjs
    │   │   │   │   │   │   ├── footer-message.gjs
    │   │   │   │   │   │   ├── footer-nav.gjs
    │   │   │   │   │   │   ├── form.gjs
    │   │   │   │   │   │   ├── fullname-input.gjs
    │   │   │   │   │   │   ├── future-date-input.gjs
    │   │   │   │   │   │   ├── generated-invite-link.gjs
    │   │   │   │   │   │   ├── glimmer-site-header.gjs
    │   │   │   │   │   │   ├── global-notice.gjs
    │   │   │   │   │   │   ├── google-icon.gjs
    │   │   │   │   │   │   ├── google-search.gjs
    │   │   │   │   │   │   ├── group-activity-filter.gjs
    │   │   │   │   │   │   ├── group-card-contents.gjs
    │   │   │   │   │   │   ├── group-card.gjs
    │   │   │   │   │   │   ├── group-flair-inputs.gjs
    │   │   │   │   │   │   ├── group-imap-email-settings.gjs
    │   │   │   │   │   │   ├── group-info.gjs
    │   │   │   │   │   │   ├── group-link.gjs
    │   │   │   │   │   │   ├── group-list.gjs
    │   │   │   │   │   │   ├── group-manage-email-settings.gjs
    │   │   │   │   │   │   ├── group-manage-logs-filter.gjs
    │   │   │   │   │   │   ├── group-manage-logs-row.gjs
    │   │   │   │   │   │   ├── group-manage-save-button.gjs
    │   │   │   │   │   │   ├── group-member-dropdown.js
    │   │   │   │   │   │   ├── group-member.gjs
    │   │   │   │   │   │   ├── group-membership-button.gjs
    │   │   │   │   │   │   ├── group-navigation.gjs
    │   │   │   │   │   │   ├── group-notifications-tracking.gjs
    │   │   │   │   │   │   ├── group-selector.gjs
    │   │   │   │   │   │   ├── group-smtp-email-settings.gjs
    │   │   │   │   │   │   ├── groups-form-interaction-fields.gjs
    │   │   │   │   │   │   ├── groups-form-membership-fields.gjs
    │   │   │   │   │   │   ├── groups-form-profile-fields.gjs
    │   │   │   │   │   │   ├── header-extra-info.js
    │   │   │   │   │   │   ├── header.gjs
    │   │   │   │   │   │   ├── highlight-search.gjs
    │   │   │   │   │   │   ├── honeypot-input.js
    │   │   │   │   │   │   ├── horizontal-overflow-nav.gjs
    │   │   │   │   │   │   ├── horizontal-scroll-sync-wrapper.gjs
    │   │   │   │   │   │   ├── html-with-links.js
    │   │   │   │   │   │   ├── iframed-html.gjs
    │   │   │   │   │   │   ├── ignored-user-list-item.gjs
    │   │   │   │   │   │   ├── ignored-user-list.gjs
    │   │   │   │   │   │   ├── impersonation-notice.gjs
    │   │   │   │   │   │   ├── input-tip.gjs
    │   │   │   │   │   │   ├── interface-color-selector.gjs
    │   │   │   │   │   │   ├── interpolated-translation.gjs
    │   │   │   │   │   │   ├── invite-panel.gjs
    │   │   │   │   │   │   ├── language-switcher.gjs
    │   │   │   │   │   │   ├── legacy-about-page-users.gjs
    │   │   │   │   │   │   ├── light-dark-img.gjs
    │   │   │   │   │   │   ├── link-to-input.gjs
    │   │   │   │   │   │   ├── links-redirect.js
    │   │   │   │   │   │   ├── load-more.gjs
    │   │   │   │   │   │   ├── loading-slider-fallback-spinner.gjs
    │   │   │   │   │   │   ├── local-login-form.gjs
    │   │   │   │   │   │   ├── login-buttons.gjs
    │   │   │   │   │   │   ├── login-page-cta.gjs
    │   │   │   │   │   │   ├── menu-panel.gjs
    │   │   │   │   │   │   ├── mobile-category-topic.gjs
    │   │   │   │   │   │   ├── mobile-nav.gjs
    │   │   │   │   │   │   ├── modal-container.gjs
    │   │   │   │   │   │   ├── more-topics.gjs
    │   │   │   │   │   │   ├── mount-widget.gjs
    │   │   │   │   │   │   ├── nav-item.gjs
    │   │   │   │   │   │   ├── navigation-bar.gjs
    │   │   │   │   │   │   ├── navigation-item.gjs
    │   │   │   │   │   │   ├── new-list-header-controls-wrapper.gjs
    │   │   │   │   │   │   ├── notification-consent-banner.gjs
    │   │   │   │   │   │   ├── notifications-tracking.gjs
    │   │   │   │   │   │   ├── number-field.js
    │   │   │   │   │   │   ├── offline-indicator.gjs
    │   │   │   │   │   │   ├── page-loading-slider.gjs
    │   │   │   │   │   │   ├── parent-category-row.gjs
    │   │   │   │   │   │   ├── passkey-login-button.gjs
    │   │   │   │   │   │   ├── password-field.js
    │   │   │   │   │   │   ├── pick-files-button.gjs
    │   │   │   │   │   │   ├── pinned-button.gjs
    │   │   │   │   │   │   ├── pinned-options.gjs
    │   │   │   │   │   │   ├── plugin-connector.js
    │   │   │   │   │   │   ├── plugin-outlet.gjs
    │   │   │   │   │   │   ├── popup-input-tip.gjs
    │   │   │   │   │   │   ├── popup-menu.gjs
    │   │   │   │   │   │   ├── post-action-description.gjs
    │   │   │   │   │   │   ├── post-language-selector.gjs
    │   │   │   │   │   │   ├── post-stream.gjs
    │   │   │   │   │   │   ├── post-text-selection-toolbar.gjs
    │   │   │   │   │   │   ├── post-text-selection.gjs
    │   │   │   │   │   │   ├── post-translation-editor.gjs
    │   │   │   │   │   │   ├── post.gjs
    │   │   │   │   │   │   ├── powered-by-discourse.gjs
    │   │   │   │   │   │   ├── preference-checkbox.gjs
    │   │   │   │   │   │   ├── private-message-glyph.gjs
    │   │   │   │   │   │   ├── pwa-install-banner.gjs
    │   │   │   │   │   │   ├── radio-button.js
    │   │   │   │   │   │   ├── related-messages.gjs
    │   │   │   │   │   │   ├── relative-date.gjs
    │   │   │   │   │   │   ├── relative-time-picker.gjs
    │   │   │   │   │   │   ├── render-glimmer-container.gjs
    │   │   │   │   │   │   ├── responsive-table.gjs
    │   │   │   │   │   │   ├── reviewable-bundled-action.gjs
    │   │   │   │   │   │   ├── reviewable-claimed-topic.gjs
    │   │   │   │   │   │   ├── reviewable-conversation-post.gjs
    │   │   │   │   │   │   ├── reviewable-created-by-name.gjs
    │   │   │   │   │   │   ├── reviewable-created-by.gjs
    │   │   │   │   │   │   ├── reviewable-field-category.gjs
    │   │   │   │   │   │   ├── reviewable-field-editor.gjs
    │   │   │   │   │   │   ├── reviewable-field-tags.gjs
    │   │   │   │   │   │   ├── reviewable-field-text.gjs
    │   │   │   │   │   │   ├── reviewable-field-textarea.gjs
    │   │   │   │   │   │   ├── reviewable-field.gjs
    │   │   │   │   │   │   ├── reviewable-flagged-post.gjs
    │   │   │   │   │   │   ├── reviewable-histories.gjs
    │   │   │   │   │   │   ├── reviewable-item.gjs
    │   │   │   │   │   │   ├── reviewable-post-edits.gjs
    │   │   │   │   │   │   ├── reviewable-post-header.gjs
    │   │   │   │   │   │   ├── reviewable-post.gjs
    │   │   │   │   │   │   ├── reviewable-queued-post.gjs
    │   │   │   │   │   │   ├── reviewable-score.gjs
    │   │   │   │   │   │   ├── reviewable-scores.gjs
    │   │   │   │   │   │   ├── reviewable-tags.gjs
    │   │   │   │   │   │   ├── reviewable-topic-link.gjs
    │   │   │   │   │   │   ├── reviewable-user.gjs
    │   │   │   │   │   │   ├── save-controls.gjs
    │   │   │   │   │   │   ├── score-value.gjs
    │   │   │   │   │   │   ├── scrolling-post-stream.js
    │   │   │   │   │   │   ├── search-advanced-options.gjs
    │   │   │   │   │   │   ├── search-menu-panel.gjs
    │   │   │   │   │   │   ├── search-menu.gjs
    │   │   │   │   │   │   ├── search-result-entries.gjs
    │   │   │   │   │   │   ├── search-result-entry.gjs
    │   │   │   │   │   │   ├── search-text-field.js
    │   │   │   │   │   │   ├── second-factor-form.gjs
    │   │   │   │   │   │   ├── second-factor-input.gjs
    │   │   │   │   │   │   ├── security-key-dropdown.js
    │   │   │   │   │   │   ├── security-key-form.gjs
    │   │   │   │   │   │   ├── selected-posts.gjs
    │   │   │   │   │   │   ├── share-panel.gjs
    │   │   │   │   │   │   ├── share-source.gjs
    │   │   │   │   │   │   ├── shared-draft-controls.gjs
    │   │   │   │   │   │   ├── sidebar.gjs
    │   │   │   │   │   │   ├── signup-cta.gjs
    │   │   │   │   │   │   ├── signup-page-cta.gjs
    │   │   │   │   │   │   ├── signup-progress-bar.gjs
    │   │   │   │   │   │   ├── slow-mode-info.gjs
    │   │   │   │   │   │   ├── small-user-list.gjs
    │   │   │   │   │   │   ├── software-update-prompt.gjs
    │   │   │   │   │   │   ├── sub-category-item.gjs
    │   │   │   │   │   │   ├── sub-category-row.gjs
    │   │   │   │   │   │   ├── subcategories-with-featured-topics.gjs
    │   │   │   │   │   │   ├── suggested-topics.gjs
    │   │   │   │   │   │   ├── table-header-toggle.gjs
    │   │   │   │   │   │   ├── tag-groups-form.gjs
    │   │   │   │   │   │   ├── tag-info.gjs
    │   │   │   │   │   │   ├── tag-list.gjs
    │   │   │   │   │   │   ├── tag-notifications-tracking.gjs
    │   │   │   │   │   │   ├── tap-tile-grid.gjs
    │   │   │   │   │   │   ├── tap-tile.gjs
    │   │   │   │   │   │   ├── text-field.js
    │   │   │   │   │   │   ├── textarea.gjs
    │   │   │   │   │   │   ├── time-input.gjs
    │   │   │   │   │   │   ├── time-shortcut-picker.gjs
    │   │   │   │   │   │   ├── toggle-password-mask.gjs
    │   │   │   │   │   │   ├── token-based-auth-dropdown.js
    │   │   │   │   │   │   ├── toolbar-popup-menu-options.gjs
    │   │   │   │   │   │   ├── top-period-buttons.gjs
    │   │   │   │   │   │   ├── topic-admin-menu.gjs
    │   │   │   │   │   │   ├── topic-category.gjs
    │   │   │   │   │   │   ├── topic-dismiss-buttons.gjs
    │   │   │   │   │   │   ├── topic-drafts-dropdown.gjs
    │   │   │   │   │   │   ├── topic-entrance.gjs
    │   │   │   │   │   │   ├── topic-footer-buttons.gjs
    │   │   │   │   │   │   ├── topic-label-content.gjs
    │   │   │   │   │   │   ├── topic-list.gjs
    │   │   │   │   │   │   ├── topic-localized-content-toggle.gjs
    │   │   │   │   │   │   ├── topic-navigation-popup.gjs
    │   │   │   │   │   │   ├── topic-navigation.gjs
    │   │   │   │   │   │   ├── topic-notifications-tracking.gjs
    │   │   │   │   │   │   ├── topic-post-badges.gjs
    │   │   │   │   │   │   ├── topic-progress.gjs
    │   │   │   │   │   │   ├── topic-status.gjs
    │   │   │   │   │   │   ├── topic-timeline.gjs
    │   │   │   │   │   │   ├── topic-timer-info.gjs
    │   │   │   │   │   │   ├── topic-title.gjs
    │   │   │   │   │   │   ├── track-selected.gjs
    │   │   │   │   │   │   ├── two-factor-backup-dropdown.js
    │   │   │   │   │   │   ├── uppy-image-uploader.gjs
    │   │   │   │   │   │   ├── user-avatar-flair.gjs
    │   │   │   │   │   │   ├── user-avatar.gjs
    │   │   │   │   │   │   ├── user-badge.gjs
    │   │   │   │   │   │   ├── user-card-contents.gjs
    │   │   │   │   │   │   ├── user-field.gjs
    │   │   │   │   │   │   ├── user-flag-percentage.gjs
    │   │   │   │   │   │   ├── user-info.gjs
    │   │   │   │   │   │   ├── user-link.gjs
    │   │   │   │   │   │   ├── user-nav.gjs
    │   │   │   │   │   │   ├── user-notification-schedule-day.gjs
    │   │   │   │   │   │   ├── user-notification-schedule.gjs
    │   │   │   │   │   │   ├── user-profile-avatar.gjs
    │   │   │   │   │   │   ├── user-stat.gjs
    │   │   │   │   │   │   ├── user-status-message.gjs
    │   │   │   │   │   │   ├── user-status-picker.gjs
    │   │   │   │   │   │   ├── user-stream-item.gjs
    │   │   │   │   │   │   ├── user-stream.gjs
    │   │   │   │   │   │   ├── user-summary-category-search.gjs
    │   │   │   │   │   │   ├── user-summary-section.gjs
    │   │   │   │   │   │   ├── user-summary-topic.gjs
    │   │   │   │   │   │   ├── user-summary-topics-list.gjs
    │   │   │   │   │   │   ├── user-summary-user.gjs
    │   │   │   │   │   │   ├── user-summary-users-list.gjs
    │   │   │   │   │   │   ├── user-tip-container.gjs
    │   │   │   │   │   │   ├── user-tip.gjs
    │   │   │   │   │   │   ├── username-preference.gjs
    │   │   │   │   │   │   ├── watch-read.gjs
    │   │   │   │   │   │   ├── welcome-banner.gjs
    │   │   │   │   │   │   ├── welcome-header.gjs
    │   │   │   │   │   │   ├── bulk-actions/
    │   │   │   │   │   │   │   ├── append-tags.gjs
    │   │   │   │   │   │   │   ├── change-category.gjs
    │   │   │   │   │   │   │   ├── change-tags.gjs
    │   │   │   │   │   │   │   └── notification-level.gjs
    │   │   │   │   │   │   ├── composer/
    │   │   │   │   │   │   │   ├── textarea-editor.gjs
    │   │   │   │   │   │   │   ├── toggle-switch.gjs
    │   │   │   │   │   │   │   └── toolbar-buttons.gjs
    │   │   │   │   │   │   ├── dialog-messages/
    │   │   │   │   │   │   │   ├── confirm-session.gjs
    │   │   │   │   │   │   │   ├── group-delete.gjs
    │   │   │   │   │   │   │   └── second-factor-confirm-phrase.gjs
    │   │   │   │   │   │   ├── discovery/
    │   │   │   │   │   │   │   ├── accessible-discovery-heading.gjs
    │   │   │   │   │   │   │   ├── categories-display.gjs
    │   │   │   │   │   │   │   ├── filter-navigation-menu.gjs
    │   │   │   │   │   │   │   ├── filter-navigation.gjs
    │   │   │   │   │   │   │   ├── layout.gjs
    │   │   │   │   │   │   │   ├── navigation.gjs
    │   │   │   │   │   │   │   └── topics.gjs
    │   │   │   │   │   │   ├── emoji-picker/
    │   │   │   │   │   │   │   ├── content.gjs
    │   │   │   │   │   │   │   ├── detached.gjs
    │   │   │   │   │   │   │   ├── diversity-menu.gjs
    │   │   │   │   │   │   │   └── index.gjs
    │   │   │   │   │   │   ├── form-template-field/
    │   │   │   │   │   │   │   ├── checkbox.gjs
    │   │   │   │   │   │   │   ├── dropdown.gjs
    │   │   │   │   │   │   │   ├── input.gjs
    │   │   │   │   │   │   │   ├── multi-select.gjs
    │   │   │   │   │   │   │   ├── tag-chooser.gjs
    │   │   │   │   │   │   │   ├── textarea.gjs
    │   │   │   │   │   │   │   ├── upload.gjs
    │   │   │   │   │   │   │   └── wrapper.gjs
    │   │   │   │   │   │   ├── header/
    │   │   │   │   │   │   │   ├── auth-buttons.gjs
    │   │   │   │   │   │   │   ├── contents.gjs
    │   │   │   │   │   │   │   ├── dropdown.gjs
    │   │   │   │   │   │   │   ├── hamburger-dropdown-wrapper.gjs
    │   │   │   │   │   │   │   ├── header-search.gjs
    │   │   │   │   │   │   │   ├── home-logo-contents.gjs
    │   │   │   │   │   │   │   ├── home-logo.gjs
    │   │   │   │   │   │   │   ├── icons.gjs
    │   │   │   │   │   │   │   ├── logo.gjs
    │   │   │   │   │   │   │   ├── search-menu-wrapper.gjs
    │   │   │   │   │   │   │   ├── sidebar-toggle.gjs
    │   │   │   │   │   │   │   ├── user-dropdown.gjs
    │   │   │   │   │   │   │   ├── user-menu-wrapper.gjs
    │   │   │   │   │   │   │   ├── topic/
    │   │   │   │   │   │   │   │   ├── featured-link.gjs
    │   │   │   │   │   │   │   │   ├── info.gjs
    │   │   │   │   │   │   │   │   └── participant.gjs
    │   │   │   │   │   │   │   └── user-dropdown/
    │   │   │   │   │   │   │       ├── notifications.gjs
    │   │   │   │   │   │   │       └── user-status-bubble.gjs
    │   │   │   │   │   │   ├── modal/
    │   │   │   │   │   │   │   ├── activation-edit.gjs
    │   │   │   │   │   │   │   ├── activation-resent.gjs
    │   │   │   │   │   │   │   ├── add-pm-participants.gjs
    │   │   │   │   │   │   │   ├── anonymous-flag.gjs
    │   │   │   │   │   │   │   ├── associate-account-confirm.gjs
    │   │   │   │   │   │   │   ├── auth-token.gjs
    │   │   │   │   │   │   │   ├── avatar-selector.gjs
    │   │   │   │   │   │   │   ├── bookmark.gjs
    │   │   │   │   │   │   │   ├── bulk-topic-actions.gjs
    │   │   │   │   │   │   │   ├── change-owner.gjs
    │   │   │   │   │   │   │   ├── change-post-notice.gjs
    │   │   │   │   │   │   │   ├── change-timestamp.gjs
    │   │   │   │   │   │   │   ├── convert-to-public-topic.gjs
    │   │   │   │   │   │   │   ├── create-invite-bulk.gjs
    │   │   │   │   │   │   │   ├── create-invite.gjs
    │   │   │   │   │   │   │   ├── customize-form-template-view.gjs
    │   │   │   │   │   │   │   ├── delete-themes-confirm.gjs
    │   │   │   │   │   │   │   ├── delete-topic-confirm.gjs
    │   │   │   │   │   │   │   ├── delete-topic-disallowed.gjs
    │   │   │   │   │   │   │   ├── discard-draft.gjs
    │   │   │   │   │   │   │   ├── dismiss-new.gjs
    │   │   │   │   │   │   │   ├── dismiss-notification-confirmation.gjs
    │   │   │   │   │   │   │   ├── dismiss-read.gjs
    │   │   │   │   │   │   │   ├── do-not-disturb.gjs
    │   │   │   │   │   │   │   ├── download-calendar.gjs
    │   │   │   │   │   │   │   ├── edit-slow-mode.gjs
    │   │   │   │   │   │   │   ├── edit-topic-timer.gjs
    │   │   │   │   │   │   │   ├── edit-user-directory-columns.gjs
    │   │   │   │   │   │   │   ├── explain-reviewable.gjs
    │   │   │   │   │   │   │   ├── fast-edit.gjs
    │   │   │   │   │   │   │   ├── feature-topic-on-profile.gjs
    │   │   │   │   │   │   │   ├── feature-topic.gjs
    │   │   │   │   │   │   │   ├── flag.gjs
    │   │   │   │   │   │   │   ├── forgot-password.gjs
    │   │   │   │   │   │   │   ├── form-template-form-preview.gjs
    │   │   │   │   │   │   │   ├── fullscreen-code.gjs
    │   │   │   │   │   │   │   ├── fullscreen-table.gjs
    │   │   │   │   │   │   │   ├── grant-badge.gjs
    │   │   │   │   │   │   │   ├── group-add-members.gjs
    │   │   │   │   │   │   │   ├── group-default-notifications.gjs
    │   │   │   │   │   │   │   ├── history.gjs
    │   │   │   │   │   │   │   ├── ignore-duration-with-username.gjs
    │   │   │   │   │   │   │   ├── json-schema-editor.gjs
    │   │   │   │   │   │   │   ├── jump-to-post.gjs
    │   │   │   │   │   │   │   ├── keyboard-shortcuts-help.gjs
    │   │   │   │   │   │   │   ├── move-to-topic.gjs
    │   │   │   │   │   │   │   ├── not-activated.gjs
    │   │   │   │   │   │   │   ├── post-enqueued.gjs
    │   │   │   │   │   │   │   ├── post-translations.gjs
    │   │   │   │   │   │   │   ├── publish-page.gjs
    │   │   │   │   │   │   │   ├── raw-email.gjs
    │   │   │   │   │   │   │   ├── reject-reason-reviewable.gjs
    │   │   │   │   │   │   │   ├── reorder-categories.gjs
    │   │   │   │   │   │   │   ├── request-group-membership-form.gjs
    │   │   │   │   │   │   │   ├── revise-and-reject-post-reviewable.gjs
    │   │   │   │   │   │   │   ├── second-factor-add-security-key.gjs
    │   │   │   │   │   │   │   ├── second-factor-add-totp.gjs
    │   │   │   │   │   │   │   ├── second-factor-backup-edit.gjs
    │   │   │   │   │   │   │   ├── second-factor-edit-security-key.gjs
    │   │   │   │   │   │   │   ├── second-factor-edit.gjs
    │   │   │   │   │   │   │   ├── share-topic.gjs
    │   │   │   │   │   │   │   ├── sidebar-section-form.gjs
    │   │   │   │   │   │   │   ├── spreadsheet-editor.gjs
    │   │   │   │   │   │   │   ├── update-default-text-size.gjs
    │   │   │   │   │   │   │   ├── upsert-hyperlink.gjs
    │   │   │   │   │   │   │   ├── user-status.gjs
    │   │   │   │   │   │   │   └── history/
    │   │   │   │   │   │   │       ├── revision.gjs
    │   │   │   │   │   │   │       ├── revisions.gjs
    │   │   │   │   │   │   │       └── topic-footer.gjs
    │   │   │   │   │   │   ├── more-topics/
    │   │   │   │   │   │   │   └── browse-more.gjs
    │   │   │   │   │   │   ├── post/
    │   │   │   │   │   │   │   ├── actions-summary.gjs
    │   │   │   │   │   │   │   ├── avatar.gjs
    │   │   │   │   │   │   │   ├── cooked-html.gjs
    │   │   │   │   │   │   │   ├── embedded.gjs
    │   │   │   │   │   │   │   ├── filtered-notice.gjs
    │   │   │   │   │   │   │   ├── gap.gjs
    │   │   │   │   │   │   │   ├── links.gjs
    │   │   │   │   │   │   │   ├── menu.gjs
    │   │   │   │   │   │   │   ├── meta-data.gjs
    │   │   │   │   │   │   │   ├── notice.gjs
    │   │   │   │   │   │   │   ├── placeholder.gjs
    │   │   │   │   │   │   │   ├── quoted-content.gjs
    │   │   │   │   │   │   │   ├── small-action.gjs
    │   │   │   │   │   │   │   ├── time-gap.gjs
    │   │   │   │   │   │   │   ├── visited-line.gjs
    │   │   │   │   │   │   │   ├── menu/
    │   │   │   │   │   │   │   │   ├── button-config.gjs
    │   │   │   │   │   │   │   │   ├── button-wrapper.gjs
    │   │   │   │   │   │   │   │   └── buttons/
    │   │   │   │   │   │   │   │       ├── add-translation.gjs
    │   │   │   │   │   │   │   │       ├── admin.gjs
    │   │   │   │   │   │   │   │       ├── bookmark.gjs
    │   │   │   │   │   │   │   │       ├── copy-link.gjs
    │   │   │   │   │   │   │   │       ├── delete.gjs
    │   │   │   │   │   │   │   │       ├── edit.gjs
    │   │   │   │   │   │   │   │       ├── flag.gjs
    │   │   │   │   │   │   │   │       ├── like.gjs
    │   │   │   │   │   │   │   │       ├── read.gjs
    │   │   │   │   │   │   │   │       ├── replies.gjs
    │   │   │   │   │   │   │   │       ├── reply.gjs
    │   │   │   │   │   │   │   │       ├── share.gjs
    │   │   │   │   │   │   │   │       └── show-more.gjs
    │   │   │   │   │   │   │   ├── meta-data/
    │   │   │   │   │   │   │   │   ├── date.gjs
    │   │   │   │   │   │   │   │   ├── edits-indicator.gjs
    │   │   │   │   │   │   │   │   ├── email-indicator.gjs
    │   │   │   │   │   │   │   │   ├── language.gjs
    │   │   │   │   │   │   │   │   ├── locked-indicator.gjs
    │   │   │   │   │   │   │   │   ├── poster-name.gjs
    │   │   │   │   │   │   │   │   ├── read-indicator.gjs
    │   │   │   │   │   │   │   │   ├── reply-to-tab.gjs
    │   │   │   │   │   │   │   │   ├── select-post.gjs
    │   │   │   │   │   │   │   │   ├── whisper-indicator.gjs
    │   │   │   │   │   │   │   │   └── poster-name/
    │   │   │   │   │   │   │   │       └── icon.gjs
    │   │   │   │   │   │   │   └── notice/
    │   │   │   │   │   │   │       ├── custom.gjs
    │   │   │   │   │   │   │       ├── new-user.gjs
    │   │   │   │   │   │   │       └── returning-user.gjs
    │   │   │   │   │   │   ├── post-list/
    │   │   │   │   │   │   │   ├── bulk-controls.gjs
    │   │   │   │   │   │   │   ├── index.gjs
    │   │   │   │   │   │   │   └── item/
    │   │   │   │   │   │   │       ├── details.gjs
    │   │   │   │   │   │   │       └── index.gjs
    │   │   │   │   │   │   ├── reviewable-refresh/
    │   │   │   │   │   │   │   ├── created-by.gjs
    │   │   │   │   │   │   │   ├── flag-reason.gjs
    │   │   │   │   │   │   │   ├── flagged-post.gjs
    │   │   │   │   │   │   │   ├── insights.gjs
    │   │   │   │   │   │   │   ├── item.gjs
    │   │   │   │   │   │   │   ├── note-form.gjs
    │   │   │   │   │   │   │   ├── post.gjs
    │   │   │   │   │   │   │   ├── queued-post.gjs
    │   │   │   │   │   │   │   ├── timeline.gjs
    │   │   │   │   │   │   │   └── topic-link.gjs
    │   │   │   │   │   │   ├── search-menu/
    │   │   │   │   │   │   │   ├── advanced-button.gjs
    │   │   │   │   │   │   │   ├── clear-button.gjs
    │   │   │   │   │   │   │   ├── highlighted-search.gjs
    │   │   │   │   │   │   │   ├── results.gjs
    │   │   │   │   │   │   │   ├── search-term.gjs
    │   │   │   │   │   │   │   └── results/
    │   │   │   │   │   │   │       ├── assistant-item.gjs
    │   │   │   │   │   │   │       ├── assistant.gjs
    │   │   │   │   │   │   │       ├── blurb.gjs
    │   │   │   │   │   │   │       ├── initial-options.gjs
    │   │   │   │   │   │   │       ├── more-link.gjs
    │   │   │   │   │   │   │       ├── random-quick-tip.gjs
    │   │   │   │   │   │   │       ├── recent-searches.gjs
    │   │   │   │   │   │   │       ├── types.gjs
    │   │   │   │   │   │   │       └── type/
    │   │   │   │   │   │   │           ├── category.gjs
    │   │   │   │   │   │   │           ├── group.gjs
    │   │   │   │   │   │   │           ├── post.gjs
    │   │   │   │   │   │   │           ├── tag.gjs
    │   │   │   │   │   │   │           ├── topic.gjs
    │   │   │   │   │   │   │           └── user.gjs
    │   │   │   │   │   │   ├── sidebar/
    │   │   │   │   │   │   │   ├── api-panels.gjs
    │   │   │   │   │   │   │   ├── api-section.gjs
    │   │   │   │   │   │   │   ├── api-sections.gjs
    │   │   │   │   │   │   │   ├── back-to-forum.gjs
    │   │   │   │   │   │   │   ├── filter-no-results.gjs
    │   │   │   │   │   │   │   ├── filter.gjs
    │   │   │   │   │   │   │   ├── footer.gjs
    │   │   │   │   │   │   │   ├── hamburger-dropdown.gjs
    │   │   │   │   │   │   │   ├── more-section-link.gjs
    │   │   │   │   │   │   │   ├── more-section-links.gjs
    │   │   │   │   │   │   │   ├── more-section-trigger.gjs
    │   │   │   │   │   │   │   ├── panel-header.gjs
    │   │   │   │   │   │   │   ├── search.gjs
    │   │   │   │   │   │   │   ├── section-form-link.gjs
    │   │   │   │   │   │   │   ├── section-header.gjs
    │   │   │   │   │   │   │   ├── section-link-button.gjs
    │   │   │   │   │   │   │   ├── section-link-prefix.gjs
    │   │   │   │   │   │   │   ├── section-link.gjs
    │   │   │   │   │   │   │   ├── section.gjs
    │   │   │   │   │   │   │   ├── sections.gjs
    │   │   │   │   │   │   │   ├── switch-panel-buttons.gjs
    │   │   │   │   │   │   │   ├── toggle-all-sections.gjs
    │   │   │   │   │   │   │   ├── anonymous/
    │   │   │   │   │   │   │   │   ├── categories-section.gjs
    │   │   │   │   │   │   │   │   ├── custom-sections.gjs
    │   │   │   │   │   │   │   │   ├── sections.gjs
    │   │   │   │   │   │   │   │   └── tags-section.gjs
    │   │   │   │   │   │   │   ├── common/
    │   │   │   │   │   │   │   │   ├── all-categories-section-link.gjs
    │   │   │   │   │   │   │   │   ├── all-tags-section-link.gjs
    │   │   │   │   │   │   │   │   ├── categories-section.gjs
    │   │   │   │   │   │   │   │   ├── custom-section.gjs
    │   │   │   │   │   │   │   │   └── custom-sections.gjs
    │   │   │   │   │   │   │   ├── edit-navigation-menu/
    │   │   │   │   │   │   │   │   ├── categories-modal.gjs
    │   │   │   │   │   │   │   │   ├── modal.gjs
    │   │   │   │   │   │   │   │   └── tags-modal.gjs
    │   │   │   │   │   │   │   └── user/
    │   │   │   │   │   │   │       ├── categories-section.gjs
    │   │   │   │   │   │   │       ├── custom-sections.gjs
    │   │   │   │   │   │   │       ├── sections.gjs
    │   │   │   │   │   │   │       └── tags-section.gjs
    │   │   │   │   │   │   ├── svg/
    │   │   │   │   │   │   │   ├── documents-checkmark.gjs
    │   │   │   │   │   │   │   ├── envelope-zero.gjs
    │   │   │   │   │   │   │   └── single-color-palette-placeholder.gjs
    │   │   │   │   │   │   ├── topic-list/
    │   │   │   │   │   │   │   ├── action-list.gjs
    │   │   │   │   │   │   │   ├── featured-topic.gjs
    │   │   │   │   │   │   │   ├── header.gjs
    │   │   │   │   │   │   │   ├── item.gjs
    │   │   │   │   │   │   │   ├── latest-topic-list-item.gjs
    │   │   │   │   │   │   │   ├── list.gjs
    │   │   │   │   │   │   │   ├── new-list-header-controls.gjs
    │   │   │   │   │   │   │   ├── participant-groups.gjs
    │   │   │   │   │   │   │   ├── post-count-or-badges.gjs
    │   │   │   │   │   │   │   ├── topic-bulk-select-dropdown.gjs
    │   │   │   │   │   │   │   ├── topic-excerpt.gjs
    │   │   │   │   │   │   │   ├── topic-link.gjs
    │   │   │   │   │   │   │   ├── unread-indicator.gjs
    │   │   │   │   │   │   │   ├── header/
    │   │   │   │   │   │   │   │   ├── activity-cell.gjs
    │   │   │   │   │   │   │   │   ├── bulk-select-cell.gjs
    │   │   │   │   │   │   │   │   ├── likes-cell.gjs
    │   │   │   │   │   │   │   │   ├── op-likes-cell.gjs
    │   │   │   │   │   │   │   │   ├── posters-cell.gjs
    │   │   │   │   │   │   │   │   ├── replies-cell.gjs
    │   │   │   │   │   │   │   │   ├── sortable-column.gjs
    │   │   │   │   │   │   │   │   ├── topic-cell.gjs
    │   │   │   │   │   │   │   │   └── views-cell.gjs
    │   │   │   │   │   │   │   └── item/
    │   │   │   │   │   │   │       ├── activity-cell.gjs
    │   │   │   │   │   │   │       ├── bulk-select-cell.gjs
    │   │   │   │   │   │   │       ├── likes-cell.gjs
    │   │   │   │   │   │   │       ├── op-likes-cell.gjs
    │   │   │   │   │   │   │       ├── posters-cell.gjs
    │   │   │   │   │   │   │       ├── replies-cell.gjs
    │   │   │   │   │   │   │       ├── topic-cell.gjs
    │   │   │   │   │   │   │       └── views-cell.gjs
    │   │   │   │   │   │   ├── topic-map/
    │   │   │   │   │   │   │   ├── index.gjs
    │   │   │   │   │   │   │   ├── private-message-map.gjs
    │   │   │   │   │   │   │   ├── topic-map-link.gjs
    │   │   │   │   │   │   │   ├── topic-map-summary.gjs
    │   │   │   │   │   │   │   ├── topic-participant.gjs
    │   │   │   │   │   │   │   ├── topic-participants.gjs
    │   │   │   │   │   │   │   ├── topic-views-chart.gjs
    │   │   │   │   │   │   │   └── topic-views.gjs
    │   │   │   │   │   │   ├── topic-timeline/
    │   │   │   │   │   │   │   ├── back-button.gjs
    │   │   │   │   │   │   │   ├── container.gjs
    │   │   │   │   │   │   │   └── scroller.gjs
    │   │   │   │   │   │   ├── user-fields/
    │   │   │   │   │   │   │   ├── base.js
    │   │   │   │   │   │   │   ├── confirm.gjs
    │   │   │   │   │   │   │   ├── dropdown.gjs
    │   │   │   │   │   │   │   ├── multiselect.gjs
    │   │   │   │   │   │   │   ├── text.gjs
    │   │   │   │   │   │   │   └── textarea.gjs
    │   │   │   │   │   │   ├── user-menu/
    │   │   │   │   │   │   │   ├── bookmarks-list-empty-state.gjs
    │   │   │   │   │   │   │   ├── bookmarks-list.js
    │   │   │   │   │   │   │   ├── icon-avatar.gjs
    │   │   │   │   │   │   │   ├── items-list-empty-state.gjs
    │   │   │   │   │   │   │   ├── items-list.gjs
    │   │   │   │   │   │   │   ├── likes-list-empty-state.gjs
    │   │   │   │   │   │   │   ├── likes-notifications-list.js
    │   │   │   │   │   │   │   ├── menu-item.gjs
    │   │   │   │   │   │   │   ├── menu-tab.gjs
    │   │   │   │   │   │   │   ├── menu.gjs
    │   │   │   │   │   │   │   ├── messages-list-empty-state.gjs
    │   │   │   │   │   │   │   ├── messages-list.js
    │   │   │   │   │   │   │   ├── notifications-list-empty-state.gjs
    │   │   │   │   │   │   │   ├── notifications-list.js
    │   │   │   │   │   │   │   ├── other-notifications-list-empty-state.gjs
    │   │   │   │   │   │   │   ├── other-notifications-list.js
    │   │   │   │   │   │   │   ├── profile-tab-content.gjs
    │   │   │   │   │   │   │   ├── replies-notifications-list.js
    │   │   │   │   │   │   │   └── reviewables-list.js
    │   │   │   │   │   │   ├── user-nav/
    │   │   │   │   │   │   │   ├── messages-dropdown.gjs
    │   │   │   │   │   │   │   └── messages-secondary-nav.gjs
    │   │   │   │   │   │   └── user-preferences/
    │   │   │   │   │   │       ├── categories.gjs
    │   │   │   │   │   │       ├── passkey-options-dropdown.js
    │   │   │   │   │   │       ├── rename-passkey.gjs
    │   │   │   │   │   │       ├── tags.gjs
    │   │   │   │   │   │       ├── user-api-keys.gjs
    │   │   │   │   │   │       └── user-passkeys.gjs
    │   │   │   │   │   ├── controllers/
    │   │   │   │   │   │   ├── about.js
    │   │   │   │   │   │   ├── account-created.js
    │   │   │   │   │   │   ├── application.js
    │   │   │   │   │   │   ├── composer.js
    │   │   │   │   │   │   ├── confirm-new-email.js
    │   │   │   │   │   │   ├── confirm-old-email.js
    │   │   │   │   │   │   ├── email-login.js
    │   │   │   │   │   │   ├── exception.js
    │   │   │   │   │   │   ├── full-page-search.js
    │   │   │   │   │   │   ├── group.js
    │   │   │   │   │   │   ├── groups.js
    │   │   │   │   │   │   ├── login.js
    │   │   │   │   │   │   ├── password-reset.js
    │   │   │   │   │   │   ├── preferences.js
    │   │   │   │   │   │   ├── review.js
    │   │   │   │   │   │   ├── second-factor-auth.js
    │   │   │   │   │   │   ├── signup.js
    │   │   │   │   │   │   ├── tag-groups.js
    │   │   │   │   │   │   ├── tags.js
    │   │   │   │   │   │   ├── user-activity.js
    │   │   │   │   │   │   ├── user-invited.js
    │   │   │   │   │   │   ├── user-notifications.gjs
    │   │   │   │   │   │   ├── user-posts.js
    │   │   │   │   │   │   ├── user-private-messages.js
    │   │   │   │   │   │   ├── user-topics-list.js
    │   │   │   │   │   │   ├── user.js
    │   │   │   │   │   │   ├── users.js
    │   │   │   │   │   │   ├── account-created/
    │   │   │   │   │   │   │   ├── edit-email.js
    │   │   │   │   │   │   │   └── index.js
    │   │   │   │   │   │   ├── badges/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   └── show.js
    │   │   │   │   │   │   ├── discovery/
    │   │   │   │   │   │   │   ├── categories.js
    │   │   │   │   │   │   │   ├── filter.js
    │   │   │   │   │   │   │   ├── list.js
    │   │   │   │   │   │   │   └── login-required.js
    │   │   │   │   │   │   ├── group/
    │   │   │   │   │   │   │   ├── activity.js
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   ├── manage.js
    │   │   │   │   │   │   │   ├── messages.js
    │   │   │   │   │   │   │   ├── permissions.js
    │   │   │   │   │   │   │   ├── requests.js
    │   │   │   │   │   │   │   ├── activity/
    │   │   │   │   │   │   │   │   ├── posts.js
    │   │   │   │   │   │   │   │   └── topics.js
    │   │   │   │   │   │   │   └── manage/
    │   │   │   │   │   │   │       ├── categories.js
    │   │   │   │   │   │   │       ├── logs.js
    │   │   │   │   │   │   │       ├── profile.js
    │   │   │   │   │   │   │       └── tags.js
    │   │   │   │   │   │   ├── groups/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   └── new.js
    │   │   │   │   │   │   ├── invites/
    │   │   │   │   │   │   │   └── show.js
    │   │   │   │   │   │   ├── preferences/
    │   │   │   │   │   │   │   ├── account.js
    │   │   │   │   │   │   │   ├── email.js
    │   │   │   │   │   │   │   ├── emails.js
    │   │   │   │   │   │   │   ├── interface.js
    │   │   │   │   │   │   │   ├── navigation-menu.js
    │   │   │   │   │   │   │   ├── notifications.js
    │   │   │   │   │   │   │   ├── profile.js
    │   │   │   │   │   │   │   ├── second-factor.js
    │   │   │   │   │   │   │   ├── security.js
    │   │   │   │   │   │   │   ├── tags.js
    │   │   │   │   │   │   │   ├── tracking.js
    │   │   │   │   │   │   │   └── users.js
    │   │   │   │   │   │   ├── review/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   └── settings.js
    │   │   │   │   │   │   ├── tag/
    │   │   │   │   │   │   │   └── show.js
    │   │   │   │   │   │   ├── tag-groups/
    │   │   │   │   │   │   │   ├── edit.js
    │   │   │   │   │   │   │   └── new.js
    │   │   │   │   │   │   ├── tags/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   └── intersection.js
    │   │   │   │   │   │   ├── user/
    │   │   │   │   │   │   │   ├── badges.js
    │   │   │   │   │   │   │   └── summary.js
    │   │   │   │   │   │   ├── user-activity/
    │   │   │   │   │   │   │   └── bookmarks.js
    │   │   │   │   │   │   ├── user-invited/
    │   │   │   │   │   │   │   └── show.js
    │   │   │   │   │   │   └── user-private-messages/
    │   │   │   │   │   │       ├── group.js
    │   │   │   │   │   │       ├── tags.js
    │   │   │   │   │   │       ├── user.js
    │   │   │   │   │   │       └── tags/
    │   │   │   │   │   │           └── index.js
    │   │   │   │   │   ├── form-kit/
    │   │   │   │   │   │   ├── components/
    │   │   │   │   │   │   │   └── fk/
    │   │   │   │   │   │   │       ├── alert.gjs
    │   │   │   │   │   │   │       ├── char-counter.gjs
    │   │   │   │   │   │   │       ├── checkbox-group.gjs
    │   │   │   │   │   │   │       ├── col.gjs
    │   │   │   │   │   │   │       ├── collection.gjs
    │   │   │   │   │   │   │       ├── container.gjs
    │   │   │   │   │   │   │       ├── control-wrapper.gjs
    │   │   │   │   │   │   │       ├── errors-summary.gjs
    │   │   │   │   │   │   │       ├── errors.gjs
    │   │   │   │   │   │   │       ├── field-data.gjs
    │   │   │   │   │   │   │       ├── field.gjs
    │   │   │   │   │   │   │       ├── fieldset.gjs
    │   │   │   │   │   │   │       ├── form.gjs
    │   │   │   │   │   │   │       ├── input-group.gjs
    │   │   │   │   │   │   │       ├── label.gjs
    │   │   │   │   │   │   │       ├── meta.gjs
    │   │   │   │   │   │   │       ├── object.gjs
    │   │   │   │   │   │   │       ├── optional.gjs
    │   │   │   │   │   │   │       ├── row.gjs
    │   │   │   │   │   │   │       ├── section.gjs
    │   │   │   │   │   │   │       ├── submit.gjs
    │   │   │   │   │   │   │       ├── text.gjs
    │   │   │   │   │   │   │       ├── tooltip.gjs
    │   │   │   │   │   │   │       └── control/
    │   │   │   │   │   │   │           ├── calendar.gjs
    │   │   │   │   │   │   │           ├── checkbox.gjs
    │   │   │   │   │   │   │           ├── code.gjs
    │   │   │   │   │   │   │           ├── composer.gjs
    │   │   │   │   │   │   │           ├── conditional-content.gjs
    │   │   │   │   │   │   │           ├── custom.gjs
    │   │   │   │   │   │   │           ├── emoji.gjs
    │   │   │   │   │   │   │           ├── icon.gjs
    │   │   │   │   │   │   │           ├── image.gjs
    │   │   │   │   │   │   │           ├── input.gjs
    │   │   │   │   │   │   │           ├── menu.gjs
    │   │   │   │   │   │   │           ├── password.gjs
    │   │   │   │   │   │   │           ├── question.gjs
    │   │   │   │   │   │   │           ├── radio-group.gjs
    │   │   │   │   │   │   │           ├── select.gjs
    │   │   │   │   │   │   │           ├── textarea.gjs
    │   │   │   │   │   │   │           ├── toggle.gjs
    │   │   │   │   │   │   │           ├── conditional-content/
    │   │   │   │   │   │   │           │   ├── condition.gjs
    │   │   │   │   │   │   │           │   └── content.gjs
    │   │   │   │   │   │   │           ├── menu/
    │   │   │   │   │   │   │           │   ├── container.gjs
    │   │   │   │   │   │   │           │   ├── divider.gjs
    │   │   │   │   │   │   │           │   └── item.gjs
    │   │   │   │   │   │   │           └── radio-group/
    │   │   │   │   │   │   │               └── radio.gjs
    │   │   │   │   │   │   └── lib/
    │   │   │   │   │   │       ├── constants.js
    │   │   │   │   │   │       ├── fk-form-data.js
    │   │   │   │   │   │       ├── validation-parser.js
    │   │   │   │   │   │       └── validator.js
    │   │   │   │   │   ├── helpers/
    │   │   │   │   │   │   ├── action.js
    │   │   │   │   │   │   ├── age-with-tooltip.js
    │   │   │   │   │   │   ├── avatar.js
    │   │   │   │   │   │   ├── base-path.js
    │   │   │   │   │   │   ├── base-url.js
    │   │   │   │   │   │   ├── body-class.js
    │   │   │   │   │   │   ├── border-color.js
    │   │   │   │   │   │   ├── bound-avatar-template.js
    │   │   │   │   │   │   ├── bound-avatar.js
    │   │   │   │   │   │   ├── bound-category-link.js
    │   │   │   │   │   │   ├── bound-date.js
    │   │   │   │   │   │   ├── bound-i18n.js
    │   │   │   │   │   │   ├── capitalize-string.js
    │   │   │   │   │   │   ├── category-badge.js
    │   │   │   │   │   │   ├── category-color-variable.js
    │   │   │   │   │   │   ├── category-link.js
    │   │   │   │   │   │   ├── category-variables.js
    │   │   │   │   │   │   ├── cold-age-class.js
    │   │   │   │   │   │   ├── component-for-collection.js
    │   │   │   │   │   │   ├── component-for-row.js
    │   │   │   │   │   │   ├── concat-class.js
    │   │   │   │   │   │   ├── custom-html.js
    │   │   │   │   │   │   ├── d-icon.js
    │   │   │   │   │   │   ├── dash-if-empty.js
    │   │   │   │   │   │   ├── dasherize.js
    │   │   │   │   │   │   ├── decorate-username-selector.js
    │   │   │   │   │   │   ├── deprecated-outlet-argument.js
    │   │   │   │   │   │   ├── dir-span.js
    │   │   │   │   │   │   ├── directory-column-is-automatic.js
    │   │   │   │   │   │   ├── directory-column-is-user-field.js
    │   │   │   │   │   │   ├── directory-item-label.js
    │   │   │   │   │   │   ├── directory-item-value.js
    │   │   │   │   │   │   ├── directory-table-header-title.js
    │   │   │   │   │   │   ├── discourse-tag.js
    │   │   │   │   │   │   ├── discourse-tags.js
    │   │   │   │   │   │   ├── editable-value.js
    │   │   │   │   │   │   ├── element-class.js
    │   │   │   │   │   │   ├── element.gjs
    │   │   │   │   │   │   ├── emoji.js
    │   │   │   │   │   │   ├── fa-icon-node.js
    │   │   │   │   │   │   ├── fa-icon.js
    │   │   │   │   │   │   ├── float.js
    │   │   │   │   │   │   ├── format-age.js
    │   │   │   │   │   │   ├── format-date.js
    │   │   │   │   │   │   ├── format-duration.js
    │   │   │   │   │   │   ├── format-username.js
    │   │   │   │   │   │   ├── get-url.js
    │   │   │   │   │   │   ├── helper-fn.js
    │   │   │   │   │   │   ├── hide-application-footer.js
    │   │   │   │   │   │   ├── hide-application-header-buttons.js
    │   │   │   │   │   │   ├── hide-application-sidebar.js
    │   │   │   │   │   │   ├── html-class.js
    │   │   │   │   │   │   ├── html-safe.js
    │   │   │   │   │   │   ├── i18n-yes-no.js
    │   │   │   │   │   │   ├── i18n.js
    │   │   │   │   │   │   ├── icon-or-image.js
    │   │   │   │   │   │   ├── inline-date.js
    │   │   │   │   │   │   ├── lazy-hash.js
    │   │   │   │   │   │   ├── loading-spinner.js
    │   │   │   │   │   │   ├── node.js
    │   │   │   │   │   │   ├── noop.js
    │   │   │   │   │   │   ├── number.js
    │   │   │   │   │   │   ├── page-reloader.js
    │   │   │   │   │   │   ├── period-title.js
    │   │   │   │   │   │   ├── raw-date.js
    │   │   │   │   │   │   ├── replace-emoji.js
    │   │   │   │   │   │   ├── reviewable-history-description.js
    │   │   │   │   │   │   ├── reviewable-status.js
    │   │   │   │   │   │   ├── route-action.js
    │   │   │   │   │   │   ├── share-url.js
    │   │   │   │   │   │   ├── shorten-url.js
    │   │   │   │   │   │   ├── slice.js
    │   │   │   │   │   │   ├── slow-mode.js
    │   │   │   │   │   │   ├── theme-i18n.js
    │   │   │   │   │   │   ├── theme-prefix.js
    │   │   │   │   │   │   ├── theme-setting.js
    │   │   │   │   │   │   ├── topic-featured-link.js
    │   │   │   │   │   │   ├── topic-link.js
    │   │   │   │   │   │   ├── unique-id.js
    │   │   │   │   │   │   ├── user-avatar.js
    │   │   │   │   │   │   ├── user-prioritized-name.js
    │   │   │   │   │   │   ├── user-status.js
    │   │   │   │   │   │   ├── value-entered.js
    │   │   │   │   │   │   └── with-event-value.js
    │   │   │   │   │   ├── initializers/
    │   │   │   │   │   │   ├── deprecation-error-mode.js
    │   │   │   │   │   │   ├── deprecation-identify-source.js
    │   │   │   │   │   │   ├── deprecation-this-property-fallback-handler.js
    │   │   │   │   │   │   ├── dev-tools.js
    │   │   │   │   │   │   ├── discourse-bootstrap.js
    │   │   │   │   │   │   ├── dynamic-route-builders.js
    │   │   │   │   │   │   ├── freeze-valid-transformers.js
    │   │   │   │   │   │   ├── inject-discourse-objects.js
    │   │   │   │   │   │   ├── map-routes.js
    │   │   │   │   │   │   └── rails-testing.js
    │   │   │   │   │   ├── instance-initializers/
    │   │   │   │   │   │   ├── animated-images-pause-on-click.js
    │   │   │   │   │   │   ├── auth-complete.js
    │   │   │   │   │   │   ├── auto-load-modules.js
    │   │   │   │   │   │   ├── badging.js
    │   │   │   │   │   │   ├── banner.js
    │   │   │   │   │   │   ├── boot-services.js
    │   │   │   │   │   │   ├── clean-dom-on-route-change.js
    │   │   │   │   │   │   ├── click-interceptor.js
    │   │   │   │   │   │   ├── codeblock-buttons.js
    │   │   │   │   │   │   ├── component-templates.js
    │   │   │   │   │   │   ├── csrf-token.js
    │   │   │   │   │   │   ├── discovery-controller-shims.js
    │   │   │   │   │   │   ├── enable-emoji.js
    │   │   │   │   │   │   ├── handle-cookies.js
    │   │   │   │   │   │   ├── hashtag-css-generator.js
    │   │   │   │   │   │   ├── hashtag-post-decorations.js
    │   │   │   │   │   │   ├── highlight-users.js
    │   │   │   │   │   │   ├── image-aspect-ratio.js
    │   │   │   │   │   │   ├── init-route-history.js
    │   │   │   │   │   │   ├── init-route-scroll-manager.js
    │   │   │   │   │   │   ├── inject-objects.js
    │   │   │   │   │   │   ├── interface-color.js
    │   │   │   │   │   │   ├── jquery-plugins.js
    │   │   │   │   │   │   ├── keyboard-shortcuts.js
    │   │   │   │   │   │   ├── live-development.js
    │   │   │   │   │   │   ├── localization.js
    │   │   │   │   │   │   ├── logout.js
    │   │   │   │   │   │   ├── message-bus.js
    │   │   │   │   │   │   ├── meta-tag-updater.js
    │   │   │   │   │   │   ├── mobile.js
    │   │   │   │   │   │   ├── moment.js
    │   │   │   │   │   │   ├── more-topics-tabs.gjs
    │   │   │   │   │   │   ├── narrow-desktop.js
    │   │   │   │   │   │   ├── onebox-decorators.js
    │   │   │   │   │   │   ├── page-tracking.js
    │   │   │   │   │   │   ├── populate-template-map.js
    │   │   │   │   │   │   ├── post-decorations.js
    │   │   │   │   │   │   ├── read-only.js
    │   │   │   │   │   │   ├── register-hashtag-types.js
    │   │   │   │   │   │   ├── register-media-optimization-upload-processor.js
    │   │   │   │   │   │   ├── register-service-worker.js
    │   │   │   │   │   │   ├── relative-ages.js
    │   │   │   │   │   │   ├── sharing-sources.js
    │   │   │   │   │   │   ├── signup-cta.js
    │   │   │   │   │   │   ├── sniff-capabilities.js
    │   │   │   │   │   │   ├── strip-mobile-app-url-params.js
    │   │   │   │   │   │   ├── subscribe-user-notifications.js
    │   │   │   │   │   │   ├── svg-sprite-fontawesome.js
    │   │   │   │   │   │   ├── topic-footer-buttons.js
    │   │   │   │   │   │   ├── url-redirects.js
    │   │   │   │   │   │   ├── video-placeholder.js
    │   │   │   │   │   │   ├── viewport-setup.js
    │   │   │   │   │   │   └── webview-background.js
    │   │   │   │   │   ├── lib/
    │   │   │   │   │   │   ├── admin-plugin-config-nav.js
    │   │   │   │   │   │   ├── admin-plugin-header-actions.js
    │   │   │   │   │   │   ├── admin-report-additional-modes.js
    │   │   │   │   │   │   ├── admin-utilities.js
    │   │   │   │   │   │   ├── after-frame-paint.js
    │   │   │   │   │   │   ├── ajax-error.js
    │   │   │   │   │   │   ├── ajax.js
    │   │   │   │   │   │   ├── api.js
    │   │   │   │   │   │   ├── array-tools.js
    │   │   │   │   │   │   ├── attribute-hook.js
    │   │   │   │   │   │   ├── autocomplete.js
    │   │   │   │   │   │   ├── avatar-flair.js
    │   │   │   │   │   │   ├── avatar-utils.js
    │   │   │   │   │   │   ├── body-scroll-lock.js
    │   │   │   │   │   │   ├── bookmark-form-data.js
    │   │   │   │   │   │   ├── bookmark.js
    │   │   │   │   │   │   ├── bulk-select-helper.js
    │   │   │   │   │   │   ├── cached-topic-list.js
    │   │   │   │   │   │   ├── can-check-emails-helper.js
    │   │   │   │   │   │   ├── caret-position.js
    │   │   │   │   │   │   ├── case-converter.js
    │   │   │   │   │   │   ├── category-hashtags.js
    │   │   │   │   │   │   ├── category-tag-search.js
    │   │   │   │   │   │   ├── class-prepend.js
    │   │   │   │   │   │   ├── click-track.js
    │   │   │   │   │   │   ├── codeblock-buttons.js
    │   │   │   │   │   │   ├── color-scheme-picker.js
    │   │   │   │   │   │   ├── color-transformations.js
    │   │   │   │   │   │   ├── columns.js
    │   │   │   │   │   │   ├── composer-video-thumbnail-uppy.js
    │   │   │   │   │   │   ├── computed.js
    │   │   │   │   │   │   ├── constants.js
    │   │   │   │   │   │   ├── cookie.js
    │   │   │   │   │   │   ├── copy-text.js
    │   │   │   │   │   │   ├── d-popover.js
    │   │   │   │   │   │   ├── dag.js
    │   │   │   │   │   │   ├── debounce.js
    │   │   │   │   │   │   ├── decimal-adjust.js
    │   │   │   │   │   │   ├── decorator-alias.js
    │   │   │   │   │   │   ├── decorators.js
    │   │   │   │   │   │   ├── deprecated.js
    │   │   │   │   │   │   ├── desktop-notifications.js
    │   │   │   │   │   │   ├── dirty-keys.js
    │   │   │   │   │   │   ├── discourse-template-map.js
    │   │   │   │   │   │   ├── do-not-disturb.js
    │   │   │   │   │   │   ├── dom-from-string.js
    │   │   │   │   │   │   ├── dom-utils.js
    │   │   │   │   │   │   ├── download-calendar.js
    │   │   │   │   │   │   ├── email-provider-default-settings.js
    │   │   │   │   │   │   ├── ember-action-modifier.js
    │   │   │   │   │   │   ├── ember-events.js
    │   │   │   │   │   │   ├── ember-version.js
    │   │   │   │   │   │   ├── environment.js
    │   │   │   │   │   │   ├── escape-regexp.js
    │   │   │   │   │   │   ├── escape.js
    │   │   │   │   │   │   ├── export-csv.js
    │   │   │   │   │   │   ├── export-result.js
    │   │   │   │   │   │   ├── extract-value.js
    │   │   │   │   │   │   ├── eyeline.js
    │   │   │   │   │   │   ├── fabricators.js
    │   │   │   │   │   │   ├── filter-mode.js
    │   │   │   │   │   │   ├── filter-suggestions.js
    │   │   │   │   │   │   ├── form-template-validation.js
    │   │   │   │   │   │   ├── formatter.js
    │   │   │   │   │   │   ├── get-owner.js
    │   │   │   │   │   │   ├── get-url.js
    │   │   │   │   │   │   ├── grant-badge-utils.js
    │   │   │   │   │   │   ├── handle-descriptor.js
    │   │   │   │   │   │   ├── hash.js
    │   │   │   │   │   │   ├── hashtag-autocomplete.js
    │   │   │   │   │   │   ├── hashtag-decorator.js
    │   │   │   │   │   │   ├── hashtag-type-registry.js
    │   │   │   │   │   │   ├── helpers.js
    │   │   │   │   │   │   ├── highlight-html.js
    │   │   │   │   │   │   ├── highlight-search.js
    │   │   │   │   │   │   ├── highlight-syntax-merge-html-plugin.js
    │   │   │   │   │   │   ├── highlight-syntax.js
    │   │   │   │   │   │   ├── highlight-watched-words.js
    │   │   │   │   │   │   ├── homepage-router-overrides.js
    │   │   │   │   │   │   ├── icon-library.js
    │   │   │   │   │   │   ├── implicit-injections.js
    │   │   │   │   │   │   ├── intercept-click.js
    │   │   │   │   │   │   ├── is-descriptor.js
    │   │   │   │   │   │   ├── is-element-in-viewport.js
    │   │   │   │   │   │   ├── key-value-store.js
    │   │   │   │   │   │   ├── keyboard-shortcuts.js
    │   │   │   │   │   │   ├── later.js
    │   │   │   │   │   │   ├── lazy-load-images.js
    │   │   │   │   │   │   ├── lightbox.js
    │   │   │   │   │   │   ├── link-lookup.js
    │   │   │   │   │   │   ├── link-mentions.js
    │   │   │   │   │   │   ├── load-ace-editor.js
    │   │   │   │   │   │   ├── load-chart-js.js
    │   │   │   │   │   │   ├── load-emoji-search-aliases.js
    │   │   │   │   │   │   ├── load-faker.js
    │   │   │   │   │   │   ├── load-full-calendar.js
    │   │   │   │   │   │   ├── load-js-diff.js
    │   │   │   │   │   │   ├── load-moment.js
    │   │   │   │   │   │   ├── load-morphlex.js
    │   │   │   │   │   │   ├── load-oneboxes.js
    │   │   │   │   │   │   ├── load-rich-editor.js
    │   │   │   │   │   │   ├── load-rrule.js
    │   │   │   │   │   │   ├── load-script.js
    │   │   │   │   │   │   ├── loader-shim.js
    │   │   │   │   │   │   ├── local-dates.js
    │   │   │   │   │   │   ├── lock-on.js
    │   │   │   │   │   │   ├── logout.js
    │   │   │   │   │   │   ├── macro-alias.js
    │   │   │   │   │   │   ├── media-optimization-utils.js
    │   │   │   │   │   │   ├── mobile.js
    │   │   │   │   │   │   ├── model-transformers.js
    │   │   │   │   │   │   ├── multi-cache.js
    │   │   │   │   │   │   ├── name-validation-helper.js
    │   │   │   │   │   │   ├── narrow-desktop.js
    │   │   │   │   │   │   ├── notification-levels.js
    │   │   │   │   │   │   ├── notification-types-manager.js
    │   │   │   │   │   │   ├── object.js
    │   │   │   │   │   │   ├── offset-calculator.js
    │   │   │   │   │   │   ├── optional-service.js
    │   │   │   │   │   │   ├── page-tracker.js
    │   │   │   │   │   │   ├── password-validation-helper.js
    │   │   │   │   │   │   ├── plugin-connectors.js
    │   │   │   │   │   │   ├── popular-themes.js
    │   │   │   │   │   │   ├── post-action-feedback.js
    │   │   │   │   │   │   ├── post-bookmark-manager.js
    │   │   │   │   │   │   ├── post-bulk-select-helper.js
    │   │   │   │   │   │   ├── preload-store.js
    │   │   │   │   │   │   ├── push-notifications.js
    │   │   │   │   │   │   ├── put-cursor-at-end.js
    │   │   │   │   │   │   ├── pwa-utils.js
    │   │   │   │   │   │   ├── quote-state.js
    │   │   │   │   │   │   ├── quote.js
    │   │   │   │   │   │   ├── register-service-worker.js
    │   │   │   │   │   │   ├── register-topic-footer-button.js
    │   │   │   │   │   │   ├── register-topic-footer-dropdown.js
    │   │   │   │   │   │   ├── render-tag.js
    │   │   │   │   │   │   ├── render-tags.js
    │   │   │   │   │   │   ├── render-topic-featured-link.js
    │   │   │   │   │   │   ├── reports-loader.js
    │   │   │   │   │   │   ├── reviewable-types-manager.js
    │   │   │   │   │   │   ├── round.js
    │   │   │   │   │   │   ├── roving-button-bar.js
    │   │   │   │   │   │   ├── scroll-lock.js
    │   │   │   │   │   │   ├── scroll-top.js
    │   │   │   │   │   │   ├── search.js
    │   │   │   │   │   │   ├── settings.js
    │   │   │   │   │   │   ├── sharing.js
    │   │   │   │   │   │   ├── show-modal.js
    │   │   │   │   │   │   ├── singleton.js
    │   │   │   │   │   │   ├── source-identifier.js
    │   │   │   │   │   │   ├── suffix-trie.js
    │   │   │   │   │   │   ├── svg-sprite-loader.js
    │   │   │   │   │   │   ├── swipe-events.js
    │   │   │   │   │   │   ├── tag-hashtags.js
    │   │   │   │   │   │   ├── text-direction.js
    │   │   │   │   │   │   ├── text.js
    │   │   │   │   │   │   ├── textarea-text-manipulation.js
    │   │   │   │   │   │   ├── theme-selector.js
    │   │   │   │   │   │   ├── theme-settings-store.js
    │   │   │   │   │   │   ├── time-shortcut.js
    │   │   │   │   │   │   ├── time-utils.js
    │   │   │   │   │   │   ├── to-markdown.js
    │   │   │   │   │   │   ├── topic-bookmark-manager.js
    │   │   │   │   │   │   ├── topic-fancy-title.js
    │   │   │   │   │   │   ├── topic-list-tracked-filter.js
    │   │   │   │   │   │   ├── topic-list-tracker.js
    │   │   │   │   │   │   ├── tracked-media-query.js
    │   │   │   │   │   │   ├── tracked-tools.js
    │   │   │   │   │   │   ├── transform-post.js
    │   │   │   │   │   │   ├── transformer.js
    │   │   │   │   │   │   ├── update-tab-count.js
    │   │   │   │   │   │   ├── update-user-status-on-mention.js
    │   │   │   │   │   │   ├── uploads.js
    │   │   │   │   │   │   ├── uppy-checksum-plugin.js
    │   │   │   │   │   │   ├── uppy-chunked-upload.js
    │   │   │   │   │   │   ├── uppy-chunked-uploader-plugin.js
    │   │   │   │   │   │   ├── uppy-media-optimization-plugin.js
    │   │   │   │   │   │   ├── uppy-plugin-base.js
    │   │   │   │   │   │   ├── url.js
    │   │   │   │   │   │   ├── user-activation.js
    │   │   │   │   │   │   ├── user-fields-validation-helper.js
    │   │   │   │   │   │   ├── user-presence.js
    │   │   │   │   │   │   ├── user-search.js
    │   │   │   │   │   │   ├── user-status-message.js
    │   │   │   │   │   │   ├── user-status-on-autocomplete.js
    │   │   │   │   │   │   ├── username-validation-helper.js
    │   │   │   │   │   │   ├── utilities.js
    │   │   │   │   │   │   ├── virtual-element-from-caret-coords.js
    │   │   │   │   │   │   ├── virtual-element-from-text-range.js
    │   │   │   │   │   │   ├── wait-for-keyboard.js
    │   │   │   │   │   │   ├── waving-hand-url.js
    │   │   │   │   │   │   ├── webauthn.js
    │   │   │   │   │   │   ├── zoom-check.js
    │   │   │   │   │   │   ├── autocomplete/
    │   │   │   │   │   │   │   ├── category-tag.js
    │   │   │   │   │   │   │   ├── emoji.js
    │   │   │   │   │   │   │   ├── group.js
    │   │   │   │   │   │   │   └── user.js
    │   │   │   │   │   │   ├── composer/
    │   │   │   │   │   │   │   ├── composer-position.js
    │   │   │   │   │   │   │   ├── custom-popup-menu-options.js
    │   │   │   │   │   │   │   ├── rich-editor-extensions.js
    │   │   │   │   │   │   │   ├── text-manipulation.js
    │   │   │   │   │   │   │   └── toolbar.js
    │   │   │   │   │   │   ├── flag-targets/
    │   │   │   │   │   │   │   ├── flag.js
    │   │   │   │   │   │   │   ├── post-flag.js
    │   │   │   │   │   │   │   └── topic-flag.js
    │   │   │   │   │   │   ├── hashtag-types/
    │   │   │   │   │   │   │   ├── base.js
    │   │   │   │   │   │   │   ├── category.js
    │   │   │   │   │   │   │   └── tag.js
    │   │   │   │   │   │   ├── lightbox/
    │   │   │   │   │   │   │   └── constants.js
    │   │   │   │   │   │   ├── notification-types/
    │   │   │   │   │   │   │   ├── admin-problems.js
    │   │   │   │   │   │   │   ├── base.js
    │   │   │   │   │   │   │   ├── bookmark-reminder.js
    │   │   │   │   │   │   │   ├── custom.js
    │   │   │   │   │   │   │   ├── edited.js
    │   │   │   │   │   │   │   ├── granted-badge.js
    │   │   │   │   │   │   │   ├── group-mentioned.js
    │   │   │   │   │   │   │   ├── group-message-summary.js
    │   │   │   │   │   │   │   ├── invitee-accepted.js
    │   │   │   │   │   │   │   ├── liked-consolidated.js
    │   │   │   │   │   │   │   ├── liked.js
    │   │   │   │   │   │   │   ├── linked-consolidated.js
    │   │   │   │   │   │   │   ├── membership-request-accepted.js
    │   │   │   │   │   │   │   ├── membership-request-consolidated.js
    │   │   │   │   │   │   │   ├── moved-post.js
    │   │   │   │   │   │   │   ├── new-features.js
    │   │   │   │   │   │   │   └── watching-first-post.js
    │   │   │   │   │   │   ├── post-cooked-html-decorators/
    │   │   │   │   │   │   │   ├── link-counts.js
    │   │   │   │   │   │   │   ├── mentions.gjs
    │   │   │   │   │   │   │   ├── quote-controls.gjs
    │   │   │   │   │   │   │   ├── search-highlight.js
    │   │   │   │   │   │   │   ├── selection-barrier.js
    │   │   │   │   │   │   │   └── stateful-html-elements.js
    │   │   │   │   │   │   ├── reviewable-types/
    │   │   │   │   │   │   │   ├── base.js
    │   │   │   │   │   │   │   ├── flagged-post.js
    │   │   │   │   │   │   │   ├── queued-post.js
    │   │   │   │   │   │   │   └── user.js
    │   │   │   │   │   │   ├── sidebar/
    │   │   │   │   │   │   │   ├── admin-nav-map.js
    │   │   │   │   │   │   │   ├── admin-sidebar.js
    │   │   │   │   │   │   │   ├── base-community-section-link.js
    │   │   │   │   │   │   │   ├── base-custom-sidebar-panel.js
    │   │   │   │   │   │   │   ├── base-custom-sidebar-section-link.js
    │   │   │   │   │   │   │   ├── base-custom-sidebar-section.js
    │   │   │   │   │   │   │   ├── custom-community-section-links.js
    │   │   │   │   │   │   │   ├── custom-sections.js
    │   │   │   │   │   │   │   ├── helpers.js
    │   │   │   │   │   │   │   ├── panels.js
    │   │   │   │   │   │   │   ├── section-link.js
    │   │   │   │   │   │   │   ├── section.js
    │   │   │   │   │   │   │   ├── common/
    │   │   │   │   │   │   │   │   └── community-section/
    │   │   │   │   │   │   │   │       ├── about-section-link.js
    │   │   │   │   │   │   │   │       ├── badges-section-link.js
    │   │   │   │   │   │   │   │       ├── everything-section-link.js
    │   │   │   │   │   │   │   │       ├── faq-section-link.js
    │   │   │   │   │   │   │   │       ├── filter-section-link.js
    │   │   │   │   │   │   │   │       ├── groups-section-link.js
    │   │   │   │   │   │   │   │       ├── section.js
    │   │   │   │   │   │   │   │       └── users-section-link.js
    │   │   │   │   │   │   │   └── user/
    │   │   │   │   │   │   │       ├── categories-section/
    │   │   │   │   │   │   │       │   └── category-section-link.js
    │   │   │   │   │   │   │       ├── community-section/
    │   │   │   │   │   │   │       │   ├── admin-section-link.js
    │   │   │   │   │   │   │       │   ├── admin-section.js
    │   │   │   │   │   │   │       │   ├── invite-section-link.js
    │   │   │   │   │   │   │       │   ├── my-messages-section-link.js
    │   │   │   │   │   │   │       │   ├── my-posts-section-link.js
    │   │   │   │   │   │   │       │   └── review-section-link.js
    │   │   │   │   │   │   │       └── tags-section/
    │   │   │   │   │   │   │           ├── base-tag-section-link.js
    │   │   │   │   │   │   │           ├── pm-tag-section-link.js
    │   │   │   │   │   │   │           └── tag-section-link.js
    │   │   │   │   │   │   ├── transformer/
    │   │   │   │   │   │   │   └── registry.js
    │   │   │   │   │   │   ├── uppy/
    │   │   │   │   │   │   │   ├── composer-upload.js
    │   │   │   │   │   │   │   ├── s3-multipart.js
    │   │   │   │   │   │   │   ├── upload-debugging.js
    │   │   │   │   │   │   │   ├── uppy-upload.js
    │   │   │   │   │   │   │   └── wrapper.js
    │   │   │   │   │   │   └── user-menu/
    │   │   │   │   │   │       ├── base-item.js
    │   │   │   │   │   │       ├── bookmark-item.js
    │   │   │   │   │   │       ├── message-item.js
    │   │   │   │   │   │       ├── notification-item.js
    │   │   │   │   │   │       ├── reviewable-item.js
    │   │   │   │   │   │       └── tab.js
    │   │   │   │   │   ├── models/
    │   │   │   │   │   │   ├── action-summary.js
    │   │   │   │   │   │   ├── archetype.js
    │   │   │   │   │   │   ├── associated-group.js
    │   │   │   │   │   │   ├── badge-grouping.js
    │   │   │   │   │   │   ├── badge.js
    │   │   │   │   │   │   ├── bookmark.js
    │   │   │   │   │   │   ├── category-list.js
    │   │   │   │   │   │   ├── category.js
    │   │   │   │   │   │   ├── composer.js
    │   │   │   │   │   │   ├── draft.js
    │   │   │   │   │   │   ├── form-template.js
    │   │   │   │   │   │   ├── group-history.js
    │   │   │   │   │   │   ├── group.js
    │   │   │   │   │   │   ├── invite.js
    │   │   │   │   │   │   ├── live-post-counts.js
    │   │   │   │   │   │   ├── login-method.js
    │   │   │   │   │   │   ├── nav-item.js
    │   │   │   │   │   │   ├── notification.js
    │   │   │   │   │   │   ├── pending-post.js
    │   │   │   │   │   │   ├── permission-type.js
    │   │   │   │   │   │   ├── post-action-type.js
    │   │   │   │   │   │   ├── post-localization.js
    │   │   │   │   │   │   ├── post-stream.js
    │   │   │   │   │   │   ├── post.js
    │   │   │   │   │   │   ├── posts.js
    │   │   │   │   │   │   ├── published-page.js
    │   │   │   │   │   │   ├── rest.js
    │   │   │   │   │   │   ├── result-set.js
    │   │   │   │   │   │   ├── reviewable-history.js
    │   │   │   │   │   │   ├── reviewable.js
    │   │   │   │   │   │   ├── session.js
    │   │   │   │   │   │   ├── site.js
    │   │   │   │   │   │   ├── static-page.js
    │   │   │   │   │   │   ├── store.js
    │   │   │   │   │   │   ├── tag-group.js
    │   │   │   │   │   │   ├── tag.js
    │   │   │   │   │   │   ├── topic-details.js
    │   │   │   │   │   │   ├── topic-list.js
    │   │   │   │   │   │   ├── topic-localization.js
    │   │   │   │   │   │   ├── topic-timer.js
    │   │   │   │   │   │   ├── topic-tracking-state.js
    │   │   │   │   │   │   ├── topic.js
    │   │   │   │   │   │   ├── trust-level.js
    │   │   │   │   │   │   ├── user-action-group.js
    │   │   │   │   │   │   ├── user-action-stat.js
    │   │   │   │   │   │   ├── user-action.js
    │   │   │   │   │   │   ├── user-badge.js
    │   │   │   │   │   │   ├── user-draft.js
    │   │   │   │   │   │   ├── user-drafts-stream.js
    │   │   │   │   │   │   ├── user-menu-reviewable.js
    │   │   │   │   │   │   ├── user-posts-stream.js
    │   │   │   │   │   │   ├── user-stream.js
    │   │   │   │   │   │   └── user.js
    │   │   │   │   │   ├── modifiers/
    │   │   │   │   │   │   ├── auto-focus.js
    │   │   │   │   │   │   ├── close-on-click-outside.js
    │   │   │   │   │   │   ├── d-autocomplete.js
    │   │   │   │   │   │   ├── draggable.js
    │   │   │   │   │   │   ├── grippie-drag-resize.js
    │   │   │   │   │   │   ├── observe-intersection.js
    │   │   │   │   │   │   ├── on-resize.js
    │   │   │   │   │   │   ├── post-stream-viewport-tracker.js
    │   │   │   │   │   │   ├── prevent-scroll-on-focus.js
    │   │   │   │   │   │   ├── scroll-into-view.js
    │   │   │   │   │   │   ├── swipe.js
    │   │   │   │   │   │   ├── trap-tab.js
    │   │   │   │   │   │   └── .gitkeep
    │   │   │   │   │   ├── routes/
    │   │   │   │   │   │   ├── about.js
    │   │   │   │   │   │   ├── account-created.js
    │   │   │   │   │   │   ├── activate-account.js
    │   │   │   │   │   │   ├── app-route-map.js
    │   │   │   │   │   │   ├── application.js
    │   │   │   │   │   │   ├── associate-account.js
    │   │   │   │   │   │   ├── badges.js
    │   │   │   │   │   │   ├── build-category-route.js
    │   │   │   │   │   │   ├── build-group-messages-route.js
    │   │   │   │   │   │   ├── build-private-messages-group-route.js
    │   │   │   │   │   │   ├── build-private-messages-route.js
    │   │   │   │   │   │   ├── build-topic-route.js
    │   │   │   │   │   │   ├── conduct.js
    │   │   │   │   │   │   ├── confirm-new-email.js
    │   │   │   │   │   │   ├── confirm-old-email.js
    │   │   │   │   │   │   ├── discourse.js
    │   │   │   │   │   │   ├── discovery.js
    │   │   │   │   │   │   ├── email-login.js
    │   │   │   │   │   │   ├── exception-unknown.js
    │   │   │   │   │   │   ├── exception.js
    │   │   │   │   │   │   ├── faq.js
    │   │   │   │   │   │   ├── forgot-password.js
    │   │   │   │   │   │   ├── full-page-search.js
    │   │   │   │   │   │   ├── group.js
    │   │   │   │   │   │   ├── groups.js
    │   │   │   │   │   │   ├── guidelines.js
    │   │   │   │   │   │   ├── login.js
    │   │   │   │   │   │   ├── new-invite.js
    │   │   │   │   │   │   ├── new-message.js
    │   │   │   │   │   │   ├── new-topic.js
    │   │   │   │   │   │   ├── password-reset.js
    │   │   │   │   │   │   ├── post.js
    │   │   │   │   │   │   ├── posts.js
    │   │   │   │   │   │   ├── preferences.js
    │   │   │   │   │   │   ├── privacy.js
    │   │   │   │   │   │   ├── restricted-user.js
    │   │   │   │   │   │   ├── review.js
    │   │   │   │   │   │   ├── rules.js
    │   │   │   │   │   │   ├── second-factor-auth.js
    │   │   │   │   │   │   ├── signup.js
    │   │   │   │   │   │   ├── tag-groups.js
    │   │   │   │   │   │   ├── tags.js
    │   │   │   │   │   │   ├── topic-by-slug-or-id.js
    │   │   │   │   │   │   ├── topic.js
    │   │   │   │   │   │   ├── tos.js
    │   │   │   │   │   │   ├── unknown.js
    │   │   │   │   │   │   ├── user-activity-stream.js
    │   │   │   │   │   │   ├── user-activity.js
    │   │   │   │   │   │   ├── user-invited.js
    │   │   │   │   │   │   ├── user-notifications.js
    │   │   │   │   │   │   ├── user-private-messages.js
    │   │   │   │   │   │   ├── user-topic-list.js
    │   │   │   │   │   │   ├── user.js
    │   │   │   │   │   │   ├── users.js
    │   │   │   │   │   │   ├── wizard.js
    │   │   │   │   │   │   ├── account-created/
    │   │   │   │   │   │   │   ├── edit-email.js
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   └── resent.js
    │   │   │   │   │   │   ├── badges/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   └── show.js
    │   │   │   │   │   │   ├── discovery/
    │   │   │   │   │   │   │   ├── categories.js
    │   │   │   │   │   │   │   ├── filter.js
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   ├── login-required.js
    │   │   │   │   │   │   │   └── subcategories.js
    │   │   │   │   │   │   ├── group/
    │   │   │   │   │   │   │   ├── activity.js
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   ├── manage.js
    │   │   │   │   │   │   │   ├── members.js
    │   │   │   │   │   │   │   ├── messages.js
    │   │   │   │   │   │   │   ├── permissions.js
    │   │   │   │   │   │   │   ├── requests.js
    │   │   │   │   │   │   │   ├── activity/
    │   │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   │   ├── mentions.js
    │   │   │   │   │   │   │   │   ├── posts.js
    │   │   │   │   │   │   │   │   └── topics.js
    │   │   │   │   │   │   │   ├── manage/
    │   │   │   │   │   │   │   │   ├── categories.js
    │   │   │   │   │   │   │   │   ├── email.js
    │   │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   │   ├── interaction.js
    │   │   │   │   │   │   │   │   ├── logs.js
    │   │   │   │   │   │   │   │   ├── membership.js
    │   │   │   │   │   │   │   │   ├── profile.js
    │   │   │   │   │   │   │   │   └── tags.js
    │   │   │   │   │   │   │   └── messages/
    │   │   │   │   │   │   │       ├── archive.js
    │   │   │   │   │   │   │       ├── inbox.js
    │   │   │   │   │   │   │       └── index.js
    │   │   │   │   │   │   ├── groups/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   └── new.js
    │   │   │   │   │   │   ├── invites/
    │   │   │   │   │   │   │   └── show.js
    │   │   │   │   │   │   ├── preferences/
    │   │   │   │   │   │   │   ├── account.js
    │   │   │   │   │   │   │   ├── apps.js
    │   │   │   │   │   │   │   ├── email.js
    │   │   │   │   │   │   │   ├── emails.js
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   ├── interface.js
    │   │   │   │   │   │   │   ├── navigation-menu.js
    │   │   │   │   │   │   │   ├── notifications.js
    │   │   │   │   │   │   │   ├── profile.js
    │   │   │   │   │   │   │   ├── second-factor.js
    │   │   │   │   │   │   │   ├── security.js
    │   │   │   │   │   │   │   ├── tags.js
    │   │   │   │   │   │   │   ├── tracking.js
    │   │   │   │   │   │   │   └── users.js
    │   │   │   │   │   │   ├── review/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   ├── settings.js
    │   │   │   │   │   │   │   ├── show.js
    │   │   │   │   │   │   │   └── topics.js
    │   │   │   │   │   │   ├── tag/
    │   │   │   │   │   │   │   └── show.js
    │   │   │   │   │   │   ├── tag-groups/
    │   │   │   │   │   │   │   ├── edit.js
    │   │   │   │   │   │   │   └── new.js
    │   │   │   │   │   │   ├── tags/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   ├── intersection.js
    │   │   │   │   │   │   │   └── legacy-redirect.js
    │   │   │   │   │   │   ├── topic/
    │   │   │   │   │   │   │   ├── from-params-near.js
    │   │   │   │   │   │   │   └── from-params.js
    │   │   │   │   │   │   ├── user/
    │   │   │   │   │   │   │   ├── badges.js
    │   │   │   │   │   │   │   ├── deleted-posts.js
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   └── summary.js
    │   │   │   │   │   │   ├── user-activity/
    │   │   │   │   │   │   │   ├── bookmarks-with-reminders.js
    │   │   │   │   │   │   │   ├── bookmarks.js
    │   │   │   │   │   │   │   ├── drafts.js
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   ├── likes-given.js
    │   │   │   │   │   │   │   ├── pending.js
    │   │   │   │   │   │   │   ├── read.js
    │   │   │   │   │   │   │   ├── replies.js
    │   │   │   │   │   │   │   └── topics.js
    │   │   │   │   │   │   ├── user-invited/
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   └── show.js
    │   │   │   │   │   │   ├── user-notifications/
    │   │   │   │   │   │   │   ├── edits.js
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   ├── likes-received.js
    │   │   │   │   │   │   │   ├── links.js
    │   │   │   │   │   │   │   ├── mentions.js
    │   │   │   │   │   │   │   └── responses.js
    │   │   │   │   │   │   ├── user-private-messages/
    │   │   │   │   │   │   │   ├── group.js
    │   │   │   │   │   │   │   ├── tags.js
    │   │   │   │   │   │   │   ├── user.js
    │   │   │   │   │   │   │   ├── group/
    │   │   │   │   │   │   │   │   ├── archive.js
    │   │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   │   ├── new.js
    │   │   │   │   │   │   │   │   └── unread.js
    │   │   │   │   │   │   │   ├── tags/
    │   │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   │   └── show.js
    │   │   │   │   │   │   │   └── user/
    │   │   │   │   │   │   │       ├── archive.js
    │   │   │   │   │   │   │       ├── index.js
    │   │   │   │   │   │   │       ├── new.js
    │   │   │   │   │   │   │       ├── sent.js
    │   │   │   │   │   │   │       ├── unread.js
    │   │   │   │   │   │   │       └── warnings.js
    │   │   │   │   │   │   └── wizard/
    │   │   │   │   │   │       ├── index.js
    │   │   │   │   │   │       └── step.js
    │   │   │   │   │   ├── services/
    │   │   │   │   │   │   ├── admin-custom-user-fields.js
    │   │   │   │   │   │   ├── admin-post-menu-buttons.js
    │   │   │   │   │   │   ├── admin-topic-menu-buttons.js
    │   │   │   │   │   │   ├── app-events.js
    │   │   │   │   │   │   ├── bookmark-api.js
    │   │   │   │   │   │   ├── breadcrumbs.js
    │   │   │   │   │   │   ├── capabilities.js
    │   │   │   │   │   │   ├── client-error-handler.js
    │   │   │   │   │   │   ├── composer.js
    │   │   │   │   │   │   ├── deprecation-warning-handler.js
    │   │   │   │   │   │   ├── desktop-notifications.js
    │   │   │   │   │   │   ├── discovery.js
    │   │   │   │   │   │   ├── document-title.js
    │   │   │   │   │   │   ├── element-classes.js
    │   │   │   │   │   │   ├── emoji-store.js
    │   │   │   │   │   │   ├── footer.js
    │   │   │   │   │   │   ├── group-automatic-members-dialog.js
    │   │   │   │   │   │   ├── header.js
    │   │   │   │   │   │   ├── history-store.js
    │   │   │   │   │   │   ├── interface-color.js
    │   │   │   │   │   │   ├── key-value-store.js
    │   │   │   │   │   │   ├── language-name-lookup.js
    │   │   │   │   │   │   ├── loading-slider.js
    │   │   │   │   │   │   ├── login.js
    │   │   │   │   │   │   ├── logs-notice.js
    │   │   │   │   │   │   ├── map-cache.js
    │   │   │   │   │   │   ├── media-optimization-worker.js
    │   │   │   │   │   │   ├── message-bus.js
    │   │   │   │   │   │   ├── modal.js
    │   │   │   │   │   │   ├── navigation-menu.js
    │   │   │   │   │   │   ├── network-connectivity.js
    │   │   │   │   │   │   ├── notifications.js
    │   │   │   │   │   │   ├── pm-topic-tracking-state.js
    │   │   │   │   │   │   ├── presence.js
    │   │   │   │   │   │   ├── restricted-routing.js
    │   │   │   │   │   │   ├── route-history.js
    │   │   │   │   │   │   ├── route-scroll-manager.js
    │   │   │   │   │   │   ├── screen-track.js
    │   │   │   │   │   │   ├── scroll-direction.js
    │   │   │   │   │   │   ├── scroll-manager.js
    │   │   │   │   │   │   ├── search-preferences-manager.js
    │   │   │   │   │   │   ├── search.js
    │   │   │   │   │   │   ├── session-store.js
    │   │   │   │   │   │   ├── sidebar-state.js
    │   │   │   │   │   │   ├── site-settings.js
    │   │   │   │   │   │   ├── store.js
    │   │   │   │   │   │   ├── user-status.js
    │   │   │   │   │   │   └── user-tips.js
    │   │   │   │   │   ├── static/
    │   │   │   │   │   │   ├── ace-editor-bundle.js
    │   │   │   │   │   │   ├── full-calendar-bundle.js
    │   │   │   │   │   │   ├── media-optimization-bundle.js
    │   │   │   │   │   │   ├── rrule-bundle.js
    │   │   │   │   │   │   ├── dev-tools/
    │   │   │   │   │   │   │   ├── entrypoint.js
    │   │   │   │   │   │   │   ├── state.js
    │   │   │   │   │   │   │   ├── styles.css
    │   │   │   │   │   │   │   ├── toolbar.gjs
    │   │   │   │   │   │   │   ├── mobile-view/
    │   │   │   │   │   │   │   │   └── button.gjs
    │   │   │   │   │   │   │   ├── plugin-outlet-debug/
    │   │   │   │   │   │   │   │   ├── args-table.gjs
    │   │   │   │   │   │   │   │   ├── button.gjs
    │   │   │   │   │   │   │   │   ├── outlet-info.gjs
    │   │   │   │   │   │   │   │   └── patch.js
    │   │   │   │   │   │   │   ├── safe-mode/
    │   │   │   │   │   │   │   │   └── button.gjs
    │   │   │   │   │   │   │   └── verbose-localization/
    │   │   │   │   │   │   │       └── button.gjs
    │   │   │   │   │   │   ├── markdown-it/
    │   │   │   │   │   │   │   ├── features.js
    │   │   │   │   │   │   │   ├── index.js
    │   │   │   │   │   │   │   ├── mentions-parser.js
    │   │   │   │   │   │   │   └── options.js
    │   │   │   │   │   │   ├── prosemirror/
    │   │   │   │   │   │   │   ├── components/
    │   │   │   │   │   │   │   │   ├── image-alt-text-input.gjs
    │   │   │   │   │   │   │   │   ├── image-node-view.gjs
    │   │   │   │   │   │   │   │   └── prosemirror-editor.gjs
    │   │   │   │   │   │   │   ├── core/
    │   │   │   │   │   │   │   │   ├── commands.js
    │   │   │   │   │   │   │   │   ├── inputrules.js
    │   │   │   │   │   │   │   │   ├── keymap.js
    │   │   │   │   │   │   │   │   ├── parser.js
    │   │   │   │   │   │   │   │   ├── plugin.js
    │   │   │   │   │   │   │   │   ├── schema.js
    │   │   │   │   │   │   │   │   └── serializer.js
    │   │   │   │   │   │   │   ├── extensions/
    │   │   │   │   │   │   │   │   ├── bullet-list.js
    │   │   │   │   │   │   │   │   ├── code-block.js
    │   │   │   │   │   │   │   │   ├── code.js
    │   │   │   │   │   │   │   │   ├── emoji.js
    │   │   │   │   │   │   │   │   ├── hashtag.js
    │   │   │   │   │   │   │   │   ├── heading.js
    │   │   │   │   │   │   │   │   ├── html-block.js
    │   │   │   │   │   │   │   │   ├── html-inline.js
    │   │   │   │   │   │   │   │   ├── image.js
    │   │   │   │   │   │   │   │   ├── link-toolbar.js
    │   │   │   │   │   │   │   │   ├── link.js
    │   │   │   │   │   │   │   │   ├── markdown-paste.js
    │   │   │   │   │   │   │   │   ├── mention.js
    │   │   │   │   │   │   │   │   ├── onebox.js
    │   │   │   │   │   │   │   │   ├── ordered-list.js
    │   │   │   │   │   │   │   │   ├── placeholder.js
    │   │   │   │   │   │   │   │   ├── quote.js
    │   │   │   │   │   │   │   │   ├── register-default.js
    │   │   │   │   │   │   │   │   ├── strikethrough.js
    │   │   │   │   │   │   │   │   ├── table.js
    │   │   │   │   │   │   │   │   ├── trailing-inline-space.js
    │   │   │   │   │   │   │   │   ├── trailing-paragraph.js
    │   │   │   │   │   │   │   │   ├── typographer-replacements.js
    │   │   │   │   │   │   │   │   └── underline.js
    │   │   │   │   │   │   │   └── lib/
    │   │   │   │   │   │   │       ├── glimmer-node-view.js
    │   │   │   │   │   │   │       ├── markdown-it.js
    │   │   │   │   │   │   │       ├── plugin-utils.js
    │   │   │   │   │   │   │       └── text-manipulation.js
    │   │   │   │   │   │   └── wizard/
    │   │   │   │   │   │       ├── components/
    │   │   │   │   │   │       │   ├── discourse-logo.gjs
    │   │   │   │   │   │       │   ├── wizard-canvas.gjs
    │   │   │   │   │   │       │   ├── wizard-field.gjs
    │   │   │   │   │   │       │   ├── wizard-step.gjs
    │   │   │   │   │   │       │   └── fields/
    │   │   │   │   │   │       │       ├── checkbox.gjs
    │   │   │   │   │   │       │       ├── checkboxes.gjs
    │   │   │   │   │   │       │       ├── dropdown.gjs
    │   │   │   │   │   │       │       ├── image.gjs
    │   │   │   │   │   │       │       ├── index.js
    │   │   │   │   │   │       │       ├── radio.gjs
    │   │   │   │   │   │       │       ├── text.gjs
    │   │   │   │   │   │       │       ├── image-previews/
    │   │   │   │   │   │       │       │   ├── generic.gjs
    │   │   │   │   │   │       │       │   ├── index.js
    │   │   │   │   │   │       │       │   ├── logo-small.js
    │   │   │   │   │   │       │       │   └── logo.js
    │   │   │   │   │   │       │       └── styling-preview/
    │   │   │   │   │   │       │           ├── -homepage-preview.js
    │   │   │   │   │   │       │           ├── -preview-base.gjs
    │   │   │   │   │   │       │           └── index.gjs
    │   │   │   │   │   │       ├── lib/
    │   │   │   │   │   │       │   └── preview.js
    │   │   │   │   │   │       └── models/
    │   │   │   │   │   │           └── wizard.js
    │   │   │   │   │   ├── styles/
    │   │   │   │   │   │   ├── app.css
    │   │   │   │   │   │   └── .gitkeep
    │   │   │   │   │   ├── templates/
    │   │   │   │   │   │   ├── about.gjs
    │   │   │   │   │   │   ├── account-created.gjs
    │   │   │   │   │   │   ├── activate-account.gjs
    │   │   │   │   │   │   ├── application.gjs
    │   │   │   │   │   │   ├── confirm-new-email.gjs
    │   │   │   │   │   │   ├── confirm-old-email.gjs
    │   │   │   │   │   │   ├── email-login.gjs
    │   │   │   │   │   │   ├── exception.gjs
    │   │   │   │   │   │   ├── faq.gjs
    │   │   │   │   │   │   ├── full-page-search.gjs
    │   │   │   │   │   │   ├── group.gjs
    │   │   │   │   │   │   ├── invites.gjs
    │   │   │   │   │   │   ├── loading.gjs
    │   │   │   │   │   │   ├── login-preferences.gjs
    │   │   │   │   │   │   ├── login.gjs
    │   │   │   │   │   │   ├── password-reset.gjs
    │   │   │   │   │   │   ├── posts.gjs
    │   │   │   │   │   │   ├── preferences.gjs
    │   │   │   │   │   │   ├── privacy.gjs
    │   │   │   │   │   │   ├── review.gjs
    │   │   │   │   │   │   ├── second-factor-auth.gjs
    │   │   │   │   │   │   ├── selected-posts.gjs
    │   │   │   │   │   │   ├── signup.gjs
    │   │   │   │   │   │   ├── tag-groups.gjs
    │   │   │   │   │   │   ├── tags.gjs
    │   │   │   │   │   │   ├── topic.gjs
    │   │   │   │   │   │   ├── tos.gjs
    │   │   │   │   │   │   ├── unknown.gjs
    │   │   │   │   │   │   ├── user-activity.gjs
    │   │   │   │   │   │   ├── user-invited.gjs
    │   │   │   │   │   │   ├── user-notifications.gjs
    │   │   │   │   │   │   ├── user-topics-list.gjs
    │   │   │   │   │   │   ├── user.gjs
    │   │   │   │   │   │   ├── users.gjs
    │   │   │   │   │   │   ├── wizard.gjs
    │   │   │   │   │   │   ├── account-created/
    │   │   │   │   │   │   │   ├── edit-email.gjs
    │   │   │   │   │   │   │   ├── index.gjs
    │   │   │   │   │   │   │   └── resent.gjs
    │   │   │   │   │   │   ├── badges/
    │   │   │   │   │   │   │   ├── index.gjs
    │   │   │   │   │   │   │   └── show.gjs
    │   │   │   │   │   │   ├── composer/
    │   │   │   │   │   │   │   ├── dominating-topic.gjs
    │   │   │   │   │   │   │   ├── education.gjs
    │   │   │   │   │   │   │   ├── get-a-room.gjs
    │   │   │   │   │   │   │   ├── group-mentioned.gjs
    │   │   │   │   │   │   │   └── similar-topics.gjs
    │   │   │   │   │   │   ├── discovery/
    │   │   │   │   │   │   │   ├── categories.gjs
    │   │   │   │   │   │   │   ├── custom.gjs
    │   │   │   │   │   │   │   ├── filter.gjs
    │   │   │   │   │   │   │   ├── list.gjs
    │   │   │   │   │   │   │   └── login-required.gjs
    │   │   │   │   │   │   ├── group/
    │   │   │   │   │   │   │   ├── activity.gjs
    │   │   │   │   │   │   │   ├── index.gjs
    │   │   │   │   │   │   │   ├── manage.gjs
    │   │   │   │   │   │   │   ├── messages.gjs
    │   │   │   │   │   │   │   ├── permissions.gjs
    │   │   │   │   │   │   │   ├── requests.gjs
    │   │   │   │   │   │   │   ├── activity/
    │   │   │   │   │   │   │   │   ├── posts.gjs
    │   │   │   │   │   │   │   │   └── topics.gjs
    │   │   │   │   │   │   │   └── manage/
    │   │   │   │   │   │   │       ├── categories.gjs
    │   │   │   │   │   │   │       ├── email.gjs
    │   │   │   │   │   │   │       ├── interaction.gjs
    │   │   │   │   │   │   │       ├── logs.gjs
    │   │   │   │   │   │   │       ├── membership.gjs
    │   │   │   │   │   │   │       ├── profile.gjs
    │   │   │   │   │   │   │       └── tags.gjs
    │   │   │   │   │   │   ├── groups/
    │   │   │   │   │   │   │   ├── index.gjs
    │   │   │   │   │   │   │   └── new.gjs
    │   │   │   │   │   │   ├── invites/
    │   │   │   │   │   │   │   └── show.gjs
    │   │   │   │   │   │   ├── preferences/
    │   │   │   │   │   │   │   ├── account.gjs
    │   │   │   │   │   │   │   ├── apps.gjs
    │   │   │   │   │   │   │   ├── categories.gjs
    │   │   │   │   │   │   │   ├── email.gjs
    │   │   │   │   │   │   │   ├── emails.gjs
    │   │   │   │   │   │   │   ├── interface.gjs
    │   │   │   │   │   │   │   ├── navigation-menu.gjs
    │   │   │   │   │   │   │   ├── notifications.gjs
    │   │   │   │   │   │   │   ├── profile.gjs
    │   │   │   │   │   │   │   ├── second-factor.gjs
    │   │   │   │   │   │   │   ├── security.gjs
    │   │   │   │   │   │   │   ├── tags.gjs
    │   │   │   │   │   │   │   ├── tracking.gjs
    │   │   │   │   │   │   │   └── users.gjs
    │   │   │   │   │   │   ├── review/
    │   │   │   │   │   │   │   ├── index.gjs
    │   │   │   │   │   │   │   ├── settings.gjs
    │   │   │   │   │   │   │   ├── show.gjs
    │   │   │   │   │   │   │   └── topics.gjs
    │   │   │   │   │   │   ├── tag-groups/
    │   │   │   │   │   │   │   ├── edit.gjs
    │   │   │   │   │   │   │   ├── index.gjs
    │   │   │   │   │   │   │   └── new.gjs
    │   │   │   │   │   │   ├── tags/
    │   │   │   │   │   │   │   └── index.gjs
    │   │   │   │   │   │   ├── user/
    │   │   │   │   │   │   │   ├── badges.gjs
    │   │   │   │   │   │   │   ├── bookmarks.gjs
    │   │   │   │   │   │   │   ├── collapsed-info.gjs
    │   │   │   │   │   │   │   ├── messages.gjs
    │   │   │   │   │   │   │   ├── notifications-index.gjs
    │   │   │   │   │   │   │   ├── posts.gjs
    │   │   │   │   │   │   │   ├── profile-hidden.gjs
    │   │   │   │   │   │   │   ├── stream.gjs
    │   │   │   │   │   │   │   └── summary.gjs
    │   │   │   │   │   │   ├── user-activity/
    │   │   │   │   │   │   │   └── pending.gjs
    │   │   │   │   │   │   ├── user-invited/
    │   │   │   │   │   │   │   └── show.gjs
    │   │   │   │   │   │   ├── user-private-messages/
    │   │   │   │   │   │   │   ├── group.gjs
    │   │   │   │   │   │   │   ├── tags.gjs
    │   │   │   │   │   │   │   ├── user.gjs
    │   │   │   │   │   │   │   └── tags/
    │   │   │   │   │   │   │       └── index.gjs
    │   │   │   │   │   │   └── wizard/
    │   │   │   │   │   │       └── step.gjs
    │   │   │   │   │   └── widgets/
    │   │   │   │   │       ├── actions-summary.js
    │   │   │   │   │       ├── avatar-flair.js
    │   │   │   │   │       ├── bookmark-menu.js
    │   │   │   │   │       ├── button.js
    │   │   │   │   │       ├── category-link.js
    │   │   │   │   │       ├── component-connector.js
    │   │   │   │   │       ├── connector.js
    │   │   │   │   │       ├── decorator-helper.js
    │   │   │   │   │       ├── discourse-tags.js
    │   │   │   │   │       ├── embedded-post.js
    │   │   │   │   │       ├── emoji.js
    │   │   │   │   │       ├── glue.js
    │   │   │   │   │       ├── hbs-compiler.js
    │   │   │   │   │       ├── hooks.js
    │   │   │   │   │       ├── link.js
    │   │   │   │   │       ├── menu-panel.js
    │   │   │   │   │       ├── post-cooked.js
    │   │   │   │   │       ├── post-edits-indicator.js
    │   │   │   │   │       ├── post-gap.js
    │   │   │   │   │       ├── post-links.js
    │   │   │   │   │       ├── post-placeholder.js
    │   │   │   │   │       ├── post-small-action.js
    │   │   │   │   │       ├── post-stream.js
    │   │   │   │   │       ├── post-user-status.js
    │   │   │   │   │       ├── post-user-tip-shim.js
    │   │   │   │   │       ├── post.js
    │   │   │   │   │       ├── poster-name.js
    │   │   │   │   │       ├── raw-html.js
    │   │   │   │   │       ├── render-glimmer.js
    │   │   │   │   │       ├── topic-post-visited-line.js
    │   │   │   │   │       ├── topic-status.js
    │   │   │   │   │       ├── widget-dropdown.js
    │   │   │   │   │       └── widget.js
    │   │   │   │   ├── config/
    │   │   │   │   │   ├── environment.js
    │   │   │   │   │   ├── optional-features.json.js
    │   │   │   │   │   └── targets.js
    │   │   │   │   ├── lib/
    │   │   │   │   │   ├── babel-transform-module-renames.js
    │   │   │   │   │   ├── common-babel-config.js
    │   │   │   │   │   ├── scripts.js
    │   │   │   │   │   ├── site-settings-plugin.js
    │   │   │   │   │   ├── webpack-customize-chunk-url-plugin.js
    │   │   │   │   │   └── with-side-watch.js
    │   │   │   │   ├── public/
    │   │   │   │   │   └── assets/
    │   │   │   │   │       └── scripts/
    │   │   │   │   │           ├── discourse-boot.js
    │   │   │   │   │           ├── discourse-test-listen-boot.js
    │   │   │   │   │           ├── discourse-test-load-dynamic-js.js
    │   │   │   │   │           ├── module-shims.js
    │   │   │   │   │           └── start-app.js
    │   │   │   │   ├── scripts/
    │   │   │   │   │   ├── browser-detect.js
    │   │   │   │   │   ├── browser-update.js
    │   │   │   │   │   ├── embed-application.js
    │   │   │   │   │   ├── google-tag-manager.js
    │   │   │   │   │   ├── google-universal-analytics-v3.js
    │   │   │   │   │   ├── google-universal-analytics-v4.js
    │   │   │   │   │   ├── onpopstate-handler.js
    │   │   │   │   │   ├── pageview.js
    │   │   │   │   │   ├── print-page.js
    │   │   │   │   │   └── publish.js
    │   │   │   │   └── tests/
    │   │   │   │       ├── index.html
    │   │   │   │       ├── acceptance/
    │   │   │   │       │   ├── admin-customize-components-config-area-test.gjs
    │   │   │   │       │   ├── admin-customize-themes-config-area-test.gjs
    │   │   │   │       │   ├── admin-customize-themes-show-test.gjs
    │   │   │   │       │   ├── header-api-test.gjs
    │   │   │   │       │   ├── modal-service-test.gjs
    │   │   │   │       │   ├── more-topics-plugin-api-test.gjs
    │   │   │   │       │   ├── post-stream-test.gjs
    │   │   │   │       │   ├── sidebar-plugin-api-test.gjs
    │   │   │   │       │   └── topic-post-decorate-cooked-test.gjs
    │   │   │   │       ├── addons/
    │   │   │   │       │   └── truth-helpers/
    │   │   │   │       │       └── integration/
    │   │   │   │       │           └── helpers/
    │   │   │   │       │               └── includes-test.gjs
    │   │   │   │       ├── helpers/
    │   │   │   │       │   └── rich-editor-helper.gjs
    │   │   │   │       ├── integration/
    │   │   │   │       │   ├── component-templates-test.gjs
    │   │   │   │       │   ├── components/
    │   │   │   │       │   │   ├── about-page-test.gjs
    │   │   │   │       │   │   ├── accessible-discovery-heading-test.gjs
    │   │   │   │       │   │   ├── ace-editor-test.gjs
    │   │   │   │       │   │   ├── activation-controls-test.gjs
    │   │   │   │       │   │   ├── admin-api-key-item-test.gjs
    │   │   │   │       │   │   ├── admin-area-settings-test.gjs
    │   │   │   │       │   │   ├── admin-config-area-card-section-test.gjs
    │   │   │   │       │   │   ├── admin-config-area-card-test.gjs
    │   │   │   │       │   │   ├── admin-plugin-config-area-test.gjs
    │   │   │   │       │   │   ├── admin-plugins-list-item-test.gjs
    │   │   │   │       │   │   ├── admin-report-test.gjs
    │   │   │   │       │   │   ├── admin-search-test.gjs
    │   │   │   │       │   │   ├── admin-theme-settings-editor-test.gjs
    │   │   │   │       │   │   ├── async-content-test.gjs
    │   │   │   │       │   │   ├── avatar-flair-test.gjs
    │   │   │   │       │   │   ├── avatar-uploader-test.gjs
    │   │   │   │       │   │   ├── badge-button-test.gjs
    │   │   │   │       │   │   ├── badge-title-test.gjs
    │   │   │   │       │   │   ├── bookmark-icon-test.gjs
    │   │   │   │       │   │   ├── bulk-select-topics-dropdown-test.gjs
    │   │   │   │       │   │   ├── category-title-link-test.gjs
    │   │   │   │       │   │   ├── char-counter-test.gjs
    │   │   │   │       │   │   ├── chart-test.gjs
    │   │   │   │       │   │   ├── color-input-test.gjs
    │   │   │   │       │   │   ├── color-palette-editor-test.gjs
    │   │   │   │       │   │   ├── color-palette-preview-test.gjs
    │   │   │   │       │   │   ├── compact-list-test.gjs
    │   │   │   │       │   │   ├── composer-editor-test.gjs
    │   │   │   │       │   │   ├── cook-text-test.gjs
    │   │   │   │       │   │   ├── create-invite-test.gjs
    │   │   │   │       │   │   ├── d-breadcrumbs-test.gjs
    │   │   │   │       │   │   ├── d-button-test.gjs
    │   │   │   │       │   │   ├── d-document-test.gjs
    │   │   │   │       │   │   ├── d-editor-test.gjs
    │   │   │   │       │   │   ├── d-modal-test.gjs
    │   │   │   │       │   │   ├── d-multi-select-test.gjs
    │   │   │   │       │   │   ├── d-navigation-test.gjs
    │   │   │   │       │   │   ├── d-page-header-test.gjs
    │   │   │   │       │   │   ├── d-page-subheader-test.gjs
    │   │   │   │       │   │   ├── d-section-test.gjs
    │   │   │   │       │   │   ├── d-select-test.gjs
    │   │   │   │       │   │   ├── d-stat-tiles-test.gjs
    │   │   │   │       │   │   ├── d-toggle-switch-test.gjs
    │   │   │   │       │   │   ├── date-input-test.gjs
    │   │   │   │       │   │   ├── date-time-input-range-test.gjs
    │   │   │   │       │   │   ├── date-time-input-test.gjs
    │   │   │   │       │   │   ├── decorated-html-test.gjs
    │   │   │   │       │   │   ├── dialog-holder-test.gjs
    │   │   │   │       │   │   ├── dismiss-new-test.gjs
    │   │   │   │       │   │   ├── dropdown-menu-test.gjs
    │   │   │   │       │   │   ├── email-logs-list-test.gjs
    │   │   │   │       │   │   ├── emoji-picker-test.gjs
    │   │   │   │       │   │   ├── emoji-uploader-test.gjs
    │   │   │   │       │   │   ├── empty-state-test.gjs
    │   │   │   │       │   │   ├── empty-topic-filter.gjs
    │   │   │   │       │   │   ├── file-size-input-test.gjs
    │   │   │   │       │   │   ├── filter-input-test.gjs
    │   │   │   │       │   │   ├── flash-message-test.gjs
    │   │   │   │       │   │   ├── group-list-setting-test.gjs
    │   │   │   │       │   │   ├── group-membership-button-test.gjs
    │   │   │   │       │   │   ├── header-contents-test.gjs
    │   │   │   │       │   │   ├── header-icons-test.gjs
    │   │   │   │       │   │   ├── highlighted-code-test.gjs
    │   │   │   │       │   │   ├── home-logo-test.gjs
    │   │   │   │       │   │   ├── iframed-html-test.gjs
    │   │   │   │       │   │   ├── input-size-test.gjs
    │   │   │   │       │   │   ├── interpolated-translation-test.gjs
    │   │   │   │       │   │   ├── invite-panel-test.gjs
    │   │   │   │       │   │   ├── latest-topic-list-item-test.gjs
    │   │   │   │       │   │   ├── light-dark-img-test.gjs
    │   │   │   │       │   │   ├── load-more-test.gjs
    │   │   │   │       │   │   ├── navigation-bar-test.gjs
    │   │   │   │       │   │   ├── notifications-tracking-test.gjs
    │   │   │   │       │   │   ├── number-field-test.gjs
    │   │   │   │       │   │   ├── pinned-options-test.gjs
    │   │   │   │       │   │   ├── plugin-outlet-decorator-test.gjs
    │   │   │   │       │   │   ├── plugin-outlet-test.gjs
    │   │   │   │       │   │   ├── post-list-test.gjs
    │   │   │   │       │   │   ├── relative-time-picker-test.gjs
    │   │   │   │       │   │   ├── reorder-categories-test.gjs
    │   │   │   │       │   │   ├── request-group-membership-form-test.gjs
    │   │   │   │       │   │   ├── search-menu-test.gjs
    │   │   │   │       │   │   ├── secret-value-list-test.gjs
    │   │   │   │       │   │   ├── simple-list-test.gjs
    │   │   │   │       │   │   ├── site-setting-test.gjs
    │   │   │   │       │   │   ├── slow-mode-info-test.gjs
    │   │   │   │       │   │   ├── small-user-list-test.gjs
    │   │   │   │       │   │   ├── software-update-prompt-test.gjs
    │   │   │   │       │   │   ├── text-field-test.gjs
    │   │   │   │       │   │   ├── theme-site-setting-editor-test.gjs
    │   │   │   │       │   │   ├── themes-list-item-test.gjs
    │   │   │   │       │   │   ├── time-input-test.gjs
    │   │   │   │       │   │   ├── time-shortcut-picker-test.gjs
    │   │   │   │       │   │   ├── topic-list-item-test.gjs
    │   │   │   │       │   │   ├── topic-list-test.gjs
    │   │   │   │       │   │   ├── topic-participant-test.gjs
    │   │   │   │       │   │   ├── uppy-image-uploader-test.gjs
    │   │   │   │       │   │   ├── user-avatar-flair-test.gjs
    │   │   │   │       │   │   ├── user-info-test.gjs
    │   │   │   │       │   │   ├── user-status-message-test.gjs
    │   │   │   │       │   │   ├── user-status-picker-test.gjs
    │   │   │   │       │   │   ├── user-tip-test.gjs
    │   │   │   │       │   │   ├── value-list-test.gjs
    │   │   │   │       │   │   ├── watched-word-uploader-test.gjs
    │   │   │   │       │   │   ├── webhook-status-test.gjs
    │   │   │   │       │   │   ├── welcome-banner-test.gjs
    │   │   │   │       │   │   ├── wizard-fields-dropdown-test.gjs
    │   │   │   │       │   │   ├── discovery/
    │   │   │   │       │   │   │   └── filter-navigation-menu-test.gjs
    │   │   │   │       │   │   ├── float-kit/
    │   │   │   │       │   │   │   ├── d-button-tooltip-test.gjs
    │   │   │   │       │   │   │   ├── d-default-toast-test.gjs
    │   │   │   │       │   │   │   ├── d-menu-test.gjs
    │   │   │   │       │   │   │   ├── d-toast-test.gjs
    │   │   │   │       │   │   │   └── d-tooltip-test.gjs
    │   │   │   │       │   │   ├── form-kit/
    │   │   │   │       │   │   │   ├── collection-test.gjs
    │   │   │   │       │   │   │   ├── field-test.gjs
    │   │   │   │       │   │   │   ├── form-test.gjs
    │   │   │   │       │   │   │   ├── input-group-test.gjs
    │   │   │   │       │   │   │   ├── object-test.gjs
    │   │   │   │       │   │   │   ├── controls/
    │   │   │   │       │   │   │   │   ├── calendar-test.gjs
    │   │   │   │       │   │   │   │   ├── char-counter-test.gjs
    │   │   │   │       │   │   │   │   ├── checkbox-test.gjs
    │   │   │   │       │   │   │   │   ├── code-test.gjs
    │   │   │   │       │   │   │   │   ├── composer-test.gjs
    │   │   │   │       │   │   │   │   ├── custom-test.gjs
    │   │   │   │       │   │   │   │   ├── icon-test.gjs
    │   │   │   │       │   │   │   │   ├── image-test.gjs
    │   │   │   │       │   │   │   │   ├── input-number-test.gjs
    │   │   │   │       │   │   │   │   ├── input-text-test.gjs
    │   │   │   │       │   │   │   │   ├── menu-test.gjs
    │   │   │   │       │   │   │   │   ├── password-test.gjs
    │   │   │   │       │   │   │   │   ├── question-test.gjs
    │   │   │   │       │   │   │   │   ├── radio-group-test.gjs
    │   │   │   │       │   │   │   │   ├── radio-test.gjs
    │   │   │   │       │   │   │   │   ├── select-test.gjs
    │   │   │   │       │   │   │   │   ├── textarea-test.gjs
    │   │   │   │       │   │   │   │   └── toggle-test.gjs
    │   │   │   │       │   │   │   └── layout/
    │   │   │   │       │   │   │       ├── actions-test.gjs
    │   │   │   │       │   │   │       ├── alert-test.gjs
    │   │   │   │       │   │   │       ├── button-test.gjs
    │   │   │   │       │   │   │       ├── checkbox-group-test.gjs
    │   │   │   │       │   │   │       ├── container-test.gjs
    │   │   │   │       │   │   │       ├── fieldset-test.gjs
    │   │   │   │       │   │   │       ├── row-test.gjs
    │   │   │   │       │   │   │       ├── section-test.gjs
    │   │   │   │       │   │   │       └── submit-test.gjs
    │   │   │   │       │   │   ├── form-template-field/
    │   │   │   │       │   │   │   ├── checkbox-test.gjs
    │   │   │   │       │   │   │   ├── dropdown-test.gjs
    │   │   │   │       │   │   │   ├── input-test.gjs
    │   │   │   │       │   │   │   ├── multi-select-test.gjs
    │   │   │   │       │   │   │   ├── textarea-test.gjs
    │   │   │   │       │   │   │   └── wrapper-test.gjs
    │   │   │   │       │   │   ├── post/
    │   │   │   │       │   │   │   ├── actions-summary-test.gjs
    │   │   │   │       │   │   │   ├── avatar-test.gjs
    │   │   │   │       │   │   │   ├── cooked-html-test.gjs
    │   │   │   │       │   │   │   ├── meta-data-test.gjs
    │   │   │   │       │   │   │   ├── post-links-test.gjs
    │   │   │   │       │   │   │   ├── post-test.gjs
    │   │   │   │       │   │   │   ├── small-action-test.gjs
    │   │   │   │       │   │   │   ├── time-gap-test.gjs
    │   │   │   │       │   │   │   ├── menu/
    │   │   │   │       │   │   │   │   └── buttons/
    │   │   │   │       │   │   │   │       ├── add-translation-test.gjs
    │   │   │   │       │   │   │   │       └── flag-test.gjs
    │   │   │   │       │   │   │   └── meta-data/
    │   │   │   │       │   │   │       ├── edits-indicator-test.gjs
    │   │   │   │       │   │   │       └── poster-name-test.gjs
    │   │   │   │       │   │   ├── prosemirror-editor/
    │   │   │   │       │   │   │   └── prosemirror-editor-test.gjs
    │   │   │   │       │   │   ├── reviewable-refresh/
    │   │   │   │       │   │   │   ├── created-by-test.gjs
    │   │   │   │       │   │   │   ├── flag-reason-test.gjs
    │   │   │   │       │   │   │   └── topic-link-test.gjs
    │   │   │   │       │   │   ├── search-menu/
    │   │   │   │       │   │   │   └── results/
    │   │   │   │       │   │   │       └── type/
    │   │   │   │       │   │   │           └── topic-test.gjs
    │   │   │   │       │   │   ├── select-kit/
    │   │   │   │       │   │   │   ├── api-test.gjs
    │   │   │   │       │   │   │   ├── category-chooser-test.gjs
    │   │   │   │       │   │   │   ├── category-drop-test.gjs
    │   │   │   │       │   │   │   ├── category-selector-test.gjs
    │   │   │   │       │   │   │   ├── color-palette-picker-test.gjs
    │   │   │   │       │   │   │   ├── combo-box-test.gjs
    │   │   │   │       │   │   │   ├── dropdown-select-box-test.gjs
    │   │   │   │       │   │   │   ├── email-group-user-chooser-test.gjs
    │   │   │   │       │   │   │   ├── form-template-chooser-test.gjs
    │   │   │   │       │   │   │   ├── future-date-input-test.gjs
    │   │   │   │       │   │   │   ├── group-chooser-test.gjs
    │   │   │   │       │   │   │   ├── list-setting-test.gjs
    │   │   │   │       │   │   │   ├── mini-tag-chooser-test.gjs
    │   │   │   │       │   │   │   ├── multi-select-test.gjs
    │   │   │   │       │   │   │   ├── notifications-button-test.gjs
    │   │   │   │       │   │   │   ├── single-select-test.gjs
    │   │   │   │       │   │   │   ├── tag-drop-test.gjs
    │   │   │   │       │   │   │   ├── timezone-input-test.gjs
    │   │   │   │       │   │   │   ├── topic-notifications-button-test.gjs
    │   │   │   │       │   │   │   └── user-chooser-test.gjs
    │   │   │   │       │   │   ├── sidebar/
    │   │   │   │       │   │   │   ├── section-link-test.gjs
    │   │   │   │       │   │   │   └── section-test.gjs
    │   │   │   │       │   │   ├── user-menu/
    │   │   │   │       │   │   │   ├── bookmarks-list-test.gjs
    │   │   │   │       │   │   │   ├── likes-list-test.gjs
    │   │   │   │       │   │   │   ├── menu-item-test.gjs
    │   │   │   │       │   │   │   ├── menu-test.gjs
    │   │   │   │       │   │   │   ├── messages-list-test.gjs
    │   │   │   │       │   │   │   ├── notifications-list-test.gjs
    │   │   │   │       │   │   │   ├── other-notifications-list-test.gjs
    │   │   │   │       │   │   │   ├── replies-notifications-list-test.gjs
    │   │   │   │       │   │   │   └── reviewables-list-test.gjs
    │   │   │   │       │   │   └── widgets/
    │   │   │   │       │   │       ├── actions-summary-test.gjs
    │   │   │   │       │   │       ├── avatar-flair-test.gjs
    │   │   │   │       │   │       ├── button-test.gjs
    │   │   │   │       │   │       ├── post-cooked-test.gjs
    │   │   │   │       │   │       ├── post-links-test.gjs
    │   │   │   │       │   │       ├── post-small-action-test.gjs
    │   │   │   │       │   │       ├── post-stream-test.gjs
    │   │   │   │       │   │       ├── post-test.gjs
    │   │   │   │       │   │       ├── poster-name-test.gjs
    │   │   │   │       │   │       ├── small-user-list-test.gjs
    │   │   │   │       │   │       ├── topic-status-test.gjs
    │   │   │   │       │   │       ├── widget-dropdown-test.gjs
    │   │   │   │       │   │       └── widget-test.gjs
    │   │   │   │       │   └── helpers/
    │   │   │   │       │       ├── category-badge-test.gjs
    │   │   │   │       │       ├── category-link-test.gjs
    │   │   │   │       │       ├── concat-class-test.gjs
    │   │   │   │       │       ├── d-icon-test.gjs
    │   │   │   │       │       ├── element-class-test.gjs
    │   │   │   │       │       ├── emoji-test.gjs
    │   │   │   │       │       ├── html-safe-test.gjs
    │   │   │   │       │       ├── replace-emoji-test.gjs
    │   │   │   │       │       ├── reviewable-status-test.gjs
    │   │   │   │       │       └── slice-test.gjs
    │   │   │   │       └── unit/
    │   │   │   │           ├── components/
    │   │   │   │           │   ├── json-schema-editor-test.gjs
    │   │   │   │           │   └── post-menu-test.gjs
    │   │   │   │           ├── lib/
    │   │   │   │           │   └── tracked-tools-test.gjs
    │   │   │   │           ├── models/
    │   │   │   │           │   └── extra-nav-item-test.gjs
    │   │   │   │           └── utils/
    │   │   │   │               ├── dom-utils-test.gjs
    │   │   │   │               └── optional-service-test.gjs
    │   │   │   ├── discourse-i18n/
    │   │   │   │   ├── addon-main.cjs
    │   │   │   │   ├── package.json
    │   │   │   │   └── src/
    │   │   │   │       └── index.js
    │   │   │   ├── discourse-markdown-it/
    │   │   │   │   ├── addon-main.cjs
    │   │   │   │   ├── package.json
    │   │   │   │   └── src/
    │   │   │   │       ├── engine.js
    │   │   │   │       ├── index.js
    │   │   │   │       ├── options.js
    │   │   │   │       ├── setup.js
    │   │   │   │       └── features/
    │   │   │   │           ├── anchor.js
    │   │   │   │           ├── bbcode-block.js
    │   │   │   │           ├── bbcode-inline.js
    │   │   │   │           ├── censored.js
    │   │   │   │           ├── code.js
    │   │   │   │           ├── custom-typographer-replacements.js
    │   │   │   │           ├── d-wrap.js
    │   │   │   │           ├── emoji.js
    │   │   │   │           ├── hashtag-autocomplete.js
    │   │   │   │           ├── html-img.js
    │   │   │   │           ├── image-controls.js
    │   │   │   │           ├── image-grid.js
    │   │   │   │           ├── index.js
    │   │   │   │           ├── mentions.js
    │   │   │   │           ├── newline.js
    │   │   │   │           ├── onebox.js
    │   │   │   │           ├── paragraph.js
    │   │   │   │           ├── quotes.js
    │   │   │   │           ├── table.js
    │   │   │   │           ├── text-post-process.js
    │   │   │   │           ├── upload-protocol.js
    │   │   │   │           └── watched-words.js
    │   │   │   ├── discourse-plugins/
    │   │   │   │   ├── colocated-template-compiler.js
    │   │   │   │   ├── index.js
    │   │   │   │   ├── package.json
    │   │   │   │   └── transform-action-syntax.js
    │   │   │   ├── discourse-widget-hbs/
    │   │   │   │   ├── ember-cli-build.js
    │   │   │   │   ├── index.js
    │   │   │   │   ├── package.json
    │   │   │   │   ├── .npmrc
    │   │   │   │   ├── addon/
    │   │   │   │   │   ├── helpers.js
    │   │   │   │   │   └── .gitkeep
    │   │   │   │   ├── app/
    │   │   │   │   │   └── .gitkeep
    │   │   │   │   └── lib/
    │   │   │   │       └── widget-hbs-compiler.js
    │   │   │   ├── ember-cli-progress-ci/
    │   │   │   │   ├── index.js
    │   │   │   │   └── package.json
    │   │   │   ├── float-kit/
    │   │   │   │   ├── ember-cli-build.js
    │   │   │   │   ├── index.js
    │   │   │   │   ├── package.json
    │   │   │   │   ├── .npmrc
    │   │   │   │   ├── addon/
    │   │   │   │   │   ├── components/
    │   │   │   │   │   │   ├── d-button-tooltip.gjs
    │   │   │   │   │   │   ├── d-default-toast.gjs
    │   │   │   │   │   │   ├── d-float-body.gjs
    │   │   │   │   │   │   ├── d-float-portal.gjs
    │   │   │   │   │   │   ├── d-headless-menu.gjs
    │   │   │   │   │   │   ├── d-headless-tooltip.gjs
    │   │   │   │   │   │   ├── d-inline-float.gjs
    │   │   │   │   │   │   ├── d-menu.gjs
    │   │   │   │   │   │   ├── d-menus.gjs
    │   │   │   │   │   │   ├── d-popover.gjs
    │   │   │   │   │   │   ├── d-toast.gjs
    │   │   │   │   │   │   ├── d-toasts.gjs
    │   │   │   │   │   │   ├── d-tooltip.gjs
    │   │   │   │   │   │   └── d-tooltips.gjs
    │   │   │   │   │   ├── lib/
    │   │   │   │   │   │   ├── constants.js
    │   │   │   │   │   │   ├── d-menu-instance.js
    │   │   │   │   │   │   ├── d-toast-instance.js
    │   │   │   │   │   │   ├── d-tooltip-instance.js
    │   │   │   │   │   │   ├── float-kit-instance.js
    │   │   │   │   │   │   ├── get-scroll-parent.js
    │   │   │   │   │   │   └── update-position.js
    │   │   │   │   │   ├── modifiers/
    │   │   │   │   │   │   ├── apply-floating-ui.js
    │   │   │   │   │   │   ├── auto-close-toast.js
    │   │   │   │   │   │   └── close-on-escape.js
    │   │   │   │   │   └── services/
    │   │   │   │   │       ├── internal-tooltip.js
    │   │   │   │   │       ├── menu.js
    │   │   │   │   │       ├── toasts.js
    │   │   │   │   │       └── tooltip.js
    │   │   │   │   └── app/
    │   │   │   │       ├── .gitkeep
    │   │   │   │       ├── components/
    │   │   │   │       │   ├── d-button-tooltip.js
    │   │   │   │       │   ├── d-default-toast.js
    │   │   │   │       │   ├── d-headless-menu.js
    │   │   │   │       │   ├── d-headless-tooltip.js
    │   │   │   │       │   ├── d-menu.js
    │   │   │   │       │   ├── d-menus.js
    │   │   │   │       │   ├── d-popover.js
    │   │   │   │       │   ├── d-toasts.js
    │   │   │   │       │   ├── d-tooltip.js
    │   │   │   │       │   └── d-tooltips.js
    │   │   │   │       ├── lib/
    │   │   │   │       │   ├── d-menu-instance.js
    │   │   │   │       │   └── d-tooltip-instance.js
    │   │   │   │       └── services/
    │   │   │   │           ├── internal-tooltip.js
    │   │   │   │           ├── menu.js
    │   │   │   │           ├── toasts.js
    │   │   │   │           └── tooltip.js
    │   │   │   ├── pretty-text/
    │   │   │   │   ├── ember-cli-build.js
    │   │   │   │   ├── index.js
    │   │   │   │   ├── package.json
    │   │   │   │   ├── .npmrc
    │   │   │   │   ├── addon/
    │   │   │   │   │   ├── allow-lister.js
    │   │   │   │   │   ├── censored-words.js
    │   │   │   │   │   ├── emoji.js
    │   │   │   │   │   ├── guid.js
    │   │   │   │   │   ├── inline-oneboxer.js
    │   │   │   │   │   ├── mentions.js
    │   │   │   │   │   ├── oneboxer-cache.js
    │   │   │   │   │   ├── oneboxer.js
    │   │   │   │   │   ├── pretty-text.js
    │   │   │   │   │   ├── sanitizer.js
    │   │   │   │   │   ├── text-replace.js
    │   │   │   │   │   ├── upload-short-url.js
    │   │   │   │   │   └── emoji/
    │   │   │   │   │       └── version.js
    │   │   │   │   └── app/
    │   │   │   │       └── .gitkeep
    │   │   │   ├── select-kit/
    │   │   │   │   ├── ember-cli-build.js
    │   │   │   │   ├── index.js
    │   │   │   │   ├── package.json
    │   │   │   │   ├── .npmrc
    │   │   │   │   ├── addon/
    │   │   │   │   │   ├── components/
    │   │   │   │   │   │   ├── bulk-select-bookmarks-dropdown.js
    │   │   │   │   │   │   ├── categories-admin-dropdown.js
    │   │   │   │   │   │   ├── category-chooser.js
    │   │   │   │   │   │   ├── category-drop-more-collection.gjs
    │   │   │   │   │   │   ├── category-drop.js
    │   │   │   │   │   │   ├── category-notifications-button.js
    │   │   │   │   │   │   ├── category-row.gjs
    │   │   │   │   │   │   ├── category-selector.js
    │   │   │   │   │   │   ├── color-palette-picker.js
    │   │   │   │   │   │   ├── color-palettes.js
    │   │   │   │   │   │   ├── combo-box.js
    │   │   │   │   │   │   ├── composer-actions.js
    │   │   │   │   │   │   ├── create-color-row.gjs
    │   │   │   │   │   │   ├── dropdown-select-box.js
    │   │   │   │   │   │   ├── email-group-user-chooser-filter.js
    │   │   │   │   │   │   ├── email-group-user-chooser-row.gjs
    │   │   │   │   │   │   ├── email-group-user-chooser.js
    │   │   │   │   │   │   ├── filter-for-more.gjs
    │   │   │   │   │   │   ├── flair-chooser.js
    │   │   │   │   │   │   ├── flair-row.gjs
    │   │   │   │   │   │   ├── font-selector.js
    │   │   │   │   │   │   ├── form-template-chooser.js
    │   │   │   │   │   │   ├── future-date-input-selector.js
    │   │   │   │   │   │   ├── group-chooser.js
    │   │   │   │   │   │   ├── group-dropdown.js
    │   │   │   │   │   │   ├── group-notifications-button.js
    │   │   │   │   │   │   ├── homepage-style-selector.js
    │   │   │   │   │   │   ├── icon-picker.js
    │   │   │   │   │   │   ├── list-setting.js
    │   │   │   │   │   │   ├── mini-tag-chooser.js
    │   │   │   │   │   │   ├── multi-select.gjs
    │   │   │   │   │   │   ├── none-category-row.gjs
    │   │   │   │   │   │   ├── notifications-button.js
    │   │   │   │   │   │   ├── notifications-filter.js
    │   │   │   │   │   │   ├── period-chooser.js
    │   │   │   │   │   │   ├── search-advanced-category-chooser.js
    │   │   │   │   │   │   ├── select-kit.js
    │   │   │   │   │   │   ├── selected-choice-category.gjs
    │   │   │   │   │   │   ├── selected-choice-color.js
    │   │   │   │   │   │   ├── selected-choice.gjs
    │   │   │   │   │   │   ├── selected-color.js
    │   │   │   │   │   │   ├── selected-flair.gjs
    │   │   │   │   │   │   ├── selected-font.gjs
    │   │   │   │   │   │   ├── selected-name.gjs
    │   │   │   │   │   │   ├── single-select.gjs
    │   │   │   │   │   │   ├── tag-chooser-row.gjs
    │   │   │   │   │   │   ├── tag-chooser.js
    │   │   │   │   │   │   ├── tag-drop.js
    │   │   │   │   │   │   ├── tag-group-chooser.js
    │   │   │   │   │   │   ├── tag-notifications-button.js
    │   │   │   │   │   │   ├── tag-row.gjs
    │   │   │   │   │   │   ├── tags-intersection-chooser.js
    │   │   │   │   │   │   ├── timezone-input.js
    │   │   │   │   │   │   ├── topic-chooser.js
    │   │   │   │   │   │   ├── topic-notifications-button.gjs
    │   │   │   │   │   │   ├── topic-notifications-options.js
    │   │   │   │   │   │   ├── topic-row.gjs
    │   │   │   │   │   │   ├── user-chooser.js
    │   │   │   │   │   │   ├── user-notifications-dropdown.js
    │   │   │   │   │   │   ├── watched-words.js
    │   │   │   │   │   │   ├── category-drop/
    │   │   │   │   │   │   │   └── category-drop-header.gjs
    │   │   │   │   │   │   ├── color-palette-picker/
    │   │   │   │   │   │   │   └── color-palette-picker-row.gjs
    │   │   │   │   │   │   ├── color-palettes/
    │   │   │   │   │   │   │   └── color-palettes-row.gjs
    │   │   │   │   │   │   ├── combo-box/
    │   │   │   │   │   │   │   └── combo-box-header.gjs
    │   │   │   │   │   │   ├── dropdown-select-box/
    │   │   │   │   │   │   │   ├── dropdown-select-box-header.gjs
    │   │   │   │   │   │   │   └── dropdown-select-box-row.gjs
    │   │   │   │   │   │   ├── font-selector/
    │   │   │   │   │   │   │   └── font-selector-row.js
    │   │   │   │   │   │   ├── future-date-input-selector/
    │   │   │   │   │   │   │   ├── future-date-input-selector-header.gjs
    │   │   │   │   │   │   │   └── future-date-input-selector-row.gjs
    │   │   │   │   │   │   ├── homepage-style-selector/
    │   │   │   │   │   │   │   └── homepage-style-selector-row.gjs
    │   │   │   │   │   │   ├── mini-tag-chooser/
    │   │   │   │   │   │   │   └── selected-collection.gjs
    │   │   │   │   │   │   ├── multi-select/
    │   │   │   │   │   │   │   ├── format-selected-content.gjs
    │   │   │   │   │   │   │   ├── multi-select-filter.gjs
    │   │   │   │   │   │   │   ├── multi-select-header.gjs
    │   │   │   │   │   │   │   ├── selected-category.gjs
    │   │   │   │   │   │   │   └── selected-color.js
    │   │   │   │   │   │   ├── notifications-button/
    │   │   │   │   │   │   │   └── notifications-button-row.js
    │   │   │   │   │   │   ├── notifications-filter/
    │   │   │   │   │   │   │   └── notifications-filter-header.gjs
    │   │   │   │   │   │   ├── period-chooser/
    │   │   │   │   │   │   │   ├── period-chooser-header.gjs
    │   │   │   │   │   │   │   └── period-chooser-row.gjs
    │   │   │   │   │   │   ├── select-kit/
    │   │   │   │   │   │   │   ├── errors-collection.gjs
    │   │   │   │   │   │   │   ├── select-kit-body.gjs
    │   │   │   │   │   │   │   ├── select-kit-collection.gjs
    │   │   │   │   │   │   │   ├── select-kit-create-row.gjs
    │   │   │   │   │   │   │   ├── select-kit-filter.gjs
    │   │   │   │   │   │   │   ├── select-kit-header.js
    │   │   │   │   │   │   │   ├── select-kit-none-row.gjs
    │   │   │   │   │   │   │   ├── select-kit-row.gjs
    │   │   │   │   │   │   │   └── single-select-header.gjs
    │   │   │   │   │   │   ├── tag-drop/
    │   │   │   │   │   │   │   └── tag-drop-header.gjs
    │   │   │   │   │   │   └── user-chooser/
    │   │   │   │   │   │       └── user-row.gjs
    │   │   │   │   │   ├── lib/
    │   │   │   │   │   │   ├── input-utils.js
    │   │   │   │   │   │   ├── plugin-api.js
    │   │   │   │   │   │   └── select-kit-prop-utils.js
    │   │   │   │   │   └── services/
    │   │   │   │   │       └── tag-utils.js
    │   │   │   │   └── app/
    │   │   │   │       └── .gitkeep
    │   │   │   └── truth-helpers/
    │   │   │       ├── addon-main.cjs
    │   │   │       ├── package.json
    │   │   │       ├── .npmrc
    │   │   │       ├── app/
    │   │   │       │   └── helpers/
    │   │   │       │       ├── and.js
    │   │   │       │       ├── eq.js
    │   │   │       │       ├── gt.js
    │   │   │       │       ├── gte.js
    │   │   │       │       ├── has.js
    │   │   │       │       ├── includes.js
    │   │   │       │       ├── lt.js
    │   │   │       │       ├── lte.js
    │   │   │       │       ├── not-eq.js
    │   │   │       │       ├── not.js
    │   │   │       │       └── or.js
    │   │   │       └── src/
    │   │   │           ├── index.js
    │   │   │           ├── .gitkeep
    │   │   │           ├── helpers/
    │   │   │           │   ├── and.js
    │   │   │           │   ├── eq.js
    │   │   │           │   ├── gt.js
    │   │   │           │   ├── gte.js
    │   │   │           │   ├── has.js
    │   │   │           │   ├── includes.js
    │   │   │           │   ├── lt.js
    │   │   │           │   ├── lte.js
    │   │   │           │   ├── not-eq.js
    │   │   │           │   ├── not.js
    │   │   │           │   └── or.js
    │   │   │           └── utils/
    │   │   │               └── truth-convert.js
    │   │   └── stylesheets/ (F)
    │   │       ├── admin.scss
    │   │       ├── admin_rtl.scss
    │   │       ├── color_definitions.scss
    │   │       ├── common.scss
    │   │       ├── desktop.scss
    │   │       ├── desktop_rtl.scss
    │   │       ├── embed.scss
    │   │       ├── ember_cli.scss
    │   │       ├── mobile.scss
    │   │       ├── mobile_rtl.scss
    │   │       ├── publish.scss
    │   │       ├── qunit-custom.scss
    │   │       ├── wcag.scss
    │   │       ├── wizard.scss
    │   │       ├── wizard_rtl.scss
    │   │       ├── admin/
    │   │       │   ├── admin_base.scss
    │   │       │   ├── admin_bulk_users_delete_modal.scss
    │   │       │   ├── admin_config_area.scss
    │   │       │   ├── admin_config_color_palettes.scss
    │   │       │   ├── admin_config_components.scss
    │   │       │   ├── admin_filter.scss
    │   │       │   ├── admin_filter_controls.scss
    │   │       │   ├── admin_intro.scss
    │   │       │   ├── admin_report.scss
    │   │       │   ├── admin_report_chart.scss
    │   │       │   ├── admin_report_counters.scss
    │   │       │   ├── admin_report_inline_table.scss
    │   │       │   ├── admin_report_radar.scss
    │   │       │   ├── admin_report_stacked_chart.scss
    │   │       │   ├── admin_report_stacked_line_chart.scss
    │   │       │   ├── admin_report_table.scss
    │   │       │   ├── admin_reports.scss
    │   │       │   ├── admin_section_landing_page.scss
    │   │       │   ├── admin_table.scss
    │   │       │   ├── admin_user_fields.scss
    │   │       │   ├── api.scss
    │   │       │   ├── backups.scss
    │   │       │   ├── badges.scss
    │   │       │   ├── color-palette-editor.scss
    │   │       │   ├── color_palettes.scss
    │   │       │   ├── customize-install-theme.scss
    │   │       │   ├── customize.scss
    │   │       │   ├── customize_show_schema.scss
    │   │       │   ├── dashboard.scss
    │   │       │   ├── emails.scss
    │   │       │   ├── flags.scss
    │   │       │   ├── json_schema_editor.scss
    │   │       │   ├── mini_profiler.scss
    │   │       │   ├── penalty.scss
    │   │       │   ├── plugins.scss
    │   │       │   ├── schema_field.scss
    │   │       │   ├── schema_setting_editor.scss
    │   │       │   ├── search.scss
    │   │       │   ├── settings.scss
    │   │       │   ├── sidebar.scss
    │   │       │   ├── site-settings.scss
    │   │       │   ├── staff_logs.scss
    │   │       │   └── users.scss
    │   │       ├── common/
    │   │       │   ├── d-editor.scss
    │   │       │   ├── font-variables.scss
    │   │       │   ├── input_tip.scss
    │   │       │   ├── loading-slider.scss
    │   │       │   ├── post-action-feedback.scss
    │   │       │   ├── printer-friendly.scss
    │   │       │   ├── software-update-prompt.scss
    │   │       │   ├── toolbar-popup-menu-options.scss
    │   │       │   ├── topic-entrance.scss
    │   │       │   ├── topic-timeline.scss
    │   │       │   ├── whcm.scss
    │   │       │   ├── base/
    │   │       │   │   ├── _bookmark-list.scss
    │   │       │   │   ├── _index.scss
    │   │       │   │   ├── _topic-list.scss
    │   │       │   │   ├── about.scss
    │   │       │   │   ├── activation.scss
    │   │       │   │   ├── alert.scss
    │   │       │   │   ├── bbcode.scss
    │   │       │   │   ├── category-list.scss
    │   │       │   │   ├── code_highlighting.scss
    │   │       │   │   ├── colorpicker.scss
    │   │       │   │   ├── compose.scss
    │   │       │   │   ├── composer-user-selector.scss
    │   │       │   │   ├── crawler_layout.scss
    │   │       │   │   ├── d-icon.scss
    │   │       │   │   ├── d-image-grid.scss
    │   │       │   │   ├── dialog.scss
    │   │       │   │   ├── directory.scss
    │   │       │   │   ├── discourse.scss
    │   │       │   │   ├── edit-category.scss
    │   │       │   │   ├── edit-topic-timer-modal.scss
    │   │       │   │   ├── ember-select.scss
    │   │       │   │   ├── emoji.scss
    │   │       │   │   ├── exception.scss
    │   │       │   │   ├── explain-reviewable.scss
    │   │       │   │   ├── faqs.scss
    │   │       │   │   ├── group.scss
    │   │       │   │   ├── groups.scss
    │   │       │   │   ├── header.scss
    │   │       │   │   ├── history.scss
    │   │       │   │   ├── json_schema.scss
    │   │       │   │   ├── lightbox.scss
    │   │       │   │   ├── list-controls.scss
    │   │       │   │   ├── login-signup-page.scss
    │   │       │   │   ├── login.scss
    │   │       │   │   ├── magnific-popup.scss
    │   │       │   │   ├── menu-panel.scss
    │   │       │   │   ├── modal.scss
    │   │       │   │   ├── new-user.scss
    │   │       │   │   ├── not-found.scss
    │   │       │   │   ├── onebox.scss
    │   │       │   │   ├── personal-message.scss
    │   │       │   │   ├── photoswipe.scss
    │   │       │   │   ├── popup-menu.scss
    │   │       │   │   ├── redirection.scss
    │   │       │   │   ├── reorder-categories.scss
    │   │       │   │   ├── review.scss
    │   │       │   │   ├── reviewables.scss
    │   │       │   │   ├── revise-and-reject-post-reviewable.scss
    │   │       │   │   ├── rtl.scss
    │   │       │   │   ├── search-menu.scss
    │   │       │   │   ├── search.scss
    │   │       │   │   ├── share_link.scss
    │   │       │   │   ├── shared-drafts.scss
    │   │       │   │   ├── sidebar-custom-section.scss
    │   │       │   │   ├── sidebar-footer.scss
    │   │       │   │   ├── sidebar-more-section-links.scss
    │   │       │   │   ├── sidebar-section-link.scss
    │   │       │   │   ├── sidebar-section.scss
    │   │       │   │   ├── sidebar.scss
    │   │       │   │   ├── static-login.scss
    │   │       │   │   ├── tagging.scss
    │   │       │   │   ├── tooltip.scss
    │   │       │   │   ├── topic-admin-menu.scss
    │   │       │   │   ├── topic-footer.scss
    │   │       │   │   ├── topic-post.scss
    │   │       │   │   ├── topic.scss
    │   │       │   │   ├── upload.scss
    │   │       │   │   ├── user-badges.scss
    │   │       │   │   ├── user-tips.scss
    │   │       │   │   └── user.scss
    │   │       │   ├── components/
    │   │       │   │   ├── _index.scss
    │   │       │   │   ├── ac-wrap.scss
    │   │       │   │   ├── ace-editor.scss
    │   │       │   │   ├── add-pm-participants.scss
    │   │       │   │   ├── autocomplete.scss
    │   │       │   │   ├── badges.scss
    │   │       │   │   ├── banner.scss
    │   │       │   │   ├── bookmark-list.scss
    │   │       │   │   ├── bookmark-menu.scss
    │   │       │   │   ├── bookmark-modal.scss
    │   │       │   │   ├── buttons.scss
    │   │       │   │   ├── calendar-date-time-input.scss
    │   │       │   │   ├── char-counter.scss
    │   │       │   │   ├── color-input.scss
    │   │       │   │   ├── composer-toggle-switch.scss
    │   │       │   │   ├── conditional-loading-section.scss
    │   │       │   │   ├── convert-to-public-topic-modal.scss
    │   │       │   │   ├── d-autocomplete.scss
    │   │       │   │   ├── d-breadcrumbs.scss
    │   │       │   │   ├── d-multi-select.scss
    │   │       │   │   ├── d-page-header.scss
    │   │       │   │   ├── d-select.scss
    │   │       │   │   ├── d-stat-tiles.scss
    │   │       │   │   ├── d-toggle-switch.scss
    │   │       │   │   ├── date-input.scss
    │   │       │   │   ├── date-picker.scss
    │   │       │   │   ├── date-time-input-range.scss
    │   │       │   │   ├── date-time-input.scss
    │   │       │   │   ├── download-calendar.scss
    │   │       │   │   ├── drafts-dropdown-menu.scss
    │   │       │   │   ├── dropdown-menu.scss
    │   │       │   │   ├── emoji-picker.scss
    │   │       │   │   ├── empty-states.scss
    │   │       │   │   ├── file-size-input.scss
    │   │       │   │   ├── filter-input.scss
    │   │       │   │   ├── filter-navigation.scss
    │   │       │   │   ├── footer-nav.scss
    │   │       │   │   ├── form-template-field.scss
    │   │       │   │   ├── group-member-dropdown.scss
    │   │       │   │   ├── group-selector.scss
    │   │       │   │   ├── groups-form-membership-fields.scss
    │   │       │   │   ├── hashtag.scss
    │   │       │   │   ├── horizontal-overflow-nav.scss
    │   │       │   │   ├── iframed-html.scss
    │   │       │   │   ├── ignored-user-list.scss
    │   │       │   │   ├── keyboard_shortcuts.scss
    │   │       │   │   ├── load-more.scss
    │   │       │   │   ├── more-topics.scss
    │   │       │   │   ├── navs.scss
    │   │       │   │   ├── notifications-tracking.scss
    │   │       │   │   ├── offline-indicator.scss
    │   │       │   │   ├── pick-files-button.scss
    │   │       │   │   ├── post-list.scss
    │   │       │   │   ├── post-translations.scss
    │   │       │   │   ├── powered-by-discourse.scss
    │   │       │   │   ├── relative-time-picker.scss
    │   │       │   │   ├── signup-progress-bar.scss
    │   │       │   │   ├── svg.scss
    │   │       │   │   ├── table-layout.scss
    │   │       │   │   ├── tap-tile.scss
    │   │       │   │   ├── theme-card.scss
    │   │       │   │   ├── time-input.scss
    │   │       │   │   ├── time-shortcut-picker.scss
    │   │       │   │   ├── topic-map.scss
    │   │       │   │   ├── topic-query-filter.scss
    │   │       │   │   ├── user-card.scss
    │   │       │   │   ├── user-info.scss
    │   │       │   │   ├── user-status-message.scss
    │   │       │   │   ├── user-status-picker.scss
    │   │       │   │   ├── user-stream-item.scss
    │   │       │   │   ├── user-stream.scss
    │   │       │   │   ├── welcome-banner.scss
    │   │       │   │   ├── welcome-header.scss
    │   │       │   │   ├── widget-dropdown.scss
    │   │       │   │   └── sidebar/
    │   │       │   │       └── edit-navigation-menu/
    │   │       │   │           ├── categories-modal.scss
    │   │       │   │           ├── modal.scss
    │   │       │   │           └── tags-modal.scss
    │   │       │   ├── float-kit/
    │   │       │   │   ├── _index.scss
    │   │       │   │   ├── d-button-tooltip.scss
    │   │       │   │   ├── d-default-toast.scss
    │   │       │   │   ├── d-menu.scss
    │   │       │   │   ├── d-toasts.scss
    │   │       │   │   └── d-tooltip.scss
    │   │       │   ├── form-kit/
    │   │       │   │   ├── _alert.scss
    │   │       │   │   ├── _char-counter.scss
    │   │       │   │   ├── _checkbox-group.scss
    │   │       │   │   ├── _col.scss
    │   │       │   │   ├── _collection.scss
    │   │       │   │   ├── _conditional-display.scss
    │   │       │   │   ├── _container.scss
    │   │       │   │   ├── _control-calendar.scss
    │   │       │   │   ├── _control-checkbox.scss
    │   │       │   │   ├── _control-code.scss
    │   │       │   │   ├── _control-composer.scss
    │   │       │   │   ├── _control-custom-value-list.scss
    │   │       │   │   ├── _control-custom.scss
    │   │       │   │   ├── _control-icon.scss
    │   │       │   │   ├── _control-image.scss
    │   │       │   │   ├── _control-input-group.scss
    │   │       │   │   ├── _control-input.scss
    │   │       │   │   ├── _control-menu.scss
    │   │       │   │   ├── _control-password.scss
    │   │       │   │   ├── _control-radio.scss
    │   │       │   │   ├── _control-select.scss
    │   │       │   │   ├── _control-textarea.scss
    │   │       │   │   ├── _default-input-mixin.scss
    │   │       │   │   ├── _errors-summary.scss
    │   │       │   │   ├── _errors.scss
    │   │       │   │   ├── _field.scss
    │   │       │   │   ├── _fieldset.scss
    │   │       │   │   ├── _form-kit.scss
    │   │       │   │   ├── _index.scss
    │   │       │   │   ├── _meta.scss
    │   │       │   │   ├── _object.scss
    │   │       │   │   ├── _row.scss
    │   │       │   │   ├── _section.scss
    │   │       │   │   ├── _tooltip.scss
    │   │       │   │   └── _variables.scss
    │   │       │   ├── foundation/
    │   │       │   │   ├── base.scss
    │   │       │   │   ├── color_transformations.scss
    │   │       │   │   ├── colors.scss
    │   │       │   │   ├── helpers.scss
    │   │       │   │   ├── math.scss
    │   │       │   │   ├── mixins.scss
    │   │       │   │   └── variables.scss
    │   │       │   ├── login/
    │   │       │   │   ├── _index.scss
    │   │       │   │   └── invite-signup.scss
    │   │       │   ├── modal/
    │   │       │   │   ├── _index.scss
    │   │       │   │   ├── modal-overrides.scss
    │   │       │   │   └── user-status.scss
    │   │       │   ├── rich-editor/
    │   │       │   │   ├── _index.scss
    │   │       │   │   └── rich-editor.scss
    │   │       │   ├── select-kit/
    │   │       │   │   ├── _index.scss
    │   │       │   │   ├── categories-admin-dropdown.scss
    │   │       │   │   ├── category-chooser.scss
    │   │       │   │   ├── category-drop.scss
    │   │       │   │   ├── category-row.scss
    │   │       │   │   ├── category-selector.scss
    │   │       │   │   ├── color-palette-picker.scss
    │   │       │   │   ├── color-palettes.scss
    │   │       │   │   ├── combo-box.scss
    │   │       │   │   ├── composer-actions.scss
    │   │       │   │   ├── dropdown-select-box.scss
    │   │       │   │   ├── email-group-user-chooser.scss
    │   │       │   │   ├── flair-row.scss
    │   │       │   │   ├── future-date-input-selector.scss
    │   │       │   │   ├── icon-picker.scss
    │   │       │   │   ├── list-setting.scss
    │   │       │   │   ├── mini-tag-chooser.scss
    │   │       │   │   ├── multi-select.scss
    │   │       │   │   ├── notifications-button.scss
    │   │       │   │   ├── notifications-filter.scss
    │   │       │   │   ├── period-chooser.scss
    │   │       │   │   ├── select-kit.scss
    │   │       │   │   ├── single-select.scss
    │   │       │   │   ├── tag-chooser.scss
    │   │       │   │   ├── tag-drop.scss
    │   │       │   │   ├── topic-chooser.scss
    │   │       │   │   ├── topic-notifications-button.scss
    │   │       │   │   └── user-row.scss
    │   │       │   └── table-builder/
    │   │       │       ├── _index.scss
    │   │       │       ├── insert-table-modal.scss
    │   │       │       ├── jspreadsheet-theme.scss
    │   │       │       └── table-edit-decorator.scss
    │   │       ├── desktop/
    │   │       │   ├── _index.scss
    │   │       │   ├── category-list.scss
    │   │       │   ├── latest-topic-list.scss
    │   │       │   ├── topic-list.scss
    │   │       │   ├── topic-post.scss
    │   │       │   ├── topic.scss
    │   │       │   └── components/
    │   │       │       ├── _index.scss
    │   │       │       ├── drafts-dropdown-menu.scss
    │   │       │       ├── header-search.scss
    │   │       │       ├── more-topics.scss
    │   │       │       ├── user-card.scss
    │   │       │       ├── user-info.scss
    │   │       │       ├── user-stream-item.scss
    │   │       │       └── sidebar/
    │   │       │           ├── sidebar-section.scss
    │   │       │           └── edit-navigation-menu/
    │   │       │               └── tags-modal.scss
    │   │       ├── lib/
    │   │       │   ├── viewport.import.scss
    │   │       │   └── viewport.scss
    │   │       └── mobile/
    │   │           ├── _index.scss
    │   │           ├── push-notifications-mobile.scss
    │   │           ├── topic-list.scss
    │   │           ├── topic-post.scss
    │   │           ├── components/
    │   │           │   ├── _index.scss
    │   │           │   ├── emoji-picker.scss
    │   │           │   ├── more-topics.scss
    │   │           │   ├── topic-map.scss
    │   │           │   ├── user-card.scss
    │   │           │   ├── user-stream-item.scss
    │   │           │   ├── welcome-banner.scss
    │   │           │   └── welcome-header.scss
    │   │           ├── float-kit/
    │   │           │   ├── _index.scss
    │   │           │   └── d-menu.scss
    │   │           ├── form-kit/
    │   │           │   ├── _control-input.scss
    │   │           │   ├── _control-menu.scss
    │   │           │   ├── _control-text.scss
    │   │           │   ├── _field.scss
    │   │           │   ├── _index.scss
    │   │           │   └── _row.scss
    │   │           └── select-kit/
    │   │               ├── _index.scss
    │   │               ├── category-drop.scss
    │   │               ├── dropdown-select-box.scss
    │   │               ├── select-kit.scss
    │   │               └── tag-drop.scss
    │   ├── controllers/ (B)
    │   │   ├── about_controller.rb
    │   │   ├── application_controller.rb
    │   │   ├── associated_groups_controller.rb
    │   │   ├── badges_controller.rb
    │   │   ├── bookmarks_controller.rb
    │   │   ├── bootstrap_controller.rb
    │   │   ├── categories_controller.rb
    │   │   ├── clicks_controller.rb
    │   │   ├── composer_controller.rb
    │   │   ├── composer_messages_controller.rb
    │   │   ├── csp_reports_controller.rb
    │   │   ├── directory_columns_controller.rb
    │   │   ├── directory_items_controller.rb
    │   │   ├── do_not_disturb_controller.rb
    │   │   ├── drafts_controller.rb
    │   │   ├── edit_directory_columns_controller.rb
    │   │   ├── email_controller.rb
    │   │   ├── embed_controller.rb
    │   │   ├── emojis_controller.rb
    │   │   ├── exceptions_controller.rb
    │   │   ├── export_csv_controller.rb
    │   │   ├── extra_locales_controller.rb
    │   │   ├── finish_installation_controller.rb
    │   │   ├── form_templates_controller.rb
    │   │   ├── forums_controller.rb
    │   │   ├── groups_controller.rb
    │   │   ├── hashtags_controller.rb
    │   │   ├── highlight_js_controller.rb
    │   │   ├── home_page_controller.rb
    │   │   ├── inline_onebox_controller.rb
    │   │   ├── invites_controller.rb
    │   │   ├── list_controller.rb
    │   │   ├── metadata_controller.rb
    │   │   ├── new_invite_controller.rb
    │   │   ├── new_topic_controller.rb
    │   │   ├── notifications_controller.rb
    │   │   ├── offline_controller.rb
    │   │   ├── onebox_controller.rb
    │   │   ├── pageview_controller.rb
    │   │   ├── permalinks_controller.rb
    │   │   ├── post_action_users_controller.rb
    │   │   ├── post_actions_controller.rb
    │   │   ├── post_localizations_controller.rb
    │   │   ├── post_readers_controller.rb
    │   │   ├── posts_controller.rb
    │   │   ├── presence_controller.rb
    │   │   ├── published_pages_controller.rb
    │   │   ├── push_notification_controller.rb
    │   │   ├── qunit_controller.rb
    │   │   ├── reviewable_claimed_topics_controller.rb
    │   │   ├── reviewable_notes_controller.rb
    │   │   ├── reviewables_controller.rb
    │   │   ├── robots_txt_controller.rb
    │   │   ├── safe_mode_controller.rb
    │   │   ├── search_controller.rb
    │   │   ├── session_controller.rb
    │   │   ├── sidebar_sections_controller.rb
    │   │   ├── similar_topics_controller.rb
    │   │   ├── site_controller.rb
    │   │   ├── sitemap_controller.rb
    │   │   ├── slugs_controller.rb
    │   │   ├── static_controller.rb
    │   │   ├── steps_controller.rb
    │   │   ├── stylesheets_controller.rb
    │   │   ├── svg_sprite_controller.rb
    │   │   ├── tag_groups_controller.rb
    │   │   ├── tags_controller.rb
    │   │   ├── test_requests_controller.rb
    │   │   ├── theme_javascripts_controller.rb
    │   │   ├── topic_localizations_controller.rb
    │   │   ├── topic_view_stats_controller.rb
    │   │   ├── topics_controller.rb
    │   │   ├── uploads_controller.rb
    │   │   ├── user_actions_controller.rb
    │   │   ├── user_api_key_clients_controller.rb
    │   │   ├── user_api_keys_controller.rb
    │   │   ├── user_avatars_controller.rb
    │   │   ├── user_badges_controller.rb
    │   │   ├── user_status_controller.rb
    │   │   ├── users_email_controller.rb
    │   │   ├── webhooks_controller.rb
    │   │   ├── wizard_controller.rb
    │   │   ├── admin/
    │   │   │   ├── admin_controller.rb
    │   │   │   ├── admin_notices_controller.rb
    │   │   │   ├── api_controller.rb
    │   │   │   ├── backups_controller.rb
    │   │   │   ├── badges_controller.rb
    │   │   │   ├── color_schemes_controller.rb
    │   │   │   ├── dashboard_controller.rb
    │   │   │   ├── discourse_cleanup_controller.rb
    │   │   │   ├── email_controller.rb
    │   │   │   ├── email_logs_controller.rb
    │   │   │   ├── email_styles_controller.rb
    │   │   │   ├── email_templates_controller.rb
    │   │   │   ├── embeddable_hosts_controller.rb
    │   │   │   ├── embedding_controller.rb
    │   │   │   ├── emoji_controller.rb
    │   │   │   ├── form_templates_controller.rb
    │   │   │   ├── groups_controller.rb
    │   │   │   ├── impersonate_controller.rb
    │   │   │   ├── permalinks_controller.rb
    │   │   │   ├── plugins_controller.rb
    │   │   │   ├── reports_controller.rb
    │   │   │   ├── robots_txt_controller.rb
    │   │   │   ├── screened_emails_controller.rb
    │   │   │   ├── screened_ip_addresses_controller.rb
    │   │   │   ├── screened_urls_controller.rb
    │   │   │   ├── search_controller.rb
    │   │   │   ├── search_logs_controller.rb
    │   │   │   ├── section_controller.rb
    │   │   │   ├── site_settings_controller.rb
    │   │   │   ├── site_texts_controller.rb
    │   │   │   ├── staff_action_logs_controller.rb
    │   │   │   ├── staff_controller.rb
    │   │   │   ├── themes_controller.rb
    │   │   │   ├── unknown_reviewables_controller.rb
    │   │   │   ├── user_fields_controller.rb
    │   │   │   ├── users_controller.rb
    │   │   │   ├── versions_controller.rb
    │   │   │   ├── watched_words_controller.rb
    │   │   │   ├── web_hooks_controller.rb
    │   │   │   └── config/
    │   │   │       ├── about_controller.rb
    │   │   │       ├── color_palettes_controller.rb
    │   │   │       ├── customize_controller.rb
    │   │   │       ├── flags_controller.rb
    │   │   │       ├── fonts_controller.rb
    │   │   │       ├── logo_controller.rb
    │   │   │       └── site_settings_controller.rb
    │   │   └── users/
    │   │       ├── associate_accounts_controller.rb
    │   │       ├── discourse_id_controller.rb
    │   │       └── omniauth_callbacks_controller.rb
    │   ├── helpers/ (B)
    │   │   ├── application_helper.rb
    │   │   ├── common_helper.rb
    │   │   ├── email_helper.rb
    │   │   ├── embed_helper.rb
    │   │   ├── emoji_helper.rb
    │   │   ├── list_helper.rb
    │   │   ├── posts_helper.rb
    │   │   ├── qunit_helper.rb
    │   │   ├── topic_post_bookmarkable_helper.rb
    │   │   ├── topics_helper.rb
    │   │   └── user_notifications_helper.rb
    │   ├── jobs/ (B)
    │   │   ├── base.rb
    │   │   ├── concerns/
    │   │   │   └── skippable.rb
    │   │   ├── onceoff/
    │   │   │   ├── clean_up_post_timings.rb
    │   │   │   ├── clean_up_sidekiq_statistic.rb
    │   │   │   ├── clean_up_user_export_topics.rb
    │   │   │   ├── clear_width_and_height.rb
    │   │   │   ├── correct_missing_dualstack_urls.rb
    │   │   │   ├── create_tags_search_index.rb
    │   │   │   ├── fix_encoded_category_slugs.rb
    │   │   │   ├── fix_encoded_topic_slugs.rb
    │   │   │   ├── fix_featured_link_for_topics.rb
    │   │   │   ├── fix_invalid_gravatar_uploads.rb
    │   │   │   ├── fix_out_of_sync_user_uploaded_avatar.rb
    │   │   │   ├── fix_post_search_data_after_default_locale_rename.rb
    │   │   │   ├── fix_posts_read.rb
    │   │   │   ├── fix_primary_emails_for_staged_users.rb
    │   │   │   ├── fix_retro_anniversary.rb
    │   │   │   ├── fix_s3_etags.rb
    │   │   │   ├── grant_emoji.rb
    │   │   │   ├── grant_first_reply_by_email.rb
    │   │   │   ├── grant_onebox.rb
    │   │   │   ├── init_category_tag_stats.rb
    │   │   │   ├── migrate_censored_words.rb
    │   │   │   ├── migrate_custom_emojis.rb
    │   │   │   ├── migrate_featured_links.rb
    │   │   │   ├── migrate_tagging_plugin.rb
    │   │   │   ├── migrate_upload_extensions.rb
    │   │   │   ├── onceoff.rb
    │   │   │   ├── post_uploads_recovery.rb
    │   │   │   ├── remove_old_auto_close_jobs.rb
    │   │   │   ├── retro_grant_anniversary.rb
    │   │   │   └── retro_recent_time_read.rb
    │   │   ├── regular/
    │   │   │   ├── admin_confirmation_email.rb
    │   │   │   ├── anonymize_user.rb
    │   │   │   ├── automatic_group_membership.rb
    │   │   │   ├── backfill_badge.rb
    │   │   │   ├── backfill_sidebar_site_settings.rb
    │   │   │   ├── backup_chunks_merger.rb
    │   │   │   ├── bulk_grant_trust_level.rb
    │   │   │   ├── bulk_invite.rb
    │   │   │   ├── bulk_user_title_update.rb
    │   │   │   ├── bump_topic.rb
    │   │   │   ├── change_display_name.rb
    │   │   │   ├── check_video_conversion_status.rb
    │   │   │   ├── clear_slow_mode.rb
    │   │   │   ├── close_topic.rb
    │   │   │   ├── confirm_sns_subscription.rb
    │   │   │   ├── convert_video.rb
    │   │   │   ├── crawl_topic_link.rb
    │   │   │   ├── create_avatar_thumbnails.rb
    │   │   │   ├── create_backup.rb
    │   │   │   ├── create_linked_topic.rb
    │   │   │   ├── create_user_reviewable.rb
    │   │   │   ├── critical_user_email.rb
    │   │   │   ├── delete_inaccessible_notifications.rb
    │   │   │   ├── delete_replies.rb
    │   │   │   ├── delete_topic.rb
    │   │   │   ├── download_avatar_from_url.rb
    │   │   │   ├── download_backup_email.rb
    │   │   │   ├── download_profile_background_from_url.rb
    │   │   │   ├── emit_web_hook_event.rb
    │   │   │   ├── enable_bootstrap_mode.rb
    │   │   │   ├── export_csv_file.rb
    │   │   │   ├── export_user_archive.rb
    │   │   │   ├── feature_topic_users.rb
    │   │   │   ├── generate_topic_thumbnails.rb
    │   │   │   ├── group_pm_alert.rb
    │   │   │   ├── group_pm_update_summary.rb
    │   │   │   ├── group_smtp_email.rb
    │   │   │   ├── index_category_for_search.rb
    │   │   │   ├── index_user_fields_for_search.rb
    │   │   │   ├── invite_email.rb
    │   │   │   ├── invite_password_instructions_email.rb
    │   │   │   ├── make_embedded_topic_visible.rb
    │   │   │   ├── mass_award_badge.rb
    │   │   │   ├── merge_user.rb
    │   │   │   ├── notify_category_change.rb
    │   │   │   ├── notify_mailing_list_subscribers.rb
    │   │   │   ├── notify_moved_posts.rb
    │   │   │   ├── notify_post_revision.rb
    │   │   │   ├── notify_reviewable.rb
    │   │   │   ├── notify_tag_change.rb
    │   │   │   ├── open_topic.rb
    │   │   │   ├── post_alert.rb
    │   │   │   ├── post_update_topic_tracking_state.rb
    │   │   │   ├── process_bulk_invite_emails.rb
    │   │   │   ├── process_email.rb
    │   │   │   ├── process_localized_cooked.rb
    │   │   │   ├── process_post.rb
    │   │   │   ├── process_sns_notification.rb
    │   │   │   ├── publish_group_membership_updates.rb
    │   │   │   ├── publish_topic_to_category.rb
    │   │   │   ├── pull_hotlinked_images.rb
    │   │   │   ├── pull_user_profile_hotlinked_images.rb
    │   │   │   ├── push_notification.rb
    │   │   │   ├── rebake_custom_emoji_posts.rb
    │   │   │   ├── rebake_posts_for_upload.rb
    │   │   │   ├── refresh_users_reviewable_counts.rb
    │   │   │   ├── remove_banner.rb
    │   │   │   ├── retrieve_topic.rb
    │   │   │   ├── run_heartbeat.rb
    │   │   │   ├── run_problem_check.rb
    │   │   │   ├── send_push_notification.rb
    │   │   │   ├── send_system_message.rb
    │   │   │   ├── site_setting_update_default_categories.rb
    │   │   │   ├── site_setting_update_default_tags.rb
    │   │   │   ├── suspicious_login.rb
    │   │   │   ├── sync_access_control_for_uploads.rb
    │   │   │   ├── sync_topic_user_bookmarked.rb
    │   │   │   ├── toggle_topic_closed.rb
    │   │   │   ├── topic_action_converter.rb
    │   │   │   ├── topic_timer_base.rb
    │   │   │   ├── truncate_user_flag_stats.rb
    │   │   │   ├── unpin_topic.rb
    │   │   │   ├── update_gravatar.rb
    │   │   │   ├── update_group_mentions.rb
    │   │   │   ├── update_hotlinked_raw.rb
    │   │   │   ├── update_post_uploads_secure_status.rb
    │   │   │   ├── update_top_redirection.rb
    │   │   │   ├── update_topic_upload_security.rb
    │   │   │   ├── update_username.rb
    │   │   │   └── user_email.rb
    │   │   └── scheduled/
    │   │       ├── about_stats.rb
    │   │       ├── activation_reminder_emails.rb
    │   │       ├── aggregate_web_hooks_events.rb
    │   │       ├── auto_queue_handler.rb
    │   │       ├── backfill_dominant_colors.rb
    │   │       ├── badge_grant.rb
    │   │       ├── bookmark_reminder_notifications.rb
    │   │       ├── calculate_scores.rb
    │   │       ├── call_discourse_hub.rb
    │   │       ├── category_stats.rb
    │   │       ├── check_new_features.rb
    │   │       ├── check_out_of_date_themes.rb
    │   │       ├── check_translation_overrides.rb
    │   │       ├── clean_dismissed_topic_users.rb
    │   │       ├── clean_up_api_keys_max_life.rb
    │   │       ├── clean_up_associated_accounts.rb
    │   │       ├── clean_up_associated_groups.rb
    │   │       ├── clean_up_bookmarks.rb
    │   │       ├── clean_up_crawler_stats.rb
    │   │       ├── clean_up_drafts.rb
    │   │       ├── clean_up_email_change_requests.rb
    │   │       ├── clean_up_email_logs.rb
    │   │       ├── clean_up_email_tokens.rb
    │   │       ├── clean_up_exports.rb
    │   │       ├── clean_up_inactive_users.rb
    │   │       ├── clean_up_post_reply_keys.rb
    │   │       ├── clean_up_search_logs.rb
    │   │       ├── clean_up_stylesheet_cache.rb
    │   │       ├── clean_up_tags.rb
    │   │       ├── clean_up_unmatched_emails.rb
    │   │       ├── clean_up_unmatched_ips.rb
    │   │       ├── clean_up_unsubscribe_keys.rb
    │   │       ├── clean_up_unused_api_keys.rb
    │   │       ├── clean_up_unused_registered_user_api_key_clients.rb
    │   │       ├── clean_up_unused_staged_users.rb
    │   │       ├── clean_up_unused_user_api_keys.rb
    │   │       ├── clean_up_uploads.rb
    │   │       ├── clean_up_user_api_keys_max_life.rb
    │   │       ├── clean_up_user_auth_tokens.rb
    │   │       ├── cleanup_imap_sync_log.rb
    │   │       ├── cleanup_redelivering_web_hook_events.rb
    │   │       ├── clear_expired_impersonations.rb
    │   │       ├── create_missing_avatars.rb
    │   │       ├── create_recent_post_search_indexes.rb
    │   │       ├── delete_rejected_emails.rb
    │   │       ├── destroy_old_deletion_stubs.rb
    │   │       ├── destroy_old_hidden_posts.rb
    │   │       ├── directory_refresh_daily.rb
    │   │       ├── directory_refresh_older.rb
    │   │       ├── disable_bootstrap_mode.rb
    │   │       ├── drop_backup_schema.rb
    │   │       ├── enqueue_digest_emails.rb
    │   │       ├── enqueue_onceoffs.rb
    │   │       ├── enqueue_suspect_users.rb
    │   │       ├── ensure_badges_consistency.rb
    │   │       ├── ensure_db_consistency.rb
    │   │       ├── ensure_s3_uploads_existence.rb
    │   │       ├── fix_user_usernames_and_groups_names_clash.rb
    │   │       ├── grant_anniversary_badges.rb
    │   │       ├── grant_new_user_of_the_month_badges.rb
    │   │       ├── heartbeat.rb
    │   │       ├── ignored_users_summary.rb
    │   │       ├── invalidate_inactive_admins.rb
    │   │       ├── migrate_upload_scheme.rb
    │   │       ├── notify_admins_of_problems.rb
    │   │       ├── old_keys_reminder.rb
    │   │       ├── pending_queued_posts_reminder.rb
    │   │       ├── pending_reviewables_reminder.rb
    │   │       ├── pending_users_reminder.rb
    │   │       ├── periodical_updates.rb
    │   │       ├── poll_mailbox.rb
    │   │       ├── presence_channel_auto_leave.rb
    │   │       ├── process_badge_backlog.rb
    │   │       ├── process_shelved_notifications.rb
    │   │       ├── process_user_notification_schedules.rb
    │   │       ├── purge_deleted_uploads.rb
    │   │       ├── purge_expired_ignored_users.rb
    │   │       ├── purge_old_mini_scheduler_stat.rb
    │   │       ├── purge_old_notifications.rb
    │   │       ├── purge_old_web_hook_events.rb
    │   │       ├── purge_old_web_hook_events_daily_aggregate.rb
    │   │       ├── purge_unactivated.rb
    │   │       ├── redeliver_web_hook_events.rb
    │   │       ├── regenerate_sitemaps.rb
    │   │       ├── reindex_search.rb
    │   │       ├── reviewable_priorities.rb
    │   │       ├── run_problem_checks.rb
    │   │       ├── schedule_backup.rb
    │   │       ├── tl3_promotions.rb
    │   │       ├── top_refresh_older.rb
    │   │       ├── top_refresh_today.rb
    │   │       ├── topic_timer_enqueuer.rb
    │   │       ├── unsilence_users.rb
    │   │       ├── update_animated_uploads.rb
    │   │       ├── update_heat_settings.rb
    │   │       └── update_topic_hot_scores.rb
    │   ├── mailers/ (B)
    │   │   ├── admin_confirmation_mailer.rb
    │   │   ├── download_backup_mailer.rb
    │   │   ├── group_smtp_mailer.rb
    │   │   ├── invite_mailer.rb
    │   │   ├── rejection_mailer.rb
    │   │   ├── subscription_mailer.rb
    │   │   ├── test_mailer.rb
    │   │   ├── user_notifications.rb
    │   │   └── version_mailer.rb
    │   ├── models/ (B)
    │   │   ├── about.rb
    │   │   ├── admin_dashboard_data.rb
    │   │   ├── admin_dashboard_general_data.rb
    │   │   ├── admin_dashboard_index_data.rb
    │   │   ├── admin_notice.rb
    │   │   ├── allowed_pm_user.rb
    │   │   ├── anonymous_user.rb
    │   │   ├── api_key.rb
    │   │   ├── api_key_scope.rb
    │   │   ├── application_request.rb
    │   │   ├── associated_group.rb
    │   │   ├── auto_track_duration_site_setting.rb
    │   │   ├── backup_draft_post.rb
    │   │   ├── backup_draft_topic.rb
    │   │   ├── backup_file.rb
    │   │   ├── backup_location_site_setting.rb
    │   │   ├── backup_metadata.rb
    │   │   ├── badge.rb
    │   │   ├── badge_grouping.rb
    │   │   ├── badge_type.rb
    │   │   ├── base_font_setting.rb
    │   │   ├── base_timer.rb
    │   │   ├── bookmark.rb
    │   │   ├── category.rb
    │   │   ├── category_and_topic_lists.rb
    │   │   ├── category_custom_field.rb
    │   │   ├── category_featured_topic.rb
    │   │   ├── category_form_template.rb
    │   │   ├── category_group.rb
    │   │   ├── category_list.rb
    │   │   ├── category_localization.rb
    │   │   ├── category_moderation_group.rb
    │   │   ├── category_page_style.rb
    │   │   ├── category_required_tag_group.rb
    │   │   ├── category_search_data.rb
    │   │   ├── category_setting.rb
    │   │   ├── category_tag.rb
    │   │   ├── category_tag_group.rb
    │   │   ├── category_tag_stat.rb
    │   │   ├── category_user.rb
    │   │   ├── child_theme.rb
    │   │   ├── color_scheme.rb
    │   │   ├── color_scheme_color.rb
    │   │   ├── color_scheme_setting.rb
    │   │   ├── composition_mode_site_setting.rb
    │   │   ├── custom_emoji.rb
    │   │   ├── default_text_size_setting.rb
    │   │   ├── developer.rb
    │   │   ├── digest_email_site_setting.rb
    │   │   ├── directory_column.rb
    │   │   ├── directory_item.rb
    │   │   ├── discourse_connect.rb
    │   │   ├── discourse_version_check.rb
    │   │   ├── dismissed_topic_user.rb
    │   │   ├── do_not_disturb_timing.rb
    │   │   ├── draft.rb
    │   │   ├── draft_sequence.rb
    │   │   ├── email_change_request.rb
    │   │   ├── email_level_site_setting.rb
    │   │   ├── email_log.rb
    │   │   ├── email_style.rb
    │   │   ├── email_token.rb
    │   │   ├── embeddable_host.rb
    │   │   ├── embeddable_host_tag.rb
    │   │   ├── embedding.rb
    │   │   ├── emoji.rb
    │   │   ├── emoji_set_site_setting.rb
    │   │   ├── external_upload_stub.rb
    │   │   ├── flag.rb
    │   │   ├── form_template.rb
    │   │   ├── full_name_requirement.rb
    │   │   ├── given_daily_like.rb
    │   │   ├── global_setting.rb
    │   │   ├── group.rb
    │   │   ├── group_archived_message.rb
    │   │   ├── group_associated_group.rb
    │   │   ├── group_category_notification_default.rb
    │   │   ├── group_custom_field.rb
    │   │   ├── group_history.rb
    │   │   ├── group_mention.rb
    │   │   ├── group_request.rb
    │   │   ├── group_tag_notification_default.rb
    │   │   ├── group_user.rb
    │   │   ├── ignored_user.rb
    │   │   ├── imap_sync_log.rb
    │   │   ├── incoming_domain.rb
    │   │   ├── incoming_email.rb
    │   │   ├── incoming_link.rb
    │   │   ├── incoming_links_report.rb
    │   │   ├── incoming_referer.rb
    │   │   ├── interface_color_selector_setting.rb
    │   │   ├── invite.rb
    │   │   ├── invite_redeemer.rb
    │   │   ├── invited_group.rb
    │   │   ├── invited_user.rb
    │   │   ├── javascript_cache.rb
    │   │   ├── like_notification_frequency_site_setting.rb
    │   │   ├── linked_topic.rb
    │   │   ├── locale_site_setting.rb
    │   │   ├── mailing_list_mode_site_setting.rb
    │   │   ├── mobile_category_page_style.rb
    │   │   ├── moved_post.rb
    │   │   ├── muted_user.rb
    │   │   ├── navigation_menu_site_setting.rb
    │   │   ├── new_topic_duration_site_setting.rb
    │   │   ├── notification.rb
    │   │   ├── notification_level_when_replying_site_setting.rb
    │   │   ├── oauth2_user_info.rb
    │   │   ├── onceoff_log.rb
    │   │   ├── onebox_locale_site_setting.rb
    │   │   ├── optimized_image.rb
    │   │   ├── optimized_video.rb
    │   │   ├── permalink.rb
    │   │   ├── plugin_store.rb
    │   │   ├── plugin_store_row.rb
    │   │   ├── post.rb
    │   │   ├── post_action.rb
    │   │   ├── post_action_type.rb
    │   │   ├── post_analyzer.rb
    │   │   ├── post_custom_field.rb
    │   │   ├── post_detail.rb
    │   │   ├── post_hotlinked_media.rb
    │   │   ├── post_localization.rb
    │   │   ├── post_mover.rb
    │   │   ├── post_reply.rb
    │   │   ├── post_reply_key.rb
    │   │   ├── post_revision.rb
    │   │   ├── post_search_data.rb
    │   │   ├── post_stat.rb
    │   │   ├── post_stripper.rb
    │   │   ├── post_timing.rb
    │   │   ├── previous_replies_site_setting.rb
    │   │   ├── private_message_topic_tracking_state.rb
    │   │   ├── problem_check.rb
    │   │   ├── problem_check_tracker.rb
    │   │   ├── published_page.rb
    │   │   ├── push_subscription.rb
    │   │   ├── quoted_post.rb
    │   │   ├── redelivering_webhook_event.rb
    │   │   ├── remote_theme.rb
    │   │   ├── remove_muted_tags_from_latest_site_setting.rb
    │   │   ├── report.rb
    │   │   ├── reviewable.rb
    │   │   ├── reviewable_claimed_topic.rb
    │   │   ├── reviewable_flagged_post.rb
    │   │   ├── reviewable_history.rb
    │   │   ├── reviewable_note.rb
    │   │   ├── reviewable_post.rb
    │   │   ├── reviewable_priority_setting.rb
    │   │   ├── reviewable_queued_post.rb
    │   │   ├── reviewable_score.rb
    │   │   ├── reviewable_sensitivity_setting.rb
    │   │   ├── reviewable_user.rb
    │   │   ├── s3_region_site_setting.rb
    │   │   ├── screened_email.rb
    │   │   ├── screened_ip_address.rb
    │   │   ├── screened_url.rb
    │   │   ├── search_experience_site_setting.rb
    │   │   ├── search_log.rb
    │   │   ├── search_sort_order_site_setting.rb
    │   │   ├── shared_draft.rb
    │   │   ├── shelved_notification.rb
    │   │   ├── sidebar_section.rb
    │   │   ├── sidebar_section_link.rb
    │   │   ├── sidebar_url.rb
    │   │   ├── single_sign_on_record.rb
    │   │   ├── site.rb
    │   │   ├── site_setting.rb
    │   │   ├── sitemap.rb
    │   │   ├── skipped_email_log.rb
    │   │   ├── slug_setting.rb
    │   │   ├── stat.rb
    │   │   ├── stylesheet_cache.rb
    │   │   ├── tag.rb
    │   │   ├── tag_group.rb
    │   │   ├── tag_group_membership.rb
    │   │   ├── tag_group_permission.rb
    │   │   ├── tag_search_data.rb
    │   │   ├── tag_user.rb
    │   │   ├── theme.rb
    │   │   ├── theme_field.rb
    │   │   ├── theme_modifier_set.rb
    │   │   ├── theme_setting.rb
    │   │   ├── theme_settings_migration.rb
    │   │   ├── theme_site_setting.rb
    │   │   ├── theme_svg_sprite.rb
    │   │   ├── theme_translation_override.rb
    │   │   ├── top_lists.rb
    │   │   ├── top_menu_item.rb
    │   │   ├── top_topic.rb
    │   │   ├── topic_allowed_group.rb
    │   │   ├── topic_allowed_user.rb
    │   │   ├── topic_converter.rb
    │   │   ├── topic_custom_field.rb
    │   │   ├── topic_embed.rb
    │   │   ├── topic_featured_users.rb
    │   │   ├── topic_group.rb
    │   │   ├── topic_hot_score.rb
    │   │   ├── topic_invite.rb
    │   │   ├── topic_link.rb
    │   │   ├── topic_link_click.rb
    │   │   ├── topic_list.rb
    │   │   ├── topic_localization.rb
    │   │   ├── topic_notifier.rb
    │   │   ├── topic_participant_groups_summary.rb
    │   │   ├── topic_participants_summary.rb
    │   │   ├── topic_poster.rb
    │   │   ├── topic_posters_summary.rb
    │   │   ├── topic_search_data.rb
    │   │   ├── topic_tag.rb
    │   │   ├── topic_thumbnail.rb
    │   │   ├── topic_timer.rb
    │   │   ├── topic_tracking_state.rb
    │   │   ├── topic_user.rb
    │   │   ├── topic_view_item.rb
    │   │   ├── topic_view_stat.rb
    │   │   ├── translation_override.rb
    │   │   ├── trust_level3_requirements.rb
    │   │   ├── trust_level_and_staff_and_disabled_setting.rb
    │   │   ├── trust_level_and_staff_setting.rb
    │   │   ├── trust_level_setting.rb
    │   │   ├── unsubscribe_key.rb
    │   │   ├── upload.rb
    │   │   ├── upload_reference.rb
    │   │   ├── user_action.rb
    │   │   ├── user_api_key.rb
    │   │   ├── user_api_key_client.rb
    │   │   ├── user_api_key_client_scope.rb
    │   │   ├── user_api_key_scope.rb
    │   │   ├── user_archived_message.rb
    │   │   ├── user_associated_account.rb
    │   │   ├── user_associated_group.rb
    │   │   ├── user_auth_token.rb
    │   │   ├── user_auth_token_log.rb
    │   │   ├── user_avatar.rb
    │   │   ├── user_badge.rb
    │   │   ├── user_badges.rb
    │   │   ├── user_bookmark_list.rb
    │   │   ├── user_custom_field.rb
    │   │   ├── user_email.rb
    │   │   ├── user_export.rb
    │   │   ├── user_field.rb
    │   │   ├── user_field_option.rb
    │   │   ├── user_history.rb
    │   │   ├── user_ip_address_history.rb
    │   │   ├── user_notification_schedule.rb
    │   │   ├── user_open_id.rb
    │   │   ├── user_option.rb
    │   │   ├── user_password.rb
    │   │   ├── user_profile.rb
    │   │   ├── user_profile_view.rb
    │   │   ├── user_required_fields_version.rb
    │   │   ├── user_search.rb
    │   │   ├── user_search_data.rb
    │   │   ├── user_second_factor.rb
    │   │   ├── user_security_key.rb
    │   │   ├── user_stat.rb
    │   │   ├── user_status.rb
    │   │   ├── user_summary.rb
    │   │   ├── user_upload.rb
    │   │   ├── user_visit.rb
    │   │   ├── user_warning.rb
    │   │   ├── username_validator.rb
    │   │   ├── watched_word.rb
    │   │   ├── watched_word_group.rb
    │   │   ├── web_crawler_request.rb
    │   │   ├── web_hook.rb
    │   │   ├── web_hook_event.rb
    │   │   ├── web_hook_event_type.rb
    │   │   ├── web_hook_event_types_hook.rb
    │   │   ├── web_hook_events_daily_aggregate.rb
    │   │   ├── welcome_banner_location.rb
    │   │   ├── welcome_banner_page_visibility.rb
    │   │   └── concerns/
    │   │       ├── anon_cache_invalidator.rb
    │   │       ├── cached_counting.rb
    │   │       ├── category_hashtag.rb
    │   │       ├── custom_field.rb
    │   │       ├── has_custom_fields.rb
    │   │       ├── has_deprecated_columns.rb
    │   │       ├── has_destroyed_web_hook.rb
    │   │       ├── has_sanitizable_fields.rb
    │   │       ├── has_search_data.rb
    │   │       ├── has_url.rb
    │   │       ├── limited_edit.rb
    │   │       ├── locale_matchable.rb
    │   │       ├── localizable.rb
    │   │       ├── positionable.rb
    │   │       ├── reviewable_action_builder.rb
    │   │       ├── roleable.rb
    │   │       ├── searchable.rb
    │   │       ├── second_factor_manager.rb
    │   │       ├── stats_cacheable.rb
    │   │       ├── topic_tracking_state_publishable.rb
    │   │       ├── trashable.rb
    │   │       └── reports/
    │   │           ├── associated_accounts_by_provider.rb
    │   │           ├── bookmarks.rb
    │   │           ├── consolidated_api_requests.rb
    │   │           ├── consolidated_page_views.rb
    │   │           ├── consolidated_page_views_browser_detection.rb
    │   │           ├── daily_engaged_users.rb
    │   │           ├── dau_by_mau.rb
    │   │           ├── emails.rb
    │   │           ├── flags.rb
    │   │           ├── flags_status.rb
    │   │           ├── likes.rb
    │   │           ├── mobile_visits.rb
    │   │           ├── moderator_warning_private_messages.rb
    │   │           ├── moderators_activity.rb
    │   │           ├── new_contributors.rb
    │   │           ├── notify_moderators_private_messages.rb
    │   │           ├── notify_user_private_messages.rb
    │   │           ├── post_edits.rb
    │   │           ├── posts.rb
    │   │           ├── profile_views.rb
    │   │           ├── signups.rb
    │   │           ├── site_traffic.rb
    │   │           ├── staff_logins.rb
    │   │           ├── storage_stats.rb
    │   │           ├── suspicious_logins.rb
    │   │           ├── system_private_messages.rb
    │   │           ├── time_to_first_response.rb
    │   │           ├── top_ignored_users.rb
    │   │           ├── top_referred_topics.rb
    │   │           ├── top_referrers.rb
    │   │           ├── top_traffic_sources.rb
    │   │           ├── top_uploads.rb
    │   │           ├── top_users_by_likes_received.rb
    │   │           ├── top_users_by_likes_received_from_a_variety_of_people.rb
    │   │           ├── top_users_by_likes_received_from_inferior_trust_level.rb
    │   │           ├── topic_view_stats.rb
    │   │           ├── topics.rb
    │   │           ├── topics_with_no_response.rb
    │   │           ├── trending_search.rb
    │   │           ├── trust_level_growth.rb
    │   │           ├── user_flagging_ratio.rb
    │   │           ├── user_to_user_private_messages.rb
    │   │           ├── user_to_user_private_messages_with_replies.rb
    │   │           ├── users_by_trust_level.rb
    │   │           ├── users_by_type.rb
    │   │           ├── visits.rb
    │   │           ├── web_crawlers.rb
    │   │           └── web_hook_events_daily_aggregate.rb
    │   ├── queries/
    │   │   └── reports/
    │   │       └── list_query.rb
    │   ├── serializers/
    │   │   ├── about_serializer.rb
    │   │   ├── admin_badge_serializer.rb
    │   │   ├── admin_badges_serializer.rb
    │   │   ├── admin_detailed_user_serializer.rb
    │   │   ├── admin_email_template_serializer.rb
    │   │   ├── admin_form_template_serializer.rb
    │   │   ├── admin_notice_serializer.rb
    │   │   ├── admin_plugin_serializer.rb
    │   │   ├── admin_user_action_serializer.rb
    │   │   ├── admin_user_list_serializer.rb
    │   │   ├── admin_user_serializer.rb
    │   │   ├── admin_web_hook_event_serializer.rb
    │   │   ├── admin_web_hook_serializer.rb
    │   │   ├── api_key_scope_serializer.rb
    │   │   ├── api_key_serializer.rb
    │   │   ├── application_serializer.rb
    │   │   ├── archetype_serializer.rb
    │   │   ├── associated_group_serializer.rb
    │   │   ├── auth_provider_serializer.rb
    │   │   ├── backup_file_serializer.rb
    │   │   ├── badge_grouping_serializer.rb
    │   │   ├── badge_index_serializer.rb
    │   │   ├── badge_serializer.rb
    │   │   ├── badge_type_serializer.rb
    │   │   ├── basic_api_key_serializer.rb
    │   │   ├── basic_category_serializer.rb
    │   │   ├── basic_group_history_serializer.rb
    │   │   ├── basic_group_serializer.rb
    │   │   ├── basic_group_user_serializer.rb
    │   │   ├── basic_post_serializer.rb
    │   │   ├── basic_reviewable_flagged_post_serializer.rb
    │   │   ├── basic_reviewable_queued_post_serializer.rb
    │   │   ├── basic_reviewable_serializer.rb
    │   │   ├── basic_reviewable_user_serializer.rb
    │   │   ├── basic_theme_serializer.rb
    │   │   ├── basic_topic_serializer.rb
    │   │   ├── basic_user_badge_serializer.rb
    │   │   ├── basic_user_serializer.rb
    │   │   ├── category_and_topic_lists_serializer.rb
    │   │   ├── category_badge_serializer.rb
    │   │   ├── category_detailed_serializer.rb
    │   │   ├── category_group_serializer.rb
    │   │   ├── category_list_serializer.rb
    │   │   ├── category_required_tag_group_serializer.rb
    │   │   ├── category_serializer.rb
    │   │   ├── category_upload_serializer.rb
    │   │   ├── color_scheme_color_serializer.rb
    │   │   ├── color_scheme_selectable_serializer.rb
    │   │   ├── color_scheme_serializer.rb
    │   │   ├── component_index_serializer.rb
    │   │   ├── current_user_option_serializer.rb
    │   │   ├── current_user_serializer.rb
    │   │   ├── detailed_tag_serializer.rb
    │   │   ├── detailed_user_badge_serializer.rb
    │   │   ├── directory_column_serializer.rb
    │   │   ├── directory_item_serializer.rb
    │   │   ├── discourse_version_check_serializer.rb
    │   │   ├── draft_serializer.rb
    │   │   ├── edit_directory_column_serializer.rb
    │   │   ├── email_log_serializer.rb
    │   │   ├── email_style_serializer.rb
    │   │   ├── embeddable_host_serializer.rb
    │   │   ├── embedding_serializer.rb
    │   │   ├── emoji_serializer.rb
    │   │   ├── flag_serializer.rb
    │   │   ├── flagged_topic_serializer.rb
    │   │   ├── flagged_topic_summary_serializer.rb
    │   │   ├── flagged_user_serializer.rb
    │   │   ├── flair_group_serializer.rb
    │   │   ├── form_template_serializer.rb
    │   │   ├── found_user_serializer.rb
    │   │   ├── gap_serializer.rb
    │   │   ├── group_post_serializer.rb
    │   │   ├── group_post_user_serializer.rb
    │   │   ├── group_requester_serializer.rb
    │   │   ├── group_show_serializer.rb
    │   │   ├── group_user_serializer.rb
    │   │   ├── group_user_with_custom_fields_serializer.rb
    │   │   ├── grouped_screened_url_serializer.rb
    │   │   ├── grouped_search_result_serializer.rb
    │   │   ├── hidden_profile_serializer.rb
    │   │   ├── inactive_user_serializer.rb
    │   │   ├── incoming_email_details_serializer.rb
    │   │   ├── incoming_email_serializer.rb
    │   │   ├── invite_link_serializer.rb
    │   │   ├── invite_serializer.rb
    │   │   ├── invited_serializer.rb
    │   │   ├── invited_user_record_serializer.rb
    │   │   ├── invited_user_serializer.rb
    │   │   ├── listable_topic_serializer.rb
    │   │   ├── new_post_result_serializer.rb
    │   │   ├── notification_serializer.rb
    │   │   ├── penalty_counts_serializer.rb
    │   │   ├── pending_post_serializer.rb
    │   │   ├── permalink_serializer.rb
    │   │   ├── post_action_type_serializer.rb
    │   │   ├── post_action_user_serializer.rb
    │   │   ├── post_item_excerpt.rb
    │   │   ├── post_localization_serializer.rb
    │   │   ├── post_revision_serializer.rb
    │   │   ├── post_serializer.rb
    │   │   ├── post_stream_serializer_mixin.rb
    │   │   ├── post_wordpress_serializer.rb
    │   │   ├── poster_serializer.rb
    │   │   ├── presence_channel_state_serializer.rb
    │   │   ├── primary_group_serializer.rb
    │   │   ├── private_message_topic_tracking_state_serializer.rb
    │   │   ├── published_page_serializer.rb
    │   │   ├── queued_post_serializer.rb
    │   │   ├── remote_theme_serializer.rb
    │   │   ├── reviewable_action_serializer.rb
    │   │   ├── reviewable_bundled_action_serializer.rb
    │   │   ├── reviewable_claimed_topic_serializer.rb
    │   │   ├── reviewable_conversation_post_serializer.rb
    │   │   ├── reviewable_conversation_serializer.rb
    │   │   ├── reviewable_editable_field_serializer.rb
    │   │   ├── reviewable_explanation_serializer.rb
    │   │   ├── reviewable_flagged_post_serializer.rb
    │   │   ├── reviewable_history_serializer.rb
    │   │   ├── reviewable_note_serializer.rb
    │   │   ├── reviewable_perform_result_serializer.rb
    │   │   ├── reviewable_post_serializer.rb
    │   │   ├── reviewable_queued_post_serializer.rb
    │   │   ├── reviewable_score_explanation_serializer.rb
    │   │   ├── reviewable_score_serializer.rb
    │   │   ├── reviewable_score_type_serializer.rb
    │   │   ├── reviewable_serializer.rb
    │   │   ├── reviewable_settings_serializer.rb
    │   │   ├── reviewable_topic_serializer.rb
    │   │   ├── reviewable_user_serializer.rb
    │   │   ├── screened_email_serializer.rb
    │   │   ├── screened_ip_address_serializer.rb
    │   │   ├── screened_url_serializer.rb
    │   │   ├── search_logs_serializer.rb
    │   │   ├── search_post_serializer.rb
    │   │   ├── search_result_user_serializer.rb
    │   │   ├── search_topic_list_item_serializer.rb
    │   │   ├── sidebar_section_serializer.rb
    │   │   ├── sidebar_tag_serializer.rb
    │   │   ├── sidebar_url_serializer.rb
    │   │   ├── similar_admin_user_serializer.rb
    │   │   ├── similar_topic_serializer.rb
    │   │   ├── single_sign_on_record_serializer.rb
    │   │   ├── site_category_serializer.rb
    │   │   ├── site_serializer.rb
    │   │   ├── site_text_serializer.rb
    │   │   ├── skipped_email_log_serializer.rb
    │   │   ├── suggested_topic_serializer.rb
    │   │   ├── suggested_topics_mixin.rb
    │   │   ├── tag_group_serializer.rb
    │   │   ├── tag_serializer.rb
    │   │   ├── theme_field_serializer.rb
    │   │   ├── theme_index_serializer.rb
    │   │   ├── theme_objects_setting_metadata_serializer.rb
    │   │   ├── theme_serializer.rb
    │   │   ├── theme_settings_serializer.rb
    │   │   ├── theme_translation_serializer.rb
    │   │   ├── topic_embed_serializer.rb
    │   │   ├── topic_flag_type_serializer.rb
    │   │   ├── topic_link_serializer.rb
    │   │   ├── topic_list_item_serializer.rb
    │   │   ├── topic_list_serializer.rb
    │   │   ├── topic_localization_serializer.rb
    │   │   ├── topic_pending_post_serializer.rb
    │   │   ├── topic_post_count_serializer.rb
    │   │   ├── topic_poster_serializer.rb
    │   │   ├── topic_timer_serializer.rb
    │   │   ├── topic_tracking_state_item_serializer.rb
    │   │   ├── topic_tracking_state_serializer.rb
    │   │   ├── topic_view_bookmark_serializer.rb
    │   │   ├── topic_view_details_serializer.rb
    │   │   ├── topic_view_posts_serializer.rb
    │   │   ├── topic_view_serializer.rb
    │   │   ├── topic_view_wordpress_serializer.rb
    │   │   ├── trust_level3_requirements_serializer.rb
    │   │   ├── upload_serializer.rb
    │   │   ├── upload_thumbnail_serializer.rb
    │   │   ├── user_action_serializer.rb
    │   │   ├── user_auth_token_serializer.rb
    │   │   ├── user_badge_serializer.rb
    │   │   ├── user_badges_serializer.rb
    │   │   ├── user_bookmark_base_serializer.rb
    │   │   ├── user_bookmark_list_serializer.rb
    │   │   ├── user_card_serializer.rb
    │   │   ├── user_export_serializer.rb
    │   │   ├── user_field_serializer.rb
    │   │   ├── user_history_serializer.rb
    │   │   ├── user_name_serializer.rb
    │   │   ├── user_notification_schedule_serializer.rb
    │   │   ├── user_notification_total_serializer.rb
    │   │   ├── user_option_serializer.rb
    │   │   ├── user_post_bookmark_serializer.rb
    │   │   ├── user_post_topic_bookmark_base_serializer.rb
    │   │   ├── user_serializer.rb
    │   │   ├── user_status_serializer.rb
    │   │   ├── user_summary_serializer.rb
    │   │   ├── user_tag_notifications_serializer.rb
    │   │   ├── user_topic_bookmark_serializer.rb
    │   │   ├── user_with_custom_fields_serializer.rb
    │   │   ├── user_wordpress_serializer.rb
    │   │   ├── watched_word_list_serializer.rb
    │   │   ├── watched_word_serializer.rb
    │   │   ├── web_hook_category_serializer.rb
    │   │   ├── web_hook_event_type_serializer.rb
    │   │   ├── web_hook_flag_serializer.rb
    │   │   ├── web_hook_group_serializer.rb
    │   │   ├── web_hook_group_user_serializer.rb
    │   │   ├── web_hook_like_serializer.rb
    │   │   ├── web_hook_post_serializer.rb
    │   │   ├── web_hook_topic_view_serializer.rb
    │   │   ├── web_hook_user_serializer.rb
    │   │   ├── wizard_field_choice_serializer.rb
    │   │   ├── wizard_field_serializer.rb
    │   │   ├── wizard_serializer.rb
    │   │   ├── wizard_step_serializer.rb
    │   │   └── concerns/
    │   │       ├── basic_category_attributes.rb
    │   │       ├── email_logs_mixin.rb
    │   │       ├── localized_fancy_topic_title_mixin.rb
    │   │       ├── navigation_menu_tags_mixin.rb
    │   │       ├── topic_tags_mixin.rb
    │   │       ├── user_auth_tokens_mixin.rb
    │   │       ├── user_badge_post_and_topic_attributes_mixin.rb
    │   │       ├── user_primary_group_mixin.rb
    │   │       ├── user_sidebar_mixin.rb
    │   │       ├── user_status_mixin.rb
    │   │       └── user_tag_notifications_mixin.rb
    │   ├── services/
    │   │   ├── anonymous_shadow_creator.rb
    │   │   ├── badge_granter.rb
    │   │   ├── base_bookmarkable.rb
    │   │   ├── category_hashtag_data_source.rb
    │   │   ├── color_scheme_revisor.rb
    │   │   ├── destroy_task.rb
    │   │   ├── email_settings_exception_handler.rb
    │   │   ├── email_settings_validator.rb
    │   │   ├── email_style_updater.rb
    │   │   ├── external_upload_manager.rb
    │   │   ├── group_action_logger.rb
    │   │   ├── group_mentions_updater.rb
    │   │   ├── group_message.rb
    │   │   ├── handle_chunk_upload.rb
    │   │   ├── hashtag_autocomplete_service.rb
    │   │   ├── heat_settings_updater.rb
    │   │   ├── inline_uploads.rb
    │   │   ├── locale_normalizer.rb
    │   │   ├── notification_emailer.rb
    │   │   ├── post_action_notifier.rb
    │   │   ├── post_alerter.rb
    │   │   ├── post_bookmarkable.rb
    │   │   ├── post_owner_changer.rb
    │   │   ├── push_notification_pusher.rb
    │   │   ├── random_topic_selector.rb
    │   │   ├── registered_bookmarkable.rb
    │   │   ├── search_indexer.rb
    │   │   ├── sidebar_section_links_updater.rb
    │   │   ├── sidebar_site_settings_backfiller.rb
    │   │   ├── site_setting_update_existing_users.rb
    │   │   ├── site_settings_task.rb
    │   │   ├── staff_action_logger.rb
    │   │   ├── tag_hashtag_data_source.rb
    │   │   ├── theme_settings_migrations_runner.rb
    │   │   ├── themes_install_task.rb
    │   │   ├── topic_bookmarkable.rb
    │   │   ├── topic_status_updater.rb
    │   │   ├── topic_timestamp_changer.rb
    │   │   ├── tracked_topics_updater.rb
    │   │   ├── trust_level_granter.rb
    │   │   ├── user_action_manager.rb
    │   │   ├── user_activator.rb
    │   │   ├── user_anonymizer.rb
    │   │   ├── user_authenticator.rb
    │   │   ├── user_destroyer.rb
    │   │   ├── user_merger.rb
    │   │   ├── user_notification_renderer.rb
    │   │   ├── user_notification_schedule_processor.rb
    │   │   ├── user_password_expirer.rb
    │   │   ├── user_silencer.rb
    │   │   ├── user_stat_count_updater.rb
    │   │   ├── user_suspender.rb
    │   │   ├── user_updater.rb
    │   │   ├── username_changer.rb
    │   │   ├── username_checker_service.rb
    │   │   ├── web_hook_emitter.rb
    │   │   ├── wildcard_domain_checker.rb
    │   │   ├── wildcard_url_checker.rb
    │   │   ├── word_watcher.rb
    │   │   ├── admin_notices/
    │   │   │   └── dismiss.rb
    │   │   ├── discourse_id/
    │   │   │   ├── register.rb
    │   │   │   └── revoke.rb
    │   │   ├── experiments/
    │   │   │   └── toggle.rb
    │   │   ├── flags/
    │   │   │   ├── create_flag.rb
    │   │   │   ├── destroy_flag.rb
    │   │   │   ├── reorder_flag.rb
    │   │   │   ├── toggle_flag.rb
    │   │   │   └── update_flag.rb
    │   │   ├── notifications/
    │   │   │   ├── consolidate_notifications.rb
    │   │   │   ├── consolidation_plan.rb
    │   │   │   ├── consolidation_planner.rb
    │   │   │   └── delete_previous_notifications.rb
    │   │   ├── problem_check/
    │   │   │   ├── bad_favicon_url.rb
    │   │   │   ├── email_polling_errored_recently.rb
    │   │   │   ├── facebook_config.rb
    │   │   │   ├── failing_emails.rb
    │   │   │   ├── force_https.rb
    │   │   │   ├── github_config.rb
    │   │   │   ├── google_analytics_version.rb
    │   │   │   ├── google_oauth2_config.rb
    │   │   │   ├── group_email_credentials.rb
    │   │   │   ├── host_names.rb
    │   │   │   ├── image_magick.rb
    │   │   │   ├── inline_problem_check.rb
    │   │   │   ├── maxmind_db_configuration.rb
    │   │   │   ├── missing_mailgun_api_key.rb
    │   │   │   ├── out_of_date_themes.rb
    │   │   │   ├── poll_pop3_auth_error.rb
    │   │   │   ├── poll_pop3_timeout.rb
    │   │   │   ├── problem.rb
    │   │   │   ├── rails_env.rb
    │   │   │   ├── ram.rb
    │   │   │   ├── s3_backup_config.rb
    │   │   │   ├── s3_cdn.rb
    │   │   │   ├── s3_upload_config.rb
    │   │   │   ├── sidekiq_check.rb
    │   │   │   ├── subfolder_ends_in_slash.rb
    │   │   │   ├── translation_overrides.rb
    │   │   │   ├── twitter_config.rb
    │   │   │   ├── twitter_login.rb
    │   │   │   ├── unreachable_themes.rb
    │   │   │   └── watched_words.rb
    │   │   ├── site_setting/
    │   │   │   ├── update.rb
    │   │   │   └── policy/
    │   │   │       ├── settings_are_configurable.rb
    │   │   │       ├── settings_are_not_deprecated.rb
    │   │   │       ├── settings_are_unshadowed_globally.rb
    │   │   │       ├── settings_are_visible.rb
    │   │   │       └── values_are_valid.rb
    │   │   ├── spam_rule/
    │   │   │   ├── auto_silence.rb
    │   │   │   └── flag_sockpuppets.rb
    │   │   ├── themes/
    │   │   │   ├── bulk_destroy.rb
    │   │   │   ├── create.rb
    │   │   │   ├── destroy.rb
    │   │   │   ├── get_translations.rb
    │   │   │   └── theme_site_setting_manager.rb
    │   │   ├── user/
    │   │   │   ├── bulk_destroy.rb
    │   │   │   ├── silence.rb
    │   │   │   ├── suspend.rb
    │   │   │   ├── action/
    │   │   │   │   ├── destroy_and_publish.rb
    │   │   │   │   ├── silence_all.rb
    │   │   │   │   ├── suspend_all.rb
    │   │   │   │   └── trigger_post_action.rb
    │   │   │   └── policy/
    │   │   │       ├── not_already_silenced.rb
    │   │   │       └── not_already_suspended.rb
    │   │   └── video_conversion/
    │   │       ├── adapter_factory.rb
    │   │       ├── aws_media_convert_adapter.rb
    │   │       └── base_adapter.rb
    │   └── views/ (B)
    │       ├── about/
    │       │   └── index.html.erb
    │       ├── admin/
    │       │   └── backups/
    │       │       └── show.html.erb
    │       ├── application/
    │       │   └── _header.html.erb
    │       ├── badges/
    │       │   ├── show.html.erb
    │       │   └── show.rss.erb
    │       ├── categories/
    │       │   └── index.html.erb
    │       ├── common/
    │       │   ├── _discourse_preload_stylesheet.html.erb
    │       │   ├── _discourse_publish_stylesheet.html.erb
    │       │   ├── _discourse_splash.html.erb
    │       │   ├── _discourse_stylesheet.html.erb
    │       │   ├── _google_tag_manager_body.html.erb
    │       │   ├── _google_tag_manager_head.html.erb
    │       │   ├── _google_universal_analytics.html.erb
    │       │   ├── _hreflang_tags.html.erb
    │       │   ├── _second_factor_backup_input.html.erb
    │       │   └── _second_factor_text_field.html.erb
    │       ├── default/
    │       │   ├── blank.html.erb
    │       │   └── empty.html.erb
    │       ├── email/
    │       │   ├── _mailing_list_post.html.erb
    │       │   ├── _post.html.erb
    │       │   ├── _secure_mailing_list_post.html.erb
    │       │   ├── default_template.html
    │       │   ├── notification.html.erb
    │       │   ├── unsubscribe.html.erb
    │       │   └── unsubscribed.html.erb
    │       ├── embed/
    │       │   ├── comments.html.erb
    │       │   ├── embed_error.html.erb
    │       │   ├── embed_topics_error.html.erb
    │       │   ├── loading.html.erb
    │       │   └── topics.html.erb
    │       ├── exceptions/
    │       │   ├── _not_found_topics.html.erb
    │       │   ├── not_found.html.erb
    │       │   └── read_only.html.erb
    │       ├── finish_installation/
    │       │   ├── confirm_email.html.erb
    │       │   ├── index.html.erb
    │       │   ├── register.html.erb
    │       │   └── resend_email.html.erb
    │       ├── groups/
    │       │   └── show.html.erb
    │       ├── home_page/
    │       │   └── custom.erb
    │       ├── invites/
    │       │   ├── perform_accept_invitation.html.erb
    │       │   ├── redeem_disposable_invite.html.erb
    │       │   └── show.html.erb
    │       ├── layouts/
    │       │   ├── _head.html.erb
    │       │   ├── _noscript_footer.html.erb
    │       │   ├── _noscript_header.html.erb
    │       │   ├── application.html.erb
    │       │   ├── crawler.html.erb
    │       │   ├── email_template.html.erb
    │       │   ├── embed.html.erb
    │       │   ├── ember_cli.html.erb
    │       │   ├── finish_installation.html.erb
    │       │   ├── no_ember.html.erb
    │       │   └── publish.html.erb
    │       ├── list/
    │       │   ├── list.erb
    │       │   └── list.rss.erb
    │       ├── metadata/
    │       │   └── opensearch.xml.erb
    │       ├── offline/
    │       │   └── offline.html.erb
    │       ├── posts/
    │       │   └── latest.rss.erb
    │       ├── published_pages/
    │       │   └── show.html.erb
    │       ├── qunit/
    │       │   └── theme.html.erb
    │       ├── robots_txt/
    │       │   ├── index.erb
    │       │   └── no_index.erb
    │       ├── safe_mode/
    │       │   └── index.html.erb
    │       ├── search/
    │       │   └── show.html.erb
    │       ├── session/
    │       │   ├── one_time_password.html.erb
    │       │   └── sso_login.html.erb
    │       ├── sitemap/
    │       │   ├── index.xml.erb
    │       │   ├── news.xml.erb
    │       │   └── page.xml.erb
    │       ├── static/
    │       │   ├── login.html.erb
    │       │   ├── service-worker.js.erb
    │       │   └── show.html.erb
    │       ├── tags/
    │       │   ├── _tag.html.erb
    │       │   └── index.html.erb
    │       ├── topics/
    │       │   ├── plain.html.erb
    │       │   ├── show.html.erb
    │       │   └── show.rss.erb
    │       ├── user_api_keys/
    │       │   ├── new.html.erb
    │       │   ├── otp.html.erb
    │       │   └── show.html.erb
    │       ├── user_notifications/
    │       │   ├── digest.html.erb
    │       │   ├── digest.text.erb
    │       │   └── digest/
    │       │       ├── _custom_header.erb
    │       │       ├── _footer.html.erb
    │       │       ├── _footer.text.erb
    │       │       ├── _header.html.erb
    │       │       ├── _header.text.erb
    │       │       ├── _new_topic.html.erb
    │       │       ├── _new_topics.html.erb
    │       │       ├── _other_new_topics.text.erb
    │       │       ├── _popular_post.html.erb
    │       │       ├── _popular_posts.html.erb
    │       │       ├── _popular_posts.text.erb
    │       │       ├── _popular_topic.html.erb
    │       │       ├── _popular_topics.html.erb
    │       │       ├── _popular_topics.text.erb
    │       │       ├── _stats.html.erb
    │       │       └── _styles.html.erb
    │       └── users/
    │           ├── admin_login.html.erb
    │           ├── bookmarks.ics.erb
    │           ├── confirm_admin.html.erb
    │           ├── password_reset.html.erb
    │           ├── send_activation_email.html.erb
    │           ├── show.html.erb
    │           └── omniauth_callbacks/
    │               ├── confirm_request.html.erb
    │               └── failure.html.erb
    ├── config/ (B)
    │   ├── application.rb
    │   ├── boot.rb
    │   ├── cdn.yml.sample
    │   ├── database.yml
    │   ├── deploy.rb.sample
    │   ├── dev_defaults.yml
    │   ├── discourse.config.sample
    │   ├── discourse.pill.sample
    │   ├── discourse_defaults.conf
    │   ├── environment.rb
    │   ├── logrotate.conf
    │   ├── multisite.yml.production-sample
    │   ├── nginx.sample.conf
    │   ├── projections.json
    │   ├── puma.rb
    │   ├── sidekiq.yml
    │   ├── spring.rb
    │   ├── thin.yml.sample
    │   ├── unicorn.conf.rb
    │   ├── unicorn_launcher
    │   ├── unicorn_upstart.conf
    │   ├── environments/
    │   │   ├── development.rb
    │   │   ├── production.rb
    │   │   ├── profile.rb
    │   │   └── test.rb
    │   ├── initializers/
    │   │   ├── 000-development_reload_warnings.rb
    │   │   ├── 000-mini_sql.rb
    │   │   ├── 000-pg_connection_patch.rb
    │   │   ├── 000-post_migration.rb
    │   │   ├── 000-trace_pg_connections.rb
    │   │   ├── 000-zeitwerk.rb
    │   │   ├── 001-redis.rb
    │   │   ├── 002-freedom_patches.rb
    │   │   ├── 002-rails_failover.rb
    │   │   ├── 004-message_bus.rb
    │   │   ├── 005-site_settings.rb
    │   │   ├── 006-ensure_login_hint.rb
    │   │   ├── 006-mini_profiler.rb
    │   │   ├── 008-rack-cors.rb
    │   │   ├── 009-omniauth.rb
    │   │   ├── 012-web_hook_events.rb
    │   │   ├── 013-excon_defaults.rb
    │   │   ├── 014-track-setting-changes.rb
    │   │   ├── 099-anon-cache.rb
    │   │   ├── 099-drain_pool.rb
    │   │   ├── 100-active-support-type-extensions.rb
    │   │   ├── 100-custom-timezones.rb
    │   │   ├── 100-flags.rb
    │   │   ├── 100-i18n.rb
    │   │   ├── 100-logster.rb
    │   │   ├── 100-oj.rb
    │   │   ├── 100-onebox_options.rb
    │   │   ├── 100-push-notifications.rb
    │   │   ├── 100-quiet_logger.rb
    │   │   ├── 100-regex-timeout.rb
    │   │   ├── 100-secret_token.rb
    │   │   ├── 100-session_store.rb
    │   │   ├── 100-sidekiq.rb
    │   │   ├── 100-silence_logger.rb
    │   │   ├── 100-strong_parameters.rb
    │   │   ├── 100-verify_config.rb
    │   │   ├── 100-wrap_parameters.rb
    │   │   ├── 101-lograge.rb
    │   │   ├── 102-truncate-logs.rb
    │   │   ├── 200-first_middlewares.rb
    │   │   ├── 300-perf.rb
    │   │   ├── 400-deprecations.rb
    │   │   ├── 999-themes.rb
    │   │   ├── assets.rb
    │   │   └── filter_parameter_logging.rb
    │   └── locales/
    │       └── transliterate.en.yml
    ├── db/ (B)
    │   ├── api_test_seeds.rb
    │   ├── fixtures/
    │   │   ├── 001_refresh.rb
    │   │   ├── 002_groups.rb
    │   │   ├── 003_flags.rb
    │   │   ├── 003_post_action_types.rb
    │   │   ├── 004_screened_ip_addresses.rb
    │   │   ├── 005_badge_types.rb
    │   │   ├── 006_badges.rb
    │   │   ├── 007_web_hook_event_types.rb
    │   │   ├── 009_users.rb
    │   │   ├── 010_uploads.rb
    │   │   ├── 500_categories.rb
    │   │   ├── 600_themes.rb
    │   │   ├── 990_settings.rb
    │   │   └── 990_topics.rb
    │   ├── migrate/
    │   │   ├── 20000225050318_add_schema_migration_details.rb
    │   │   ├── 20120311163914_create_forum_threads.rb
    │   │   ├── 20120311164326_create_posts.rb
    │   │   ├── 20120311170118_create_users.rb
    │   │   ├── 20120311201341_create_forums.rb
    │   │   ├── 20120311210245_create_sites.rb
    │   │   ├── 20120416201606_add_reply_to_to_posts.rb
    │   │   ├── 20120420183447_add_views_to_forum_threads.rb
    │   │   ├── 20120423140906_add_posts_count_to_forum_threads.rb
    │   │   ├── 20120423142820_fix_post_indices.rb
    │   │   ├── 20120423151548_remove_last_post_id.rb
    │   │   ├── 20120425145456_add_display_username_to_users.rb
    │   │   ├── 20120427150624_add_user_id_index_to_posts.rb
    │   │   ├── 20120427151452_cooked_migration.rb
    │   │   ├── 20120427154330_create_vestal_versions.rb
    │   │   ├── 20120427172031_add_version_to_posts.rb
    │   │   ├── 20120502192121_add_last_post_user_id_to_forum_threads.rb
    │   │   ├── 20120503205521_add_site_id_to_users.rb
    │   │   ├── 20120507144132_create_expressions.rb
    │   │   ├── 20120507144222_create_expression_types.rb
    │   │   ├── 20120514144549_add_reply_count_to_posts.rb
    │   │   ├── 20120514173920_add_flag_to_expression_types.rb
    │   │   ├── 20120514204934_add_description_to_expression_types.rb
    │   │   ├── 20120517200130_add_quoteless_to_post.rb
    │   │   ├── 20120518200115_create_read_posts.rb
    │   │   ├── 20120519182212_create_last_read_posts.rb
    │   │   ├── 20120523180723_create_views.rb
    │   │   ├── 20120523184307_add_replies_to_forum_threads.rb
    │   │   ├── 20120523201329_add_featured_to_forum_threads.rb
    │   │   ├── 20120525194845_add_avg_time_to_forum_threads.rb
    │   │   ├── 20120529175956_create_uploads.rb
    │   │   ├── 20120529202707_create_stars.rb
    │   │   ├── 20120530150726_create_forum_thread_user.rb
    │   │   ├── 20120530160745_migrate_posted.rb
    │   │   ├── 20120530200724_add_index_to_forum_threads.rb
    │   │   ├── 20120530212912_create_forum_thread_links.rb
    │   │   ├── 20120614190726_add_tags_to_forum_threads.rb
    │   │   ├── 20120614202024_add_quote_count_to_posts.rb
    │   │   ├── 20120615180517_create_bookmarks.rb
    │   │   ├── 20120618152946_add_reply_below_to_posts.rb
    │   │   ├── 20120618212349_create_post_timings.rb
    │   │   ├── 20120618214856_create_message_bus.rb
    │   │   ├── 20120619150807_fix_post_timings.rb
    │   │   ├── 20120619153349_drop_read_posts.rb
    │   │   ├── 20120619172714_add_post_number_to_bookmarks.rb
    │   │   ├── 20120621155351_add_seen_post_count_to_forum_thread_users.rb
    │   │   ├── 20120621190310_add_deleted_at_to_forum_threads.rb
    │   │   ├── 20120622200242_create_notifications.rb
    │   │   ├── 20120625145714_add_seen_notification_id_to_users.rb
    │   │   ├── 20120625162318_add_deleted_at_to_posts.rb
    │   │   ├── 20120625174544_add_highest_post_number_to_forum_threads.rb
    │   │   ├── 20120625195326_add_image_url_to_forum_threads.rb
    │   │   ├── 20120629143908_rename_expression_type_id.rb
    │   │   ├── 20120629150253_denormalize_expressions.rb
    │   │   ├── 20120629151243_make_expressions_less_generic.rb
    │   │   ├── 20120629182637_create_incoming_links.rb
    │   │   ├── 20120702211427_create_replies.rb
    │   │   ├── 20120703184734_add_reflection_to_forum_thread_links.rb
    │   │   ├── 20120703201312_add_incoming_link_count_to_posts.rb
    │   │   ├── 20120703203623_add_incoming_link_count_to_forum_threads.rb
    │   │   ├── 20120703210004_add_bookmark_count_to_posts.rb
    │   │   ├── 20120704160659_add_avg_time_to_posts.rb
    │   │   ├── 20120704201743_add_view_count_to_posts.rb
    │   │   ├── 20120705181724_add_user_to_versions.rb
    │   │   ├── 20120708210305_add_last_posted_at_to_users.rb
    │   │   ├── 20120712150500_create_categories.rb
    │   │   ├── 20120712151934_add_category_id_to_forum_threads.rb
    │   │   ├── 20120713201324_create_category_featured_threads.rb
    │   │   ├── 20120716020835_create_site_settings.rb
    │   │   ├── 20120716173544_add_stats_to_categories.rb
    │   │   ├── 20120718044955_create_user_open_ids.rb
    │   │   ├── 20120719004636_add_email_hashed_password_name_salt_to_users.rb
    │   │   ├── 20120720013733_add_username_lower_to_users.rb
    │   │   ├── 20120720044246_add_auth_token_to_users.rb
    │   │   ├── 20120720162422_add_forum_id_to_categories.rb
    │   │   ├── 20120723051512_add_not_nulls_to_user_open_ids.rb
    │   │   ├── 20120724234502_add_last_seen_at_to_users.rb
    │   │   ├── 20120724234711_add_website_to_users.rb
    │   │   ├── 20120725183347_add_excerpt_to_categories.rb
    │   │   ├── 20120726201830_add_invisible_to_forum_thread.rb
    │   │   ├── 20120726235129_add_user_id_to_categories.rb
    │   │   ├── 20120727005556_remove_excerpt_from_categories.rb
    │   │   ├── 20120727150428_rename_invisible.rb
    │   │   ├── 20120727213543_add_thread_counts_to_categories.rb
    │   │   ├── 20120803191426_add_admin_flag_to_users.rb
    │   │   ├── 20120806030641_add_new_password_new_salt_email_token_to_users.rb
    │   │   ├── 20120806062617_remove_new_password_stuff_from_user.rb
    │   │   ├── 20120807223020_create_actions.rb
    │   │   ├── 20120809020415_remove_site_id.rb
    │   │   ├── 20120809030647_remove_forum_id.rb
    │   │   ├── 20120809053414_correct_indexing_on_posts.rb
    │   │   ├── 20120809154750_remove_index_for_now.rb
    │   │   ├── 20120809174649_create_post_actions.rb
    │   │   ├── 20120809175110_create_post_action_types.rb
    │   │   ├── 20120809201855_migrate_bookmarks_to_post_actions.rb
    │   │   ├── 20120810064839_rename_actions_to_user_actions.rb
    │   │   ├── 20120812235417_retire_expressions.rb
    │   │   ├── 20120813004347_rename_expression_columns_in_forum_thread.rb
    │   │   ├── 20120813042912_rename_expression_columns_in_posts.rb
    │   │   ├── 20120813201426_create_forum_thread_link_clicks.rb
    │   │   ├── 20120815004411_add_unique_index_to_forum_thread_links.rb
    │   │   ├── 20120815180106_add_post_type_to_posts.rb
    │   │   ├── 20120815204733_add_moderator_posts_count_to_forum_threads.rb
    │   │   ├── 20120816050526_add_unique_constraint_to_user_actions.rb
    │   │   ├── 20120816205537_add_forum_thread_states.rb
    │   │   ├── 20120816205538_add_starred_at_to_forum_thread_user.rb
    │   │   ├── 20120820191804_add_search_indices.rb
    │   │   ├── 20120821191616_add_bumped_at_to_forum_threads.rb
    │   │   ├── 20120823205956_add_slug_to_categories.rb
    │   │   ├── 20120824171908_create_category_featured_users.rb
    │   │   ├── 20120828204209_create_onebox_renders.rb
    │   │   ├── 20120828204624_create_post_onebox_renders.rb
    │   │   ├── 20120830182736_add_preview_to_onebox_renders.rb
    │   │   ├── 20120910171504_remove_description_from_site_settings.rb
    │   │   ├── 20120918152319_rename_views_to_reads.rb
    │   │   ├── 20120918205931_add_sub_tag_to_forum_threads.rb
    │   │   ├── 20120919152846_add_has_best_of_to_forum_threads.rb
    │   │   ├── 20120921055428_add_twitter_user_info.rb
    │   │   ├── 20120921155050_create_archetypes.rb
    │   │   ├── 20120921162512_add_meta_data_to_forum_threads.rb
    │   │   ├── 20120921163606_create_archetype_options.rb
    │   │   ├── 20120924182000_add_hstore_extension.rb
    │   │   ├── 20120924182031_add_vote_count_to_posts.rb
    │   │   ├── 20120925171620_remove_english_from_post_action_types.rb
    │   │   ├── 20120925190802_add_sequence_to_post_action_types.rb
    │   │   ├── 20120928170023_add_sort_order_to_posts.rb
    │   │   ├── 20121009161116_add_email_stuff_to_users.rb
    │   │   ├── 20121011155904_create_email_logs.rb
    │   │   ├── 20121017162924_convert_archetypes.rb
    │   │   ├── 20121018103721_rename_forum_thread_tables.rb
    │   │   ├── 20121018133039_create_topic_allowed_users.rb
    │   │   ├── 20121018182709_fix_notification_data.rb
    │   │   ├── 20121106015500_drop_avatar_url_from_users.rb
    │   │   ├── 20121108193516_add_post_action_id_to_notifications.rb
    │   │   ├── 20121109164630_create_trust_levels.rb
    │   │   ├── 20121113200844_bio_markdown_support.rb
    │   │   ├── 20121113200845_create_facebook_user_infos.rb
    │   │   ├── 20121115172544_rename_sticky_to_pinned.rb
    │   │   ├── 20121116212424_add_more_email_settings_to_user.rb
    │   │   ├── 20121119190529_add_email_settings_to_users.rb
    │   │   ├── 20121119200843_add_email_direct_to_users.rb
    │   │   ├── 20121121202035_create_invites.rb
    │   │   ├── 20121121205215_create_topic_invites.rb
    │   │   ├── 20121122033316_add_muted_at_to_topic_user.rb
    │   │   ├── 20121123054127_make_post_number_distinct.rb
    │   │   ├── 20121123063630_create_user_visits.rb
    │   │   ├── 20121129160035_create_email_tokens.rb
    │   │   ├── 20121129184948_remove_email_token_from_users.rb
    │   │   ├── 20121130010400_create_drafts.rb
    │   │   ├── 20121130191818_add_link_post_id_to_topic_links.rb
    │   │   ├── 20121202225421_add_visited_at_to_topic_user.rb
    │   │   ├── 20121203181719_rename_seen_notificaiton_id.rb
    │   │   ├── 20121204183855_fix_link_post_id.rb
    │   │   ├── 20121204193747_add_another_featured_user_to_topics.rb
    │   │   ├── 20121207000741_add_notifications_to_topic_users.rb
    │   │   ├── 20121211233131_create_site_customizations.rb
    │   │   ├── 20121218205642_add_topics_entered_to_users.rb
    │   │   ├── 20121224072204_add_last_editor_id_to_posts.rb
    │   │   ├── 20121224095139_create_draft_sequence.rb
    │   │   ├── 20121224100650_add_sequence_to_drafts.rb
    │   │   ├── 20121228192219_add_deleted_at_to_invites.rb
    │   │   ├── 20130107165207_add_digest_after_days_to_users.rb
    │   │   ├── 20130108195847_add_previous_visit_at_to_users.rb
    │   │   ├── 20130115012140_merge_mute_options_on_topic_users.rb
    │   │   ├── 20130115021937_correct_default_on_notification_level.rb
    │   │   ├── 20130115043603_oops_unwatch_a_boat_of_watched_stuff.rb
    │   │   ├── 20130116151829_remove_sub_tag_from_topics.rb
    │   │   ├── 20130120222728_fix_search.rb
    │   │   ├── 20130121231352_add_tracking_to_topic_users.rb
    │   │   ├── 20130122051134_add_auto_track_topics_to_user.rb
    │   │   ├── 20130122232825_add_auto_track_after_seconds_and_banning_and_dob_to_user.rb
    │   │   ├── 20130123070909_auto_track_all_topics_replied_to.rb
    │   │   ├── 20130125002652_add_hidden_to_posts.rb
    │   │   ├── 20130125030305_add_fields_to_post_action.rb
    │   │   ├── 20130125031122_correct_index_on_post_action.rb
    │   │   ├── 20130127213646_remove_trust_levels.rb
    │   │   ├── 20130128182013_trust_level_default_null.rb
    │   │   ├── 20130129010625_remove_pm_reflections.rb
    │   │   ├── 20130129163244_add_time_read_to_users.rb
    │   │   ├── 20130129174845_add_days_visited_to_users.rb
    │   │   ├── 20130130154611_remove_index_from_views.rb
    │   │   ├── 20130131055710_add_custom_flag_count_to_topics.rb
    │   │   ├── 20130201000828_add_column_summaries_to_posts_and_topics.rb
    │   │   ├── 20130201023409_add_position_to_post_action_type.rb
    │   │   ├── 20130203204338_add_last_version_at_to_posts.rb
    │   │   ├── 20130204000159_add_ip_address_to_users.rb
    │   │   ├── 20130205021905_alter_facebook_user_id.rb
    │   │   ├── 20130207200019_add_user_deleted_to_posts.rb
    │   │   ├── 20130208220635_remove_reply_below_post_number_from_posts.rb
    │   │   ├── 20130213021450_remove_topic_response_actions.rb
    │   │   ├── 20130213203300_add_new_topic_duration_minutes_to_users.rb
    │   │   ├── 20130221215017_add_description_to_categories.rb
    │   │   ├── 20130226015336_add_github_user_info.rb
    │   │   ├── 20130306180148_add_cleared_pinned_to_topic_users.rb
    │   │   ├── 20130311181327_remove_extra_spam_record.rb
    │   │   ├── 20130313004922_add_external_links_in_new_tab_an_disable_quoting_to_user.rb
    │   │   ├── 20130314093434_add_foreground_color_to_categories.rb
    │   │   ├── 20130315180637_enable_trigram_support.rb
    │   │   ├── 20130319122248_add_reply_to_user_id_to_post.rb
    │   │   ├── 20130320012100_add_user_indexes_to_posts_and_topics.rb
    │   │   ├── 20130320024345_add_moderator_to_user.rb
    │   │   ├── 20130321154905_remove_oneboxes_from_db.rb
    │   │   ├── 20130326210101_add_hotness_to_category.rb
    │   │   ├── 20130327185852_update_site_settings_for_hot.rb
    │   │   ├── 20130328162943_create_hot_topics.rb
    │   │   ├── 20130328182433_add_score_to_topics.rb
    │   │   ├── 20130402210723_add_values_to_hot_topics.rb
    │   │   ├── 20130404143437_create_site_contents.rb
    │   │   ├── 20130404232558_add_user_extras.rb
    │   │   ├── 20130411205132_create_admin_logs.rb
    │   │   ├── 20130412015502_correct_counts_on_posts.rb
    │   │   ├── 20130412020156_correct_counts_on_topics.rb
    │   │   ├── 20130416004607_create_groups.rb
    │   │   ├── 20130416004933_group_users.rb
    │   │   ├── 20130416170855_add_subtype_to_topics.rb
    │   │   ├── 20130419195746_increase_data_length_on_notifications.rb
    │   │   ├── 20130422050626_add_related_post_id_to_post_actions.rb
    │   │   ├── 20130424015746_add_slug_to_topics.rb
    │   │   ├── 20130424055025_add_user_id_to_incoming_links.rb
    │   │   ├── 20130426044914_allow_nulls_in_incoming_links.rb
    │   │   ├── 20130426052257_add_incoming_ip_current_user_id_to_incoming_links.rb
    │   │   ├── 20130428194335_add_unstarred_at_to_topic_users.rb
    │   │   ├── 20130429000101_add_security_to_categories.rb
    │   │   ├── 20130430052751_add_topic_allowed_groups.rb
    │   │   ├── 20130501105651_fix_topic_allowed_groups.rb
    │   │   ├── 20130506020935_add_automatic_to_groups.rb
    │   │   ├── 20130506185042_add_auto_close_at_to_topics.rb
    │   │   ├── 20130508040235_add_user_count_to_groups.rb
    │   │   ├── 20130509040248_update_sequence_for_groups.rb
    │   │   ├── 20130515193551_add_auto_close_days_to_categories.rb
    │   │   ├── 20130521210140_create_cas_user_infos.rb
    │   │   ├── 20130522193615_rename_search_tables.rb
    │   │   ├── 20130527152648_add_like_score_to_posts.rb
    │   │   ├── 20130528174147_add_rank_to_category_featured_topics.rb
    │   │   ├── 20130531210816_add_staff_took_action_to_post_actions.rb
    │   │   ├── 20130606190601_add_auto_close_started_at_to_topics.rb
    │   │   ├── 20130610201033_add_reply_key_to_email_logs.rb
    │   │   ├── 20130612200846_create_post_upload_join_table.rb
    │   │   ├── 20130613211700_drop_posts_uploads.rb
    │   │   ├── 20130613212230_create_post_uploads.rb
    │   │   ├── 20130615064344_add_dynamic_favicon_preference_to_user.rb
    │   │   ├── 20130615073305_remove_topic_id_from_uploads.rb
    │   │   ├── 20130615075557_add_sha_to_uploads.rb
    │   │   ├── 20130616082327_create_optimized_images.rb
    │   │   ├── 20130617014127_rename_sha_and_ext_columns.rb
    │   │   ├── 20130617180009_rename_sha_column.rb
    │   │   ├── 20130617181804_add_post_id_to_email_logs.rb
    │   │   ├── 20130619063902_add_defer_to_post_actions.rb
    │   │   ├── 20130621042855_change_supress_to_suppress.rb
    │   │   ├── 20130622110348_add_url_index_to_uploads.rb
    │   │   ├── 20130624203206_change_ip_to_inet_in_topic_link_clicks.rb
    │   │   ├── 20130625022454_change_ip_to_inet_in_views.rb
    │   │   ├── 20130625170842_remove_access_password.rb
    │   │   ├── 20130625201113_add_title_to_users.rb
    │   │   ├── 20130709184941_add_deleted_by_id_to_posts.rb
    │   │   ├── 20130710201248_add_nuked_user_to_posts.rb
    │   │   ├── 20130712041133_add_permission_type_to_category_groups.rb
    │   │   ├── 20130712163509_add_missing_id_columns.rb
    │   │   ├── 20130723212758_rename_admin_log.rb
    │   │   ├── 20130724201552_create_blocked_emails.rb
    │   │   ├── 20130725213613_add_more_to_staff_action_log.rb
    │   │   ├── 20130728172550_add_url_to_optimized_images.rb
    │   │   ├── 20130731163035_add_report_index_to_incoming_links.rb
    │   │   ├── 20130807202516_add_last_match_index_to_blocked_emails.rb
    │   │   ├── 20130809160751_fix_seen_notification_ids.rb
    │   │   ├── 20130809204732_add_filter_indexes_to_staff_action_logs.rb
    │   │   ├── 20130809211409_add_avatar_to_users.rb
    │   │   ├── 20130813204212_create_screened_urls.rb
    │   │   ├── 20130813224817_rename_blocked_emails_to_screened_emails.rb
    │   │   ├── 20130816024250_create_oauth2_user_infos.rb
    │   │   ├── 20130819192358_add_value_columns_to_staff_action_logs.rb
    │   │   ├── 20130820174431_add_subject_index_to_staff_action_logs.rb
    │   │   ├── 20130822213513_add_ip_address_to_screening_tables.rb
    │   │   ├── 20130823201420_drop_defaults_on_email_digest_columns_of_users.rb
    │   │   ├── 20130826011521_create_plugin_store_rows.rb
    │   │   ├── 20130828192526_fix_optimized_images_urls.rb
    │   │   ├── 20130903154323_allow_null_user_id_on_posts.rb
    │   │   ├── 20130904181208_allow_null_user_id_on_topics.rb
    │   │   ├── 20130906081326_rename_system_username.rb
    │   │   ├── 20130906171631_add_index_to_uploads.rb
    │   │   ├── 20130910040235_index_topics_for_front_page.rb
    │   │   ├── 20130910220317_rename_staff_action_logs_to_user_history.rb
    │   │   ├── 20130911182437_create_user_stats.rb
    │   │   ├── 20130912185218_acting_user_null.rb
    │   │   ├── 20130913210454_add_mobile_to_site_customizations.rb
    │   │   ├── 20130917174738_add_topic_id_to_user_histories.rb
    │   │   ├── 20131001060630_add_email_always_to_users.rb
    │   │   ├── 20131002070347_add_user_id_parent_type_index_on_views.rb
    │   │   ├── 20131003061137_move_columns_to_user_stats.rb
    │   │   ├── 20131015131652_create_post_details.rb
    │   │   ├── 20131017014509_add_post_count_to_categories.rb
    │   │   ├── 20131017030605_add_latest_to_categories.rb
    │   │   ├── 20131018050738_add_position_to_categories.rb
    │   │   ├── 20131022045114_add_uncategorized_category.rb
    │   │   ├── 20131022151218_create_api_keys.rb
    │   │   ├── 20131023163509_add_parent_category_id_to_categories.rb
    │   │   ├── 20131105101051_add_origin_to_uploads.rb
    │   │   ├── 20131107154900_rename_banned_to_suspended.rb
    │   │   ├── 20131114185225_add_participant_count_to_topics.rb
    │   │   ├── 20131115165105_add_edit_reason_to_posts.rb
    │   │   ├── 20131118173159_rename_best_of_to_summary.rb
    │   │   ├── 20131120055018_move_emoji_to_new_location.rb
    │   │   ├── 20131122064921_increase_twitter_user_id_length.rb
    │   │   ├── 20131206200009_rename_auto_close_days_to_hours.rb
    │   │   ├── 20131209091702_create_post_revisions.rb
    │   │   ├── 20131209091742_create_topic_revisions.rb
    │   │   ├── 20131210163702_add_word_count_to_posts.rb
    │   │   ├── 20131210181901_migrate_word_counts.rb
    │   │   ├── 20131210234530_rename_version_column.rb
    │   │   ├── 20131212225511_add_post_count_stats_columns_to_categories.rb
    │   │   ├── 20131216164557_make_position_nullable_in_categories.rb
    │   │   ├── 20131217174004_create_topic_embeds.rb
    │   │   ├── 20131219203905_add_cook_method_to_posts.rb
    │   │   ├── 20131223171005_create_top_topics.rb
    │   │   ├── 20131227164338_add_scores_to_top_topics.rb
    │   │   ├── 20131229221725_add_watch_new_topics_to_users.rb
    │   │   ├── 20131230010239_add_last_emailed_post_number_to_topic_user.rb
    │   │   ├── 20140101235747_add_category_users.rb
    │   │   ├── 20140102104229_add_alias_level_to_groups.rb
    │   │   ├── 20140102194802_remove_default_from_external_links_in_new_tab.rb
    │   │   ├── 20140107220141_remove_enable_wide_category_list.rb
    │   │   ├── 20140109205940_rename_favorites_to_starred.rb
    │   │   ├── 20140116170655_drop_hot_topics.rb
    │   │   ├── 20140120155706_add_lounge_category.rb
    │   │   ├── 20140121204628_add_invalidated_at_to_invites.rb
    │   │   ├── 20140122043508_add_meta_category.rb
    │   │   ├── 20140124202427_add_posts_read_to_user_visits.rb
    │   │   ├── 20140129164541_remove_category_hotness.rb
    │   │   ├── 20140206195001_add_defaults_to_category_posts_and_topics_fields.rb
    │   │   ├── 20140206215029_add_mailing_list_mode_to_users.rb
    │   │   ├── 20140210194146_add_primary_group_id_to_users.rb
    │   │   ├── 20140211230222_move_cas_settings.rb
    │   │   ├── 20140211234523_add_targets_topic_to_post_actions.rb
    │   │   ├── 20140214151255_add_skipped_to_email_logs.rb
    │   │   ├── 20140220160510_rename_site_settings.rb
    │   │   ├── 20140220163213_rename_delete_user_max_age.rb
    │   │   ├── 20140224232712_add_profile_background_to_user.rb
    │   │   ├── 20140224232913_add_single_sign_on_records.rb
    │   │   ├── 20140227104930_add_custom_email_in_to_categories.rb
    │   │   ├── 20140227201005_add_staff_category.rb
    │   │   ├── 20140228005443_add_external_username_to_single_sign_on_record.rb
    │   │   ├── 20140228173431_add_external_email_and_external_name_to_single_sign_on_record.rb
    │   │   ├── 20140228205743_add_admin_only_to_user_histories.rb
    │   │   ├── 20140303185354_add_new_since_to_user_stats.rb
    │   │   ├── 20140304200606_create_badge_types.rb
    │   │   ├── 20140304201403_create_badges.rb
    │   │   ├── 20140305100909_create_user_badges.rb
    │   │   ├── 20140306223522_move_topic_revisions_to_post_revisions.rb
    │   │   ├── 20140318150412_add_excerpt_to_topics.rb
    │   │   ├── 20140318203559_add_created_at_index_to_posts.rb
    │   │   ├── 20140320042653_facebook_user_infos_username_can_be_nil.rb
    │   │   ├── 20140402201432_make_content_sha1_nullable.rb
    │   │   ├── 20140404143501_add_title_to_topic_links.rb
    │   │   ├── 20140407055830_add_pinned_globally_to_topics.rb
    │   │   ├── 20140407202158_site_setting_comma_to_pipe.rb
    │   │   ├── 20140408061512_add_wiki_to_posts.rb
    │   │   ├── 20140408152401_add_default_value_to_top_topic_scores.rb
    │   │   ├── 20140415054717_allow_longer_usernames.rb
    │   │   ├── 20140416202746_create_color_schemes.rb
    │   │   ├── 20140416202801_create_color_scheme_colors.rb
    │   │   ├── 20140416235757_remove_color_hexcode_from_badge_types.rb
    │   │   ├── 20140421235646_add_user_custom_fields.rb
    │   │   ├── 20140422195623_add_visibile_to_groups.rb
    │   │   ├── 20140425125742_add_custom_fields.rb
    │   │   ├── 20140425135354_add_topic_custom_fields.rb
    │   │   ├── 20140425172618_add_titleable_to_badges.rb
    │   │   ├── 20140429175951_add_registration_ip_address_to_users.rb
    │   │   ├── 20140504174212_increment_reserved_trust_level_badge_ids.rb
    │   │   ├── 20140505145918_add_last_redirected_to_top_at_to_users.rb
    │   │   ├── 20140506200235_remove_seed_color_scheme.rb
    │   │   ├── 20140507173327_remove_opacity_from_color_scheme_colors.rb
    │   │   ├── 20140508053815_add_invited_groups.rb
    │   │   ├── 20140515220111_init_fixed_category_positions_value.rb
    │   │   ├── 20140520062826_add_multiple_award_to_badges.rb
    │   │   ├── 20140520063859_remove_has_custom_avatar_from_user_stats.rb
    │   │   ├── 20140521192142_create_google_user_infos.rb
    │   │   ├── 20140521220115_google_openid_default_has_changed.rb
    │   │   ├── 20140522003151_add_user_avatars.rb
    │   │   ├── 20140525233953_remove_uploaded_avatar_template_from_users.rb
    │   │   ├── 20140526185749_change_category_uniquness_contstraint.rb
    │   │   ├── 20140526201939_add_disable_jump_reply_to_users.rb
    │   │   ├── 20140527163207_create_user_profiles.rb
    │   │   ├── 20140527233225_add_system_savatar_version_to_user_avatars.rb
    │   │   ├── 20140528015354_add_baked_at_to_posts.rb
    │   │   ├── 20140529045508_remove_use_uploaded_avatar_from_user.rb
    │   │   ├── 20140530002535_remove_system_avatars_from_user_avatars.rb
    │   │   ├── 20140530043913_add_baked_version_to_post.rb
    │   │   ├── 20140604145431_disable_external_auths_by_default.rb
    │   │   ├── 20140607035234_add_website_to_user_profiles.rb
    │   │   ├── 20140610012414_add_post_id_to_user_badges.rb
    │   │   ├── 20140610012833_add_icon_to_badges.rb
    │   │   ├── 20140610034314_move_bio_to_user_profiles.rb
    │   │   ├── 20140612010718_move_profile_background_to_user_profiles.rb
    │   │   ├── 20140617053829_add_notification_id_to_user_badge.rb
    │   │   ├── 20140617080955_rename_registered_users.rb
    │   │   ├── 20140617193351_add_post_id_index_on_topic_links.rb
    │   │   ├── 20140618001820_dont_auto_muto_topics.rb
    │   │   ├── 20140618163511_add_dismissed_banner_key_to_user_profile.rb
    │   │   ├── 20140620184031_add_hidden_at_to_posts.rb
    │   │   ├── 20140623195618_fix_categories_constraint.rb
    │   │   ├── 20140624044600_add_raw_data_to_search.rb
    │   │   ├── 20140627193814_add_images_to_categories.rb
    │   │   ├── 20140703022838_add_fields_to_badges.rb
    │   │   ├── 20140705081453_index_user_badges.rb
    │   │   ├── 20140707071913_add_self_edits_to_posts.rb
    │   │   ├── 20140710005023_add_badge_posts_and_topics_view.rb
    │   │   ├── 20140710224658_add_is_quote_to_topic_links.rb
    │   │   ├── 20140711063215_add_read_faq_to_user_stats.rb
    │   │   ├── 20140711143146_remove_not_null_from_email.rb
    │   │   ├── 20140711193923_remove_email_in_address_setting.rb
    │   │   ├── 20140711233329_badges_only_on_public_categories.rb
    │   │   ├── 20140714060646_add_enabled_to_badges.rb
    │   │   ├── 20140715013018_correct_post_number_index.rb
    │   │   ├── 20140715051412_add_auto_revoke_to_badges.rb
    │   │   ├── 20140715055242_add_quoted_posts.rb
    │   │   ├── 20140715160720_update_users_case_insensitive_emails.rb
    │   │   ├── 20140715190552_remove_uncategorized_parents.rb
    │   │   ├── 20140716063802_add_badge_groupings.rb
    │   │   ├── 20140717024528_description_optional_in_badge_grouping.rb
    │   │   ├── 20140721063820_add_trigger_to_badges.rb
    │   │   ├── 20140721161249_add_agreed_at_and_agreed_by_id_to_post_action.rb
    │   │   ├── 20140721162307_rename_defer_columns_on_post_action.rb
    │   │   ├── 20140723011456_add_show_posts_to_badges.rb
    │   │   ├── 20140725172830_remove_message_from_post_action.rb
    │   │   ├── 20140727030954_add_edit_history_public_to_users.rb
    │   │   ├── 20140728120708_fix_index_on_post_action.rb
    │   │   ├── 20140728144308_add_first_post_created_at_to_user_stat.rb
    │   │   ├── 20140728152804_add_post_and_topic_counts_to_user_stat.rb
    │   │   ├── 20140729092525_remove_unique_constraint_from_invites_index.rb
    │   │   ├── 20140730203029_add_disagreed_at_and_disagreed_by_id_to_post_action.rb
    │   │   ├── 20140731011328_add_reply_quoted_to_posts.rb
    │   │   ├── 20140801052028_fix_incoming_links.rb
    │   │   ├── 20140801170444_create_post_timings_user_index.rb
    │   │   ├── 20140804010803_incoming_link_normalization.rb
    │   │   ├── 20140804030041_remove_url_from_incoming_referer.rb
    │   │   ├── 20140804060439_drop_topic_id_from_incoming_links.rb
    │   │   ├── 20140804072504_views_to_topic_views.rb
    │   │   ├── 20140804075613_normalize_topic_view_data_and_index.rb
    │   │   ├── 20140805061612_add_bio_cooked_version_to_user_profile.rb
    │   │   ├── 20140806003116_fixup_badge_ids.rb
    │   │   ├── 20140807033123_add_index_on_last_seen_to_users.rb
    │   │   ├── 20140808051823_create_topic_search_index.rb
    │   │   ├── 20140809224243_add_user_badge_unique_index.rb
    │   │   ├── 20140811094300_rename_defered_columns_on_post_action.rb
    │   │   ├── 20140813175357_add_default_to_active.rb
    │   │   ├── 20140815183851_fix_index_on_post_actions.rb
    │   │   ├── 20140815191556_fix_post_actions_index_again.rb
    │   │   ├── 20140815215618_add_name_lower_to_categories.rb
    │   │   ├── 20140817011612_add_external_avatar_url_to_single_sign_on_record.rb
    │   │   ├── 20140826234625_rename_settings_pop3s_to_pop3.rb
    │   │   ├── 20140827044811_remove_nullable_dates.rb
    │   │   ├── 20140828172407_create_permalinks.rb
    │   │   ├── 20140828200231_make_url_col_bigger_in_permalinks.rb
    │   │   ├── 20140831191346_remove_category_groups_orphaned_by_removing_category_or_group.rb
    │   │   ├── 20140904055702_correct_post_action_index.rb
    │   │   ├── 20140904160015_add_via_email_to_posts.rb
    │   │   ├── 20140904215629_rename_trust_level_settings.rb
    │   │   ├── 20140905055251_rename_trust_level_badges.rb
    │   │   ├── 20140905171733_create_warnings.rb
    │   │   ├── 20140908165716_migrate_warning_topic_subtypes.rb
    │   │   ├── 20140908191429_trim_profile_length.rb
    │   │   ├── 20140910130155_create_topic_user_index.rb
    │   │   ├── 20140911065449_private_messages_have_no_category_id.rb
    │   │   ├── 20140913192733_add_trust_level_locked_column.rb
    │   │   ├── 20140923042349_add_retain_hours_to_uploads.rb
    │   │   ├── 20140924192418_rename_content_type.rb
    │   │   ├── 20140925173220_create_user_fields.rb
    │   │   ├── 20140929181930_add_editable_to_user_fields.rb
    │   │   ├── 20140929204155_migrate_tos_setting.rb
    │   │   ├── 20141001101041_add_post_id_to_user_histories.rb
    │   │   ├── 20141002181613_add_description_to_user_fields.rb
    │   │   ├── 20141007224814_add_badge_granted_title_to_user_profile.rb
    │   │   ├── 20141008152953_add_exernal_url_to_permalinks.rb
    │   │   ├── 20141008181228_add_required_signup_to_user_fields.rb
    │   │   ├── 20141008192525_add_auto_close_based_on_last_post_and_auto_close_hours_to_topics.rb
    │   │   ├── 20141008192526_add_auto_close_based_on_last_post_to_categories.rb
    │   │   ├── 20141014032859_add_hidden_to_post_revision.rb
    │   │   ├── 20141014191645_fix_tos_name.rb
    │   │   ├── 20141015060145_add_raw_email_to_posts.rb
    │   │   ├── 20141016183307_add_expansion_background_to_user_profiles.rb
    │   │   ├── 20141020153415_add_public_version_to_posts.rb
    │   │   ├── 20141020154935_rename_expansion_to_card.rb
    │   │   ├── 20141020164816_add_image_to_badges.rb
    │   │   ├── 20141020174120_add_card_image_to_user_profiles.rb
    │   │   ├── 20141030222425_rename_seen_post_count.rb
    │   │   ├── 20141110150304_add_footer_to_site_customization.rb
    │   │   ├── 20141118011735_correct_username_search.rb
    │   │   ├── 20141120035016_add_allowed_ips_to_api_keys.rb
    │   │   ├── 20141120043401_add_hidden_to_api_keys.rb
    │   │   ├── 20141211114517_fix_emoji_path.rb
    │   │   ├── 20141222051622_remove_override_default_styles_from_site_customizations.rb
    │   │   ├── 20141222224220_fix_emoji_path_take2.rb
    │   │   ├── 20141222230707_amend_site_customization.rb
    │   │   ├── 20141223145058_create_csv_export_logs.rb
    │   │   ├── 20141228151019_rename_csv_export_logs_to_user_exports.rb
    │   │   ├── 20150106215342_remove_stars.rb
    │   │   ├── 20150108002354_add_liked_and_bookmarked_to_topic_user.rb
    │   │   ├── 20150108202057_create_bookmark_actions.rb
    │   │   ├── 20150108211557_index_topic_custom_field_values.rb
    │   │   ├── 20150108221703_group_managers.rb
    │   │   ├── 20150112172258_add_new_site_customization_types.rb
    │   │   ├── 20150112172259_migrate_site_text_to_site_customization.rb
    │   │   ├── 20150114093325_add_top_to_site_customization.rb
    │   │   ├── 20150115172310_rename_user_export_column.rb
    │   │   ├── 20150123145128_add_automatic_membership_to_group.rb
    │   │   ├── 20150129204520_add_show_on_profile_to_user_fields.rb
    │   │   ├── 20150203041207_add_application_requests.rb
    │   │   ├── 20150205032808_reset_application_requests.rb
    │   │   ├── 20150205172051_add_custom_type_to_user_histories.rb
    │   │   ├── 20150206004143_flush_application_requests.rb
    │   │   ├── 20150213174159_create_digest_unsubscribe_keys.rb
    │   │   ├── 20150224004420_add_pinned_indexes.rb
    │   │   ├── 20150227043622_add_long_description_to_badges.rb
    │   │   ├── 20150301224250_create_suggested_for_index.rb
    │   │   ├── 20150306050437_add_all_time_and_op_likes_to_top_topics.rb
    │   │   ├── 20150318143915_create_directory_items.rb
    │   │   ├── 20150323034933_add_allow_private_messages_to_user_profile.rb
    │   │   ├── 20150323062322_remove_allow_private_messages_from_user_profile.rb
    │   │   ├── 20150323234856_add_muted_users.rb
    │   │   ├── 20150324184222_add_more_to_directory_items.rb
    │   │   ├── 20150325183400_fix_group_user_count.rb
    │   │   ├── 20150325190959_create_queued_posts.rb
    │   │   ├── 20150410002551_add_title_to_groups.rb
    │   │   ├── 20150421085850_increase_url_length_on_topic_embed.rb
    │   │   ├── 20150421190714_add_queued_post_id_to_user_actions.rb
    │   │   ├── 20150422160235_add_link_post_id_index_on_topic_links.rb
    │   │   ├── 20150505044154_add_stylesheet_cache.rb
    │   │   ├── 20150513094042_add_index_on_post_actions.rb
    │   │   ├── 20150514023016_add_unread_notifications_index.rb
    │   │   ├── 20150514043155_add_user_actions_all_index.rb
    │   │   ├── 20150525151759_set_default_s3_region.rb
    │   │   ├── 20150609163211_migrate_embeddable_host.rb
    │   │   ├── 20150617080349_add_index_on_post_notifications.rb
    │   │   ├── 20150617233018_add_index_target_post_id_on_user_actions.rb
    │   │   ├── 20150617234511_add_staff_index_to_users.rb
    │   │   ├── 20150702201926_add_topic_template_to_categories.rb
    │   │   ├── 20150706215111_add_mobile_to_user_visits.rb
    │   │   ├── 20150707163251_add_reports_index_to_user_visits.rb
    │   │   ├── 20150709021818_add_like_count_to_post_menu.rb
    │   │   ├── 20150713203955_enlarge_users_email_field.rb
    │   │   ├── 20150724165259_add_index_to_post_custom_fields.rb
    │   │   ├── 20150724182342_add_action_code_to_post.rb
    │   │   ├── 20150727193414_create_user_field_options.rb
    │   │   ├── 20150727210019_add_pinned_until_to_topics.rb
    │   │   ├── 20150727230537_add_example_column_comments.rb
    │   │   ├── 20150728004647_correct_custom_fields_migration.rb
    │   │   ├── 20150728210202_migrate_old_moderator_posts.rb
    │   │   ├── 20150729150523_migrate_auto_close_posts.rb
    │   │   ├── 20150730154830_add_position_to_user_fields.rb
    │   │   ├── 20150731225331_migrate_old_moved_posts.rb
    │   │   ├── 20150802233112_add_post_stats.rb
    │   │   ├── 20150806210727_add_embedded_css_to_site_customizations.rb
    │   │   ├── 20150818190757_create_embeddable_hosts.rb
    │   │   ├── 20150822141540_fix_migrated_hosts.rb
    │   │   ├── 20150828155137_add_suppress_from_homepage_to_category.rb
    │   │   ├── 20150901192313_add_grant_trust_level_to_groups.rb
    │   │   ├── 20150914021445_create_user_profile_views.rb
    │   │   ├── 20150914034541_add_views_to_user_profile.rb
    │   │   ├── 20150917071017_add_category_id_to_user_histories.rb
    │   │   ├── 20150918004206_add_user_id_group_id_index_to_group_users.rb
    │   │   ├── 20150924022040_add_fancy_title_to_topic.rb
    │   │   ├── 20150925000915_exclude_whispers_from_badges.rb
    │   │   ├── 20151103233815_add_lower_title_index_on_topics.rb
    │   │   ├── 20151105181635_add_staged_to_user.rb
    │   │   ├── 20151107041044_fix_incorrect_topic_creator_after_move.rb
    │   │   ├── 20151107042241_add_owner_to_group_users.rb
    │   │   ├── 20151109124147_drop_group_managers.rb
    │   │   ├── 20151113205046_create_translation_overrides.rb
    │   │   ├── 20151117165756_add_automatically_unpin_topics_to_users.rb
    │   │   ├── 20151124192339_rename_ninja_edit.rb
    │   │   ├── 20151125194322_remove_site_text.rb
    │   │   ├── 20151126173356_rename_is_support_to_contains_messages.rb
    │   │   ├── 20151126233623_add_baked_head_and_body_to_site_customizations.rb
    │   │   ├── 20151201035631_add_group_mentions.rb
    │   │   ├── 20151201161726_add_incoming_email_to_groups.rb
    │   │   ├── 20151214165852_add_notification_level_to_group_users.rb
    │   │   ├── 20151218232200_add_unique_index_to_category_users.rb
    │   │   ├── 20151219045559_add_has_messages_to_groups.rb
    │   │   ├── 20151220232725_add_user_archived_messages_group_archived_messages.rb
    │   │   ├── 20160108051129_fix_incorrect_user_history.rb
    │   │   ├── 20160110053003_archive_system_messages_with_no_replies.rb
    │   │   ├── 20160112025852_remove_users_from_topic_allowed_users.rb
    │   │   ├── 20160112101818_remove_contains_message_on_category.rb
    │   │   ├── 20160112104733_add_contains_messages_back_to_categories.rb
    │   │   ├── 20160113160742_create_incoming_emails.rb
    │   │   ├── 20160118174335_rebake_html_customizations.rb
    │   │   ├── 20160118233631_backfill_incoming_emails.rb
    │   │   ├── 20160127105314_change_default_notification_level_on_groups.rb
    │   │   ├── 20160127222802_migrate_uncategorized_description_setting.rb
    │   │   ├── 20160201181320_fix_email_logs.rb
    │   │   ├── 20160206210202_remove_invalid_websites.rb
    │   │   ├── 20160215075528_add_unread_pm_index_to_notifications.rb
    │   │   ├── 20160224033122_create_instagram_user_infos.rb
    │   │   ├── 20160225050317_add_user_options.rb
    │   │   ├── 20160225050318_allow_defaults_on_users_table.rb
    │   │   ├── 20160225050319_move_tracking_options_to_user_options.rb
    │   │   ├── 20160225050320_add_email_previous_replies_to_user_options.rb
    │   │   ├── 20160225095306_add_email_in_reply_to_to_user_options.rb
    │   │   ├── 20160302063432_rebuild_directory_item_with_index.rb
    │   │   ├── 20160302104253_add_like_notification_frequency_to_user_options.rb
    │   │   ├── 20160302170230_rename_digest_after_days_to_digest_after_minutes.rb
    │   │   ├── 20160303183607_clear_common_passwords_cache.rb
    │   │   ├── 20160307190919_create_email_change_requests.rb
    │   │   ├── 20160308193142_rename_confirm_translation_key.rb
    │   │   ├── 20160309073132_add_mailing_list_mode_frequency.rb
    │   │   ├── 20160317174357_create_given_daily_likes.rb
    │   │   ├── 20160317201955_add_include_tl0_in_digests_to_user_options.rb
    │   │   ├── 20160326001747_add_user_first_visit.rb
    │   │   ├── 20160329101122_remove_wiki_color.rb
    │   │   ├── 20160405172827_create_user_firsts.rb
    │   │   ├── 20160407160756_remove_user_firsts.rb
    │   │   ├── 20160407180149_create_onceoff_logs.rb
    │   │   ├── 20160408131959_add_show_on_user_card_to_user_fields.rb
    │   │   ├── 20160408175727_add_compiled_js_to_translation_overrides.rb
    │   │   ├── 20160418065403_add_bounce_key_to_email_log.rb
    │   │   ├── 20160425141954_fix_incoming_emails_indices.rb
    │   │   ├── 20160427202222_add_support_for_bounced_emails.rb
    │   │   ├── 20160503205953_create_tags.rb
    │   │   ├── 20160514100852_remove_invalid_topic_user.rb
    │   │   ├── 20160520022627_shorten_topic_custom_fields_index.rb
    │   │   ├── 20160527015355_correct_mailing_list_mode_frequency.rb
    │   │   ├── 20160527191614_create_category_tags.rb
    │   │   ├── 20160530003739_create_scheduler_stats.rb
    │   │   ├── 20160530203810_add_message_id_to_email_logs.rb
    │   │   ├── 20160602164008_create_tag_groups.rb
    │   │   ├── 20160606204319_create_category_tag_groups.rb
    │   │   ├── 20160607213656_add_tag_group_options.rb
    │   │   ├── 20160609203508_remove_tag_count_from_tag_groups.rb
    │   │   ├── 20160615024524_rename_digest_unsbscribe_keys.rb
    │   │   ├── 20160627104436_use_https_name_change_in_site_settings.rb
    │   │   ├── 20160707195549_add_compiler_version_to_site_customizations.rb
    │   │   ├── 20160716112354_remove_edit_history_public.rb
    │   │   ├── 20160719002225_add_deleted_post_index_to_posts.rb
    │   │   ├── 20160722071221_add_auth_token_created_at_to_users.rb
    │   │   ├── 20160725015749_rename_auth_token_created_at.rb
    │   │   ├── 20160727233044_create_developers_table.rb
    │   │   ├── 20160815002002_add_user_api_keys.rb
    │   │   ├── 20160815210156_add_flair_url_to_groups.rb
    │   │   ├── 20160816063534_add_revoked_at_to_user_api_keys.rb
    │   │   ├── 20160823171911_add_path_whitelist_to_embeddable_hosts.rb
    │   │   ├── 20160826195018_add_flair_color_to_groups.rb
    │   │   ├── 20160905082217_create_web_hook_event_types.rb
    │   │   ├── 20160905082248_create_web_hooks.rb
    │   │   ├── 20160905084502_create_web_hook_events.rb
    │   │   ├── 20160905085445_create_join_table_web_hooks_web_hook_event_types.rb
    │   │   ├── 20160905091958_create_join_table_web_hooks_groups.rb
    │   │   ├── 20160905092148_create_join_table_web_hooks_categories.rb
    │   │   ├── 20160906200439_add_via_wizard_to_color_schemes.rb
    │   │   ├── 20160919003141_add_avatar_url_to_facebook_info.rb
    │   │   ├── 20160919054014_add_fields_to_facebook_user_info.rb
    │   │   ├── 20160920165833_add_moderator_to_invites.rb
    │   │   ├── 20160930123330_add_notification_level_when_replying.rb
    │   │   ├── 20161010230853_single_sign_on_increase_external_avatar_url.rb
    │   │   ├── 20161013012136_add_scopes_to_user_api_keys.rb
    │   │   ├── 20161014171034_add_directory_items_indexes.rb
    │   │   ├── 20161025083648_fix_category_logo_and_background_urls.rb
    │   │   ├── 20161029181306_add_image_url_to_posts.rb
    │   │   ├── 20161031183811_add_sort_fields_to_categories.rb
    │   │   ├── 20161102024700_add_post_uploads_indexes.rb
    │   │   ├── 20161102024818_add_uploaded_avatar_id_index_to_users.rb
    │   │   ├── 20161102024838_add_user_avatars_indexes.rb
    │   │   ├── 20161102024900_add_user_profiles_indexes.rb
    │   │   ├── 20161102024920_add_categories_indexes.rb
    │   │   ├── 20161124020918_add_scores_indexes_to_top_topics.rb
    │   │   ├── 20161202011139_add_whisper_support_to_topics.rb
    │   │   ├── 20161202034856_add_uploads_to_categories.rb
    │   │   ├── 20161205001727_add_topic_columns_back.rb
    │   │   ├── 20161205065743_add_bio_to_groups.rb
    │   │   ├── 20161207030057_add_public_to_groups.rb
    │   │   ├── 20161208064834_create_group_histories.rb
    │   │   ├── 20161212123649_add_allow_membership_requests_to_groups.rb
    │   │   ├── 20161213073938_add_full_name_to_groups.rb
    │   │   ├── 20161215201907_migrate_featured_link_fields.rb
    │   │   ├── 20161216101352_add_all_topics_wiki_to_categories.rb
    │   │   ├── 20170124181409_add_user_auth_tokens.rb
    │   │   ├── 20170201085745_create_custom_emojis.rb
    │   │   ├── 20170213180857_add_user_auth_token_log.rb
    │   │   ├── 20170215151505_add_seen_at_to_user_auth_token.rb
    │   │   ├── 20170221204204_add_show_subcategory_list_to_categories.rb
    │   │   ├── 20170222173036_make_user_auth_token_index_unique.rb
    │   │   ├── 20170227211458_add_featured_topics_to_categories.rb
    │   │   ├── 20170301215150_add_default_view_to_categories.rb
    │   │   ├── 20170303070706_add_index_to_topic_view_items.rb
    │   │   ├── 20170307181800_add_path_to_user_auth_token_log.rb
    │   │   ├── 20170308201552_add_subcategory_list_style_to_categories.rb
    │   │   ├── 20170313192741_add_themes.rb
    │   │   ├── 20170322065911_create_topic_status_updates.rb
    │   │   ├── 20170322155537_add_theme_to_stylesheet_cache.rb
    │   │   ├── 20170322191305_add_default_top_period_to_categories.rb
    │   │   ├── 20170324032913_move_auto_close_columns_to_topic_status_update.rb
    │   │   ├── 20170324144456_amend_css_columns_in_theme.rb
    │   │   ├── 20170328163918_break_up_themes_table.rb
    │   │   ├── 20170328203122_add_compiler_version_to_theme_fields.rb
    │   │   ├── 20170330041605_add_index_to_topic_status_updates.rb
    │   │   ├── 20170403062717_add_category_id_to_topic_status_updates.rb
    │   │   ├── 20170410170923_add_theme_remote_fields.rb
    │   │   ├── 20170413043152_rename_warnings.rb
    │   │   ├── 20170417164715_add_theme_id_to_color_scheme.rb
    │   │   ├── 20170419193714_add_error_to_theme_fields.rb
    │   │   ├── 20170420163628_add_default_notification_level_to_group.rb
    │   │   ├── 20170425083011_add_deleted_at_to_topic_embeds.rb
    │   │   ├── 20170425172415_add_error_to_scheduler_stats.rb
    │   │   ├── 20170501191912_add_upload_id_to_theme_fields.rb
    │   │   ├── 20170505035229_migrate_mailing_list_daily_updates_users_to_daily_summary.rb
    │   │   ├── 20170508183819_add_css_class_name_to_embeddable_hosts.rb
    │   │   ├── 20170511071355_remove_convert_pasted_image_site_setting.rb
    │   │   ├── 20170511080007_rename_convert_pasted_images_quality_site_setting.rb
    │   │   ├── 20170511184842_rename_topic_status_updates_to_topic_timers.rb
    │   │   ├── 20170512153318_add_theme_key_to_user_options.rb
    │   │   ├── 20170512185227_create_topic_status_updates_again.rb
    │   │   ├── 20170515152725_add_theme_key_seq_to_user_options.rb
    │   │   ├── 20170515203721_add_public_type_to_topic_timers.rb
    │   │   ├── 20170602132735_fix_group_allow_membership_requests.rb
    │   │   ├── 20170605014820_remove_auto_close_columns_from_topics.rb
    │   │   ├── 20170609115401_add_extension_to_topic_links.rb
    │   │   ├── 20170628152322_create_watched_words.rb
    │   │   ├── 20170630083540_add_custom_message_to_invite.rb
    │   │   ├── 20170703115216_add_extension_to_uploads.rb
    │   │   ├── 20170703144855_add_visibility_level_to_groups.rb
    │   │   ├── 20170704142141_add_visible_back_to_groups.rb
    │   │   ├── 20170713164357_create_search_logs.rb
    │   │   ├── 20170717084947_create_user_emails.rb
    │   │   ├── 20170725075535_correct_default_email_mailing_list_mode_frequency.rb
    │   │   ├── 20170728012754_split_public_in_groups.rb
    │   │   ├── 20170731075604_add_membership_request_template_to_groups.rb
    │   │   ├── 20170803123704_add_version_to_search_data.rb
    │   │   ├── 20170818191909_split_alias_levels.rb
    │   │   ├── 20170823173427_create_tag_search_data.rb
    │   │   ├── 20170824172615_add_slug_index_on_topic.rb
    │   │   ├── 20170831180419_remove_whisper_topic_links.rb
    │   │   ├── 20171003180951_rename_forgot_password_strict_setting.rb
    │   │   ├── 20171006030028_add_allow_private_messages_to_user_options.rb
    │   │   ├── 20171110174413_rename_blocked_silence.rb
    │   │   ├── 20171113175414_add_silenced_till_to_users.rb
    │   │   ├── 20171113214725_add_time_read_to_user_visits.rb
    │   │   ├── 20171115170858_add_mailinglist_mirror_to_categories.rb
    │   │   ├── 20171123200157_add_trust_level_locks_to_users.rb
    │   │   ├── 20171128172835_rename_clicked_topic_id_to_search_result_id.rb
    │   │   ├── 20171213105921_replace_invite_mailer_translation_override.rb
    │   │   ├── 20171214040346_add_email_to_twitter_user_info.rb
    │   │   ├── 20171220181249_change_user_emails_primary_index.rb
    │   │   ├── 20171228122834_replace_blocked_silence_translation.rb
    │   │   ├── 20180109222722_create_user_second_factors.rb
    │   │   ├── 20180125185717_add_locked_by_to_posts.rb
    │   │   ├── 20180127005644_remove_old_ga_site_settings.rb
    │   │   ├── 20180131052859_rename_private_personal.rb
    │   │   ├── 20180207161422_add_skipped_created_at_user_id_index_on_email_logs.rb
    │   │   ├── 20180207163946_create_category_tag_stats.rb
    │   │   ├── 20180221215641_add_suppress_from_latest_to_categories.rb
    │   │   ├── 20180223041147_fix_google_oauth2_prompt_data_type.rb
    │   │   ├── 20180223222415_remove_censored_pattern_site_setting.rb
    │   │   ├── 20180308071922_drop_raise_read_only_function.rb
    │   │   ├── 20180309014014_add_private_key_to_remote_theme.rb
    │   │   ├── 20180316092939_add_external_profile_and_card_background_url_to_single_sign_on_record.rb
    │   │   ├── 20180316165104_create_shared_drafts.rb
    │   │   ├── 20180320190339_create_web_crawler_requests.rb
    │   │   ├── 20180323154826_create_tag_group_permissions.rb
    │   │   ├── 20180323161659_add_id_to_shared_drafts.rb
    │   │   ├── 20180328180317_add_category_index_to_shared_drafts.rb
    │   │   ├── 20180331125522_add_minimum_required_tags_to_categories.rb
    │   │   ├── 20180419095326_add_upload_id_to_user_exports.rb
    │   │   ├── 20180420141134_remove_staff_tags_setting.rb
    │   │   ├── 20180425152503_drop_user_card_badge_columns.rb
    │   │   ├── 20180508142711_remove_invite_passthrough_hours.rb
    │   │   ├── 20180514133440_add_pm_topic_count_to_tags.rb
    │   │   ├── 20180519053933_delete_confirm_old_email_template_overrides.rb
    │   │   ├── 20180521175611_change_indexes_topic_view_item.rb
    │   │   ├── 20180521184439_allow_null_ip_search_log.rb
    │   │   ├── 20180521190040_allow_null_ip_topic_link_click.rb
    │   │   ├── 20180521191418_allow_null_ip_user_profile_view.rb
    │   │   ├── 20180607095414_migrate_disable_emails.rb
    │   │   ├── 20180621013807_add_index_topic_id_percent_rank_on_posts.rb
    │   │   ├── 20180706054922_drop_key_column_from_themes.rb
    │   │   ├── 20180710075119_add_index_topic_id_sort_order_on_posts.rb
    │   │   ├── 20180710172959_disallow_multi_levels_theme_components.rb
    │   │   ├── 20180716062012_add_index_user_id_on_user_second_factors.rb
    │   │   ├── 20180716062405_add_navigate_to_first_post_after_read_to_categories.rb
    │   │   ├── 20180716072125_alter_bounce_key_on_email_logs.rb
    │   │   ├── 20180716140323_add_uniq_ip_or_user_id_topic_views.rb
    │   │   ├── 20180716200103_add_theme_key_default.rb
    │   │   ├── 20180717025038_drop_not_null_ip_address_on_topic_views.rb
    │   │   ├── 20180717084758_alter_reply_key_on_email_logs.rb
    │   │   ├── 20180718062728_create_post_reply_keys.rb
    │   │   ├── 20180719103905_alter_indexes_on_email_logs.rb
    │   │   ├── 20180720054856_create_skipped_email_logs.rb
    │   │   ├── 20180724070554_drop_topic_id_on_email_logs.rb
    │   │   ├── 20180727042448_drop_reply_key_skipped_skipped_reason_from_email_logs.rb
    │   │   ├── 20180729092926_remove_track_external_right_clicks.rb
    │   │   ├── 20180803085321_add_index_email_logs_on_bounced.rb
    │   │   ├── 20180812150839_add_user_api_keys_last_used_at.rb
    │   │   ├── 20180813074843_add_component_to_themes.rb
    │   │   ├── 20180828065005_change_bounce_score_to_float.rb
    │   │   ├── 20180831182853_add_branch_to_remote_theme.rb
    │   │   ├── 20180907075713_add_last_error_text_to_remote_themes.rb
    │   │   ├── 20180913200027_remove_enforce_square_emoji.rb
    │   │   ├── 20180916195601_migrate_s3_backup_site_settings.rb
    │   │   ├── 20180917024729_remove_superfluous_columns.rb
    │   │   ├── 20180917034056_remove_superfluous_tables.rb
    │   │   ├── 20180920023559_add_external_details_to_user_fields.rb
    │   │   ├── 20180920042415_create_user_uploads.rb
    │   │   ├── 20180927135248_create_javascript_caches.rb
    │   │   ├── 20180928105835_add_index_to_tags.rb
    │   │   ├── 20181005084357_add_sso_provider_secrets_to_site_settings.rb
    │   │   ├── 20181005144357_add_via_email_to_invites.rb
    │   │   ├── 20181010150631_add_hide_profile_and_presence_to_user_options.rb
    │   │   ├── 20181012123001_drop_group_locked_trust_level_from_user.rb
    │   │   ├── 20181031165343_add_flag_stats_to_user.rb
    │   │   ├── 20181108115009_create_user_associated_accounts.rb
    │   │   ├── 20181112013117_migrate_url_site_settings.rb
    │   │   ├── 20181120140552_migrate_corporate_site_settings.rb
    │   │   ├── 20181128140547_migrate_facebook_user_info.rb
    │   │   ├── 20181129094518_add_not_null_minimum_required_tags_on_categories.rb
    │   │   ├── 20181204123042_add_uploaded_meta_id_to_categories.rb
    │   │   ├── 20181204193426_create_join_table_web_hooks_tags.rb
    │   │   ├── 20181207141900_migrate_twitter_user_info.rb
    │   │   ├── 20181210122522_remove_not_null_user_associated_account_user.rb
    │   │   ├── 20181218071253_add_etag_to_uploads.rb
    │   │   ├── 20181220115844_add_smtp_and_imap_to_groups.rb
    │   │   ├── 20190103051737_add_version_to_optimized_images.rb
    │   │   ├── 20190103060819_force_rebake_on_posts_with_images.rb
    │   │   ├── 20190103065652_remove_uploaded_meta_id_from_category.rb
    │   │   ├── 20190103160533_create_reviewables.rb
    │   │   ├── 20190103185626_create_reviewable_users.rb
    │   │   ├── 20190106041015_add_topic_id_index_to_user_histories.rb
    │   │   ├── 20190108110630_add_text_size_key_to_user_options.rb
    │   │   ├── 20190110201340_remove_google_plus_from_share_links_site_setting.rb
    │   │   ├── 20190110212005_create_reviewable_histories.rb
    │   │   ├── 20190111170824_migrate_reviewable_queued_posts.rb
    │   │   ├── 20190111183409_add_imap_fields_to_incoming_emails.rb
    │   │   ├── 20190117191606_create_group_requests.rb
    │   │   ├── 20190121202656_remove_user_action_pending.rb
    │   │   ├── 20190121203023_drop_queued_post_id_from_user_actions.rb
    │   │   ├── 20190122132732_add_fields_to_remote_themes.rb
    │   │   ├── 20190123171817_drop_queued_posts.rb
    │   │   ├── 20190125103246_copy_login_required_welcome_message.rb
    │   │   ├── 20190125153345_add_text_size_seq_to_user_option.rb
    │   │   ├── 20190130013015_add_index_on_user_id_to_single_sign_on_records.rb
    │   │   ├── 20190130163000_create_reviewable_scores.rb
    │   │   ├── 20190130163001_migrate_reviewable_flagged_posts.rb
    │   │   ├── 20190205104116_drop_unused_auth_tables.rb
    │   │   ├── 20190208144706_drop_unused_auth_tables_again.rb
    │   │   ├── 20190215204033_add_score_bonus_to_post_action_types.rb
    │   │   ├── 20190225133654_add_ignored_users_table.rb
    │   │   ├── 20190227150413_migrate_instagram_user_info.rb
    │   │   ├── 20190227210035_add_missing_topic_id_site_settings.rb
    │   │   ├── 20190304170931_migrate_uncategorized_category_name.rb
    │   │   ├── 20190306154335_migrate_google_user_info.rb
    │   │   ├── 20190306184409_add_reviewable_score_to_topics.rb
    │   │   ├── 20190312181641_migrate_email_user_options.rb
    │   │   ├── 20190312194528_drop_email_user_options_columns.rb
    │   │   ├── 20190313134642_migrate_default_user_email_options.rb
    │   │   ├── 20190313171338_add_indexes_to_reviewables.rb
    │   │   ├── 20190313205652_rename_moderator_site_settings.rb
    │   │   ├── 20190314082018_add_search_priority_to_categories.rb
    │   │   ├── 20190314144755_add_summarized_at_column_to_ignored_users_table.rb
    │   │   ├── 20190315170411_add_index_to_reviewable_histories.rb
    │   │   ├── 20190315174428_migrate_flag_history.rb
    │   │   ├── 20190320091323_add_index_post_action_type_id_disagreed_at_on_post_actions.rb
    │   │   ├── 20190320104640_remove_s3_force_path_style.rb
    │   │   ├── 20190321072029_add_index_method_enabled_on_user_second_factors.rb
    │   │   ├── 20190322152347_force_rebake_on_posts_with_lightboxes.rb
    │   │   ├── 20190325162154_make_site_settings_unique.rb
    │   │   ├── 20190326123708_add_index_created_at_on_search_logs.rb
    │   │   ├── 20190327090918_add_expiring_at_column_to_ignored_users_table.rb
    │   │   ├── 20190327205525_require_reviewable_scores.rb
    │   │   ├── 20190402024053_add_first_unread_at_to_user_stats.rb
    │   │   ├── 20190402142223_disable_invite_only_sso.rb
    │   │   ├── 20190403180142_add_allow_global_tags_to_categories.rb
    │   │   ├── 20190403202001_fix_reviewable_users.rb
    │   │   ├── 20190405044140_add_index_action_type_created_at_on_user_actions.rb
    │   │   ├── 20190408072550_add_index_id_baked_version_on_posts.rb
    │   │   ├── 20190408082101_add_search_data_indexes.rb
    │   │   ├── 20190409054736_add_index_for_rebake_old_on_posts.rb
    │   │   ├── 20190410055459_add_index_reply_id_on_post_replies.rb
    │   │   ├── 20190410102915_remove_ignore_user_enabled_site_setting.rb
    │   │   ├── 20190410122835_add_missing_uploads_index_to_post_custom_fields.rb
    │   │   ├── 20190411121312_add_title_count_mode_to_user_options.rb
    │   │   ├── 20190411144545_add_reason_to_reviewable_scores.rb
    │   │   ├── 20190412161430_add_created_by_index_to_reviewables.rb
    │   │   ├── 20190414162753_rename_post_notices.rb
    │   │   ├── 20190417135049_migrate_native_app_banner_site_setting.rb
    │   │   ├── 20190417203622_add_review_group_to_category.rb
    │   │   ├── 20190418113814_add_unique_index_to_group_requests.rb
    │   │   ├── 20190423112954_increase_theme_field_name_length.rb
    │   │   ├── 20190424065841_add_post_image_indexes.rb
    │   │   ├── 20190426011148_add_upload_foreign_keys_to_user_profiles.rb
    │   │   ├── 20190426074404_add_missing_user_destroyer_indexes.rb
    │   │   ├── 20190426123026_add_incoming_email_by_user_id_index.rb
    │   │   ├── 20190426123658_add_index_on_user_auth_token_user.rb
    │   │   ├── 20190427211829_add_name_to_user_second_factors.rb
    │   │   ├── 20190430135846_migrate_english_locale.rb
    │   │   ├── 20190502223613_add_bounce_key_index_on_email_logs.rb
    │   │   ├── 20190503180839_remove_like_count_from_post_menu.rb
    │   │   ├── 20190508135348_rename_site_setting_default_topics.rb
    │   │   ├── 20190508141327_create_reviewable_claimed_topics.rb
    │   │   ├── 20190508141824_drop_claimed_by_id.rb
    │   │   ├── 20190513143015_add_theme_id_to_javascript_cache.rb
    │   │   ├── 20190514055014_add_read_notification_index.rb
    │   │   ├── 20190522194332_add_priority_to_post_action_types.rb
    │   │   ├── 20190523093215_add_topic_id_to_user_exports.rb
    │   │   ├── 20190529002752_add_unique_constraint_to_shadow_accounts.rb
    │   │   ├── 20190531044744_add_enable_defer_to_user_options.rb
    │   │   ├── 20190531101648_merge_remove_muted_tags_from_latest_site_settings.rb
    │   │   ├── 20190603134013_change_theme_field_compiler_version.rb
    │   │   ├── 20190621095105_remove_notification_level_from_category_user_indexes.rb
    │   │   ├── 20190630165003_add_enabled_to_themes.rb
    │   │   ├── 20190704133453_create_backup_metadata.rb
    │   │   ├── 20190705173948_renumber_group_visibility_levels.rb
    │   │   ├── 20190711154946_add_emailed_status_to_invite.rb
    │   │   ├── 20190716014949_rename_deprecated_badge_icons.rb
    │   │   ├── 20190716124050_remove_via_email_from_invite.rb
    │   │   ├── 20190716173854_add_secure_to_uploads.rb
    │   │   ├── 20190717133743_migrate_group_list_site_settings.rb
    │   │   ├── 20190724162522_migrate_forwarded_emails_behaviour_site_settings.rb
    │   │   ├── 20190731090219_rename_edit_notification_setting.rb
    │   │   ├── 20190812141433_add_members_visibility_level_to_groups.rb
    │   │   ├── 20190820192341_create_topic_group_table.rb
    │   │   ├── 20190903073730_add_last_used_at_to_api_key.rb
    │   │   ├── 20190904104533_create_user_security_keys.rb
    │   │   ├── 20190908233325_add_secure_identifier_column_to_users.rb
    │   │   ├── 20190908234054_migrate_post_edit_time_limit.rb
    │   │   ├── 20190917100006_add_enabled_index_to_user_security_key.rb
    │   │   ├── 20191007140446_add_user_accuracy_bonus_to_reviewable_scores.rb
    │   │   ├── 20191008124357_add_unique_index_categories_on_slug.rb
    │   │   ├── 20191011131041_migrate_decompressed_file_max_size_mb.rb
    │   │   ├── 20191016124059_fix_category_slugs_index.rb
    │   │   ├── 20191017044811_add_draft_backup_tables.rb
    │   │   ├── 20191022155215_add_index_to_oauth2_user_info.rb
    │   │   ├── 20191022161944_add_index_on_group_to_category_groups.rb
    │   │   ├── 20191030112559_add_index_to_notifications.rb
    │   │   ├── 20191030155530_add_required_tag_group_to_categories.rb
    │   │   ├── 20191031042212_add_owner_to_drafts.rb
    │   │   ├── 20191031052711_add_granted_title_badge_id_to_user_profile.rb
    │   │   ├── 20191101113230_add_revoked_at_to_api_key.rb
    │   │   ├── 20191107025041_add_last_seen_to_category_users.rb
    │   │   ├── 20191107025140_add_index_to_last_seen_at_on_category_users.rb
    │   │   ├── 20191107032231_change_notification_level.rb
    │   │   ├── 20191108000414_add_unique_index_to_drafts.rb
    │   │   ├── 20191113193141_add_target_tag_id_to_tags.rb
    │   │   ├── 20191128222140_add_unique_index_to_developers.rb
    │   │   ├── 20191129144706_drop_unused_google_instagram_auth_tables.rb
    │   │   ├── 20191202202212_add_featured_topic_id_to_user_profiles.rb
    │   │   ├── 20191205100434_create_standalone_bookmarks_table.rb
    │   │   ├── 20191211152404_add_index_to_invites.rb
    │   │   ├── 20191211170000_add_hashed_api_key.rb
    │   │   ├── 20191217035630_populate_topic_id_on_bookmarks.rb
    │   │   ├── 20191219112000_remove_key_from_api_keys.rb
    │   │   ├── 20191220134101_add_distinct_badge_count_to_user_stats.rb
    │   │   ├── 20191230055237_add_access_control_columns_to_upload.rb
    │   │   ├── 20200107161405_add_featured_rank_to_user_badges.rb
    │   │   ├── 20200109130028_update_user_profiles_indexes.rb
    │   │   ├── 20200116092259_add_group_to_custom_emojis.rb
    │   │   ├── 20200116140132_rename_reply_id_column.rb
    │   │   ├── 20200117141138_update_post_reply_indexes.rb
    │   │   ├── 20200117172135_add_trigger_to_sync_post_replies.rb
    │   │   ├── 20200117174646_make_post_reply_id_column_read_only.rb
    │   │   ├── 20200120131338_drop_unused_columns.rb
    │   │   ├── 20200130115859_remove_bounce_score_threshold_deactivate_site_setting.rb
    │   │   ├── 20200203061927_mark_bookmarks_topic_id_not_null.rb
    │   │   ├── 20200227073837_add_reminder_last_sent_at_to_bookmarks.rb
    │   │   ├── 20200302120829_add_theme_modifier_set.rb
    │   │   ├── 20200306060737_add_reminder_set_at_to_bookmarks.rb
    │   │   ├── 20200311135425_clear_approved_users_from_the_review_queue.rb
    │   │   ├── 20200312122846_add_duration_to_topic_timers.rb
    │   │   ├── 20200320193612_back_fill_topic_timer_durations.rb
    │   │   ├── 20200327164420_add_imap_stats_to_group.rb
    │   │   ├── 20200329222246_add_high_priority_column_to_notifications.rb
    │   │   ├── 20200330233427_drop_old_unread_pm_notification_indices.rb
    │   │   ├── 20200401172023_create_published_pages.rb
    │   │   ├── 20200403100259_add_key_hash_to_user_api_key.rb
    │   │   ├── 20200408121312_remove_key_from_user_api_key.rb
    │   │   ├── 20200408121834_add_index_to_user_api_key_on_key_hash.rb
    │   │   ├── 20200409033412_create_bookmarks_from_post_action_bookmarks.rb
    │   │   ├── 20200415140830_drop_automatic_membership_retroactive_from_group.rb
    │   │   ├── 20200417183143_add_created_at_to_badge_user.rb
    │   │   ├── 20200424032633_remove_canonical_email_from_user_emails.rb
    │   │   ├── 20200427222624_add_read_only_to_categories.rb
    │   │   ├── 20200428014005_correct_topic_user_bookmarked_boolean.rb
    │   │   ├── 20200428102014_add_bulk_invite_link_to_invites.rb
    │   │   ├── 20200429045956_remove_bookmarks_with_reminder_post_menu_item.rb
    │   │   ├── 20200429095034_add_topic_thumbnail_information.rb
    │   │   ├── 20200429095035_migrate_image_url_to_image_upload_id.rb
    │   │   ├── 20200430010528_remove_avg_time_from_topics_posts.rb
    │   │   ├── 20200430072846_create_invited_users.rb
    │   │   ├── 20200506044956_migrate_at_desktop_bookmark_reminders.rb
    │   │   ├── 20200507234409_ensure_bookmark_delete_when_reminder_sent_not_null.rb
    │   │   ├── 20200508141209_allow_null_old_email_on_email_change_requests.rb
    │   │   ├── 20200511043818_add_more_flair_columns_to_group.rb
    │   │   ├── 20200512064023_change_draft_sequence_to_bigint.rb
    │   │   ├── 20200513185052_drop_topic_reply_count.rb
    │   │   ├── 20200517140915_fa4_renames.json
    │   │   ├── 20200517140915_update_deprecated_icon_names.rb
    │   │   ├── 20200520001619_remove_fks_from_bookmarks.rb
    │   │   ├── 20200520124359_add_api_key_scopes.rb
    │   │   ├── 20200522204356_add_tag_to_permalink.rb
    │   │   ├── 20200524181959_add_default_list_filter_to_categories.rb
    │   │   ├── 20200525072638_remove_none_tags.rb
    │   │   ├── 20200601111500_remove_image_url_from_post_and_topic.rb
    │   │   ├── 20200601130900_correct_schema_discrepancies.rb
    │   │   ├── 20200602153813_migrate_invite_redeemed_data_to_invited_users.rb
    │   │   ├── 20200610150900_correct_posts_schema.rb
    │   │   ├── 20200611104600_create_missing_badge_indexes.rb
    │   │   ├── 20200617144300_add_public_field_to_published_pages.rb
    │   │   ├── 20200618175923_delete_tracking_state_for_staged_users.rb
    │   │   ├── 20200706202436_rename_category_group_moderation_setting.rb
    │   │   ├── 20200707154522_fix_topic_like_count.rb
    │   │   ├── 20200707183007_add_animated_to_uploads.rb
    │   │   ├── 20200708035330_fix_topic_user_bookmarked_sync_issues.rb
    │   │   ├── 20200708051009_cap_bookmark_name_at_100_characters.rb
    │   │   ├── 20200709032247_allowlist_and_blocklist_site_settings.rb
    │   │   ├── 20200709094846_add_timestamps_to_optimized_images.rb
    │   │   ├── 20200710013237_fix_topic_users_bookmarked_column_that_should_be_false.rb
    │   │   ├── 20200713071305_add_bookmark_name_index.rb
    │   │   ├── 20200714105026_delete_allow_animated_avatars_site_setting.rb
    │   │   ├── 20200714105027_delete_allow_animated_thumbnails_site_setting.rb
    │   │   ├── 20200715030908_remove_unneccessary_bookmark_name_index.rb
    │   │   ├── 20200715044833_add_delete_option_to_bookmarks.rb
    │   │   ├── 20200715045152_remove_bookmarks_delete_when_reminder_sent.rb
    │   │   ├── 20200717193118_create_allowed_pm_users.rb
    │   │   ├── 20200718154308_add_enable_allowed_pm_users_to_user_options.rb
    │   │   ├── 20200724060632_remove_deprecated_allowlist_settings.rb
    │   │   ├── 20200728000854_duplicate_allowed_paths_from_path_whitelist.rb
    │   │   ├── 20200728004302_drop_path_whitelist_from_embeddable_hosts.rb
    │   │   ├── 20200728022830_sync_topic_user_bookmarked_column_with_bookmarks.rb
    │   │   ├── 20200728072038_add_imap_group_id_to_incoming_email.rb
    │   │   ├── 20200730205554_create_group_default_tracking.rb
    │   │   ├── 20200805151752_add_dark_scheme_id_to_user_options.rb
    │   │   ├── 20200805163400_rename_post_image_site_settings.rb
    │   │   ├── 20200810194943_change_selectable_avatars_site_setting.rb
    │   │   ├── 20200810220841_rename_moderators_create_categories_setting.rb
    │   │   ├── 20200811004537_add_verified_column_to_uploads.rb
    │   │   ├── 20200813044955_create_imap_sync_log.rb
    │   │   ├── 20200814081437_add_skip_new_user_tips_to_user_options.rb
    │   │   ├── 20200818084329_update_private_message_on_post_search_data.rb
    │   │   ├── 20200819021210_add_user_selectable_column_to_color_schemes.rb
    │   │   ├── 20200819030609_migrate_user_topic_timers_to_bookmark_reminders.rb
    │   │   ├── 20200819203846_add_color_scheme_id_to_user_options.rb
    │   │   ├── 20200820174703_add_partial_target_id_index_to_reviewables.rb
    │   │   ├── 20200820232017_drop_idx_regular_post_search_data.rb
    │   │   ├── 20200902054531_add_first_unread_pm_a_to_group_user.rb
    │   │   ├── 20200902082203_add_first_unread_pm_at_to_user_stats.rb
    │   │   ├── 20200903045539_add_index_topics_on_timestamps_private.rb
    │   │   ├── 20200910020909_make_imap_sync_log_cols_not_null.rb
    │   │   ├── 20200910051633_change_uploads_verified_to_integer.rb
    │   │   ├── 20200911031738_add_index_to_uploads_verification_status.rb
    │   │   ├── 20200918095554_add_user_api_key_scopes.rb
    │   │   ├── 20201005165544_add_topic_slow_mode_interval.rb
    │   │   ├── 20201006021020_add_requested_by_to_email_change_request.rb
    │   │   ├── 20201007124955_add_digest_attempted_at_to_user_stats.rb
    │   │   ├── 20201008105539_add_allowed_parameters_to_user_api_key_scope.rb
    │   │   ├── 20201009190955_add_last_posted_at_to_topic_user.rb
    │   │   ├── 20201027110546_create_linked_topics.rb
    │   │   ├── 20201102162044_add_auto_update_to_themes.rb
    │   │   ├── 20201103103401_add_not_null_to_ignored_users.rb
    │   │   ├── 20201105190351_move_post_notices_to_json.rb
    │   │   ├── 20201109170951_migrate_github_user_infos.rb
    │   │   ├── 20201110110952_drop_github_user_infos.rb
    │   │   ├── 20201112142419_add_reviewables_force_review.rb
    │   │   ├── 20201116132948_set_themes_auto_update_false.rb
    │   │   ├── 20201117212328_set_category_slug_to_lower.rb
    │   │   ├── 20201210151635_create_do_not_disturb_timings.rb
    │   │   ├── 20201218000000_remove_flag_web_hooks.rb
    │   │   ├── 20201218000001_remove_queued_post_web_hooks.rb
    │   │   ├── 20201223071241_delete_stale_category_search_priorities_from_site_settings.rb
    │   │   ├── 20201229031635_add_user_profile_indexes.rb
    │   │   ├── 20210105165605_add_processed_to_notifications.rb
    │   │   ├── 20210106181418_create_user_notification_schedules.rb
    │   │   ├── 20210107005832_add_imap_missing_column_to_incoming_email.rb
    │   │   ├── 20210111025920_add_reject_reason_to_reviewables.rb
    │   │   ├── 20210119005647_add_created_via_to_incoming_email.rb
    │   │   ├── 20210120125607_rename_english_locale.rb
    │   │   ├── 20210121001720_change_incoming_email_created_at_null.rb
    │   │   ├── 20210125100452_migrate_search_data_after_default_locale_rename.rb
    │   │   ├── 20210126222142_create_shelved_notifications.rb
    │   │   ├── 20210127013637_add_upload_security_log_columns.rb
    │   │   ├── 20210127140730_undo_add_processed_to_notifications.rb
    │   │   ├── 20210128021147_add_allow_unknown_sender_topic_replies_to_group.rb
    │   │   ├── 20210131221311_create_dismissed_topic_users_table.rb
    │   │   ├── 20210201034048_move_category_last_seen_at_to_new_table.rb
    │   │   ├── 20210203031628_add_duration_minutes_to_topic_timer.rb
    │   │   ├── 20210204135429_rename_sso_site_settings.rb
    │   │   ├── 20210204195932_add_replacement_to_watched_words.rb
    │   │   ├── 20210207232853_fix_topic_timer_duration_minutes.rb
    │   │   ├── 20210215231312_fix_group_flair_avatar_upload_security_and_acls.rb
    │   │   ├── 20210218022739_move_new_since_to_new_table_again.rb
    │   │   ├── 20210218144656_add_is_favorite_to_user_badge.rb
    │   │   ├── 20210224162050_remove_emoji_one_from_emoji_set_site_setting.rb
    │   │   ├── 20210302164429_drop_flash_onebox_site_setting.rb
    │   │   ├── 20210308010745_delete_orphan_post_actions.rb
    │   │   ├── 20210308195916_add_unique_index_to_invited_groups.rb
    │   │   ├── 20210311022303_drop_show_filter_by_tag_site_setting.rb
    │   │   ├── 20210311070755_add_image_upload_id_to_badges.rb
    │   │   ├── 20210315173137_set_disable_mailing_list_mode.rb
    │   │   ├── 20210318020143_add_pinned_column_to_bookmarks.rb
    │   │   ├── 20210323142518_update_invites_redemption_count.rb
    │   │   ├── 20210324043327_delete_orphan_post_revisions.rb
    │   │   ├── 20210328233843_fix_bookmarks_with_incorrect_topic_id.rb
    │   │   ├── 20210406060434_fix_topic_user_bookmarked_sync_issues_again.rb
    │   │   ├── 20210409142455_add_token_to_invites.rb
    │   │   ├── 20210414013318_add_category_setting_allow_unlimited_owner_edits_op.rb
    │   │   ├── 20210420015635_add_searchable_to_user_fields.rb
    │   │   ├── 20210426193009_move_approved_queued_posts_topic_and_post_data.rb
    │   │   ├── 20210513125608_remove_length_constrain_from_topic_excerpt.rb
    │   │   ├── 20210517061815_add_dedicated_enable_imap_smtp_columns_for_group.rb
    │   │   ├── 20210525112226_remove_length_constrain_from_topic_link_url.rb
    │   │   ├── 20210526053611_add_error_count_to_push_subscriptions.rb
    │   │   ├── 20210527114834_set_tagging_enabled.rb
    │   │   ├── 20210527131318_create_directory_columns.rb
    │   │   ├── 20210528003603_fix_badge_image_avatar_upload_security_and_acls.rb
    │   │   ├── 20210528144647_migrate_watched_words_from_replace_to_link.rb
    │   │   ├── 20210601002145_rename_trust_level_translations.rb
    │   │   ├── 20210614232334_add_smtp_group_id_to_email_log.rb
    │   │   ├── 20210617183010_add_automatic_column_directory_columns.rb
    │   │   ├── 20210617202227_change_automatic_on_directory_columns_to_bool.rb
    │   │   ├── 20210618135229_reintroduce_type_to_directory_columns.rb
    │   │   ├── 20210621002201_add_columns_to_email_log_to_match_incoming_for_smtp_imap.rb
    │   │   ├── 20210621103509_add_bannered_until.rb
    │   │   ├── 20210621190335_migrate_pending_users_reminder_delay_setting.rb
    │   │   ├── 20210621234939_backfill_email_log_topic_id.rb
    │   │   ├── 20210624023831_remove_highest_seen_post_number_from_topic_users.rb
    │   │   ├── 20210624080131_add_partial_index_pinned_until.rb
    │   │   ├── 20210625203049_add_flair_group_id_to_users.rb
    │   │   ├── 20210628035905_drop_duration_column_from_topic_timers.rb
    │   │   ├── 20210701233509_delete_old_reminder_topic_timers.rb
    │   │   ├── 20210702204007_add_default_auto_close_seconds_to_category.rb
    │   │   ├── 20210706091905_drop_disable_jump_reply_column_from_user_options.rb
    │   │   ├── 20210708035525_add_user_id_index_to_post_revisions.rb
    │   │   ├── 20210708035538_add_post_edits_count_to_user_stats.rb
    │   │   ├── 20210709042135_create_external_upload_stubs.rb
    │   │   ├── 20210709053030_drop_uploads_verified.rb
    │   │   ├── 20210713092503_set_users_flair_group_id.rb
    │   │   ├── 20210720221817_add_draft_count_to_user_stat.rb
    │   │   ├── 20210802131421_remove_post_processed_trigger_option.rb
    │   │   ├── 20210812033033_add_multipart_and_size_columns_to_external_upload_stubs.rb
    │   │   ├── 20210819152920_change_allow_uploaded_avatars.rb
    │   │   ├── 20210824203421_remove_post_timings_summary_index.rb
    │   │   ├── 20210909041448_make_topic_id_nullable_for_bookmarks.rb
    │   │   ├── 20210913032326_add_for_topic_to_bookmarks.rb
    │   │   ├── 20210914011037_change_uploads_filesize_to_bigint.rb
    │   │   ├── 20210914152002_update_value_on_theme_setting_for_upload_type.rb
    │   │   ├── 20210915142958_add_pending_posts_count_to_user_stats.rb
    │   │   ├── 20210915215952_mark_reminder_type_as_readonly_for_bookmarks.rb
    │   │   ├── 20210915222124_drop_reminder_type_index_for_bookmarks.rb
    │   │   ├── 20210920044353_add_default_calendar_to_user_options.rb
    │   │   ├── 20210922064213_alter_bumped_at_indexes_on_topics.rb
    │   │   ├── 20210928161912_migrate_deprecated_html_setting_type.rb
    │   │   ├── 20210929215543_add_token_hash_to_email_token.rb
    │   │   ├── 20211005163152_add_scope_to_email_token.rb
    │   │   ├── 20211018234219_remove_enable_experimental_image_uploader_site_setting.rb
    │   │   ├── 20211019092048_remove_crawl_images_site_setting.rb
    │   │   ├── 20211019152356_populate_pending_posts_count_column.rb
    │   │   ├── 20211106085527_create_user_associated_groups.rb
    │   │   ├── 20211106085605_create_group_associated_groups.rb
    │   │   ├── 20211116225901_add_description_to_tags.rb
    │   │   ├── 20211123033311_reset_first_unread_pm_at_on_user_stat.rb
    │   │   ├── 20211123144714_add_recent_searches.rb
    │   │   ├── 20211124161346_queue_internal_onebox_rebake.rb
    │   │   ├── 20211201221028_migrate_email_to_normalized_email.rb
    │   │   ├── 20211206160211_create_index_on_email_tokens_token_hash.rb
    │   │   ├── 20211206160212_drop_token_from_email_tokens.rb
    │   │   ├── 20211207130646_add_domain_to_invites.rb
    │   │   ├── 20211213060445_email_tokens_token_to_nullable.rb
    │   │   ├── 20211216191224_remove_advanced_editor_preview_site_setting.rb
    │   │   ├── 20211220023034_remove_experimental_backup_uploader_setting.rb
    │   │   ├── 20211221164540_remove_limit_for_fancy_title_in_topics.rb
    │   │   ├── 20211224010204_drop_old_bookmark_columns.rb
    │   │   ├── 20211224011511_delete_experimental_composer_upload_setting.rb
    │   │   ├── 20211224111749_not_null_notification_level_in_category_users.rb
    │   │   ├── 20220105024605_add_trigger_for_polymorphic_bookmark_columns_to_sync_data.rb
    │   │   ├── 20220118065658_add_constraints_to_user_stat.rb
    │   │   ├── 20220124003259_add_email_from_alias_to_groups.rb
    │   │   ├── 20220125052845_fix_topic_like_count_including_whispers.rb
    │   │   ├── 20220126052157_change_segment_cjk_site_setting.rb
    │   │   ├── 20220130192155_set_use_email_for_username_and_name_suggestions_on_existing_sites.rb
    │   │   ├── 20220202223955_migrate_selectable_avatars_enabled.rb
    │   │   ├── 20220202225716_add_external_id_to_topics.rb
    │   │   ├── 20220209210449_add_bookmark_auto_delete_preference_to_user_option.rb
    │   │   ├── 20220214224506_reset_custom_emoji_post_bakes_version_secure_fix.rb
    │   │   ├── 20220214233625_add_bounce_error_code_to_email_log.rb
    │   │   ├── 20220215015538_drop_user_stat_count_constraints.rb
    │   │   ├── 20220220234155_conform_bounce_error_code.rb
    │   │   ├── 20220302163246_update_avatar_service_domain.rb
    │   │   ├── 20220302171443_rebake_old_avatar_service_urls.rb
    │   │   ├── 20220304162250_enable_unaccent_extension.rb
    │   │   ├── 20220308201942_create_upload_references.rb
    │   │   ├── 20220309132719_copy_post_uploads_to_upload_references.rb
    │   │   ├── 20220309132720_copy_post_uploads_to_upload_references_for_sync.rb
    │   │   ├── 20220316150247_reset_bookmarks_reminder_last_sent_at.rb
    │   │   ├── 20220322024216_add_bookmark_polymorphic_columns.rb
    │   │   ├── 20220323141645_remove_polling_site_settings.rb
    │   │   ├── 20220325064954_make_some_bookmark_columns_nullable.rb
    │   │   ├── 20220330160740_cleanup_selectable_avatars_data.rb
    │   │   ├── 20220330160747_copy_site_settings_uploads_to_upload_references.rb
    │   │   ├── 20220330160751_copy_badges_uploads_to_upload_references.rb
    │   │   ├── 20220330160757_copy_user_exports_uploads_to_upload_references.rb
    │   │   ├── 20220330164740_copy_theme_fields_uploads_to_upload_references.rb
    │   │   ├── 20220331204447_create_sitemaps_table.rb
    │   │   ├── 20220401130745_create_category_required_tag_groups.rb
    │   │   ├── 20220401140745_drop_category_required_tag_group_columns.rb
    │   │   ├── 20220404195635_copy_categories_uploads_to_upload_references.rb
    │   │   ├── 20220404201949_copy_custom_emojis_uploads_to_upload_references.rb
    │   │   ├── 20220404203356_copy_user_profiles_uploads_to_upload_references.rb
    │   │   ├── 20220404204439_copy_user_avatars_uploads_to_upload_references.rb
    │   │   ├── 20220404212716_copy_theme_settings_uploads_to_upload_references.rb
    │   │   ├── 20220407195246_remove_category_required_tag_groups_without_tag_groups.rb
    │   │   ├── 20220428025825_add_enable_experimental_sidebar_to_user_options.rb
    │   │   ├── 20220428094026_create_post_hotlinked_media.rb
    │   │   ├── 20220428094027_fix_post_hotlinked_media_index.rb
    │   │   ├── 20220429164301_delete_hotlinked_image_custom_fields.rb
    │   │   ├── 20220505133851_migrate_custom_group_deletion_logs.rb
    │   │   ├── 20220505191131_add_last_seen_reviewable_id_to_user.rb
    │   │   ├── 20220506221447_set_pm_tags_allowed_for_groups_default.rb
    │   │   ├── 20220510131525_remove_allow_staff_to_tag_pms_site_setting.rb
    │   │   ├── 20220512011522_backfill_polymorphic_bookmarks_and_make_default.rb
    │   │   ├── 20220512011531_backfill_polymorphic_bookmarks.rb
    │   │   ├── 20220519190829_create_user_statuses.rb
    │   │   ├── 20220526203356_copy_user_uploads_to_upload_references.rb
    │   │   ├── 20220606061813_add_smtp_transaction_response_to_email_logs.rb
    │   │   ├── 20220607150432_disallow_null_emoji_on_user_status.rb
    │   │   ├── 20220617151846_rename_default_categories_regular_setting.rb
    │   │   ├── 20220621164914_drop_flair_url_from_groups.rb
    │   │   ├── 20220628031850_create_sidebar_section_links.rb
    │   │   ├── 20220712040959_add_case_sensitive_to_watched_words.rb
    │   │   ├── 20220726164831_fix_delete_rejected_email_after_days_site_setting.rb
    │   │   ├── 20220727040437_add_topic_timers_index.rb
    │   │   ├── 20220801044610_add_outbound_message_id_to_post.rb
    │   │   ├── 20220811170600_reset_flair_group_id_if_not_group_member.rb
    │   │   ├── 20220818171849_move_tl_user_history_to_previous_and_new_value.rb
    │   │   ├── 20220825005115_backfill_outbound_message_id.rb
    │   │   ├── 20220825054405_fill_personal_message_enabled_groups_based_on_deprecated_settings.rb
    │   │   ├── 20220915132547_add_dominant_color_to_uploads.rb
    │   │   ├── 20220923212549_add_seen_popups_to_user_options.rb
    │   │   ├── 20220927065328_set_secure_uploads_settings_based_on_secure_media_equivalent.rb
    │   │   ├── 20220927171707_disable_allow_uncategorized_new_sites.rb
    │   │   ├── 20221004122343_add_dark_mode_logo_to_categories.rb
    │   │   ├── 20221013045158_add_sidebar_list_destination_to_user_option.rb
    │   │   ├── 20221017223309_fix_general_category_id.rb
    │   │   ├── 20221018100550_add_source_map_to_javascript_cache.rb
    │   │   ├── 20221026035440_security_log_out_invite_redemption_invited_users.rb
    │   │   ├── 20221101140632_rename_onboarding_popups_site_setting.rb
    │   │   ├── 20221101181505_hide_all_user_tips_for_existent_users.rb
    │   │   ├── 20221103051248_remove_invalid_topic_allowed_users_from_invites.rb
    │   │   ├── 20221108032233_drop_old_bookmark_columns_v2.rb
    │   │   ├── 20221110175456_populate_default_composer_category.rb
    │   │   ├── 20221114215902_hide_user_tips_3_to_5_for_existing_users.rb
    │   │   ├── 20221125001635_add_bcc_addresses_to_email_log.rb
    │   │   ├── 20221125173217_remove_enable_whispers_site_setting.rb
    │   │   ├── 20221205225450_migrate_sidebar_site_settings.rb
    │   │   ├── 20221211142629_remove_updated_translation_overrides.rb
    │   │   ├── 20221212234948_drop_topic_allowed_users_backup_nov_2022.rb
    │   │   ├── 20230103004613_make_experimental_hashtag_feature_default_for_new_sites.rb
    │   │   ├── 20230104054425_rename_rate_limit_search_anon.rb
    │   │   ├── 20230104054426_delete_old_rate_limit_search_anon.rb
    │   │   ├── 20230105153520_trigger_post_rebake_local_onebox_xss.rb
    │   │   ├── 20230111223803_delete_misconfigured_embeddable_hosts.rb
    │   │   ├── 20230113002617_reindex_invalid_indexes.rb
    │   │   ├── 20230115233416_create_sidebar_sections.rb
    │   │   ├── 20230117002110_create_sidebar_url.rb
    │   │   ├── 20230117143451_drop_invalid_drafts.rb
    │   │   ├── 20230118020114_add_public_topic_count_to_tags.rb
    │   │   ├── 20230118042740_add_sidebar_section_id_to_sidebar_section_links.rb
    │   │   ├── 20230119000943_add_staff_topic_count_to_tags.rb
    │   │   ├── 20230119024157_remove_topic_count_from_tags.rb
    │   │   ├── 20230119091939_drop_orphaned_reviewable_flagged_posts.rb
    │   │   ├── 20230119094939_remove_wildcard_from_email_domain_site_settings.rb
    │   │   ├── 20230127173249_truncate_user_status_to_100_characters.rb
    │   │   ├── 20230201192925_add_trigram_indexes_to_users.rb
    │   │   ├── 20230202021414_remove_enable_new_user_profile_nav_groups_site_settings.rb
    │   │   ├── 20230202173641_create_form_templates.rb
    │   │   ├── 20230202204937_add_index_to_posts_where_not_deleted_or_empty.rb
    │   │   ├── 20230206033907_add_icon_to_sidebar_urls.rb
    │   │   ├── 20230207042719_add_limits_to_sidebar_sections_and_sidebar_urls.rb
    │   │   ├── 20230207093514_create_category_settings.rb
    │   │   ├── 20230208020404_populate_category_settings.rb
    │   │   ├── 20230209222225_add_linkable_index_to_sidebar_section_links.rb
    │   │   ├── 20230213234415_create_category_form_templates.rb
    │   │   ├── 20230214044350_add_public_to_sidebar_sections.rb
    │   │   ├── 20230224193734_create_theme_svg_sprite.rb
    │   │   ├── 20230224225129_backfill_svg_sprites.rb
    │   │   ├── 20230228105851_drop_badge_granted_title_column.rb
    │   │   ├── 20230301071240_add_auto_bump_cooldown_days_to_category_settings.rb
    │   │   ├── 20230303015952_add_external_to_sidebar_urls.rb
    │   │   ├── 20230307051200_add_position_to_sidebar_section_links.rb
    │   │   ├── 20230308042434_backfill_auto_bump_cooldown_days_category_setting.rb
    │   │   ├── 20230328034956_add_sidebar_section_id_index_to_sidebar_section_link.rb
    │   │   ├── 20230403063113_drop_idx_post_custom_fields_akismet.rb
    │   │   ├── 20230403094936_change_google_analytics_default.rb
    │   │   ├── 20230404064728_system_user_for_public_sections.rb
    │   │   ├── 20230405121453_add_password_algorithm_to_users.rb
    │   │   ├── 20230405121454_update_password_algorithm_post_deploy.rb
    │   │   ├── 20230411031428_add_segment_to_sidebar_urls.rb
    │   │   ├── 20230411031520_add_section_type_to_sidebar_sections.rb
    │   │   ├── 20230411032053_insert_community_to_sidebar_sections.rb
    │   │   ├── 20230413121500_add_discourse_connect_allowed_redirect_domains_to_site_settings.rb
    │   │   ├── 20230419001801_remove_enable_custom_sidebar_sections_setting.rb
    │   │   ├── 20230501022508_rename_notify_about_flags_after_site_setting.rb
    │   │   ├── 20230505113906_hide_user_tips_for_existing_users.rb
    │   │   ├── 20230509214723_separate_trusted_users_can_edit_others_site_setting.rb
    │   │   ├── 20230515103515_create_watched_word_groups.rb
    │   │   ├── 20230515131111_add_watched_word_group_id_to_watched_words.rb
    │   │   ├── 20230523073109_delete_old_personal_message_settings.rb
    │   │   ├── 20230528134326_enable_experimental_hashtag_autocomplete_true_for_all_sites.rb
    │   │   ├── 20230602034711_rename_everything_to_topics_link.rb
    │   │   ├── 20230608163854_create_summary_sections_table.rb
    │   │   ├── 20230614011312_rename_default_sidebar_categories_setting.rb
    │   │   ├── 20230614011419_rename_default_sidebar_tags_setting.rb
    │   │   ├── 20230618041001_add_sidebar_link_to_filtered_list_to_user_option.rb
    │   │   ├── 20230618041123_add_sidebar_show_count_of_new_items_to_user_option.rb
    │   │   ├── 20230620050614_remove_default_sidebar_list_destination_setting.rb
    │   │   ├── 20230627060104_remove_new_edit_sidebar_categories_tags_interface_groups_site_setting.rb
    │   │   ├── 20230628062236_add_watched_precedence_over_muted_to_user_options.rb
    │   │   ├── 20230703035052_add_status_to_translation_overrides.rb
    │   │   ├── 20230707031122_add_watched_precedence_over_muted_index_to_user_options.rb
    │   │   ├── 20230708011310_fix_reviewable_queued_posts_target_created_by_id.rb
    │   │   ├── 20230712011946_add_topic_id_notification_level_index_to_topic_users.rb
    │   │   ├── 20230712013248_add_category_id_notification_level_index_to_category_users.rb
    │   │   ├── 20230727015030_add_index_topic_id_created_at_on_posts.rb
    │   │   ├── 20230727015254_change_category_setting_num_auto_bump_daily_default.rb
    │   │   ├── 20230728055813_delete_orphaned_draft_upload_references.rb
    │   │   ├── 20230807033021_add_group_to_web_hook_event_type.rb
    │   │   ├── 20230807040058_move_web_hooks_to_new_event_ids.rb
    │   │   ├── 20230816211907_increase_size_of_sidebar_urls.rb
    │   │   ├── 20230817174049_ensure_javascript_cache_is_unique_per_theme.rb
    │   │   ├── 20230823095931_add_limit_to_user_second_factor_name.rb
    │   │   ├── 20230823100627_add_limit_to_user_security_key_name.rb
    │   │   ├── 20230831153649_delete_unused_site_settings.rb
    │   │   ├── 20230906030920_change_auto_silence_fast_typers_setting_to_enum_type.rb
    │   │   ├── 20230907225057_create_theme_settings_migrations.rb
    │   │   ├── 20230910021213_update_category_setting_approval_values.rb
    │   │   ├── 20230913194832_rename_revoke_api_keys_settings.rb
    │   │   ├── 20230926165821_drop_post_uploads_table.rb
    │   │   ├── 20231004020328_migrate_legacy_navigation_menu_site_setting.rb
    │   │   ├── 20231017044708_remove_enable_experimental_hashtag_autocomplete_setting.rb
    │   │   ├── 20231018225833_add_dark_mode_background_to_categories.rb
    │   │   ├── 20231024034031_migrate_tl_to_group_settings_anonymous_posting_min_tl.rb
    │   │   ├── 20231103060018_fix_invalid_topic_user_bookmarked_data.rb
    │   │   ├── 20231107014123_migrate_shared_drafts_min_trust_level_to_group.rb
    │   │   ├── 20231107055903_migrate_min_trust_level_for_here_mention_to_group.rb
    │   │   ├── 20231111201253_rename_experimental_passkeys_site_setting.rb
    │   │   ├── 20231117182638_fill_approve_unless_allowed_groups_based_on_deprecated_settings.rb
    │   │   ├── 20231120190818_trigger_post_rebake_category_style_quotes.rb
    │   │   ├── 20231122043756_increase_size_of_tag_descriptions.rb
    │   │   ├── 20231122152552_fill_new_topics_unless_allowed_groups_based_on_deprecated_settings.rb
    │   │   ├── 20231122212122_fill_email_in_allowed_groups_based_on_deprecated_settings.rb
    │   │   ├── 20231127165331_trigger_auto_linking_for_videos_since_placeholder.rb
    │   │   ├── 20231205013029_fill_uploaded_avatars_allowed_groups_based_on_deprecated_settings.rb
    │   │   ├── 20231206041353_fill_create_topic_allowed_groups_based_on_deprecated_settings.rb
    │   │   ├── 20231207011238_fill_edit_wiki_post_allowed_groups_based_on_deprecated_settings.rb
    │   │   ├── 20231212044856_fill_edit_post_allowed_groups_based_on_deprecated_settings.rb
    │   │   ├── 20231213060822_fill_flag_post_allowed_groups_based_on_deprecated_settings.rb
    │   │   ├── 20231213103248_fill_delete_all_posts_and_topics_allowed_groups_based_on_deprecated_settings.rb
    │   │   ├── 20231214020814_fill_user_card_background_allowed_groups_based_on_deprecated_settings.rb
    │   │   ├── 20231214023728_fill_invite_allowed_groups_based_on_deprecated_settings.rb
    │   │   ├── 20231214031754_fill_ignore_allowed_groups_based_on_deprecated_settings.rb
    │   │   ├── 20231214061615_fill_create_tag_allowed_groups_based_on_deprecated_settings.rb
    │   │   ├── 20231218081901_fill_send_email_messages_allowed_groups_based_on_deprecated_settings.rb
    │   │   ├── 20231222030024_fill_self_wiki_allowed_groups_based_on_deprecated_settings.rb
    │   │   ├── 20240104155715_add_embed_content_cache_to_topic_embed.rb
    │   │   ├── 20240108022138_change_enable_admin_sidebar_to_group_post_migration.rb
    │   │   ├── 20240110040813_fill_skip_review_media_groups_based_on_deprecated_setting.rb
    │   │   ├── 20240112021335_set_max_clean_orphan_uploads_grace_period_hours.rb
    │   │   ├── 20240112043325_fill_embedded_media_post_allowed_groups_based_on_deprecated_setting.rb
    │   │   ├── 20240112073149_fill_tag_topic_allowed_groups_based_on_deprecated_settings.rb
    │   │   ├── 20240116043702_create_topic_hot_scores.rb
    │   │   ├── 20240116182229_migrate_lazy_load_categories_to_groups.rb
    │   │   ├── 20240117090801_fill_post_links_allowed_groups_based_on_deprecated_settings.rb
    │   │   ├── 20240117093148_fill_user_api_key_allowed_groups_based_on_deprecated_settings.rb
    │   │   ├── 20240201170412_fix_tag_topic_allowed_groups_setting.rb
    │   │   ├── 20240202032242_add_json_value_to_theme_settings.rb
    │   │   ├── 20240202052058_drop_badge_image_column.rb
    │   │   ├── 20240202204030_fix_here_mention_allowed_groups_setting.rb
    │   │   ├── 20240204204532_add_user_to_permalink.rb
    │   │   ├── 20240212034010_drop_deprecated_columns.rb
    │   │   ├── 20240216073624_fill_profile_background_allowed_groups_based_on_deprecated_setting.rb
    │   │   ├── 20240219012001_remove_enable_experimental_admin_ui_groups_site_settings.rb
    │   │   ├── 20240223052820_create_problem_check_trackers.rb
    │   │   ├── 20240301033753_delete_old_bookmark_reminder_setting.rb
    │   │   ├── 20240304030429_topic_id_on_incoming_email_index.rb
    │   │   ├── 20240306063428_add_indexes_to_notifications.rb
    │   │   ├── 20240307231053_add_topics_unread_when_closed_to_user_options.rb
    │   │   ├── 20240311015942_create_admin_notices.rb
    │   │   ├── 20240326200232_add_custom_homepage_theme_modifiers.rb
    │   │   ├── 20240327000440_replace_post_reply_index.rb
    │   │   ├── 20240327043323_disable_admin_sidebar_for_existing_sites.rb
    │   │   ├── 20240401054228_add_details_to_problem_check_trackers.rb
    │   │   ├── 20240404034232_remove_experimental_objects_type_for_theme_settings.rb
    │   │   ├── 20240422015830_remove_admin_guide_tooltip_from_seen_popups.rb
    │   │   ├── 20240423013808_add_visibility_reason_id_to_topics.rb
    │   │   ├── 20240423054323_create_flags.rb
    │   │   ├── 20240430051551_add_user_id_to_embeddable_hosts.rb
    │   │   ├── 20240430052017_create_embeddable_host_tags.rb
    │   │   ├── 20240430185434_fix_watched_words_without_action.rb
    │   │   ├── 20240506035024_clear_orphaned_draft_upload_references.rb
    │   │   ├── 20240506125839_add_html_to_watched_words.rb
    │   │   ├── 20240510073417_increase_external_avatar_url_limit.rb
    │   │   ├── 20240517014119_add_target_to_problem_check_trackers.rb
    │   │   ├── 20240517051933_disambiguate_problem_check_tracker_uniqueness.rb
    │   │   ├── 20240520060901_add_requirement_to_user_fields.rb
    │   │   ├── 20240527015009_add_topic_view_stats.rb
    │   │   ├── 20240527055057_add_score_type_to_flags.rb
    │   │   ├── 20240531053226_create_user_required_fields_version.rb
    │   │   ├── 20240603234529_create_user_passwords.rb
    │   │   ├── 20240606003822_reorder_flags.rb
    │   │   ├── 20240610150449_limit_tag_group_name_length.rb
    │   │   ├── 20240612063735_add_field_type_enum_to_user_fields.rb
    │   │   ├── 20240612073116_swap_field_type_with_field_type_enum_on_user_fields.rb
    │   │   ├── 20240619123052_create_web_hook_events_daily_aggregates.rb
    │   │   ├── 20240620024938_add_back_field_type_enum_to_user_fields.rb
    │   │   ├── 20240627125112_remove_invalid_csp_script_src_site_setting_values.rb
    │   │   ├── 20240627155730_create_redelivering_webhook_events.rb
    │   │   ├── 20240705153533_add_user_agent_to_search_logs.rb
    │   │   ├── 20240709010639_remove_cross_origin_unsafe_none_referrers_setting.rb
    │   │   ├── 20240709015048_remove_logging_provider_site_setting.rb
    │   │   ├── 20240711123755_drop_compiled_js_from_translation_overrides.rb
    │   │   ├── 20240712050324_default_github_onebox_token.rb
    │   │   ├── 20240714231226_duplicate_flags_custom_type_to_require_message.rb
    │   │   ├── 20240714231516_drop_custom_type_from_flags.rb
    │   │   ├── 20240715073605_add_smtp_ssl_mode_to_groups.rb
    │   │   ├── 20240717053710_drop_groups_smtp_ssl.rb
    │   │   ├── 20240717171840_rename_chat_preferred_mobile_index_setting.rb
    │   │   ├── 20240722025822_add_user_id_to_custom_emojis.rb
    │   │   ├── 20240723030506_add_post_id_index_to_user_histories.rb
    │   │   ├── 20240724021732_add_login_method_to_user_auth_tokens.rb
    │   │   ├── 20240725042522_remove_experimental_flags_admin_page_site_setting.rb
    │   │   ├── 20240729084803_create_user_api_key_clients.rb
    │   │   ├── 20240731143458_remove_chat_default_channel_id.rb
    │   │   ├── 20240731190511_update_invalid_allowed_iframe_values.rb
    │   │   ├── 20240807024301_update_delete_merged_stub_topics_after_days_setting.rb
    │   │   ├── 20240815234500_remove_glimmer_header_mode_setting.rb
    │   │   ├── 20240818113758_remove_all_but_most_recent_user_password.rb
    │   │   ├── 20240819130737_update_unique_index_on_user_passwords.rb
    │   │   ├── 20240820123401_alter_notifications_id_sequence_to_bigint.rb
    │   │   ├── 20240820123402_add_big_int_notifications_id.rb
    │   │   ├── 20240820123403_copy_notifications_id_values.rb
    │   │   ├── 20240820123404_copy_notifications_id_indexes.rb
    │   │   ├── 20240820123405_swap_big_int_notifications_id.rb
    │   │   ├── 20240820123406_drop_old_notification_id_indexes.rb
    │   │   ├── 20240826121501_add_big_int_shelved_notifications_notification_id.rb
    │   │   ├── 20240826121502_copy_shelved_notifications_notification_id_values.rb
    │   │   ├── 20240826121503_copy_shelved_notifications_notification_id_indexes.rb
    │   │   ├── 20240826121504_swap_big_int_shelved_notifications_notification_id.rb
    │   │   ├── 20240826121505_add_big_int_user_badges_notification_id.rb
    │   │   ├── 20240826121506_copy_user_badges_notification_id_values.rb
    │   │   ├── 20240826121507_swap_big_int_user_badges_notification_id.rb
    │   │   ├── 20240827063715_add_new_seen_notification_id_to_users.rb
    │   │   ├── 20240827063908_copy_users_seen_notification_id_values.rb
    │   │   ├── 20240827064121_swap_seen_notification_id_with_seen_notification_id_on_users.rb
    │   │   ├── 20240828191047_create_category_moderation_groups.rb
    │   │   ├── 20240829083823_ensure_unique_tag_user_notification_level.rb
    │   │   ├── 20240829140226_drop_old_notification_id_columns.rb
    │   │   ├── 20240903024157_remove_user_passwords_indexes.rb
    │   │   ├── 20240903024211_add_trigger_to_users_to_sync_user_passwords.rb
    │   │   ├── 20240903024311_backfill_user_passwords_from_users.rb
    │   │   ├── 20240906233304_remove_limits_from_form_templates.rb
    │   │   ├── 20240909121255_rebake_user_onebox.rb
    │   │   ├── 20240910090759_make_password_columns_from_users_read_only.rb
    │   │   ├── 20240912061702_drop_user_search_similar_results_site_setting.rb
    │   │   ├── 20240912061806_drop_trgm_indexes_on_users.rb
    │   │   ├── 20240912210450_delete_anonymous_users_from_directory_items.rb
    │   │   ├── 20240912212253_increase_external_avatar_url_limit_to2000.rb
    │   │   ├── 20241011033602_add_post_badges_to_theme_modifiers.rb
    │   │   ├── 20241011054348_fix_unique_constraint_on_problem_check_trackers.rb
    │   │   ├── 20241011080517_drop_password_columns_from_users.rb
    │   │   ├── 20241018031851_add_default_value_to_problem_check_trackers_target.rb
    │   │   ├── 20241022022326_remove_nulls_not_distinct_from_problem_check_trackers.rb
    │   │   ├── 20241023041126_clear_duplicate_admin_notices.rb
    │   │   ├── 20241024093027_remove_category_experts_web_hook_event_types.rb
    │   │   ├── 20241024102733_remove_experimental_redesigned_about_page_groups_setting.rb
    │   │   ├── 20241025045928_add_invites_link_to_sidebar.rb
    │   │   ├── 20241028021339_add_smart_list_user_preference.rb
    │   │   ├── 20241030210727_split_hide_profile_and_presence.rb
    │   │   ├── 20241101141701_alter_bookmarks_ids_to_bigint.rb
    │   │   ├── 20241104132424_rename_full_page_site_setting.rb
    │   │   ├── 20241108154026_create_moved_posts.rb
    │   │   ├── 20241112124552_create_user_api_key_client_scopes.rb
    │   │   ├── 20241112145744_anonymize_normalized_email_column.rb
    │   │   ├── 20241121000131_add_post_header_to_badge.rb
    │   │   ├── 20241127034553_add_potentially_illegal_to_reviewables.rb
    │   │   ├── 20241127072350_remap_fa5_icon_names_to_fa6.rb
    │   │   ├── 20241205035402_change_default_for_badges_icon.rb
    │   │   ├── 20241205162117_add_columns_to_moved_posts.rb
    │   │   ├── 20241206002425_drop_experimental_topics_filter_site_setting.rb
    │   │   ├── 20241206121401_delete_categories_only_optimized_site_setting.rb
    │   │   ├── 20241211030039_remove_glimmer_post_menu_groups_setting.rb
    │   │   ├── 20241211222608_add_full_move_to_moved_post_records.rb
    │   │   ├── 20241224191732_change_full_name_required_setting.rb
    │   │   ├── 20250115031117_remove_user_profile_from_overridden_robots.rb
    │   │   ├── 20250116024516_update_font_site_settings_type.rb
    │   │   ├── 20250117065027_set_default_font_for_existing_sites.rb
    │   │   ├── 20250119222805_fill_fast_typing_threshold_based_on_deprecated_setting.rb
    │   │   ├── 20250120115539_add_dark_hex_to_color_scheme_color.rb
    │   │   ├── 20250121180125_create_theme_color_scheme.rb
    │   │   ├── 20250124062108_remap_deprecated_icon_names_for_seeded_badges.rb
    │   │   ├── 20250130205841_fix_incorrect_fast_typing_threshold_setting.rb
    │   │   ├── 20250205174221_add_serialize_topic_op_likes_data_theme_modifier.rb
    │   │   ├── 20250206010037_remove_glimmer_post_menu_mode_setting.rb
    │   │   ├── 20250212044021_rename_allow_all_users_to_flag_illegal_content_site_setting.rb
    │   │   ├── 20250212045125_add_type_source_to_reviewable.rb
    │   │   ├── 20250217003916_x_summary_large_image_based_on_deprecated_setting.rb
    │   │   ├── 20250220045740_add_context_to_reviewable_scores.rb
    │   │   ├── 20250225131523_add_style_type_to_categories.rb
    │   │   ├── 20250304034313_add_composer_columns_to_post_stat.rb
    │   │   ├── 20250304054720_add_scope_mode_to_api_keys.rb
    │   │   ├── 20250307034117_remove_old_admin_sidebar_enabled_groups_site_settings.rb
    │   │   ├── 20250311041851_add_index_to_post_stat_composer_columns.rb
    │   │   ├── 20250311073009_enable_welcome_banner_new_sites.rb
    │   │   ├── 20250313000000_increase_uploads_origin_column_length.rb
    │   │   ├── 20250313044812_remove_unique_constraint_from_tag_users_indexes.rb
    │   │   ├── 20250313045010_add_index_to_users_ip_address.rb
    │   │   ├── 20250314102616_rename_allow_anonymous_posting_to_allow_anonymous_mode.rb
    │   │   ├── 20250314110738_rename_allow_anonymous_likes_to_allow_likes_in_anonymous_mode.rb
    │   │   ├── 20250319024514_add_automatic_to_reviewable_claimed_topic.rb
    │   │   ├── 20250321143553_add_serialize_topic_is_hot_theme_modifier.rb
    │   │   ├── 20250407040934_remove_full_page_login_problem_check_trackers.rb
    │   │   ├── 20250407042814_delete_full_page_login_setting.rb
    │   │   ├── 20250409035119_add_theme_site_setting_table.rb
    │   │   ├── 20250415224422_update_allowed_iframes_codepen_stricter_default.rb
    │   │   ├── 20250416012407_remove_experimental_admin_search_enabled_groups_setting.rb
    │   │   ├── 20250417043438_remove_old_reviewable_claimed_topics.rb
    │   │   ├── 20250421074012_create_category_localization_table.rb
    │   │   ├── 20250424054312_create_topic_localizations.rb
    │   │   ├── 20250424054313_create_post_localizations.rb
    │   │   ├── 20250429083152_add_locale_to_post.rb
    │   │   ├── 20250505050610_optimized_image_format_index.rb
    │   │   ├── 20250507013646_remove_theme_download_screenshots_site_settings.rb
    │   │   ├── 20250507110205_add_locale_to_topic.rb
    │   │   ├── 20250521053324_add_excerpt_to_topic_localization.rb
    │   │   ├── 20250526164734_copy_translation_target_languages_to_content_localization_supported_locales.rb
    │   │   ├── 20250527101351_remove_max_similar_results_site_setting.rb
    │   │   ├── 20250528030212_add_locale_to_categories.rb
    │   │   ├── 20250603051201_create_reviewable_notes.rb
    │   │   ├── 20250606170129_create_optimized_videos.rb
    │   │   ├── 20250609115711_remove_composer_tips_site_settings.rb
    │   │   ├── 20250614020437_add_description_to_invites.rb
    │   │   ├── 20250617064103_migrate_experimental_system_themes_site_setting_to_enum.rb
    │   │   ├── 20250617085536_remove_experimental_from_content_localization_settings.rb
    │   │   ├── 20250619140551_add_user_index_to_incoming_links.rb
    │   │   ├── 20250619140739_add_index_to_posts.rb
    │   │   ├── 20250619140809_add_index_to_post_actions.rb
    │   │   ├── 20250619140858_add_jsonb_indexes_to_notifications.rb
    │   │   ├── 20250620025548_add_index_to_post_actions_on_post_action_type_id.rb
    │   │   ├── 20250620033435_add_index_reviewable_scores_on_reviewable_score_type.rb
    │   │   ├── 20250626090725_add_my_messages_link_to_sidebar.rb
    │   │   ├── 20250627022651_enable_horizon_for_existing_sites.rb
    │   │   ├── 20250702133530_fix_capitalisation_in_sidebar_urls.rb
    │   │   ├── 20250704072726_nullify_blank_locales.rb
    │   │   ├── 20250707084732_limit_category_localization_descriptions.rb
    │   │   ├── 20250714010001_backfill_themeable_site_settings.rb
    │   │   ├── 20250714030525_remove_experimental_system_themes_site_setting.rb
    │   │   ├── 20250715094001_update_javascript_cache.rb
    │   │   ├── 20250718035714_enable_rich_editor_for_all.rb
    │   │   ├── 20250718043910_add_composition_mode_user_option.rb
    │   │   ├── 20250721043317_add_filter_link_to_sidebar.rb
    │   │   ├── 20250722074045_add_dark_color_scheme_id_to_themes.rb
    │   │   ├── 20250723122719_add_interface_color_mode_to_user_options.rb
    │   │   ├── 20250724012518_drop_horizon_setting_field.rb
    │   │   ├── 20250729044139_fill_in_dark_color_scheme_id.rb
    │   │   ├── 20250804005557_enable_markdown_monospace_font_user_option.rb
    │   │   ├── 20250808064354_remove_experimental_sidebar_messages_count_enabled_groups_site_setting.rb
    │   │   ├── 20250811070948_add_impersonated_user_fields_to_user_auth_token.rb
    │   │   ├── 20250818063631_migrate_color_schemes_base_scheme_id_from_string_to_int.rb
    │   │   ├── 20250825094818_delete_use_polymorphic_bookmarks_setting.rb
    │   │   ├── 20250826012802_add_type_to_topic_timer.rb
    │   │   ├── 20250827065400_migrate_content_localization_anon_language_switcher_to_enum.rb
    │   │   ├── 20250828011415_add_index_created_at_on_web_hook_events.rb
    │   │   ├── 20250902014817_add_timerable_id_to_topic_timer.rb
    │   │   ├── 20250902020536_add_show_on_signup_to_user_fields.rb
    │   │   ├── 20250902072941_sync_timerable_id_topic_id.rb
    │   │   ├── 20250902221035_add_remote_copy_to_color_scheme.rb
    │   │   ├── 20250916082012_mark_timerable_id_non_nullable.rb
    │   │   ├── 20250919010400_remove_trigger_on_topic_timers.rb
    │   │   ├── 20250919061654_remove_floatkit_autocomplete_site_settings.rb
    │   │   ├── 20250925182715_add_index_to_posts_locale.rb
    │   │   ├── 20251003120819_split_moderators_manage_categories_and_groups_setting.rb
    │   │   └── 20251013091641_add_notify_on_linked_posts_to_user_options.rb
    │   └── post_migrate/
    │       ├── 20250227142351_migrate_sidekiq_jobs.rb
    │       ├── 20250304074934_backfill_api_key_scope_modes.rb
    │       ├── 20250305233449_populate_type_source_in_reviewable.rb
    │       ├── 20250513161753_rename_by_id_group.rb
    │       ├── 20250526063633_copy_add_groups_to_about_component_settings.rb
    │       ├── 20250702082232_deprecate_external_system_avatars_enabled.rb
    │       ├── 20250708031631_remove_flush_timings_secs_setting.rb
    │       ├── 20250709051949_disable_gravatar_enabled_if_unconfigured.rb
    │       ├── 20250710074447_clear_backup_frequency_if_disabled.rb
    │       ├── 20250804021210_drop_enable_experimental_sidebar_user_option.rb
    │       ├── 20250812033430_replace_null_with_zero_in_backup_frequency.rb
    │       ├── 20250821150220_remove_use_overhauled_theme_color_palette_setting.rb
    │       ├── 20250821155127_drop_dark_hex_from_color_scheme_color.rb
    │       └── 20250821155615_drop_theme_color_scheme.rb
    ├── lib/ (B)
    │   ├── admin_confirmation.rb
    │   ├── admin_constraint.rb
    │   ├── admin_user_index_query.rb
    │   ├── age_words.rb
    │   ├── application_layout_preloader.rb
    │   ├── archetype.rb
    │   ├── asset_processor.rb
    │   ├── auth.rb
    │   ├── backup_restore.rb
    │   ├── badge_posts_view_manager.rb
    │   ├── badge_queries.rb
    │   ├── base62.rb
    │   ├── bookmark_manager.rb
    │   ├── bookmark_query.rb
    │   ├── bookmark_reminder_notification_handler.rb
    │   ├── bookmarks_bulk_action.rb
    │   ├── browser_detection.rb
    │   ├── cache.rb
    │   ├── canonical_url.rb
    │   ├── category_badge.rb
    │   ├── color_math.rb
    │   ├── comment_migration.rb
    │   ├── common_passwords.rb
    │   ├── composer_messages_finder.rb
    │   ├── configurable_urls.rb
    │   ├── content_buffer.rb
    │   ├── content_security_policy.rb
    │   ├── cooked_post_processor.rb
    │   ├── cooked_processor_mixin.rb
    │   ├── crawler_detection.rb
    │   ├── csrf_token_verifier.rb
    │   ├── current_user.rb
    │   ├── custom_renderer.rb
    │   ├── db_helper.rb
    │   ├── directory_helper.rb
    │   ├── discourse.rb
    │   ├── discourse_dev.rb
    │   ├── discourse_diff.rb
    │   ├── discourse_event.rb
    │   ├── discourse_ip_info.rb
    │   ├── discourse_logstash_logger.rb
    │   ├── discourse_plugin_registry.rb
    │   ├── discourse_redis.rb
    │   ├── discourse_tagging.rb
    │   ├── disk_space.rb
    │   ├── distributed_cache.rb
    │   ├── distributed_memoizer.rb
    │   ├── distributed_mutex.rb
    │   ├── edit_rate_limiter.rb
    │   ├── email.rb
    │   ├── email_cook.rb
    │   ├── email_templates_finder.rb
    │   ├── email_updater.rb
    │   ├── ember_cli.rb
    │   ├── encodings.rb
    │   ├── enum.rb
    │   ├── enum_site_setting.rb
    │   ├── excerpt_parser.rb
    │   ├── external_upload_helpers.rb
    │   ├── feed_element_installer.rb
    │   ├── feed_item_accessor.rb
    │   ├── file_helper.rb
    │   ├── filter_best_posts.rb
    │   ├── final_destination.rb
    │   ├── flag_query.rb
    │   ├── flag_settings.rb
    │   ├── gaps.rb
    │   ├── git_repo.rb
    │   ├── git_url.rb
    │   ├── git_utils.rb
    │   ├── global_path.rb
    │   ├── group_lookup.rb
    │   ├── guardian.rb
    │   ├── has_errors.rb
    │   ├── highlight_js.rb
    │   ├── hijack.rb
    │   ├── homepage_constraint.rb
    │   ├── homepage_helper.rb
    │   ├── html_prettify.rb
    │   ├── html_to_markdown.rb
    │   ├── http_language_parser.rb
    │   ├── http_user_agent_encoder.rb
    │   ├── image_sizer.rb
    │   ├── impersonator_constraint.rb
    │   ├── import_export.rb
    │   ├── inline_oneboxer.rb
    │   ├── job_time_spacer.rb
    │   ├── js_locale_helper.rb
    │   ├── json_error.rb
    │   ├── letter_avatar.rb
    │   ├── markdown_linker.rb
    │   ├── mini_scheduler_long_running_job_logger.rb
    │   ├── mini_sql_multisite_connection.rb
    │   ├── mobile_detection.rb
    │   ├── new_post_manager.rb
    │   ├── new_post_result.rb
    │   ├── notification_levels.rb
    │   ├── onebox.rb
    │   ├── oneboxer.rb
    │   ├── onpdiff.rb
    │   ├── password_hasher.rb
    │   ├── pbkdf2.rb
    │   ├── permalink_constraint.rb
    │   ├── pinned_check.rb
    │   ├── plain_text_to_markdown.rb
    │   ├── plugin.rb
    │   ├── plugin_gem.rb
    │   ├── post_action_creator.rb
    │   ├── post_action_destroyer.rb
    │   ├── post_action_result.rb
    │   ├── post_action_type_view.rb
    │   ├── post_creator.rb
    │   ├── post_destroyer.rb
    │   ├── post_jobs_enqueuer.rb
    │   ├── post_locker.rb
    │   ├── post_merger.rb
    │   ├── post_revisor.rb
    │   ├── presence_channel.rb
    │   ├── pretty_text.rb
    │   ├── promotion.rb
    │   ├── quote_comparer.rb
    │   ├── quote_rewriter.rb
    │   ├── rake_helpers.rb
    │   ├── rate_limiter.rb
    │   ├── read_only_mixin.rb
    │   ├── require_dependency_backward_compatibility.rb
    │   ├── retrieve_title.rb
    │   ├── route_format.rb
    │   ├── route_matcher.rb
    │   ├── rtl.rb
    │   ├── s3_cors_rulesets.rb
    │   ├── s3_helper.rb
    │   ├── s3_inventory.rb
    │   ├── schema_settings_object_validator.rb
    │   ├── score_calculator.rb
    │   ├── screening_model.rb
    │   ├── search.rb
    │   ├── secure_upload_endpoint_helpers.rb
    │   ├── server_session.rb
    │   ├── service.rb
    │   ├── shrink_uploaded_image.rb
    │   ├── sidekiq_logster_reporter.rb
    │   ├── sidekiq_long_running_job_logger.rb
    │   ├── sidekiq_migration.rb
    │   ├── signal_trap_logger.rb
    │   ├── site_icon_manager.rb
    │   ├── site_setting_extension.rb
    │   ├── slug.rb
    │   ├── socket_server.rb
    │   ├── spam_handler.rb
    │   ├── staff_constraint.rb
    │   ├── staff_message_format.rb
    │   ├── statistics.rb
    │   ├── suggested_topics_builder.rb
    │   ├── svg_sprite.rb
    │   ├── system_message.rb
    │   ├── temporary_db.rb
    │   ├── temporary_redis.rb
    │   ├── text_cleaner.rb
    │   ├── text_sentinel.rb
    │   ├── timeline_lookup.rb
    │   ├── tiny_japanese_segmenter.rb
    │   ├── topic_creator.rb
    │   ├── topic_list_responder.rb
    │   ├── topic_publisher.rb
    │   ├── topic_query.rb
    │   ├── topic_query_params.rb
    │   ├── topic_retriever.rb
    │   ├── topic_subtype.rb
    │   ├── topic_upload_security_manager.rb
    │   ├── topic_view.rb
    │   ├── topics_bulk_action.rb
    │   ├── topics_filter.rb
    │   ├── truncate_logs_formatter.rb
    │   ├── trust_level.rb
    │   ├── turbo_tests.rb
    │   ├── unicorn_logstash_patch.rb
    │   ├── unread.rb
    │   ├── upload_creator.rb
    │   ├── upload_markdown.rb
    │   ├── upload_recovery.rb
    │   ├── upload_security.rb
    │   ├── url_helper.rb
    │   ├── user_comm_screener.rb
    │   ├── user_lookup.rb
    │   ├── user_name_suggester.rb
    │   ├── vary_header.rb
    │   ├── version.rb
    │   ├── work_queue.rb
    │   ├── xml_cleaner.rb
    │   ├── action_dispatch/
    │   │   └── session/
    │   │       └── discourse_cookie_store.rb
    │   ├── active_support_type_extensions/
    │   │   └── array.rb
    │   ├── auth/
    │   │   ├── auth_provider.rb
    │   │   ├── authenticator.rb
    │   │   ├── current_user_provider.rb
    │   │   ├── default_current_user_provider.rb
    │   │   ├── discord_authenticator.rb
    │   │   ├── discourse_id_authenticator.rb
    │   │   ├── facebook_authenticator.rb
    │   │   ├── github_authenticator.rb
    │   │   ├── google_oauth2_authenticator.rb
    │   │   ├── linkedin_oidc_authenticator.rb
    │   │   ├── managed_authenticator.rb
    │   │   ├── oauth_faraday_formatter.rb
    │   │   ├── result.rb
    │   │   └── twitter_authenticator.rb
    │   ├── backup_restore/
    │   │   ├── backup_file_handler.rb
    │   │   ├── backup_store.rb
    │   │   ├── backuper.rb
    │   │   ├── database_restorer.rb
    │   │   ├── factory.rb
    │   │   ├── local_backup_store.rb
    │   │   ├── logger.rb
    │   │   ├── meta_data_handler.rb
    │   │   ├── restorer.rb
    │   │   ├── s3_backup_store.rb
    │   │   ├── system_interface.rb
    │   │   └── uploads_restorer.rb
    │   ├── common_passwords/
    │   │   └── 10-char-common-passwords.txt
    │   ├── compression/
    │   │   ├── engine.rb
    │   │   ├── gzip.rb
    │   │   ├── pipeline.rb
    │   │   ├── strategy.rb
    │   │   ├── tar.rb
    │   │   └── zip.rb
    │   ├── content_security_policy/
    │   │   ├── builder.rb
    │   │   ├── default.rb
    │   │   ├── extension.rb
    │   │   └── middleware.rb
    │   ├── demon/
    │   │   ├── base.rb
    │   │   ├── email_sync.rb
    │   │   ├── rails_autospec.rb
    │   │   └── sidekiq.rb
    │   ├── email/
    │   │   ├── authentication_results.rb
    │   │   ├── build_email_helper.rb
    │   │   ├── cleaner.rb
    │   │   ├── message_builder.rb
    │   │   ├── message_id_service.rb
    │   │   ├── poller.rb
    │   │   ├── processor.rb
    │   │   ├── renderer.rb
    │   │   ├── sender.rb
    │   │   ├── styles.rb
    │   │   └── validator.rb
    │   ├── email_controller_helper/
    │   │   ├── base_email_unsubscriber.rb
    │   │   ├── digest_email_unsubscriber.rb
    │   │   └── topic_email_unsubscriber.rb
    │   ├── file_store/
    │   │   ├── base_store.rb
    │   │   ├── local_store.rb
    │   │   ├── s3_store.rb
    │   │   └── to_s3_migration.rb
    │   ├── final_destination/
    │   │   ├── faraday_adapter.rb
    │   │   ├── http.rb
    │   │   ├── resolver.rb
    │   │   └── ssrf_detector.rb
    │   ├── freedom_patches/
    │   │   ├── active_record_attribute_methods.rb
    │   │   ├── active_record_disable_serialization.rb
    │   │   ├── ams_include_without_root.rb
    │   │   ├── copy_file.rb
    │   │   ├── cose_rsapkcs1.rb
    │   │   ├── fast_image.rb
    │   │   ├── inflector_backport.rb
    │   │   ├── ip_addr.rb
    │   │   ├── message_pack_extensions.rb
    │   │   ├── net_http.rb
    │   │   ├── net_http_header.rb
    │   │   ├── propshaft_patches.rb
    │   │   ├── rails_multisite.rb
    │   │   ├── request_server_session.rb
    │   │   ├── rspec_mocks_from_described_class.rb
    │   │   ├── safe_buffer.rb
    │   │   ├── safe_migrations.rb
    │   │   ├── schema_migration_details.rb
    │   │   ├── sidekiq.rb
    │   │   ├── translate_accelerator.rb
    │   │   └── web_push_request.rb
    │   ├── guardian/
    │   │   ├── bookmark_guardian.rb
    │   │   ├── category_guardian.rb
    │   │   ├── ensure_magic.rb
    │   │   ├── flag_guardian.rb
    │   │   ├── group_guardian.rb
    │   │   ├── invite_guardian.rb
    │   │   ├── localization_guardian.rb
    │   │   ├── post_guardian.rb
    │   │   ├── post_revision_guardian.rb
    │   │   ├── sidebar_guardian.rb
    │   │   ├── tag_guardian.rb
    │   │   ├── topic_guardian.rb
    │   │   └── user_guardian.rb
    │   ├── i18n/
    │   │   ├── duplicate_key_finder.rb
    │   │   ├── i18n_interpolation_keys_finder.rb
    │   │   ├── locale_file_checker.rb
    │   │   ├── locale_file_walker.rb
    │   │   └── backend/
    │   │       ├── discourse_i18n.rb
    │   │       └── fallback_locale_list.rb
    │   ├── middleware/
    │   │   ├── anonymous_cache.rb
    │   │   ├── crawler_hooks.rb
    │   │   ├── csp_script_nonce_injector.rb
    │   │   ├── default_headers.rb
    │   │   ├── discourse_public_exceptions.rb
    │   │   ├── enforce_hostname.rb
    │   │   ├── missing_avatars.rb
    │   │   ├── omniauth_bypass_middleware.rb
    │   │   ├── processing_request.rb
    │   │   └── request_tracker.rb
    │   ├── migration/
    │   │   ├── base_dropper.rb
    │   │   ├── column_dropper.rb
    │   │   ├── helpers.rb
    │   │   ├── safe_migrate.rb
    │   │   └── table_dropper.rb
    │   ├── onebox/
    │   │   ├── domain_checker.rb
    │   │   ├── engine.rb
    │   │   ├── file_type_finder.rb
    │   │   ├── helpers.rb
    │   │   ├── json_ld.rb
    │   │   ├── layout.rb
    │   │   ├── layout_support.rb
    │   │   ├── matcher.rb
    │   │   ├── movie.rb
    │   │   ├── normalizer.rb
    │   │   ├── oembed.rb
    │   │   ├── open_graph.rb
    │   │   ├── preview.rb
    │   │   ├── sanitize_config.rb
    │   │   ├── status_check.rb
    │   │   ├── template_support.rb
    │   │   ├── view.rb
    │   │   ├── engine/
    │   │   │   ├── allowlisted_generic_onebox.rb
    │   │   │   ├── amazon_onebox.rb
    │   │   │   ├── animated_image_onebox.rb
    │   │   │   ├── asciinema_onebox.rb
    │   │   │   ├── audio_com_onebox.rb
    │   │   │   ├── audio_onebox.rb
    │   │   │   ├── audioboom_onebox.rb
    │   │   │   ├── band_camp_onebox.rb
    │   │   │   ├── cloud_app_onebox.rb
    │   │   │   ├── coub_onebox.rb
    │   │   │   ├── discourse_topic_onebox.rb
    │   │   │   ├── facebook_media_onebox.rb
    │   │   │   ├── five_hundred_px_onebox.rb
    │   │   │   ├── flickr_onebox.rb
    │   │   │   ├── flickr_shortened_onebox.rb
    │   │   │   ├── gfycat_onebox.rb
    │   │   │   ├── github_actions_onebox.rb
    │   │   │   ├── github_blob_onebox.rb
    │   │   │   ├── github_commit_onebox.rb
    │   │   │   ├── github_folder_onebox.rb
    │   │   │   ├── github_gist_onebox.rb
    │   │   │   ├── github_issue_onebox.rb
    │   │   │   ├── github_pull_request_onebox.rb
    │   │   │   ├── github_repo_onebox.rb
    │   │   │   ├── gitlab_blob_onebox.rb
    │   │   │   ├── google_calendar_onebox.rb
    │   │   │   ├── google_docs_onebox.rb
    │   │   │   ├── google_drive_onebox.rb
    │   │   │   ├── google_maps_onebox.rb
    │   │   │   ├── google_photos_onebox.rb
    │   │   │   ├── google_play_app_onebox.rb
    │   │   │   ├── hackernews_onebox.rb
    │   │   │   ├── html.rb
    │   │   │   ├── image_onebox.rb
    │   │   │   ├── imgur_onebox.rb
    │   │   │   ├── instagram_onebox.rb
    │   │   │   ├── json.rb
    │   │   │   ├── kaltura_onebox.rb
    │   │   │   ├── loom_onebox.rb
    │   │   │   ├── mixcloud_onebox.rb
    │   │   │   ├── motoko_onebox.rb
    │   │   │   ├── opengraph_image.rb
    │   │   │   ├── pastebin_onebox.rb
    │   │   │   ├── pdf_onebox.rb
    │   │   │   ├── pubmed_onebox.rb
    │   │   │   ├── reddit_media_onebox.rb
    │   │   │   ├── replit_onebox.rb
    │   │   │   ├── simplecast_onebox.rb
    │   │   │   ├── sketch_fab_onebox.rb
    │   │   │   ├── slides_onebox.rb
    │   │   │   ├── sound_cloud_onebox.rb
    │   │   │   ├── spotify_onebox.rb
    │   │   │   ├── stack_exchange_onebox.rb
    │   │   │   ├── standard_embed.rb
    │   │   │   ├── steam_store_onebox.rb
    │   │   │   ├── threads_status_onebox.rb
    │   │   │   ├── tiktok_onebox.rb
    │   │   │   ├── trello_onebox.rb
    │   │   │   ├── twitch_clips_onebox.rb
    │   │   │   ├── twitch_stream_onebox.rb
    │   │   │   ├── twitch_video_onebox.rb
    │   │   │   ├── twitter_status_onebox.rb
    │   │   │   ├── typeform_onebox.rb
    │   │   │   ├── video_onebox.rb
    │   │   │   ├── vimeo_onebox.rb
    │   │   │   ├── wikimedia_onebox.rb
    │   │   │   ├── wikipedia_onebox.rb
    │   │   │   ├── wistia_onebox.rb
    │   │   │   ├── xkcd_onebox.rb
    │   │   │   ├── youku_onebox.rb
    │   │   │   └── youtube_onebox.rb
    │   │   ├── mixins/
    │   │   │   ├── git_blob_onebox.rb
    │   │   │   ├── github_auth_header.rb
    │   │   │   ├── github_body.rb
    │   │   │   └── twitch_onebox.rb
    │   │   └── templates/
    │   │       ├── _layout.mustache
    │   │       ├── allowlistedgeneric.mustache
    │   │       ├── amazon.mustache
    │   │       ├── discourse_category_onebox.mustache
    │   │       ├── discourse_topic_onebox.mustache
    │   │       ├── discourse_user_onebox.mustache
    │   │       ├── discoursetopic.mustache
    │   │       ├── githubactions.mustache
    │   │       ├── githubblob.mustache
    │   │       ├── githubcommit.mustache
    │   │       ├── githubfolder.mustache
    │   │       ├── githubgist.mustache
    │   │       ├── githubissue.mustache
    │   │       ├── githubpullrequest.mustache
    │   │       ├── githubrepo.mustache
    │   │       ├── gitlabblob.mustache
    │   │       ├── googledocs.mustache
    │   │       ├── googledrive.mustache
    │   │       ├── googleplayapp.mustache
    │   │       ├── hackernews.mustache
    │   │       ├── instagram.mustache
    │   │       ├── pastebin.mustache
    │   │       ├── pdf.mustache
    │   │       ├── preview_error_fragment_onebox.mustache
    │   │       ├── preview_error_onebox.mustache
    │   │       ├── pubmed.mustache
    │   │       ├── stackexchange.mustache
    │   │       ├── threadsstatus.mustache
    │   │       ├── twitterstatus.mustache
    │   │       ├── wikimedia.mustache
    │   │       ├── wikipedia.mustache
    │   │       ├── xkcd.mustache
    │   │       ├── github/
    │   │       │   └── github_body.mustache
    │   │       └── json_ld_partials/
    │   │           └── movie.mustache
    │   ├── plugin/
    │   │   ├── filter.rb
    │   │   ├── filter_manager.rb
    │   │   └── metadata.rb
    │   ├── pretty_text/
    │   │   ├── helpers.rb
    │   │   ├── shims.js
    │   │   └── vendor-shims.js
    │   ├── rate_limiter/
    │   │   ├── limit_exceeded.rb
    │   │   └── on_create_record.rb
    │   ├── request_tracker/
    │   │   └── rate_limiters/
    │   │       ├── base.rb
    │   │       ├── ip.rb
    │   │       ├── stack.rb
    │   │       └── user.rb
    │   ├── reviewable/
    │   │   ├── actions.rb
    │   │   ├── collection.rb
    │   │   ├── conversation.rb
    │   │   ├── editable_fields.rb
    │   │   └── perform_result.rb
    │   ├── scheduler/
    │   │   ├── defer.rb
    │   │   └── thread_pool.rb
    │   ├── search/
    │   │   └── grouped_search_results.rb
    │   ├── seed_data/
    │   │   ├── categories.rb
    │   │   └── topics.rb
    │   ├── service/
    │   │   ├── action_base.rb
    │   │   ├── base.rb
    │   │   ├── contract_base.rb
    │   │   ├── options_base.rb
    │   │   ├── policy_base.rb
    │   │   ├── runner.rb
    │   │   └── steps_inspector.rb
    │   ├── sidekiq/
    │   │   ├── discourse_event.rb
    │   │   └── pausable.rb
    │   ├── site_settings/
    │   │   ├── db_provider.rb
    │   │   ├── defaults_provider.rb
    │   │   ├── deprecated_settings.rb
    │   │   ├── hidden_provider.rb
    │   │   ├── label_formatter.rb
    │   │   ├── local_process_provider.rb
    │   │   ├── type_supervisor.rb
    │   │   ├── validations.rb
    │   │   └── yaml_loader.rb
    │   ├── stylesheet/
    │   │   ├── compiler.rb
    │   │   ├── importer.rb
    │   │   ├── manager.rb
    │   │   ├── watcher.rb
    │   │   └── manager/
    │   │       ├── builder.rb
    │   │       └── scss_checker.rb
    │   ├── tasks/
    │   │   ├── add_topic_to_quotes.rake
    │   │   ├── admin.rake
    │   │   ├── api.rake
    │   │   ├── assets.rake
    │   │   ├── avatars.rake
    │   │   ├── categories.rake
    │   │   ├── cdn.rake
    │   │   ├── db.rake
    │   │   ├── destroy.rake
    │   │   ├── emails.rake
    │   │   ├── groups.rake
    │   │   ├── hashtags.rake
    │   │   ├── i18n.rake
    │   │   ├── images.rake
    │   │   ├── incoming_emails.rake
    │   │   ├── javascript.rake
    │   │   ├── log.rake
    │   │   ├── maxminddb.rake
    │   │   ├── plugin.rake
    │   │   ├── posts.rake
    │   │   ├── redis.rake
    │   │   ├── reviewables.rake
    │   │   ├── revisions.rake
    │   │   ├── s3.rake
    │   │   ├── scheduler.rake
    │   │   ├── search.rake
    │   │   ├── site.rake
    │   │   ├── site_settings.rake
    │   │   ├── svg_icons.rake
    │   │   ├── svg_sprites.rake
    │   │   ├── tags.rake
    │   │   ├── topics.rake
    │   │   ├── uploads.rake
    │   │   └── users.rake
    │   ├── topic_query/
    │   │   └── private_message_lists.rb
    │   └── validators/
    │       ├── allow_user_locale_enabled_validator.rb
    │       ├── allowed_iframes_validator.rb
    │       ├── allowed_ip_address_validator.rb
    │       ├── alternative_reply_by_email_addresses_validator.rb
    │       ├── at_least_one_group_validator.rb
    │       ├── categories_topics_validator.rb
    │       ├── category_search_priority_weights_validator.rb
    │       ├── censored_words_validator.rb
    │       ├── color_list_validator.rb
    │       ├── content_localization_locales_validator.rb
    │       ├── csp_script_src_validator.rb
    │       ├── css_color_validator.rb
    │       ├── css_color_with_blank_validator.rb
    │       ├── default_composer_category_validator.rb
    │       ├── delete_rejected_email_after_days_validator.rb
    │       ├── email_address_validator.rb
    │       ├── email_setting_validator.rb
    │       ├── email_validator.rb
    │       ├── enable_discourse_id_validator.rb
    │       ├── enable_local_logins_via_email_validator.rb
    │       ├── enable_private_email_messages_validator.rb
    │       ├── enable_sso_validator.rb
    │       ├── external_system_avatars_validator.rb
    │       ├── form_template_yaml_validator.rb
    │       ├── google_oauth2_hd_groups_validator.rb
    │       ├── group_setting_validator.rb
    │       ├── host_list_setting_validator.rb
    │       ├── integer_setting_validator.rb
    │       ├── ip_address_format_validator.rb
    │       ├── language_switcher_setting_validator.rb
    │       ├── linkedin_oidc_credentials_validator.rb
    │       ├── markdown_linkify_tlds_validator.rb
    │       ├── markdown_typographer_quotation_marks_validator.rb
    │       ├── max_emojis_validator.rb
    │       ├── max_username_length_validator.rb
    │       ├── min_username_length_validator.rb
    │       ├── not_username_validator.rb
    │       ├── objects_setting_validator.rb
    │       ├── password_validator.rb
    │       ├── pop3_polling_enabled_setting_validator.rb
    │       ├── post_validator.rb
    │       ├── quality_title_validator.rb
    │       ├── regex_presence_validator.rb
    │       ├── regex_setting_validation.rb
    │       ├── regex_setting_validator.rb
    │       ├── regexp_list_validator.rb
    │       ├── reply_by_email_address_validator.rb
    │       ├── reply_by_email_enabled_validator.rb
    │       ├── search_ranking_weights_validator.rb
    │       ├── search_tokenize_chinese_validator.rb
    │       ├── search_tokenize_japanese_validator.rb
    │       ├── selectable_avatars_mode_validator.rb
    │       ├── sso_overrides_email_validator.rb
    │       ├── string_setting_validator.rb
    │       ├── stripped_length_validator.rb
    │       ├── timezone_validator.rb
    │       ├── topic_title_length_validator.rb
    │       ├── unicode_username_allowlist_validator.rb
    │       ├── unicode_username_validator.rb
    │       ├── unique_among_validator.rb
    │       ├── upload_validator.rb
    │       ├── url_validator.rb
    │       ├── user_full_name_validator.rb
    │       ├── user_password_validator.rb
    │       ├── username_setting_validator.rb
    │       ├── video_conversion_enabled_validator.rb
    │       └── watched_words_validator.rb
    ├── migrations/
    │   ├── README.md
    │   ├── .rubocop.yml
    │   ├── config/
    │   │   ├── importer.yml
    │   │   ├── intermediate_db.yml
    │   │   ├── upload.yml.sample
    │   │   ├── json_schemas/
    │   │   │   └── db_schema.json
    │   │   └── locales/
    │   │       └── migrations.en.yml
    │   ├── db/
    │   │   ├── README.md
    │   │   ├── intermediate_db_schema/
    │   │   │   ├── 001-config.sql
    │   │   │   ├── 002-log_entries.sql
    │   │   │   ├── 003-uploads.sql
    │   │   │   ├── 004-user_suspensions.sql
    │   │   │   ├── 005-permalink_normalizations.sql
    │   │   │   ├── 006-tag_synonyms.sql
    │   │   │   └── 100-base-schema.sql
    │   │   ├── mappings_db_schema/
    │   │   │   ├── 001-mappings.sql
    │   │   │   └── 002-usernames.sql
    │   │   └── uploads_db_schema/
    │   │       └── 100-base-schema.sql
    │   ├── docs/
    │   │   └── .gitkeep
    │   ├── lib/
    │   │   ├── database.rb
    │   │   ├── importer.rb
    │   │   ├── settings_parser.rb
    │   │   ├── cli/
    │   │   │   ├── convert_command.rb
    │   │   │   ├── exception_handler.rb
    │   │   │   ├── import_command.rb
    │   │   │   ├── schema_sub_command.rb
    │   │   │   └── upload_command.rb
    │   │   ├── common/
    │   │   │   ├── class_filter.rb
    │   │   │   ├── date_helper.rb
    │   │   │   ├── enum.rb
    │   │   │   ├── extended_progress_bar.rb
    │   │   │   ├── fork_manager.rb
    │   │   │   ├── id.rb
    │   │   │   ├── set_store.rb
    │   │   │   ├── topological_sorter.rb
    │   │   │   └── set_store/
    │   │   │       ├── interface.rb
    │   │   │       ├── key_value_set.rb
    │   │   │       ├── simple_set.rb
    │   │   │       ├── three_key_set.rb
    │   │   │       └── two_key_set.rb
    │   │   └── converters/
    │   │       ├── base/
    │   │       │   ├── converter.rb
    │   │       │   ├── parallel_job.rb
    │   │       │   ├── progress_step.rb
    │   │       │   ├── progress_step_executor.rb
    │   │       │   ├── serial_job.rb
    │   │       │   ├── step.rb
    │   │       │   ├── step_executor.rb
    │   │       │   ├── step_stats.rb
    │   │       │   ├── step_tracker.rb
    │   │       │   └── worker.rb
    │   │       └── discourse/
    │   │           ├── settings.yml
    │   │           └── steps/
    │   │               ├── categories.rb
    │   │               ├── category_custom_fields.rb
    │   │               ├── category_users.rb
    │   │               ├── groups.rb
    │   │               ├── permalink_normalizations.rb
    │   │               ├── tag_group_memberships.rb
    │   │               ├── tag_groups.rb
    │   │               ├── tags.rb
    │   │               ├── topic_allowed_users.rb
    │   │               ├── topic_users.rb
    │   │               ├── topics.rb
    │   │               ├── user_field_values.rb
    │   │               ├── user_fields.rb
    │   │               ├── user_suspensions.rb
    │   │               └── users.rb
    │   ├── scripts/
    │   │   └── benchmarks/
    │   │       └── RESULTS.md
    │   └── spec/
    │       └── support/
    │           └── fixtures/
    │               └── schema/
    │                   ├── copy/
    │                   │   └── schema.sql
    │                   ├── invalid/
    │                   │   └── 001-invalid.sql
    │                   ├── one/
    │                   │   └── 001-first-table.sql
    │                   └── two/
    │                       ├── 001-first-table.sql
    │                       └── 002-second-table.sql
    ├── plugins/ (B+F)
    │   ├── checklist/
    │   │   ├── plugin.rb
    │   │   ├── assets/
    │   │   │   ├── javascripts/
    │   │   │   │   ├── discourse/
    │   │   │   │   │   └── initializers/
    │   │   │   │   │       └── checklist.js
    │   │   │   │   └── lib/
    │   │   │   │       ├── rich-editor-extension.js
    │   │   │   │       └── discourse-markdown/
    │   │   │   │           └── checklist.js
    │   │   │   └── stylesheets/
    │   │   │       └── checklist.scss
    │   │   ├── config/
    │   │   │   └── locales/
    │   │   │       ├── client.en.yml
    │   │   │       └── server.en.yml
    │   │   └── spec/
    │   │       └── pretty_text_spec.rb
    │   ├── discourse-details/
    │   │   ├── README.md
    │   │   ├── LICENSE
    │   │   ├── plugin.rb
    │   │   ├── assets/
    │   │   │   ├── javascripts/
    │   │   │   │   ├── initializers/
    │   │   │   │   │   └── apply-details.js
    │   │   │   │   └── lib/
    │   │   │   │       ├── rich-editor-extension.js
    │   │   │   │       └── discourse-markdown/
    │   │   │   │           └── details.js
    │   │   │   └── stylesheets/
    │   │   │       └── details.scss
    │   │   ├── config/
    │   │   │   └── locales/
    │   │   │       ├── client.en.yml
    │   │   │       └── server.en.yml
    │   │   └── spec/
    │   │       ├── components/
    │   │       │   └── pretty_text_spec.rb
    │   │       └── system/
    │   │           └── details_spec.rb
    │   ├── discourse-lazy-videos/
    │   │   ├── README.md
    │   │   ├── plugin.rb
    │   │   ├── assets/
    │   │   │   ├── javascripts/
    │   │   │   │   ├── discourse/
    │   │   │   │   │   └── components/
    │   │   │   │   │       ├── lazy-iframe.gjs
    │   │   │   │   │       └── lazy-video.gjs
    │   │   │   │   ├── initializers/
    │   │   │   │   │   └── lazy-videos.gjs
    │   │   │   │   └── lib/
    │   │   │   │       └── lazy-video-attributes.js
    │   │   │   └── stylesheets/
    │   │   │       └── lazy-videos.scss
    │   │   ├── config/
    │   │   │   └── locales/
    │   │   │       ├── client.en.yml
    │   │   │       └── server.en.yml
    │   │   ├── db/
    │   │   │   └── migrate/
    │   │   │       └── 20230317194217_rebake_lazy_yt_posts.rb
    │   │   ├── lib/
    │   │   │   └── discourse_lazy_videos/
    │   │   │       ├── crawler_post_end.rb
    │   │   │       ├── lazy_tiktok.rb
    │   │   │       ├── lazy_vimeo.rb
    │   │   │       └── lazy_youtube.rb
    │   │   └── spec/
    │   │       ├── components/
    │   │       │   └── pretty_text_spec.rb
    │   │       └── lib/
    │   │           ├── discourse_lazy_videos/
    │   │           │   └── crawler_post_end_spec.rb
    │   │           └── lazy-videos/
    │   │               └── lazy_vimeo_spec.rb
    │   ├── discourse-local-dates/
    │   │   ├── plugin.rb
    │   │   ├── assets/
    │   │   │   ├── javascripts/
    │   │   │   │   ├── discourse/
    │   │   │   │   │   └── components/
    │   │   │   │   │       └── modal/
    │   │   │   │   │           └── local-dates-create.gjs
    │   │   │   │   ├── initializers/
    │   │   │   │   │   └── discourse-local-dates.js
    │   │   │   │   └── lib/
    │   │   │   │       ├── date-with-zone-helper.js
    │   │   │   │       ├── local-date-builder.js
    │   │   │   │       ├── local-date-markup-generator.js
    │   │   │   │       ├── rich-editor-extension.js
    │   │   │   │       └── discourse-markdown/
    │   │   │   │           └── discourse-local-dates.js
    │   │   │   └── stylesheets/
    │   │   │       └── common/
    │   │   │           └── discourse-local-dates.scss
    │   │   ├── config/
    │   │   │   └── locales/
    │   │   │       ├── client.en.yml
    │   │   │       └── server.en.yml
    │   │   ├── db/
    │   │   │   └── migrate/
    │   │   │       └── 20250529021721_add_utc_to_setting.rb
    │   │   ├── lib/
    │   │   │   └── discourse_local_dates/
    │   │   │       └── engine.rb
    │   │   └── spec/
    │   │       ├── integration/
    │   │       │   └── local_dates_spec.rb
    │   │       ├── lib/
    │   │       │   └── pretty_text_spec.rb
    │   │       ├── models/
    │   │       │   └── post_spec.rb
    │   │       └── system/
    │   │           ├── local_dates_spec.rb
    │   │           ├── post_small_action_spec.rb
    │   │           ├── rich_editor_extension_spec.rb
    │   │           └── page_objects/
    │   │               └── modals/
    │   │                   └── insert_date_time.rb
    │   ├── discourse-math/
    │   │   ├── README.md
    │   │   ├── plugin.rb
    │   │   ├── .prettierignore
    │   │   ├── assets/
    │   │   │   ├── javascripts/
    │   │   │   │   ├── initializers/
    │   │   │   │   │   ├── discourse-math-katex.js
    │   │   │   │   │   └── discourse-math-mathjax.js
    │   │   │   │   └── lib/
    │   │   │   │       └── discourse-markdown/
    │   │   │   │           └── discourse-math.js
    │   │   │   └── stylesheets/
    │   │   │       ├── common/
    │   │   │       │   └── discourse-math.scss
    │   │   │       └── ext/
    │   │   │           └── discourse-chat.scss
    │   │   ├── config/
    │   │   │   └── locales/
    │   │   │       └── server.en.yml
    │   │   ├── lib/
    │   │   │   └── math_renderer.rb
    │   │   ├── public/
    │   │   │   ├── katex/
    │   │   │   │   ├── README.md
    │   │   │   │   └── fonts/
    │   │   │   │       ├── KaTeX_AMS-Regular.woff
    │   │   │   │       ├── KaTeX_AMS-Regular.woff2
    │   │   │   │       ├── KaTeX_Caligraphic-Bold.woff
    │   │   │   │       ├── KaTeX_Caligraphic-Bold.woff2
    │   │   │   │       ├── KaTeX_Caligraphic-Regular.woff
    │   │   │   │       ├── KaTeX_Caligraphic-Regular.woff2
    │   │   │   │       ├── KaTeX_Fraktur-Bold.woff
    │   │   │   │       ├── KaTeX_Fraktur-Bold.woff2
    │   │   │   │       ├── KaTeX_Fraktur-Regular.woff
    │   │   │   │       ├── KaTeX_Fraktur-Regular.woff2
    │   │   │   │       ├── KaTeX_Main-Bold.woff
    │   │   │   │       ├── KaTeX_Main-Bold.woff2
    │   │   │   │       ├── KaTeX_Main-BoldItalic.woff
    │   │   │   │       ├── KaTeX_Main-BoldItalic.woff2
    │   │   │   │       ├── KaTeX_Main-Italic.woff
    │   │   │   │       ├── KaTeX_Main-Italic.woff2
    │   │   │   │       ├── KaTeX_Main-Regular.woff
    │   │   │   │       ├── KaTeX_Main-Regular.woff2
    │   │   │   │       ├── KaTeX_Math-BoldItalic.woff
    │   │   │   │       ├── KaTeX_Math-BoldItalic.woff2
    │   │   │   │       ├── KaTeX_Math-Italic.woff
    │   │   │   │       ├── KaTeX_Math-Italic.woff2
    │   │   │   │       ├── KaTeX_SansSerif-Bold.woff
    │   │   │   │       ├── KaTeX_SansSerif-Bold.woff2
    │   │   │   │       ├── KaTeX_SansSerif-Italic.woff
    │   │   │   │       ├── KaTeX_SansSerif-Italic.woff2
    │   │   │   │       ├── KaTeX_SansSerif-Regular.woff
    │   │   │   │       ├── KaTeX_SansSerif-Regular.woff2
    │   │   │   │       ├── KaTeX_Script-Regular.woff
    │   │   │   │       ├── KaTeX_Script-Regular.woff2
    │   │   │   │       ├── KaTeX_Size1-Regular.woff
    │   │   │   │       ├── KaTeX_Size1-Regular.woff2
    │   │   │   │       ├── KaTeX_Size2-Regular.woff
    │   │   │   │       ├── KaTeX_Size2-Regular.woff2
    │   │   │   │       ├── KaTeX_Size3-Regular.woff
    │   │   │   │       ├── KaTeX_Size3-Regular.woff2
    │   │   │   │       ├── KaTeX_Size4-Regular.woff
    │   │   │   │       ├── KaTeX_Size4-Regular.woff2
    │   │   │   │       ├── KaTeX_Typewriter-Regular.woff
    │   │   │   │       └── KaTeX_Typewriter-Regular.woff2
    │   │   │   └── mathjax/
    │   │   │       ├── extensions/
    │   │   │       │   ├── asciimath2jax.js
    │   │   │       │   ├── AssistiveMML.js
    │   │   │       │   ├── CHTML-preview.js
    │   │   │       │   ├── fast-preview.js
    │   │   │       │   ├── FontWarnings.js
    │   │   │       │   ├── HelpDialog.js
    │   │   │       │   ├── jsMath2jax.js
    │   │   │       │   ├── MatchWebFonts.js
    │   │   │       │   ├── MathEvents.js
    │   │   │       │   ├── MathMenu.js
    │   │   │       │   ├── MathZoom.js
    │   │   │       │   ├── mml2jax.js
    │   │   │       │   ├── Safe.js
    │   │   │       │   ├── tex2jax.js
    │   │   │       │   ├── toMathML.js
    │   │   │       │   ├── a11y/
    │   │   │       │   │   ├── accessibility-menu.js
    │   │   │       │   │   ├── auto-collapse.js
    │   │   │       │   │   ├── collapsible.js
    │   │   │       │   │   ├── explorer.js
    │   │   │       │   │   ├── invalid_keypress.ogg
    │   │   │       │   │   ├── semantic-enrich.js
    │   │   │       │   │   ├── wgxpath.install.js
    │   │   │       │   │   └── mathmaps/
    │   │   │       │   │       ├── en/
    │   │   │       │   │       │   ├── functions/
    │   │   │       │   │       │   │   ├── algebra.js
    │   │   │       │   │       │   │   ├── elementary.js
    │   │   │       │   │       │   │   ├── hyperbolic.js
    │   │   │       │   │       │   │   └── trigonometry.js
    │   │   │       │   │       │   ├── symbols/
    │   │   │       │   │       │   │   ├── greek-capital.js
    │   │   │       │   │       │   │   ├── greek-mathfonts-bold.js
    │   │   │       │   │       │   │   ├── greek-mathfonts-italic.js
    │   │   │       │   │       │   │   ├── greek-mathfonts-sans-serif-bold.js
    │   │   │       │   │       │   │   ├── greek-scripts.js
    │   │   │       │   │       │   │   ├── greek-small.js
    │   │   │       │   │       │   │   ├── greek-symbols.js
    │   │   │       │   │       │   │   ├── hebrew_letters.js
    │   │   │       │   │       │   │   ├── latin-lower-double-accent.js
    │   │   │       │   │       │   │   ├── latin-lower-normal.js
    │   │   │       │   │       │   │   ├── latin-lower-phonetic.js
    │   │   │       │   │       │   │   ├── latin-mathfonts-bold-fraktur.js
    │   │   │       │   │       │   │   ├── latin-mathfonts-bold-script.js
    │   │   │       │   │       │   │   ├── latin-mathfonts-bold.js
    │   │   │       │   │       │   │   ├── latin-mathfonts-double-struck.js
    │   │   │       │   │       │   │   ├── latin-mathfonts-fraktur.js
    │   │   │       │   │       │   │   ├── latin-mathfonts-italic.js
    │   │   │       │   │       │   │   ├── latin-mathfonts-monospace.js
    │   │   │       │   │       │   │   ├── latin-mathfonts-sans-serif-bold.js
    │   │   │       │   │       │   │   ├── latin-mathfonts-sans-serif-italic.js
    │   │   │       │   │       │   │   ├── latin-mathfonts-sans-serif.js
    │   │   │       │   │       │   │   ├── latin-mathfonts-script.js
    │   │   │       │   │       │   │   ├── latin-rest.js
    │   │   │       │   │       │   │   ├── latin-upper-double-accent.js
    │   │   │       │   │       │   │   ├── latin-upper-normal.js
    │   │   │       │   │       │   │   ├── math_angles.js
    │   │   │       │   │       │   │   ├── math_characters.js
    │   │   │       │   │       │   │   ├── math_delimiters.js
    │   │   │       │   │       │   │   ├── math_digits.js
    │   │   │       │   │       │   │   ├── math_geometry.js
    │   │   │       │   │       │   │   ├── math_harpoons.js
    │   │   │       │   │       │   │   ├── math_non_characters.js
    │   │   │       │   │       │   │   ├── math_whitespace.js
    │   │   │       │   │       │   │   └── other_stars.js
    │   │   │       │   │       │   └── units/
    │   │   │       │   │       │       ├── energy.js
    │   │   │       │   │       │       ├── length.js
    │   │   │       │   │       │       ├── memory.js
    │   │   │       │   │       │       ├── other.js
    │   │   │       │   │       │       ├── speed.js
    │   │   │       │   │       │       ├── temperature.js
    │   │   │       │   │       │       ├── time.js
    │   │   │       │   │       │       ├── volume.js
    │   │   │       │   │       │       └── weight.js
    │   │   │       │   │       └── es/
    │   │   │       │   │           ├── functions/
    │   │   │       │   │           │   ├── algebra.js
    │   │   │       │   │           │   ├── elementary.js
    │   │   │       │   │           │   ├── hyperbolic.js
    │   │   │       │   │           │   └── trigonometry.js
    │   │   │       │   │           ├── symbols/
    │   │   │       │   │           │   ├── greek-capital.js
    │   │   │       │   │           │   ├── greek-mathfonts-bold.js
    │   │   │       │   │           │   ├── greek-mathfonts-italic.js
    │   │   │       │   │           │   ├── greek-mathfonts-sans-serif-bold.js
    │   │   │       │   │           │   ├── greek-scripts.js
    │   │   │       │   │           │   ├── greek-small.js
    │   │   │       │   │           │   ├── greek-symbols.js
    │   │   │       │   │           │   ├── hebrew_letters.js
    │   │   │       │   │           │   ├── latin-lower-double-accent.js
    │   │   │       │   │           │   ├── latin-lower-normal.js
    │   │   │       │   │           │   ├── latin-lower-phonetic.js
    │   │   │       │   │           │   ├── latin-lower-single-accent.js
    │   │   │       │   │           │   ├── latin-mathfonts-bold-fraktur.js
    │   │   │       │   │           │   ├── latin-mathfonts-bold-script.js
    │   │   │       │   │           │   ├── latin-mathfonts-bold.js
    │   │   │       │   │           │   ├── latin-mathfonts-double-struck.js
    │   │   │       │   │           │   ├── latin-mathfonts-fraktur.js
    │   │   │       │   │           │   ├── latin-mathfonts-italic.js
    │   │   │       │   │           │   ├── latin-mathfonts-monospace.js
    │   │   │       │   │           │   ├── latin-mathfonts-sans-serif-bold.js
    │   │   │       │   │           │   ├── latin-mathfonts-sans-serif-italic.js
    │   │   │       │   │           │   ├── latin-mathfonts-sans-serif.js
    │   │   │       │   │           │   ├── latin-mathfonts-script.js
    │   │   │       │   │           │   ├── latin-rest.js
    │   │   │       │   │           │   ├── latin-upper-double-accent.js
    │   │   │       │   │           │   ├── latin-upper-normal.js
    │   │   │       │   │           │   ├── latin-upper-single-accent.js
    │   │   │       │   │           │   ├── math_angles.js
    │   │   │       │   │           │   ├── math_arrows.js
    │   │   │       │   │           │   ├── math_characters.js
    │   │   │       │   │           │   ├── math_delimiters.js
    │   │   │       │   │           │   ├── math_digits.js
    │   │   │       │   │           │   ├── math_geometry.js
    │   │   │       │   │           │   ├── math_harpoons.js
    │   │   │       │   │           │   ├── math_non_characters.js
    │   │   │       │   │           │   ├── math_symbols.js
    │   │   │       │   │           │   ├── math_whitespace.js
    │   │   │       │   │           │   └── other_stars.js
    │   │   │       │   │           └── units/
    │   │   │       │   │               ├── energy.js
    │   │   │       │   │               ├── length.js
    │   │   │       │   │               ├── memory.js
    │   │   │       │   │               ├── other.js
    │   │   │       │   │               ├── speed.js
    │   │   │       │   │               ├── temperature.js
    │   │   │       │   │               ├── time.js
    │   │   │       │   │               ├── volume.js
    │   │   │       │   │               └── weight.js
    │   │   │       │   ├── HTML-CSS/
    │   │   │       │   │   └── handle-floats.js
    │   │   │       │   ├── MathML/
    │   │   │       │   │   ├── content-mathml.js
    │   │   │       │   │   └── mml3.js
    │   │   │       │   └── TeX/
    │   │   │       │       ├── action.js
    │   │   │       │       ├── AMScd.js
    │   │   │       │       ├── AMSmath.js
    │   │   │       │       ├── AMSsymbols.js
    │   │   │       │       ├── autobold.js
    │   │   │       │       ├── autoload-all.js
    │   │   │       │       ├── bbox.js
    │   │   │       │       ├── begingroup.js
    │   │   │       │       ├── boldsymbol.js
    │   │   │       │       ├── cancel.js
    │   │   │       │       ├── color.js
    │   │   │       │       ├── enclose.js
    │   │   │       │       ├── extpfeil.js
    │   │   │       │       ├── HTML.js
    │   │   │       │       ├── mathchoice.js
    │   │   │       │       ├── mediawiki-texvc.js
    │   │   │       │       ├── mhchem.js
    │   │   │       │       ├── newcommand.js
    │   │   │       │       ├── noErrors.js
    │   │   │       │       ├── noUndefined.js
    │   │   │       │       ├── unicode.js
    │   │   │       │       ├── verb.js
    │   │   │       │       └── mhchem3/
    │   │   │       │           └── mhchem.js
    │   │   │       ├── fonts/
    │   │   │       │   └── HTML-CSS/
    │   │   │       │       └── TeX/
    │   │   │       │           ├── eot/
    │   │   │       │           │   ├── MathJax_Caligraphic-Bold.eot
    │   │   │       │           │   ├── MathJax_Caligraphic-Regular.eot
    │   │   │       │           │   ├── MathJax_Fraktur-Bold.eot
    │   │   │       │           │   ├── MathJax_Fraktur-Regular.eot
    │   │   │       │           │   ├── MathJax_Main-Bold.eot
    │   │   │       │           │   ├── MathJax_Main-Italic.eot
    │   │   │       │           │   ├── MathJax_Main-Regular.eot
    │   │   │       │           │   ├── MathJax_Math-BoldItalic.eot
    │   │   │       │           │   ├── MathJax_Math-Italic.eot
    │   │   │       │           │   ├── MathJax_Math-Regular.eot
    │   │   │       │           │   ├── MathJax_SansSerif-Bold.eot
    │   │   │       │           │   ├── MathJax_SansSerif-Italic.eot
    │   │   │       │           │   ├── MathJax_SansSerif-Regular.eot
    │   │   │       │           │   ├── MathJax_Script-Regular.eot
    │   │   │       │           │   ├── MathJax_Size1-Regular.eot
    │   │   │       │           │   ├── MathJax_Size2-Regular.eot
    │   │   │       │           │   ├── MathJax_Size3-Regular.eot
    │   │   │       │           │   ├── MathJax_Size4-Regular.eot
    │   │   │       │           │   ├── MathJax_Typewriter-Regular.eot
    │   │   │       │           │   ├── MathJax_Vector-Bold.eot
    │   │   │       │           │   ├── MathJax_Vector-Regular.eot
    │   │   │       │           │   └── MathJax_WinIE6-Regular.eot
    │   │   │       │           ├── otf/
    │   │   │       │           │   ├── MathJax_Caligraphic-Bold.otf
    │   │   │       │           │   ├── MathJax_Caligraphic-Regular.otf
    │   │   │       │           │   ├── MathJax_Fraktur-Bold.otf
    │   │   │       │           │   ├── MathJax_Fraktur-Regular.otf
    │   │   │       │           │   ├── MathJax_Main-Bold.otf
    │   │   │       │           │   ├── MathJax_Main-Italic.otf
    │   │   │       │           │   ├── MathJax_Main-Regular.otf
    │   │   │       │           │   ├── MathJax_Math-BoldItalic.otf
    │   │   │       │           │   ├── MathJax_Math-Italic.otf
    │   │   │       │           │   ├── MathJax_Math-Regular.otf
    │   │   │       │           │   ├── MathJax_SansSerif-Bold.otf
    │   │   │       │           │   ├── MathJax_SansSerif-Italic.otf
    │   │   │       │           │   ├── MathJax_SansSerif-Regular.otf
    │   │   │       │           │   ├── MathJax_Script-Regular.otf
    │   │   │       │           │   ├── MathJax_Size1-Regular.otf
    │   │   │       │           │   ├── MathJax_Size2-Regular.otf
    │   │   │       │           │   ├── MathJax_Size3-Regular.otf
    │   │   │       │           │   ├── MathJax_Size4-Regular.otf
    │   │   │       │           │   ├── MathJax_Typewriter-Regular.otf
    │   │   │       │           │   ├── MathJax_Vector-Bold.otf
    │   │   │       │           │   ├── MathJax_Vector-Regular.otf
    │   │   │       │           │   ├── MathJax_WinChrome-Regular.otf
    │   │   │       │           │   └── MathJax_WinIE6-Regular.otf
    │   │   │       │           └── woff/
    │   │   │       │               ├── MathJax_AMS-Regular.woff
    │   │   │       │               ├── MathJax_Caligraphic-Bold.woff
    │   │   │       │               ├── MathJax_Caligraphic-Regular.woff
    │   │   │       │               ├── MathJax_Fraktur-Bold.woff
    │   │   │       │               ├── MathJax_Fraktur-Regular.woff
    │   │   │       │               ├── MathJax_Main-Bold.woff
    │   │   │       │               ├── MathJax_Main-Italic.woff
    │   │   │       │               ├── MathJax_Main-Regular.woff
    │   │   │       │               ├── MathJax_Math-BoldItalic.woff
    │   │   │       │               ├── MathJax_Math-Italic.woff
    │   │   │       │               ├── MathJax_Math-Regular.woff
    │   │   │       │               ├── MathJax_SansSerif-Bold.woff
    │   │   │       │               ├── MathJax_SansSerif-Italic.woff
    │   │   │       │               ├── MathJax_SansSerif-Regular.woff
    │   │   │       │               ├── MathJax_Script-Regular.woff
    │   │   │       │               ├── MathJax_Size1-Regular.woff
    │   │   │       │               ├── MathJax_Size2-Regular.woff
    │   │   │       │               ├── MathJax_Size3-Regular.woff
    │   │   │       │               ├── MathJax_Size4-Regular.woff
    │   │   │       │               ├── MathJax_Typewriter-Regular.woff
    │   │   │       │               ├── MathJax_Vector-Bold.woff
    │   │   │       │               └── MathJax_Vector-Regular.woff
    │   │   │       └── jax/
    │   │   │           ├── element/
    │   │   │           │   └── mml/
    │   │   │           │       ├── jax.js
    │   │   │           │       └── optable/
    │   │   │           │           ├── Arrows.js
    │   │   │           │           ├── BasicLatin.js
    │   │   │           │           ├── CombDiacritMarks.js
    │   │   │           │           ├── CombDiactForSymbols.js
    │   │   │           │           ├── Dingbats.js
    │   │   │           │           ├── GeneralPunctuation.js
    │   │   │           │           ├── GeometricShapes.js
    │   │   │           │           ├── GreekAndCoptic.js
    │   │   │           │           ├── Latin1Supplement.js
    │   │   │           │           ├── LetterlikeSymbols.js
    │   │   │           │           ├── MathOperators.js
    │   │   │           │           ├── MiscMathSymbolsA.js
    │   │   │           │           ├── MiscMathSymbolsB.js
    │   │   │           │           ├── MiscSymbolsAndArrows.js
    │   │   │           │           ├── MiscTechnical.js
    │   │   │           │           ├── SpacingModLetters.js
    │   │   │           │           ├── SupplementalArrowsA.js
    │   │   │           │           ├── SupplementalArrowsB.js
    │   │   │           │           └── SuppMathOperators.js
    │   │   │           ├── input/
    │   │   │           │   ├── AsciiMath/
    │   │   │           │   │   ├── config.js
    │   │   │           │   │   └── jax.js
    │   │   │           │   ├── MathML/
    │   │   │           │   │   ├── config.js
    │   │   │           │   │   ├── jax.js
    │   │   │           │   │   └── entities/
    │   │   │           │   │       ├── a.js
    │   │   │           │   │       ├── b.js
    │   │   │           │   │       ├── c.js
    │   │   │           │   │       ├── d.js
    │   │   │           │   │       ├── e.js
    │   │   │           │   │       ├── f.js
    │   │   │           │   │       ├── fr.js
    │   │   │           │   │       ├── g.js
    │   │   │           │   │       ├── h.js
    │   │   │           │   │       ├── i.js
    │   │   │           │   │       ├── j.js
    │   │   │           │   │       ├── k.js
    │   │   │           │   │       ├── l.js
    │   │   │           │   │       ├── m.js
    │   │   │           │   │       ├── n.js
    │   │   │           │   │       ├── o.js
    │   │   │           │   │       ├── opf.js
    │   │   │           │   │       ├── p.js
    │   │   │           │   │       ├── q.js
    │   │   │           │   │       ├── r.js
    │   │   │           │   │       ├── s.js
    │   │   │           │   │       ├── scr.js
    │   │   │           │   │       ├── t.js
    │   │   │           │   │       ├── u.js
    │   │   │           │   │       ├── v.js
    │   │   │           │   │       ├── w.js
    │   │   │           │   │       ├── x.js
    │   │   │           │   │       ├── y.js
    │   │   │           │   │       └── z.js
    │   │   │           │   └── TeX/
    │   │   │           │       └── config.js
    │   │   │           └── output/
    │   │   │               ├── CommonHTML/
    │   │   │               │   ├── config.js
    │   │   │               │   ├── autoload/
    │   │   │               │   │   ├── annotation-xml.js
    │   │   │               │   │   ├── maction.js
    │   │   │               │   │   ├── menclose.js
    │   │   │               │   │   ├── mglyph.js
    │   │   │               │   │   ├── mmultiscripts.js
    │   │   │               │   │   ├── ms.js
    │   │   │               │   │   ├── mtable.js
    │   │   │               │   │   └── multiline.js
    │   │   │               │   └── fonts/
    │   │   │               │       └── TeX/
    │   │   │               │           ├── AMS-Regular.js
    │   │   │               │           ├── Caligraphic-Bold.js
    │   │   │               │           ├── fontdata-extra.js
    │   │   │               │           ├── fontdata.js
    │   │   │               │           ├── Fraktur-Bold.js
    │   │   │               │           ├── Fraktur-Regular.js
    │   │   │               │           ├── Main-Bold.js
    │   │   │               │           ├── Math-BoldItalic.js
    │   │   │               │           ├── SansSerif-Bold.js
    │   │   │               │           ├── SansSerif-Italic.js
    │   │   │               │           ├── SansSerif-Regular.js
    │   │   │               │           ├── Script-Regular.js
    │   │   │               │           └── Typewriter-Regular.js
    │   │   │               ├── HTML-CSS/
    │   │   │               │   ├── config.js
    │   │   │               │   ├── imageFonts.js
    │   │   │               │   ├── autoload/
    │   │   │               │   │   ├── annotation-xml.js
    │   │   │               │   │   ├── maction.js
    │   │   │               │   │   ├── menclose.js
    │   │   │               │   │   ├── mglyph.js
    │   │   │               │   │   ├── mmultiscripts.js
    │   │   │               │   │   ├── ms.js
    │   │   │               │   │   ├── mtable.js
    │   │   │               │   │   └── multiline.js
    │   │   │               │   └── fonts/
    │   │   │               │       ├── Asana-Math/
    │   │   │               │       │   ├── fontdata-extra.js
    │   │   │               │       │   ├── fontdata.js
    │   │   │               │       │   ├── Alphabets/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Arrows/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── DoubleStruck/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Fraktur/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Latin/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Main/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Marks/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Misc/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Monospace/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── NonUnicode/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Normal/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Operators/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── SansSerif/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Script/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Shapes/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size1/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size2/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size3/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size4/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size5/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size6/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Symbols/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   └── Variants/
    │   │   │               │       │       └── Regular/
    │   │   │               │       │           └── Main.js
    │   │   │               │       ├── Gyre-Pagella/
    │   │   │               │       │   ├── fontdata-extra.js
    │   │   │               │       │   ├── fontdata.js
    │   │   │               │       │   ├── Alphabets/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Arrows/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── DoubleStruck/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Fraktur/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Latin/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Main/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Marks/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Misc/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Monospace/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── NonUnicode/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Normal/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Operators/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── SansSerif/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Script/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Shapes/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size1/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size2/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size3/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size4/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size5/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size6/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Symbols/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   └── Variants/
    │   │   │               │       │       └── Regular/
    │   │   │               │       │           └── Main.js
    │   │   │               │       ├── Gyre-Termes/
    │   │   │               │       │   ├── fontdata-extra.js
    │   │   │               │       │   ├── fontdata.js
    │   │   │               │       │   ├── Alphabets/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Arrows/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── DoubleStruck/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Fraktur/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Latin/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Main/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Marks/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Misc/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Monospace/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── NonUnicode/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Normal/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Operators/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── SansSerif/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Script/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Shapes/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size1/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size2/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size3/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size4/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size5/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size6/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Symbols/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   └── Variants/
    │   │   │               │       │       └── Regular/
    │   │   │               │       │           └── Main.js
    │   │   │               │       ├── Latin-Modern/
    │   │   │               │       │   ├── fontdata-extra.js
    │   │   │               │       │   ├── fontdata.js
    │   │   │               │       │   ├── Alphabets/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Arrows/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── DoubleStruck/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Fraktur/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Latin/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Main/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Marks/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Misc/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Monospace/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Normal/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Operators/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── SansSerif/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Script/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Shapes/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size1/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size2/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size3/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size4/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size5/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size6/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size7/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Symbols/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   └── Variants/
    │   │   │               │       │       └── Regular/
    │   │   │               │       │           └── Main.js
    │   │   │               │       ├── Neo-Euler/
    │   │   │               │       │   ├── fontdata-extra.js
    │   │   │               │       │   ├── fontdata.js
    │   │   │               │       │   ├── Alphabets/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Arrows/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Fraktur/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Main/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Marks/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── NonUnicode/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Normal/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Operators/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Script/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Shapes/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size1/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size2/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size3/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size4/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size5/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Symbols/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   └── Variants/
    │   │   │               │       │       └── Regular/
    │   │   │               │       │           └── Main.js
    │   │   │               │       ├── STIX/
    │   │   │               │       │   ├── fontdata-1.0.js
    │   │   │               │       │   ├── fontdata-beta.js
    │   │   │               │       │   ├── fontdata-extra.js
    │   │   │               │       │   ├── fontdata.js
    │   │   │               │       │   ├── General/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   ├── AlphaPresentForms.js
    │   │   │               │       │   │   │   ├── Arrows.js
    │   │   │               │       │   │   │   ├── BBBold.js
    │   │   │               │       │   │   │   ├── BoldFraktur.js
    │   │   │               │       │   │   │   ├── BoxDrawing.js
    │   │   │               │       │   │   │   ├── CombDiacritMarks.js
    │   │   │               │       │   │   │   ├── CombDiactForSymbols.js
    │   │   │               │       │   │   │   ├── ControlPictures.js
    │   │   │               │       │   │   │   ├── CurrencySymbols.js
    │   │   │               │       │   │   │   ├── Cyrillic.js
    │   │   │               │       │   │   │   ├── EnclosedAlphanum.js
    │   │   │               │       │   │   │   ├── GeneralPunctuation.js
    │   │   │               │       │   │   │   ├── GeometricShapes.js
    │   │   │               │       │   │   │   ├── GreekAndCoptic.js
    │   │   │               │       │   │   │   ├── GreekBold.js
    │   │   │               │       │   │   │   ├── GreekSSBold.js
    │   │   │               │       │   │   │   ├── IPAExtensions.js
    │   │   │               │       │   │   │   ├── Latin1Supplement.js
    │   │   │               │       │   │   │   ├── LatinExtendedA.js
    │   │   │               │       │   │   │   ├── LatinExtendedAdditional.js
    │   │   │               │       │   │   │   ├── LatinExtendedB.js
    │   │   │               │       │   │   │   ├── LatinExtendedD.js
    │   │   │               │       │   │   │   ├── LetterlikeSymbols.js
    │   │   │               │       │   │   │   ├── Main.js
    │   │   │               │       │   │   │   ├── MathBold.js
    │   │   │               │       │   │   │   ├── MathOperators.js
    │   │   │               │       │   │   │   ├── MathSSBold.js
    │   │   │               │       │   │   │   ├── MiscMathSymbolsA.js
    │   │   │               │       │   │   │   ├── MiscMathSymbolsB.js
    │   │   │               │       │   │   │   ├── MiscSymbols.js
    │   │   │               │       │   │   │   ├── MiscTechnical.js
    │   │   │               │       │   │   │   ├── NumberForms.js
    │   │   │               │       │   │   │   ├── PhoneticExtensions.js
    │   │   │               │       │   │   │   ├── SpacingModLetters.js
    │   │   │               │       │   │   │   ├── SuperAndSubscripts.js
    │   │   │               │       │   │   │   └── SuppMathOperators.js
    │   │   │               │       │   │   ├── BoldItalic/
    │   │   │               │       │   │   │   ├── AlphaPresentForms.js
    │   │   │               │       │   │   │   ├── BasicLatin.js
    │   │   │               │       │   │   │   ├── BoxDrawing.js
    │   │   │               │       │   │   │   ├── CombDiactForSymbols.js
    │   │   │               │       │   │   │   ├── ControlPictures.js
    │   │   │               │       │   │   │   ├── CurrencySymbols.js
    │   │   │               │       │   │   │   ├── Cyrillic.js
    │   │   │               │       │   │   │   ├── EnclosedAlphanum.js
    │   │   │               │       │   │   │   ├── GeneralPunctuation.js
    │   │   │               │       │   │   │   ├── GreekAndCoptic.js
    │   │   │               │       │   │   │   ├── GreekBoldItalic.js
    │   │   │               │       │   │   │   ├── GreekSSBoldItalic.js
    │   │   │               │       │   │   │   ├── IPAExtensions.js
    │   │   │               │       │   │   │   ├── Latin1Supplement.js
    │   │   │               │       │   │   │   ├── LatinExtendedA.js
    │   │   │               │       │   │   │   ├── LatinExtendedAdditional.js
    │   │   │               │       │   │   │   ├── LatinExtendedB.js
    │   │   │               │       │   │   │   ├── LetterlikeSymbols.js
    │   │   │               │       │   │   │   ├── Main.js
    │   │   │               │       │   │   │   ├── MathBoldItalic.js
    │   │   │               │       │   │   │   ├── MathBoldScript.js
    │   │   │               │       │   │   │   ├── MathOperators.js
    │   │   │               │       │   │   │   ├── MathSSItalicBold.js
    │   │   │               │       │   │   │   └── SpacingModLetters.js
    │   │   │               │       │   │   ├── Italic/
    │   │   │               │       │   │   │   ├── AlphaPresentForms.js
    │   │   │               │       │   │   │   ├── BoxDrawing.js
    │   │   │               │       │   │   │   ├── CombDiactForSymbols.js
    │   │   │               │       │   │   │   ├── ControlPictures.js
    │   │   │               │       │   │   │   ├── CurrencySymbols.js
    │   │   │               │       │   │   │   ├── Cyrillic.js
    │   │   │               │       │   │   │   ├── EnclosedAlphanum.js
    │   │   │               │       │   │   │   ├── GeneralPunctuation.js
    │   │   │               │       │   │   │   ├── GreekAndCoptic.js
    │   │   │               │       │   │   │   ├── GreekItalic.js
    │   │   │               │       │   │   │   ├── ij.js
    │   │   │               │       │   │   │   ├── IPAExtensions.js
    │   │   │               │       │   │   │   ├── Latin1Supplement.js
    │   │   │               │       │   │   │   ├── LatinExtendedA.js
    │   │   │               │       │   │   │   ├── LatinExtendedAdditional.js
    │   │   │               │       │   │   │   ├── LatinExtendedB.js
    │   │   │               │       │   │   │   ├── LetterlikeSymbols.js
    │   │   │               │       │   │   │   ├── Main.js
    │   │   │               │       │   │   │   ├── MathItalic.js
    │   │   │               │       │   │   │   ├── MathOperators.js
    │   │   │               │       │   │   │   ├── MathScript.js
    │   │   │               │       │   │   │   ├── MathSSItalic.js
    │   │   │               │       │   │   │   └── SpacingModLetters.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       ├── AlphaPresentForms.js
    │   │   │               │       │   │       ├── Arrows.js
    │   │   │               │       │   │       ├── BBBold.js
    │   │   │               │       │   │       ├── BlockElements.js
    │   │   │               │       │   │       ├── BoldFraktur.js
    │   │   │               │       │   │       ├── BoxDrawing.js
    │   │   │               │       │   │       ├── CJK.js
    │   │   │               │       │   │       ├── CombDiacritMarks.js
    │   │   │               │       │   │       ├── CombDiactForSymbols.js
    │   │   │               │       │   │       ├── ControlPictures.js
    │   │   │               │       │   │       ├── CurrencySymbols.js
    │   │   │               │       │   │       ├── Cyrillic.js
    │   │   │               │       │   │       ├── Dingbats.js
    │   │   │               │       │   │       ├── EnclosedAlphanum.js
    │   │   │               │       │   │       ├── Fraktur.js
    │   │   │               │       │   │       ├── GeneralPunctuation.js
    │   │   │               │       │   │       ├── GeometricShapes.js
    │   │   │               │       │   │       ├── GreekAndCoptic.js
    │   │   │               │       │   │       ├── GreekBold.js
    │   │   │               │       │   │       ├── GreekBoldItalic.js
    │   │   │               │       │   │       ├── GreekItalic.js
    │   │   │               │       │   │       ├── GreekSSBold.js
    │   │   │               │       │   │       ├── GreekSSBoldItalic.js
    │   │   │               │       │   │       ├── Hiragana.js
    │   │   │               │       │   │       ├── ij.js
    │   │   │               │       │   │       ├── IPAExtensions.js
    │   │   │               │       │   │       ├── Latin1Supplement.js
    │   │   │               │       │   │       ├── LatinExtendedA.js
    │   │   │               │       │   │       ├── LatinExtendedAdditional.js
    │   │   │               │       │   │       ├── LatinExtendedB.js
    │   │   │               │       │   │       ├── LatinExtendedD.js
    │   │   │               │       │   │       ├── LetterlikeSymbols.js
    │   │   │               │       │   │       ├── Main.js
    │   │   │               │       │   │       ├── MathBold.js
    │   │   │               │       │   │       ├── MathBoldItalic.js
    │   │   │               │       │   │       ├── MathBoldScript.js
    │   │   │               │       │   │       ├── MathItalic.js
    │   │   │               │       │   │       ├── MathOperators.js
    │   │   │               │       │   │       ├── MathScript.js
    │   │   │               │       │   │       ├── MathSS.js
    │   │   │               │       │   │       ├── MathSSBold.js
    │   │   │               │       │   │       ├── MathSSItalic.js
    │   │   │               │       │   │       ├── MathSSItalicBold.js
    │   │   │               │       │   │       ├── MathTT.js
    │   │   │               │       │   │       ├── MiscMathSymbolsA.js
    │   │   │               │       │   │       ├── MiscMathSymbolsB.js
    │   │   │               │       │   │       ├── MiscSymbols.js
    │   │   │               │       │   │       ├── MiscSymbolsAndArrows.js
    │   │   │               │       │   │       ├── MiscTechnical.js
    │   │   │               │       │   │       ├── NumberForms.js
    │   │   │               │       │   │       ├── PhoneticExtensions.js
    │   │   │               │       │   │       ├── SpacingModLetters.js
    │   │   │               │       │   │       ├── Specials.js
    │   │   │               │       │   │       ├── SuperAndSubscripts.js
    │   │   │               │       │   │       ├── SupplementalArrowsA.js
    │   │   │               │       │   │       ├── SupplementalArrowsB.js
    │   │   │               │       │   │       └── SuppMathOperators.js
    │   │   │               │       │   ├── IntegralsD/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── All.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       ├── All.js
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── IntegralsSm/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── All.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       ├── All.js
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── IntegralsUp/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── All.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       ├── All.js
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── IntegralsUpD/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── All.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       ├── All.js
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── IntegralsUpSm/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── All.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       ├── All.js
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── NonUnicode/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   ├── All.js
    │   │   │               │       │   │   │   ├── Main.js
    │   │   │               │       │   │   │   └── PrivateUse.js
    │   │   │               │       │   │   ├── BoldItalic/
    │   │   │               │       │   │   │   ├── All.js
    │   │   │               │       │   │   │   ├── Main.js
    │   │   │               │       │   │   │   └── PrivateUse.js
    │   │   │               │       │   │   ├── Italic/
    │   │   │               │       │   │   │   ├── All.js
    │   │   │               │       │   │   │   ├── Main.js
    │   │   │               │       │   │   │   └── PrivateUse.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       ├── All.js
    │   │   │               │       │   │       ├── Main.js
    │   │   │               │       │   │       └── PrivateUse.js
    │   │   │               │       │   ├── SizeFiveSym/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       ├── All.js
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── SizeFourSym/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       ├── All.js
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── SizeOneSym/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   ├── All.js
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       ├── All.js
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── SizeThreeSym/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       ├── All.js
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── SizeTwoSym/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       ├── All.js
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   └── Variants/
    │   │   │               │       │       ├── Bold/
    │   │   │               │       │       │   ├── All.js
    │   │   │               │       │       │   └── Main.js
    │   │   │               │       │       └── Regular/
    │   │   │               │       │           ├── All.js
    │   │   │               │       │           └── Main.js
    │   │   │               │       ├── STIX-Web/
    │   │   │               │       │   ├── fontdata-extra.js
    │   │   │               │       │   ├── fontdata.js
    │   │   │               │       │   ├── Alphabets/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   ├── BoldItalic/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   ├── Italic/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Arrows/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── DoubleStruck/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   ├── BoldItalic/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   ├── Italic/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Fraktur/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Latin/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   ├── BoldItalic/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   ├── Italic/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Main/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   ├── BoldItalic/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   ├── Italic/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Marks/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   ├── BoldItalic/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   ├── Italic/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Misc/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   ├── BoldItalic/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   ├── Italic/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Monospace/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Normal/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   ├── BoldItalic/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   └── Italic/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Operators/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── SansSerif/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   ├── BoldItalic/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   ├── Italic/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Script/
    │   │   │               │       │   │   ├── BoldItalic/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   ├── Italic/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Shapes/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   ├── BoldItalic/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size1/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size2/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size3/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size4/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Size5/
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   ├── Symbols/
    │   │   │               │       │   │   ├── Bold/
    │   │   │               │       │   │   │   └── Main.js
    │   │   │               │       │   │   └── Regular/
    │   │   │               │       │   │       └── Main.js
    │   │   │               │       │   └── Variants/
    │   │   │               │       │       ├── Bold/
    │   │   │               │       │       │   └── Main.js
    │   │   │               │       │       ├── BoldItalic/
    │   │   │               │       │       │   └── Main.js
    │   │   │               │       │       ├── Italic/
    │   │   │               │       │       │   └── Main.js
    │   │   │               │       │       └── Regular/
    │   │   │               │       │           └── Main.js
    │   │   │               │       └── TeX/
    │   │   │               │           ├── fontdata-extra.js
    │   │   │               │           ├── fontdata.js
    │   │   │               │           ├── AMS/
    │   │   │               │           │   └── Regular/
    │   │   │               │           │       ├── Arrows.js
    │   │   │               │           │       ├── BBBold.js
    │   │   │               │           │       ├── BoxDrawing.js
    │   │   │               │           │       ├── CombDiacritMarks.js
    │   │   │               │           │       ├── Dingbats.js
    │   │   │               │           │       ├── EnclosedAlphanum.js
    │   │   │               │           │       ├── GeneralPunctuation.js
    │   │   │               │           │       ├── GeometricShapes.js
    │   │   │               │           │       ├── GreekAndCoptic.js
    │   │   │               │           │       ├── Latin1Supplement.js
    │   │   │               │           │       ├── LatinExtendedA.js
    │   │   │               │           │       ├── LetterlikeSymbols.js
    │   │   │               │           │       ├── Main.js
    │   │   │               │           │       ├── MathOperators.js
    │   │   │               │           │       ├── MiscMathSymbolsB.js
    │   │   │               │           │       ├── MiscSymbols.js
    │   │   │               │           │       ├── MiscTechnical.js
    │   │   │               │           │       ├── PUA.js
    │   │   │               │           │       ├── SpacingModLetters.js
    │   │   │               │           │       └── SuppMathOperators.js
    │   │   │               │           ├── Caligraphic/
    │   │   │               │           │   ├── Bold/
    │   │   │               │           │   │   └── Main.js
    │   │   │               │           │   └── Regular/
    │   │   │               │           │       └── Main.js
    │   │   │               │           ├── Fraktur/
    │   │   │               │           │   ├── Bold/
    │   │   │               │           │   │   ├── BasicLatin.js
    │   │   │               │           │   │   ├── Main.js
    │   │   │               │           │   │   ├── Other.js
    │   │   │               │           │   │   └── PUA.js
    │   │   │               │           │   └── Regular/
    │   │   │               │           │       ├── BasicLatin.js
    │   │   │               │           │       ├── Main.js
    │   │   │               │           │       ├── Other.js
    │   │   │               │           │       └── PUA.js
    │   │   │               │           ├── Greek/
    │   │   │               │           │   ├── Bold/
    │   │   │               │           │   │   └── Main.js
    │   │   │               │           │   ├── BoldItalic/
    │   │   │               │           │   │   └── Main.js
    │   │   │               │           │   ├── Italic/
    │   │   │               │           │   │   └── Main.js
    │   │   │               │           │   └── Regular/
    │   │   │               │           │       └── Main.js
    │   │   │               │           ├── Main/
    │   │   │               │           │   ├── Bold/
    │   │   │               │           │   │   ├── Arrows.js
    │   │   │               │           │   │   ├── CombDiacritMarks.js
    │   │   │               │           │   │   ├── CombDiactForSymbols.js
    │   │   │               │           │   │   ├── GeneralPunctuation.js
    │   │   │               │           │   │   ├── GeometricShapes.js
    │   │   │               │           │   │   ├── Latin1Supplement.js
    │   │   │               │           │   │   ├── LatinExtendedA.js
    │   │   │               │           │   │   ├── LatinExtendedB.js
    │   │   │               │           │   │   ├── LetterlikeSymbols.js
    │   │   │               │           │   │   ├── Main.js
    │   │   │               │           │   │   ├── MathOperators.js
    │   │   │               │           │   │   ├── MiscMathSymbolsA.js
    │   │   │               │           │   │   ├── MiscSymbols.js
    │   │   │               │           │   │   ├── MiscTechnical.js
    │   │   │               │           │   │   ├── SpacingModLetters.js
    │   │   │               │           │   │   ├── SupplementalArrowsA.js
    │   │   │               │           │   │   └── SuppMathOperators.js
    │   │   │               │           │   ├── Italic/
    │   │   │               │           │   │   ├── CombDiacritMarks.js
    │   │   │               │           │   │   ├── GeneralPunctuation.js
    │   │   │               │           │   │   ├── Latin1Supplement.js
    │   │   │               │           │   │   ├── LetterlikeSymbols.js
    │   │   │               │           │   │   └── Main.js
    │   │   │               │           │   └── Regular/
    │   │   │               │           │       ├── CombDiacritMarks.js
    │   │   │               │           │       ├── GeometricShapes.js
    │   │   │               │           │       ├── Main.js
    │   │   │               │           │       ├── MiscSymbols.js
    │   │   │               │           │       └── SpacingModLetters.js
    │   │   │               │           ├── Math/
    │   │   │               │           │   ├── BoldItalic/
    │   │   │               │           │   │   └── Main.js
    │   │   │               │           │   └── Italic/
    │   │   │               │           │       └── Main.js
    │   │   │               │           ├── SansSerif/
    │   │   │               │           │   ├── Bold/
    │   │   │               │           │   │   ├── BasicLatin.js
    │   │   │               │           │   │   ├── CombDiacritMarks.js
    │   │   │               │           │   │   ├── Main.js
    │   │   │               │           │   │   └── Other.js
    │   │   │               │           │   ├── Italic/
    │   │   │               │           │   │   ├── BasicLatin.js
    │   │   │               │           │   │   ├── CombDiacritMarks.js
    │   │   │               │           │   │   ├── Main.js
    │   │   │               │           │   │   └── Other.js
    │   │   │               │           │   └── Regular/
    │   │   │               │           │       ├── BasicLatin.js
    │   │   │               │           │       ├── CombDiacritMarks.js
    │   │   │               │           │       ├── Main.js
    │   │   │               │           │       └── Other.js
    │   │   │               │           ├── Script/
    │   │   │               │           │   └── Regular/
    │   │   │               │           │       ├── BasicLatin.js
    │   │   │               │           │       ├── Main.js
    │   │   │               │           │       └── Other.js
    │   │   │               │           ├── Size1/
    │   │   │               │           │   └── Regular/
    │   │   │               │           │       └── Main.js
    │   │   │               │           ├── Size2/
    │   │   │               │           │   └── Regular/
    │   │   │               │           │       └── Main.js
    │   │   │               │           ├── Size3/
    │   │   │               │           │   └── Regular/
    │   │   │               │           │       └── Main.js
    │   │   │               │           ├── Size4/
    │   │   │               │           │   └── Regular/
    │   │   │               │           │       └── Main.js
    │   │   │               │           ├── Typewriter/
    │   │   │               │           │   └── Regular/
    │   │   │               │           │       ├── BasicLatin.js
    │   │   │               │           │       ├── CombDiacritMarks.js
    │   │   │               │           │       ├── Main.js
    │   │   │               │           │       └── Other.js
    │   │   │               │           ├── WinChrome/
    │   │   │               │           │   └── Regular/
    │   │   │               │           │       └── Main.js
    │   │   │               │           └── WinIE6/
    │   │   │               │               └── Regular/
    │   │   │               │                   ├── AMS.js
    │   │   │               │                   ├── Bold.js
    │   │   │               │                   └── Main.js
    │   │   │               ├── NativeMML/
    │   │   │               │   ├── config.js
    │   │   │               │   └── jax.js
    │   │   │               ├── PlainSource/
    │   │   │               │   ├── config.js
    │   │   │               │   └── jax.js
    │   │   │               ├── PreviewHTML/
    │   │   │               │   ├── config.js
    │   │   │               │   └── jax.js
    │   │   │               └── SVG/
    │   │   │                   ├── config.js
    │   │   │                   ├── autoload/
    │   │   │                   │   ├── annotation-xml.js
    │   │   │                   │   ├── maction.js
    │   │   │                   │   ├── menclose.js
    │   │   │                   │   ├── mglyph.js
    │   │   │                   │   ├── mmultiscripts.js
    │   │   │                   │   ├── ms.js
    │   │   │                   │   ├── mtable.js
    │   │   │                   │   └── multiline.js
    │   │   │                   └── fonts/
    │   │   │                       ├── Asana-Math/
    │   │   │                       │   ├── fontdata-extra.js
    │   │   │                       │   ├── fontdata.js
    │   │   │                       │   ├── Arrows/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── DoubleStruck/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Fraktur/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Latin/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Marks/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Misc/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Monospace/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Shapes/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size1/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size2/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size3/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size4/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size5/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size6/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Symbols/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   └── Variants/
    │   │   │                       │       └── Regular/
    │   │   │                       │           └── Main.js
    │   │   │                       ├── Gyre-Pagella/
    │   │   │                       │   ├── fontdata-extra.js
    │   │   │                       │   ├── fontdata.js
    │   │   │                       │   ├── Alphabets/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Arrows/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── DoubleStruck/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Marks/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Misc/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Monospace/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Operators/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Shapes/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size2/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size3/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size4/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size5/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Symbols/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   └── Variants/
    │   │   │                       │       └── Regular/
    │   │   │                       │           └── Main.js
    │   │   │                       ├── Gyre-Termes/
    │   │   │                       │   ├── fontdata-extra.js
    │   │   │                       │   ├── fontdata.js
    │   │   │                       │   ├── Alphabets/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Arrows/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── DoubleStruck/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Marks/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Misc/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Monospace/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Operators/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Shapes/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size1/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size2/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size3/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size4/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size5/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size6/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Symbols/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   └── Variants/
    │   │   │                       │       └── Regular/
    │   │   │                       │           └── Main.js
    │   │   │                       ├── Latin-Modern/
    │   │   │                       │   ├── fontdata-extra.js
    │   │   │                       │   ├── fontdata.js
    │   │   │                       │   ├── Alphabets/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Arrows/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── DoubleStruck/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Marks/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Misc/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Monospace/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Operators/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Script/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Shapes/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size2/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size3/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size4/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size5/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size6/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Symbols/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   └── Variants/
    │   │   │                       │       └── Regular/
    │   │   │                       │           └── Main.js
    │   │   │                       ├── Neo-Euler/
    │   │   │                       │   ├── fontdata-extra.js
    │   │   │                       │   ├── fontdata.js
    │   │   │                       │   ├── Alphabets/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Arrows/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Marks/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Operators/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Script/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Shapes/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size1/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size2/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size3/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size4/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size5/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Symbols/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   └── Variants/
    │   │   │                       │       └── Regular/
    │   │   │                       │           └── Main.js
    │   │   │                       ├── STIX-Web/
    │   │   │                       │   ├── fontdata-extra.js
    │   │   │                       │   ├── fontdata.js
    │   │   │                       │   ├── Arrows/
    │   │   │                       │   │   └── Bold/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── DoubleStruck/
    │   │   │                       │   │   ├── Bold/
    │   │   │                       │   │   │   └── Main.js
    │   │   │                       │   │   ├── BoldItalic/
    │   │   │                       │   │   │   └── Main.js
    │   │   │                       │   │   ├── Italic/
    │   │   │                       │   │   │   └── Main.js
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Fraktur/
    │   │   │                       │   │   ├── Bold/
    │   │   │                       │   │   │   └── Main.js
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Marks/
    │   │   │                       │   │   ├── Bold/
    │   │   │                       │   │   │   └── Main.js
    │   │   │                       │   │   ├── BoldItalic/
    │   │   │                       │   │   │   └── Main.js
    │   │   │                       │   │   ├── Italic/
    │   │   │                       │   │   │   └── Main.js
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Monospace/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Normal/
    │   │   │                       │   │   ├── Bold/
    │   │   │                       │   │   │   └── Main.js
    │   │   │                       │   │   ├── BoldItalic/
    │   │   │                       │   │   │   └── Main.js
    │   │   │                       │   │   └── Italic/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Operators/
    │   │   │                       │   │   └── Bold/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── SansSerif/
    │   │   │                       │   │   ├── Bold/
    │   │   │                       │   │   │   └── Main.js
    │   │   │                       │   │   ├── BoldItalic/
    │   │   │                       │   │   │   └── Main.js
    │   │   │                       │   │   ├── Italic/
    │   │   │                       │   │   │   └── Main.js
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Script/
    │   │   │                       │   │   ├── BoldItalic/
    │   │   │                       │   │   │   └── Main.js
    │   │   │                       │   │   ├── Italic/
    │   │   │                       │   │   │   └── Main.js
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Shapes/
    │   │   │                       │   │   ├── Bold/
    │   │   │                       │   │   │   └── Main.js
    │   │   │                       │   │   └── BoldItalic/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size1/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size2/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size3/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size4/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Size5/
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   ├── Symbols/
    │   │   │                       │   │   ├── Bold/
    │   │   │                       │   │   │   └── Main.js
    │   │   │                       │   │   └── Regular/
    │   │   │                       │   │       └── Main.js
    │   │   │                       │   └── Variants/
    │   │   │                       │       ├── Bold/
    │   │   │                       │       │   └── Main.js
    │   │   │                       │       ├── BoldItalic/
    │   │   │                       │       │   └── Main.js
    │   │   │                       │       ├── Italic/
    │   │   │                       │       │   └── Main.js
    │   │   │                       │       └── Regular/
    │   │   │                       │           └── Main.js
    │   │   │                       └── TeX/
    │   │   │                           ├── fontdata-extra.js
    │   │   │                           ├── AMS/
    │   │   │                           │   └── Regular/
    │   │   │                           │       ├── Arrows.js
    │   │   │                           │       ├── BoxDrawing.js
    │   │   │                           │       ├── CombDiacritMarks.js
    │   │   │                           │       ├── Dingbats.js
    │   │   │                           │       ├── EnclosedAlphanum.js
    │   │   │                           │       ├── GeneralPunctuation.js
    │   │   │                           │       ├── GeometricShapes.js
    │   │   │                           │       ├── GreekAndCoptic.js
    │   │   │                           │       ├── Latin1Supplement.js
    │   │   │                           │       ├── LatinExtendedA.js
    │   │   │                           │       ├── LetterlikeSymbols.js
    │   │   │                           │       ├── Main.js
    │   │   │                           │       ├── MiscMathSymbolsB.js
    │   │   │                           │       ├── MiscSymbols.js
    │   │   │                           │       ├── MiscTechnical.js
    │   │   │                           │       ├── PUA.js
    │   │   │                           │       ├── SpacingModLetters.js
    │   │   │                           │       └── SuppMathOperators.js
    │   │   │                           ├── Caligraphic/
    │   │   │                           │   ├── Bold/
    │   │   │                           │   │   └── Main.js
    │   │   │                           │   └── Regular/
    │   │   │                           │       └── Main.js
    │   │   │                           ├── Fraktur/
    │   │   │                           │   ├── Bold/
    │   │   │                           │   │   ├── BasicLatin.js
    │   │   │                           │   │   ├── Main.js
    │   │   │                           │   │   ├── Other.js
    │   │   │                           │   │   └── PUA.js
    │   │   │                           │   └── Regular/
    │   │   │                           │       ├── BasicLatin.js
    │   │   │                           │       ├── Main.js
    │   │   │                           │       ├── Other.js
    │   │   │                           │       └── PUA.js
    │   │   │                           ├── Main/
    │   │   │                           │   ├── Bold/
    │   │   │                           │   │   ├── Arrows.js
    │   │   │                           │   │   ├── BasicLatin.js
    │   │   │                           │   │   ├── CombDiacritMarks.js
    │   │   │                           │   │   ├── CombDiactForSymbols.js
    │   │   │                           │   │   ├── GeneralPunctuation.js
    │   │   │                           │   │   ├── GeometricShapes.js
    │   │   │                           │   │   ├── GreekAndCoptic.js
    │   │   │                           │   │   ├── Latin1Supplement.js
    │   │   │                           │   │   ├── LatinExtendedA.js
    │   │   │                           │   │   ├── LatinExtendedB.js
    │   │   │                           │   │   ├── LetterlikeSymbols.js
    │   │   │                           │   │   ├── Main.js
    │   │   │                           │   │   ├── MathOperators.js
    │   │   │                           │   │   ├── MiscMathSymbolsA.js
    │   │   │                           │   │   ├── MiscSymbols.js
    │   │   │                           │   │   ├── MiscTechnical.js
    │   │   │                           │   │   ├── SpacingModLetters.js
    │   │   │                           │   │   ├── SupplementalArrowsA.js
    │   │   │                           │   │   └── SuppMathOperators.js
    │   │   │                           │   ├── Italic/
    │   │   │                           │   │   ├── BasicLatin.js
    │   │   │                           │   │   ├── CombDiacritMarks.js
    │   │   │                           │   │   ├── GeneralPunctuation.js
    │   │   │                           │   │   ├── GreekAndCoptic.js
    │   │   │                           │   │   ├── LatinExtendedA.js
    │   │   │                           │   │   ├── LatinExtendedB.js
    │   │   │                           │   │   ├── LetterlikeSymbols.js
    │   │   │                           │   │   ├── Main.js
    │   │   │                           │   │   └── MathOperators.js
    │   │   │                           │   └── Regular/
    │   │   │                           │       ├── BasicLatin.js
    │   │   │                           │       ├── CombDiacritMarks.js
    │   │   │                           │       ├── GeometricShapes.js
    │   │   │                           │       ├── GreekAndCoptic.js
    │   │   │                           │       ├── LatinExtendedA.js
    │   │   │                           │       ├── LatinExtendedB.js
    │   │   │                           │       ├── LetterlikeSymbols.js
    │   │   │                           │       ├── MathOperators.js
    │   │   │                           │       ├── MiscSymbols.js
    │   │   │                           │       ├── SpacingModLetters.js
    │   │   │                           │       └── SuppMathOperators.js
    │   │   │                           ├── SansSerif/
    │   │   │                           │   ├── Bold/
    │   │   │                           │   │   ├── BasicLatin.js
    │   │   │                           │   │   ├── CombDiacritMarks.js
    │   │   │                           │   │   ├── Main.js
    │   │   │                           │   │   └── Other.js
    │   │   │                           │   ├── Italic/
    │   │   │                           │   │   ├── BasicLatin.js
    │   │   │                           │   │   ├── CombDiacritMarks.js
    │   │   │                           │   │   ├── Main.js
    │   │   │                           │   │   └── Other.js
    │   │   │                           │   └── Regular/
    │   │   │                           │       ├── BasicLatin.js
    │   │   │                           │       ├── CombDiacritMarks.js
    │   │   │                           │       ├── Main.js
    │   │   │                           │       └── Other.js
    │   │   │                           ├── Script/
    │   │   │                           │   └── Regular/
    │   │   │                           │       ├── BasicLatin.js
    │   │   │                           │       └── Main.js
    │   │   │                           ├── Size1/
    │   │   │                           │   └── Regular/
    │   │   │                           │       └── Main.js
    │   │   │                           ├── Size2/
    │   │   │                           │   └── Regular/
    │   │   │                           │       └── Main.js
    │   │   │                           ├── Size3/
    │   │   │                           │   └── Regular/
    │   │   │                           │       └── Main.js
    │   │   │                           ├── Size4/
    │   │   │                           │   └── Regular/
    │   │   │                           │       └── Main.js
    │   │   │                           └── Typewriter/
    │   │   │                               └── Regular/
    │   │   │                                   ├── BasicLatin.js
    │   │   │                                   ├── CombDiacritMarks.js
    │   │   │                                   ├── Main.js
    │   │   │                                   └── Other.js
    │   │   └── spec/
    │   │       ├── pretty_text_spec.rb
    │   │       ├── lib/
    │   │       │   └── math_renderer_spec.rb
    │   │       └── system/
    │   │           ├── core_features_spec.rb
    │   │           └── post_spec.rb
    │   ├── discourse-reactions/
    │   │   ├── README.md
    │   │   ├── plugin.rb
    │   │   ├── app/
    │   │   │   ├── controllers/
    │   │   │   │   └── discourse_reactions/
    │   │   │   │       └── custom_reactions_controller.rb
    │   │   │   ├── jobs/
    │   │   │   │   ├── regular/
    │   │   │   │   │   └── discourse_reactions/
    │   │   │   │   │       └── like_synchronizer.rb
    │   │   │   │   └── scheduled/
    │   │   │   │       └── discourse_reactions/
    │   │   │   │           └── scheduled_like_synchronizer.rb
    │   │   │   ├── models/
    │   │   │   │   └── discourse_reactions/
    │   │   │   │       ├── reaction.rb
    │   │   │   │       └── reaction_user.rb
    │   │   │   ├── serializers/
    │   │   │   │   ├── reaction_serializer.rb
    │   │   │   │   └── user_reaction_serializer.rb
    │   │   │   └── services/
    │   │   │       └── discourse_reactions/
    │   │   │           ├── reaction_like_synchronizer.rb
    │   │   │           ├── reaction_manager.rb
    │   │   │           └── reaction_notification.rb
    │   │   ├── assets/
    │   │   │   ├── javascripts/
    │   │   │   │   └── discourse/
    │   │   │   │       ├── discourse-reactions-user-activity-route-map.js
    │   │   │   │       ├── discourse-reactions-user-notifications-route-map.js
    │   │   │   │       ├── adapters/
    │   │   │   │       │   ├── discourse-reactions-adapter.js
    │   │   │   │       │   └── discourse-reactions-custom-reaction.js
    │   │   │   │       ├── components/
    │   │   │   │       │   ├── discourse-reactions-actions-button.gjs
    │   │   │   │       │   ├── discourse-reactions-actions-summary.gjs
    │   │   │   │       │   ├── discourse-reactions-actions.gjs
    │   │   │   │       │   ├── discourse-reactions-counter.gjs
    │   │   │   │       │   ├── discourse-reactions-double-button.gjs
    │   │   │   │       │   ├── discourse-reactions-list-emoji.gjs
    │   │   │   │       │   ├── discourse-reactions-list.gjs
    │   │   │   │       │   ├── discourse-reactions-picker.gjs
    │   │   │   │       │   ├── discourse-reactions-reaction-button.gjs
    │   │   │   │       │   ├── discourse-reactions-reaction-post.gjs
    │   │   │   │       │   ├── discourse-reactions-state-panel-reaction.gjs
    │   │   │   │       │   └── discourse-reactions-state-panel.gjs
    │   │   │   │       ├── connectors/
    │   │   │   │       │   ├── user-activity-bottom/
    │   │   │   │       │   │   └── discourse-reactions-user-activity-reactions.gjs
    │   │   │   │       │   └── user-notifications-bottom/
    │   │   │   │       │       └── discourse-reactions-user-notification-reactions.gjs
    │   │   │   │       ├── controllers/
    │   │   │   │       │   └── user-activity/
    │   │   │   │       │       └── reactions.js
    │   │   │   │       ├── initializers/
    │   │   │   │       │   └── discourse-reactions.gjs
    │   │   │   │       ├── models/
    │   │   │   │       │   └── discourse-reactions-custom-reaction.js
    │   │   │   │       ├── routes/
    │   │   │   │       │   ├── user-activity/
    │   │   │   │       │   │   └── reactions.js
    │   │   │   │       │   └── user-notifications/
    │   │   │   │       │       └── reactions-received.js
    │   │   │   │       └── templates/
    │   │   │   │           └── user-activity/
    │   │   │   │               └── reactions.gjs
    │   │   │   └── stylesheets/
    │   │   │       ├── common/
    │   │   │       │   └── discourse-reactions.scss
    │   │   │       ├── desktop/
    │   │   │       │   └── discourse-reactions.scss
    │   │   │       └── mobile/
    │   │   │           └── discourse-reactions.scss
    │   │   ├── config/
    │   │   │   ├── routes.rb
    │   │   │   └── locales/
    │   │   │       ├── client.en.yml
    │   │   │       └── server.en.yml
    │   │   ├── db/
    │   │   │   ├── fixtures/
    │   │   │   │   └── 001_badges.rb
    │   │   │   └── migrate/
    │   │   │       ├── 20201217062301_create_discourse_reactions_reactions_table.rb
    │   │   │       ├── 20201217062324_create_discourse_reactions_reaction_users_table.rb
    │   │   │       ├── 20201217062343_add_post_id_to_discourse_reactions_reactions_users.rb
    │   │   │       ├── 20211022154420_enable_reactions_if_already_installed.rb
    │   │   │       ├── 20220112091339_reset_erroneous_like_reactions_count.rb
    │   │   │       ├── 20220201162748_rename_thumbsup_reactions.rb
    │   │   │       ├── 20221122010538_rename_badge.rb
    │   │   │       ├── 20230227050149_update_reaction_badge_icon.rb
    │   │   │       ├── 20240521032001_disable_reactions_like_sync_for_existing_sites.rb
    │   │   │       ├── 20241025133536_alter_reaction_ids_to_bigint.rb
    │   │   │       └── 20250205104150_remap_deprecated_icon_names_for_badge_fixtures.rb
    │   │   ├── lib/
    │   │   │   ├── reaction_for_like_site_setting_enum.rb
    │   │   │   ├── reactions_excluded_from_like_site_setting_validator.rb
    │   │   │   ├── discourse_reactions/
    │   │   │   │   ├── engine.rb
    │   │   │   │   ├── guardian_extension.rb
    │   │   │   │   ├── migration_report.rb
    │   │   │   │   ├── notification_extension.rb
    │   │   │   │   ├── post_action_extension.rb
    │   │   │   │   ├── post_alerter_extension.rb
    │   │   │   │   ├── post_extension.rb
    │   │   │   │   ├── posts_reaction_loader.rb
    │   │   │   │   ├── topic_view_posts_serializer_extension.rb
    │   │   │   │   └── topic_view_serializer_extension.rb
    │   │   │   └── tasks/
    │   │   │       └── reactions.rake
    │   │   └── spec/
    │   │       ├── plugin_spec.rb
    │   │       ├── fabricators/
    │   │       │   ├── reaction_fabricator.rb
    │   │       │   ├── reaction_notification_fabricator.rb
    │   │       │   └── reaction_user_fabricator.rb
    │   │       ├── lib/
    │   │       │   ├── reaction_for_like_site_setting_enum_spec.rb
    │   │       │   └── reactions_excluded_from_like_site_setting_validator_spec.rb
    │   │       ├── models/
    │   │       │   ├── post_mover_spec.rb
    │   │       │   ├── reaction_spec.rb
    │   │       │   └── reaction_user_spec.rb
    │   │       ├── reports/
    │   │       │   └── reactions_spec.rb
    │   │       ├── requests/
    │   │       │   ├── custom_reactions_controller_custom_emoji_spec.rb
    │   │       │   ├── custom_reactions_controller_spec.rb
    │   │       │   ├── post_action_users_controller_spec.rb
    │   │       │   └── topics_controller_spec.rb
    │   │       ├── serializers/
    │   │       │   ├── post_serializer_spec.rb
    │   │       │   └── topic_view_serializer_spec.rb
    │   │       ├── services/
    │   │       │   ├── badge_granter_spec.rb
    │   │       │   ├── reaction_like_synchronizer_spec.rb
    │   │       │   ├── reaction_manager_spec.rb
    │   │       │   └── reaction_notification_spec.rb
    │   │       └── system/
    │   │           ├── core_features_spec.rb
    │   │           ├── reaction_notifications_spec.rb
    │   │           ├── reactions_activity_spec.rb
    │   │           ├── reactions_post_list_spec.rb
    │   │           ├── reactions_post_spec.rb
    │   │           └── page_objects/
    │   │               ├── post_reactions_button.rb
    │   │               └── post_reactions_list.rb
    │   ├── discourse-solved/
    │   │   ├── README.md
    │   │   ├── about.json
    │   │   ├── plugin.rb
    │   │   ├── app/
    │   │   │   ├── controllers/
    │   │   │   │   └── discourse_solved/
    │   │   │   │       ├── answer_controller.rb
    │   │   │   │       └── solved_topics_controller.rb
    │   │   │   ├── models/
    │   │   │   │   └── discourse_solved/
    │   │   │   │       └── solved_topic.rb
    │   │   │   └── serializers/
    │   │   │       ├── concerns/
    │   │   │       │   └── discourse_solved/
    │   │   │       │       └── topic_answer_mixin.rb
    │   │   │       └── discourse_solved/
    │   │   │           └── solved_post_serializer.rb
    │   │   ├── assets/
    │   │   │   ├── javascripts/
    │   │   │   │   └── discourse/
    │   │   │   │       ├── solved-route-map.js
    │   │   │   │       ├── components/
    │   │   │   │       │   ├── solved-accept-answer-button.gjs
    │   │   │   │       │   ├── solved-accepted-answer.gjs
    │   │   │   │       │   └── solved-unaccept-answer-button.gjs
    │   │   │   │       ├── connectors/
    │   │   │   │       │   ├── after-topic-status/
    │   │   │   │       │   │   └── solved-status.gjs
    │   │   │   │       │   ├── bread-crumbs-right/
    │   │   │   │       │   │   └── solved-status-filter.gjs
    │   │   │   │       │   ├── category-custom-settings/
    │   │   │   │       │   │   └── solved-settings.gjs
    │   │   │   │       │   ├── topic-navigation/
    │   │   │   │       │   │   └── no-answer.gjs
    │   │   │   │       │   ├── user-activity-bottom/
    │   │   │   │       │   │   └── solved-list.gjs
    │   │   │   │       │   ├── user-card-metadata/
    │   │   │   │       │   │   └── accepted-answers.gjs
    │   │   │   │       │   └── user-summary-stat/
    │   │   │   │       │       └── solved-count.gjs
    │   │   │   │       ├── initializers/
    │   │   │   │       │   ├── add-topic-list-class.js
    │   │   │   │       │   └── extend-for-solved-button.gjs
    │   │   │   │       ├── pre-initializers/
    │   │   │   │       │   └── extend-category-for-solved.js
    │   │   │   │       ├── routes/
    │   │   │   │       │   └── user-activity/
    │   │   │   │       │       └── solved.js
    │   │   │   │       └── templates/
    │   │   │   │           └── user-activity/
    │   │   │   │               └── solved.gjs
    │   │   │   └── stylesheets/
    │   │   │       ├── solutions.scss
    │   │   │       └── mobile/
    │   │   │           └── solutions.scss
    │   │   ├── config/
    │   │   │   ├── routes.rb
    │   │   │   └── locales/
    │   │   │       ├── client.en.yml
    │   │   │       └── server.en.yml
    │   │   ├── db/
    │   │   │   ├── fixtures/
    │   │   │   │   └── 001_badges.rb
    │   │   │   └── migrate/
    │   │   │       ├── 20191209095548_ensures_unique_accepted_answer_post_id.rb
    │   │   │       ├── 20210218022053_solved_fix_high_auto_close_topic_hours.rb
    │   │   │       ├── 20210429154322_remove_nil_custom_fields_from_solved.rb
    │   │   │       ├── 20210618142654_recreate_solutions_column.rb
    │   │   │       ├── 20221121223417_rename_badges.rb
    │   │   │       ├── 20240116100023_fill_accept_all_solutions_allowed_groups_based_on_deprecated_setting.rb
    │   │   │       ├── 20250318024824_create_discourse_solved_solved_topics.rb
    │   │   │       ├── 20250318024953_copy_solved_topic_custom_field_to_discourse_solved_solved_topics.rb
    │   │   │       ├── 20250318024954_remove_duplicates_from_discourse_solved_solved_topics.rb
    │   │   │       ├── 20250318025147_add_index_for_discourse_solved_topics.rb
    │   │   │       └── 20250325074111_copy_remaining_solved_topic_custom_field_to_discourse_solved_solved_topics.rb
    │   │   ├── lib/
    │   │   │   ├── discourse_assign/
    │   │   │   │   └── entry_point.rb
    │   │   │   ├── discourse_automation/
    │   │   │   │   └── entry_point.rb
    │   │   │   ├── discourse_dev/
    │   │   │   │   └── discourse_solved.rb
    │   │   │   └── discourse_solved/
    │   │   │       ├── accepted_answer_cache.rb
    │   │   │       ├── before_head_close.rb
    │   │   │       ├── category_extension.rb
    │   │   │       ├── engine.rb
    │   │   │       ├── first_accepted_post_solution_validator.rb
    │   │   │       ├── guardian_extensions.rb
    │   │   │       ├── post_serializer_extension.rb
    │   │   │       ├── register_filters.rb
    │   │   │       ├── topic_extension.rb
    │   │   │       ├── topic_posters_summary_extension.rb
    │   │   │       ├── topic_view_serializer_extension.rb
    │   │   │       ├── user_summary_extension.rb
    │   │   │       └── web_hook_extension.rb
    │   │   └── spec/
    │   │       ├── components/
    │   │       │   ├── composer_messages_finder_spec.rb
    │   │       │   └── post_revisor_spec.rb
    │   │       ├── fabricators/
    │   │       │   ├── extend_topic_fabricator.rb
    │   │       │   ├── solved_hook_fabricator.rb
    │   │       │   └── solved_topic_fabricator.rb
    │   │       ├── integration/
    │   │       │   └── solved_spec.rb
    │   │       ├── lib/
    │   │       │   ├── first_accepted_post_solution_validator_spec.rb
    │   │       │   ├── guardian_extensions_spec.rb
    │   │       │   └── topic_extension_user_deletion_spec.rb
    │   │       ├── models/
    │   │       │   ├── copy_solved_topic_custom_field_spec.rb
    │   │       │   ├── directory_item_spec.rb
    │   │       │   ├── remove_duplicates_from_discourse_solved_solved_topics_spec.rb
    │   │       │   ├── site_spec.rb
    │   │       │   └── user_summary_spec.rb
    │   │       ├── requests/
    │   │       │   ├── answer_controller_spec.rb
    │   │       │   ├── list_controller_spec.rb
    │   │       │   ├── solved_topics_controller_spec.rb
    │   │       │   └── topics_controller_spec.rb
    │   │       ├── serializers/
    │   │       │   ├── topic_answer_mixin_spec.rb
    │   │       │   ├── topic_view_serializer_spec.rb
    │   │       │   └── user_card_serializer_spec.rb
    │   │       └── system/
    │   │           ├── core_features_spec.rb
    │   │           └── solved_spec.rb
    │   ├── footnote/
    │   │   ├── README.md
    │   │   ├── plugin.rb
    │   │   ├── assets/
    │   │   │   ├── javascripts/
    │   │   │   │   ├── api-initializers/
    │   │   │   │   │   └── inline-footnotes.gjs
    │   │   │   │   ├── initializers/
    │   │   │   │   │   └── composer.js
    │   │   │   │   └── lib/
    │   │   │   │       ├── rich-editor-extension.js
    │   │   │   │       └── discourse-markdown/
    │   │   │   │           └── footnotes.js
    │   │   │   └── stylesheets/
    │   │   │       └── footnotes.scss
    │   │   ├── config/
    │   │   │   └── locales/
    │   │   │       ├── client.en.yml
    │   │   │       └── server.en.yml
    │   │   └── spec/
    │   │       ├── pretty_text_spec.rb
    │   │       └── system/
    │   │           ├── admin_sidebar_navigation_spec.rb
    │   │           └── rich_editor_extension_spec.rb
    │   ├── poll/
    │   │   ├── plugin.rb
    │   │   ├── app/
    │   │   │   ├── controllers/
    │   │   │   │   └── discourse_poll/
    │   │   │   │       └── polls_controller.rb
    │   │   │   ├── models/
    │   │   │   │   ├── poll.rb
    │   │   │   │   ├── poll_option.rb
    │   │   │   │   └── poll_vote.rb
    │   │   │   └── serializers/
    │   │   │       ├── poll_option_serializer.rb
    │   │   │       └── poll_serializer.rb
    │   │   ├── assets/
    │   │   │   ├── javascripts/
    │   │   │   │   ├── discourse/
    │   │   │   │   │   ├── components/
    │   │   │   │   │   │   ├── poll-breakdown-chart.gjs
    │   │   │   │   │   │   ├── poll-breakdown-option.gjs
    │   │   │   │   │   │   ├── poll-buttons-dropdown.gjs
    │   │   │   │   │   │   ├── poll-info.gjs
    │   │   │   │   │   │   ├── poll-option-ranked-choice-dropdown.gjs
    │   │   │   │   │   │   ├── poll-option-ranked-choice.gjs
    │   │   │   │   │   │   ├── poll-options.gjs
    │   │   │   │   │   │   ├── poll-results-pie.gjs
    │   │   │   │   │   │   ├── poll-results-ranked-choice.gjs
    │   │   │   │   │   │   ├── poll-results-standard.gjs
    │   │   │   │   │   │   ├── poll-results-tabs.gjs
    │   │   │   │   │   │   ├── poll-voters-ranked-choice.gjs
    │   │   │   │   │   │   ├── poll-voters.gjs
    │   │   │   │   │   │   ├── poll.gjs
    │   │   │   │   │   │   └── modal/
    │   │   │   │   │   │       ├── poll-breakdown.gjs
    │   │   │   │   │   │       └── poll-ui-builder.gjs
    │   │   │   │   │   └── initializers/
    │   │   │   │   │       ├── add-poll-ui-builder.js
    │   │   │   │   │       └── extend-for-poll.gjs
    │   │   │   │   └── lib/
    │   │   │   │       ├── chart-colors.js
    │   │   │   │       ├── even-round.js
    │   │   │   │       ├── rich-editor-extension.js
    │   │   │   │       └── discourse-markdown/
    │   │   │   │           └── poll.js
    │   │   │   └── stylesheets/
    │   │   │       ├── common/
    │   │   │       │   ├── poll-breakdown.scss
    │   │   │       │   ├── poll-ui-builder.scss
    │   │   │       │   └── poll.scss
    │   │   │       └── desktop/
    │   │   │           └── poll-ui-builder.scss
    │   │   ├── config/
    │   │   │   ├── routes.rb
    │   │   │   └── locales/
    │   │   │       ├── client.en.yml
    │   │   │       └── server.en.yml
    │   │   ├── db/
    │   │   │   └── migrate/
    │   │   │       ├── 20150501152228_rename_total_votes_to_voters.rb
    │   │   │       ├── 20151016163051_merge_polls_votes.rb
    │   │   │       ├── 20160321164925_close_polls_in_closed_topics.rb
    │   │   │       ├── 20180820073549_create_polls_tables.rb
    │   │   │       ├── 20180820080623_migrate_polls_data.rb
    │   │   │       ├── 20191114160613_add_graph_to_polls.rb
    │   │   │       ├── 20191206123012_add_group_name_to_polls.rb
    │   │   │       ├── 20200804144550_add_title_to_polls.rb
    │   │   │       ├── 20230612134421_remove_old_polls_data_from_custom_fields.rb
    │   │   │       ├── 20230614041219_delete_duplicate_poll_votes.rb
    │   │   │       ├── 20240122015626_fill_poll_create_allowed_groups_based_on_deprecated_setting.rb
    │   │   │       ├── 20240416105733_add_rank_to_poll_votes.rb
    │   │   │       ├── 20241105211601_delete_zero_rank_user_vote_collections_from_poll_votes.rb
    │   │   │       └── 20250817090000_add_dynamic_to_polls.rb
    │   │   ├── jobs/
    │   │   │   └── regular/
    │   │   │       └── close_poll.rb
    │   │   ├── lib/
    │   │   │   ├── poll.rb
    │   │   │   ├── polls_updater.rb
    │   │   │   ├── polls_validator.rb
    │   │   │   ├── post_extension.rb
    │   │   │   ├── post_validator.rb
    │   │   │   ├── ranked_choice.rb
    │   │   │   ├── user_extension.rb
    │   │   │   └── poll/
    │   │   │       └── engine.rb
    │   │   └── spec/
    │   │       ├── controllers/
    │   │       │   ├── polls_controller_spec.rb
    │   │       │   └── posts_controller_spec.rb
    │   │       ├── fabricators/
    │   │       │   └── poll_fabricator.rb
    │   │       ├── integration/
    │   │       │   ├── poll_endpoints_spec.rb
    │   │       │   └── user_merger_spec.rb
    │   │       ├── jobs/
    │   │       │   └── regular/
    │   │       │       └── close_poll_spec.rb
    │   │       ├── lib/
    │   │       │   ├── new_post_manager_spec.rb
    │   │       │   ├── poll_spec.rb
    │   │       │   ├── polls_updater_spec.rb
    │   │       │   ├── polls_validator_spec.rb
    │   │       │   ├── pretty_text_spec.rb
    │   │       │   ├── ranked_choice_spec.rb
    │   │       │   └── search_spec.rb
    │   │       ├── models/
    │   │       │   └── poll_spec.rb
    │   │       ├── requests/
    │   │       │   ├── posts_controller_spec.rb
    │   │       │   ├── topics_controller_spec.rb
    │   │       │   └── users_controller_spec.rb
    │   │       ├── serializers/
    │   │       │   └── poll_option_serializer_spec.rb
    │   │       └── system/
    │   │           ├── dynamic_polls_spec.rb
    │   │           └── page_objects/
    │   │               └── pages/
    │   │                   └── poll.rb
    │   └── spoiler-alert/
    │       ├── README.md
    │       ├── plugin.rb
    │       ├── assets/
    │       │   ├── javascripts/
    │       │   │   ├── initializers/
    │       │   │   │   └── spoiler-alert.js
    │       │   │   └── lib/
    │       │   │       ├── apply-spoiler.js
    │       │   │       ├── rich-editor-extension.js
    │       │   │       └── discourse-markdown/
    │       │   │           └── spoiler-alert.js
    │       │   └── stylesheets/
    │       │       └── discourse_spoiler_alert.scss
    │       ├── config/
    │       │   └── locales/
    │       │       ├── client.en.yml
    │       │       └── server.en.yml
    │       └── spec/
    │           ├── pretty_text_spec.rb
    │           ├── topic_excerpt_spec.rb
    │           └── system/
    │               └── composer_spoiler_spec.rb
    ├── public/ (F)
    │   ├── 403.html
    │   ├── 404.json
    │   ├── 422.html
    │   ├── 500.html
    │   ├── 503.html
    │   └── javascripts/ (F)
    │       ├── count.js
    │       ├── embed-topics.js
    │       ├── embed.js
    │       └── media-optimization-worker.js
    └── .kiro/
        └── steering/
            └── ai-agents-always.md
