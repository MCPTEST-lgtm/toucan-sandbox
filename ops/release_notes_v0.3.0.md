# Release Notes: v0.3.0 — toucan-sandbox

Repository: MCPTEST-lgtm/toucan-sandbox (branch: main)

Summary

- This minor version introduces CSV export, strengthens resiliency with 502 retry logic, and adds a new usage guide for faster onboarding.
- Compared to the latest published tag (v1.0.0), this brief highlights the synthetic delta prepared for press enablement and internal alignment.

Changes

From ops/changelog.md (deterministic entries):

- 2025-02-10 feat: export CSV — Add CSV export capability for datasets and reports to improve data portability.
- 2025-02-12 fix: retry on 502 — Implement automatic retry logic for transient 502 Bad Gateway responses.
- 2025-02-13 docs: add usage guide — Provide a step-by-step usage guide covering setup and common workflows.

Release metadata

- All Releases (by tag): v1.0.0
- Latest Release: v1.0.0 (published 2025-11-17T17:57:22Z)

Compatibility

- Backwards compatibility: No breaking API changes are introduced in v0.3.0. Existing integrations should continue to function without modification.
- Upgrade guidance: No config or data migrations required. Pull latest main, rebuild, and redeploy. If relying on custom retry logic, validate behavior with upstream proxies to confirm 502 backoff expectations.
- Platforms: No change in supported environments.

Callouts

- CSV export enables easier data handoff to BI tools and spreadsheets.
- Automatic retry on 502 improves reliability for transient upstream outages.
- New usage guide reduces time-to-first-success for new users and field teams.

Proposed announcement copy

Toucan Sandbox v0.3.0 is now available on main, bringing CSV export for fast data portability, smarter resiliency with automatic retries on transient 502s, and a fresh usage guide to get teams productive quickly. Upgrade with no breaking changes and enjoy a smoother experience end-to-end.
