# Branch Cleanup Summary — November 2025

Repository: MCPTEST-lgtm/toucan-sandbox
Generated on: 2025-11-24

Scope and criteria:
- Stale branches: last commit older than 90 days
- Merged PR heads: branches that were used as PR heads and are safe to remove post-merge
- Abandoned feature branches: no commits since 2025-07-01

Summary of findings:
- Stale (>90 days): 0
- Merged PR heads remaining: 0
- Abandoned feature branches (no commits since 2025-07-01): 0

Notes:
- This repository was created on 2025-11-17, so no branch can currently exceed the 90-day threshold or predate 2025-07-01.
- The only merged PR observed (PR #1, head: `seed/pr-initial`) does not have a corresponding branch present in the branches list, so no action is required for merged PR heads.

Details table

| branch | last_commit_sha | last_commit_date | status_reason | action |
|---|---|---|---|---|
| — | — | — | No candidates found under the specified criteria | — |

Recommendations:
- No immediate branch deletions or archival actions are recommended at this time.
- Re-run this report periodically; once the codebase ages beyond 90 days, it will begin surfacing stale branches.

Methodology:
- Enumerated current branches and inspected the latest commit timestamps.
- Queried merged pull requests to identify any lingering head branches.
- Evaluated feature-like branches for inactivity since 2025-07-01.
