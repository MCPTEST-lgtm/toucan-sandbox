# Merge Queue Triage - 2025-11-18

Repository: MCPTEST-lgtm/toucan-sandbox
Branch: merge-queue/triage-2025-11-18

Objective: Summarize top open PRs, assign priority (P0/P1/P2), indicate requested reviewers, and surface failing CI that blocks merging.

Required data to populate after this commit (agent executing these tools must collect/insert real data from the repo):
- Top 10 open PRs by last-updated timestamp
- For each PR: number, title, author, current reviewers requested, CI status summary (passing/failing), suggested priority (P0/P1/P2), short rationale (1-2 sentences)

Action: This file is the landing page for MERGE_QUEUE_TRIAGE and will be updated by reviewers with concrete PR-level notes.