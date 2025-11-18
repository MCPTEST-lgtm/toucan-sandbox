# Spanish localization sync report

Branch: docs/localization/es-sync-20251118
Base: main
Date: 2025-11-18
Scenario: DOCS_LOCALIZATION

Summary:
This branch is a localized-docs sync snapshot for Spanish (es). It contains an initial sync report enumerating documentation files that should be reviewed and translated and a short checklist for reviewers.

Files to review for Spanish localization (seed list):
- README.md
- docs/getting-started.md
- docs/guide/intro.md
- docs/architecture/overview.md
- docs/changelog.md

Initial status (set by automation):
- README.md: not-started
- docs/getting-started.md: not-started
- docs/guide/intro.md: not-started
- docs/architecture/overview.md: not-started
- docs/changelog.md: not-started

Actions for reviewers/maintainers:
1. On your local clone, run: git fetch origin && git checkout docs/localization/es-sync-20251118
2. Compare with main: git diff --name-only origin/main...docs/localization/es-sync-20251118
3. For each file above, add a PR or push translations to this branch. Update this report's status lines accordingly.

Notes:
- This is an initial automation-produced report; it does not include file SHAs. After translators push changes to this branch, update this file and commit new status notes.
