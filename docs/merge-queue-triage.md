# Merge Queue Triage — 2025-11-20 (09:00 UTC)

Scope: Open pull requests in MCPTEST-lgtm/toucan-sandbox as of 2025-11-20T09:00:00Z. Focus: priority, requested reviewers, CI signal, and merge blockers.

Notes
- CI/checks and explicit requested-reviewer metadata may change after this timestamp. Items marked “CI: TBD” need a quick look at the Checks tab to confirm current status.
- “Requested reviewers” is inferred from PR metadata or the PR description when explicitly called out (e.g., persona or role).

Prioritized queue

P0 — Deployment blockers, hotfixes, security-critical
- PR #79 — Hotfix: stabilize CI cache for v2.4.2 artifacts
  - Type: HOTFIX/CI stabilization
  - Requested reviewers: Release/CI owners (not explicitly assigned)
  - CI: TBD (rerun/validate on v2.4.2 as described)
  - Blockers: Must confirm artifact checksum match (SHA256 provided in PR) and CI green on rerun.
- PR #75 — Unblock deployment: healthcheck fallback
  - Type: DEPLOYMENT_BLOCKER mitigation
  - Requested reviewers: Infra/Release (not explicitly assigned)
  - CI: TBD (expected success per PR)
  - Blockers: Validate minimal workflow passes; ensure staging probe off until 2025-12-01.
- PR #37 — DEPLOYMENT_BLOCKER: set DEPLOY_ENV in CI deploy workflow
  - Type: DEPLOYMENT_BLOCKER fix
  - Requested reviewers: Maya (Release Engineer) called out in PR body
  - CI: TBD
  - Blockers: CI must pass; verify production deploy job targets correct env post-merge.
- PR #65 — Hotfix: enforce artifact checksum verification on tagged releases
  - Type: HOTFIX/Release integrity
  - Requested reviewers: Release/CI owners (not explicitly assigned)
  - CI: TBD
  - Blockers: Confirm workflow scope matches tag-driven releases and aligns with artifact publishing flow.
- PR #34 — SECURITY: Mitigate GHSA-xxxx — bump vulnerable-lib to 1.2.4
  - Type: SECURITY mitigation
  - Requested reviewers: Security/Owners (not explicitly assigned)
  - CI: TBD
  - Blockers: Security approval and CI green.
- PR #38 — HOTFIX: SECURITY.md emergency mitigation note (2025-11-18)
  - Type: HOTFIX/Documentation (security process)
  - Requested reviewers: Release manager requested in PR body
  - CI: TBD
  - Blockers: CI validation of docs-only change; release manager confirmation.
- PR #63 — Security: Document GHSA-2025-001 and add weekly dependency re-check
  - Type: SECURITY documentation + scheduled workflow
  - Requested reviewers: Security review requested in PR body
  - CI: TBD
  - Blockers: Security approval.
- PR #80 — Document GHSA-2025-02-18 mitigation
  - Type: SECURITY documentation
  - Requested reviewers: Security/Owners (not explicitly assigned)
  - CI: TBD
  - Blockers: None beyond doc approval; ensure timeline is acceptable.

P1 — Reliability, process hardening, and queue hygiene
- PR #39 — MERGE_QUEUE_TRIAGE: policy and initial template
  - Type: Process/policy + template
  - Requested reviewers: Maintainers (not explicitly assigned)
  - CI: TBD
  - Blockers: Policy sign-off.

P2 — Documentation and localization (low risk to ship when CI is green)
- PR #40 — DOC: Document resolution for deployment blocker #101
  - Type: Docs (incident traceability)
  - Requested reviewers: Maintainers (not explicitly assigned)
  - CI: TBD
  - Blockers: None (docs-only) once CI passes.
- PR #41 — [DOCS_LOCALIZATION] Add French localized docs fragment (2025-11-18)
  - Type: Docs localization
  - Requested reviewers: French-speaking reviewer requested
  - CI: TBD
  - Blockers: Linguistic QA.
- PR #64 — Sync pt-BR docs with main (Nov 2024)
  - Type: Docs localization/sync
  - Requested reviewers: Localization owners (not explicitly assigned)
  - CI: TBD
  - Blockers: None beyond CI; follow-ups listed for missing pages.
- PR #36 — DOCS: Add French & Spanish README translations (DOCS_LOCALIZATION)
  - Type: Docs localization
  - Requested reviewers: Localization owners (not explicitly assigned)
  - CI: TBD
  - Blockers: Validate markdown rendering; placeholder text acceptance.
- PR #17 — docs: add SECURITY_CREDENTIALS.md — credential storage and rotation guidance
  - Type: Docs (security guidance)
  - Requested reviewers: Security/Owners (not explicitly assigned)
  - CI: TBD
  - Blockers: None beyond CI.
- PR #14 — Add CONTRIBUTING.md and link from README
  - Type: Docs/process
  - Requested reviewers: Maintainers (not explicitly assigned)
  - CI: TBD
  - Blockers: None beyond CI.

Top 5 to Land Today
1) PR #79 — Hotfix: stabilize CI cache for v2.4.2 artifacts
   - Rationale: Unblocks reproducible artifacts and stabilizes CI for tagged releases; low code-surface risk, high operational impact once checksum is confirmed.
2) PR #75 — Unblock deployment: healthcheck fallback
   - Rationale: Removes immediate deployment friction; minimal workflow; clearly bounded rollback (re-enable probe by 2025-12-01).
3) PR #37 — DEPLOYMENT_BLOCKER: set DEPLOY_ENV in CI deploy workflow
   - Rationale: Direct fix for production deploy targeting; restores deploy path with low complexity.
4) PR #65 — Hotfix: enforce artifact checksum verification on tagged releases
   - Rationale: Strengthens release integrity guardrails; complements #79 and reduces future hotfix churn.
5) PR #34 — SECURITY: Mitigate GHSA-xxxx — bump vulnerable-lib to 1.2.4
   - Rationale: Addresses a dependency-level risk; simple bump with high security value once CI is green.

How to proceed
- For each P0 item: ensure CI is green and approvals from the named roles (Security, Release, or Infra). Merge in the above order to maximize impact on pipeline health and release integrity.
- Reassess the queue after P0 merges; P1 policy (#39) then P2 docs/localization can land opportunistically when CI is idle/green.
