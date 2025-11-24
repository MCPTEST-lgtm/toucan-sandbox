# Branch Cleanup Audit — 2025-11-24

Campaign: BRANCH_CLEANUP_CAMPAIGN
Repository: MCPTEST-lgtm/toucan-sandbox

Scope and criteria
- Stale branches: no updates in the last 90 days (before 2025-08-26)
- Merged PR branches: branches associated with PRs that are merged into main and no longer needed
- Abandoned features: no commits since 2025-08-24

Findings (candidates)
- Stale branches (>90 days): 3
- Merged PR branches safe to delete: 3
- Abandoned features: 2

Stale branches (>90 days)
- feature/i18n — no updates in >90 days
- spike/lmdb-prototype — no updates in >90 days
- release/2025-q2 — no updates in >90 days

Merged PR branches (safe to delete)
- feature/payment-retries — merged; branch no longer needed
- bugfix/login-rate-limit — merged; branch no longer needed
- chore/update-ci — merged; branch no longer needed

Abandoned features (no commits since 2025-08-24)
- feature/abandoned-dashboard — no commits since 2025-08-24
- experiment/new-cache — no commits since 2025-08-24

Notes and safeguards
- Verify no protected/release workflows depend on these branches.
- Coordinate with branch owners before deletion if uncertain.
- Take a lightweight backup (tag or archive) before bulk deletes if desired.

See the machine-readable list in reports/cleanup/targets.json for the exact set proposed for deletion.
