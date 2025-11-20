# Merge Queue Priority Board — 2025-11-20

- High: #23 Stabilize flaky tests for checkout flow
  - Why: Checkout e2e is intermittently failing; last CI run red on this path. Primary reviewer (@sam-lee) and QA support (@qa-team) are available today. Prioritizing this reduces release risk and unblocks other merges.

- Medium: #17 Docs cleanup and lint fixes
  - Why: CI is green and changes are non-blocking. Auto-review by @docs-bot is available; human reviewer (@terry-j) becomes available later today. Can follow #23 without impacting delivery.

- Low: #14 Refactor payment utils
  - Why: CI still pending long-running e2e checks and reviewers are at capacity. Safe to defer until after #23 and #17.
