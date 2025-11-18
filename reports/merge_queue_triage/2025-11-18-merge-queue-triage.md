# MERGE_QUEUE_TRIAGE — Daily Merge Queue Triage

Date: 2025-11-18
Repository: MCPTEST-lgtm/toucan-sandbox
Prepared-for: Engineering Leadership

Overview:
This report lists open pull requests in the merge queue snapshot for prioritization: requested reviewers, CI status, days open, and a hand-assigned priority label used for leadership decisions.

| pr | title | author | requested_reviewers | ci_status | days_open | priority |
|-----:|-----------------------------------------------------------|--------|------------------------|-------------------------------|----------:|:--------|
| 321 | Fix intermittent cache invalidation | alice | bob, carol | failing (ubuntu-latest) | 5 | P0-blocking |
| 318 | Upgrade dependency foo to 2.1.0 | dave | eve | passing | 2 | P2 |
| 315 | Add telemetry opt-out config | frank | grace | failing (macos-latest) | 10 | P1 |
| 310 | Refactor auth middleware | heidi | bob | pending (windows-latest) | 8 | P0-blocking |
| 307 | Improve logging format for traces | ivan | judy | passing | 1 | P3 |
| 299 | CI: stabilize flaky test suite | kate | alice, bob | failing (ubuntu-latest) | 14 | P0-blocking |

Notes:
- P0-blocking are prioritized for immediate attention by on-call and reviewers.
- 'requested_reviewers' lists people explicitly requested in the PR metadata.
- 'ci_status' reflects the latest CI run for the default branch target.

End of report.
