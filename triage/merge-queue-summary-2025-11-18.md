# MERGE_QUEUE_TRIAGE: Merge Queue Summary — 2025-11-18

Scenario: MERGE_QUEUE_TRIAGE

Purpose: Provide engineering leadership a single-file, structured summary prioritizing the current pull request (PR) queue in this repository so on-call and release managers can make fast decisions.

Required data points to be filled by automation or a human reviewer:
- Snapshot date: 2025-11-18
- Total open PRs against main: (to be populated by PR aggregation)
- Top 12 open PRs (ordered by priorityScore): list of objects with fields {number, title, author, requestedReviewers, labels, ciStatus, daysOpen, sizeEstimate}

Priority scoring method (apply programmatically when generating the summary):
- priorityScore = (numberOfRequestedReviewers * 2) + (ciFailuresPresent ? 3 : 0) + floor(daysOpen / 7) + (labelContains("hotfix") ? 2 : 0) + (sizeEstimate == "large" ? 2 : 0)
- Higher priorityScore => higher triage priority. Tie-breaker: daysOpen descending, then PR number ascending.

Presentation for each top PR (one per bullet):
- PR #<number>: <title>
 - author: <author>
 - requestedReviewers: [comma-separated reviewer logins]
 - labels: [comma-separated labels]
 - ciStatus: <all-passing | failing | pending>
 - daysOpen: <integer>
 - sizeEstimate: <small|medium|large>
 - priorityScore: <integer>
 - suggestedAction: <short text, e.g., "assign reviewer alice", "run rebase and re-run CI", "backport to stable-branch"> 

Notes for the triage operator:
- This file is intentionally a deterministic template for MERGE_QUEUE_TRIAGE workflows. After creation, a separate automation step will populate the "Top 12 open PRs" section by querying the PR API and calculating priorityScore exactly as described above.
- Keep the branch name and file path deterministic so subsequent automation can locate this artifact.

Generated-by: MERGE_QUEUE_TRIAGE automation template
