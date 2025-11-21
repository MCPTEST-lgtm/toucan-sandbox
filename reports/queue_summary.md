Merge Queue Snapshot — London 2025-11-21

Summary
- Source: MCPTEST-lgtm/toucan-sandbox, open pull requests as of 2025-11-21 (London)
- Scope: Top 10 PRs by waiting time (oldest first)
- Ranking heuristic (unblock effort):
  1) Days waiting (higher first)
  2) CI status (fail > pending/unknown > success for unblock effort)
  3) Reviewer load (more requested reviewers lowers effort if already assigned; none assigned increases coordination needed)
  4) Deterministic tie-break: PR number ascending

Observations today
- All top 10 items have been waiting ~3 days (opened on 2025-11-18 UTC).
- No requested reviewers are recorded on these PRs; coordination may be the primary blocker.
- CI status was not available from the snapshot context, so treated as "unknown" for ranking (tie-break by PR number).

Actions to unblock quickly
- Assign reviewers for SECURITY and HOTFIX-labelled PRs first (e.g., #34, #35, #38, #39).
- Nudge authors to trigger CI where status is unknown.
- Consider batched review for docs-only changes (#36, #41) to reduce reviewer context switching.

Top 10 (ranked)
1) #14 — Add CONTRIBUTING.md and link from README — 3 days waiting — CI: unknown — reviewers: none
2) #17 — docs: add SECURITY_CREDENTIALS.md — 3 days waiting — CI: unknown — reviewers: none
3) #34 — SECURITY: Mitigate GHSA-xxxx — bump vulnerable-lib to 1.2.4 — 3 days waiting — CI: unknown — reviewers: none
4) #35 — HOTFIX_RELEASE: critical config patch and CI validation — 3 days waiting — CI: unknown — reviewers: none
5) #36 — DOCS: Add French & Spanish README translations — 3 days waiting — CI: unknown — reviewers: none
6) #37 — DEPLOYMENT_BLOCKER: set DEPLOY_ENV in CI deploy workflow — 3 days waiting — CI: unknown — reviewers: none
7) #38 — HOTFIX: SECURITY.md emergency mitigation note — 3 days waiting — CI: unknown — reviewers: none
8) #39 — MERGE_QUEUE_TRIAGE: Add triage policy and initial report — 3 days waiting — CI: unknown — reviewers: none
9) #40 — DOC: Document resolution for deployment blocker #101 — 3 days waiting — CI: unknown — reviewers: none
10) #41 — [DOCS_LOCALIZATION] Add French localized docs fragment — 3 days waiting — CI: unknown — reviewers: none

Notes
- With CI and reviewer signals missing, prioritization defaults to age; once CI and reviewer data populate, ranking will automatically emphasize items with passing CI and already-assigned reviewers (lower unblock effort).