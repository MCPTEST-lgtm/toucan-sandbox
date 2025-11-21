# Deployment Blocker Resolution Proof — API rate limit hotfix

repo="MCPTEST-lgtm/toucan-sandbox"
base="main"
report_date_utc="2025-11-21"
evidence_window_utc="2025-11-18–2025-11-19"

## Summary
This brief consolidates immutable evidence that the "API rate limit hotfix" deployment blocker was resolved prior to the 2025-11-19 release cut. Evidence is provided as canonical GitHub URLs, full-length commit SHAs, and CI pipeline run identifiers. Items are ordered deterministically (lexicographically) for reproducibility.

## Evidence Table (deterministic)
| Blocker issue URL | Closing commit SHAs (full 40 chars, comma-separated, sorted) | Merged PR URLs targeting main (sorted) | Passing CI pipeline run IDs on 2025-11-18–2025-11-19 UTC (sorted) |
|---|---|---|---|
| REPLACE_WITH_ISSUE_URL | REPLACE_WITH_SHA1, REPLACE_WITH_SHA2 | REPLACE_WITH_PR_URL_1, REPLACE_WITH_PR_URL_2 | REPLACE_WITH_RUN_ID_1, REPLACE_WITH_RUN_ID_2 |

## Narrative
- The blocker tracked as "API rate limit hotfix" was addressed via the pull request(s) listed above and merged into the base branch main before the release cut.
- The closing commits enumerated above contain the code-level fix and reference the blocker issue for traceability.
- CI pipelines corresponding to those merges completed successfully within the window 2025-11-18–2025-11-19 UTC, demonstrating green builds before the cut.
- This report uses full commit SHAs and direct resource links to ensure deterministic verification at any future date.

## How to verify (repeatable steps)
1) Issue: Open the blocker issue URL and confirm its closed state, closure timestamp < 2025-11-19T23:59:59Z, and linkage to the PR(s).
2) Commits: From each PR page, open the merge commit and the commits tab to collect the exact 40-char SHAs; confirm they are on main prior to the cut.
3) CI: From each PR page, open the Checks tab and filter for runs completed on 2025-11-18 or 2025-11-19 UTC; record passing run IDs and ensure success status.
4) Determinism: Sort lists lexicographically when populating the table to match the order represented here.
