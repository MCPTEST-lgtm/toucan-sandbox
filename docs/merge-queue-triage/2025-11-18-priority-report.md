# MERGE_QUEUE_TRIAGE — Triage policy and initial report (2025-11-18)

Repository: MCPTEST-lgtm/toucan-sandbox
Branch: merge-queue-triage/2025-11-18

Purpose
- Establish a repeatable triage policy and provide an initial, reviewable report for engineering leadership.

Triage criteria (scoring rubric)
1) Merge impact (0-5): Does the change affect critical infra or mainline builds?
2) CI status (0-5): 5 = all required CI passing; 0 = failing required checks.
3) Review readiness (0-5): 5 = approved by requested reviewers; 0 = none.
4) Customer/Hotfix urgency (0-5): 5 = production-blocking.

Priority buckets (computed from rubric total)
- P0 (score 16-20): Immediate merge candidate after final checks.
- P1 (score 11-15): High priority, schedule within 24-48 hours.
- P2 (score 6-10): Normal priority, schedule in next sprint.
- P3 (score 0-5): Low priority, backlog.

Initial action checklist for maintainers
- [ ] Collect top 25 open PRs against main (manually or via automation).
- [ ] For each PR, record: PR number, title, author, requested reviewers, labels, CI status, merge conflict status.
- [ ] Apply rubric and assign bucket (P0-P3).
- [ ] For P0/P1: assign an engineer to unblock CI, request final approvals, and set merge deadline.

Initial report notes (placeholders for automated population)
- This file is intentionally seeded as a policy + template. Automated triage tooling should populate a table below with live PR data when run. Until automation runs, maintainers should fill rows manually.

Template table header (maintainers or automation should fill rows under this header):

| prNumber | title | author | requestedReviewers | labels | ciStatus | mergeConflicts | rubricScore | priorityBucket | notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |

(Example row format — do not treat as real data)
| 123 | Fix: improve logging | alice | @backend-team | bug, urgent | passing | no | 17 | P0 | Needs final approval from @ops |

Instructions for reviewers (engineering leadership)
- Review this file and the populated table; confirm or reassign priority buckets.
- If you approve the proposed policy, merge the PR to add the policy and template to docs/merge-queue-triage/. Automated tooling may then update the table in subsequent commits.

Document maintainer: @merge-queue-admin
