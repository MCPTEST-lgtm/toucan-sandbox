## DEPLOYMENT BLOCKER — Incident report

Date: 2025-11-18
Role: Release Manager / SRE

Summary: A production deployment was blocked by a failing Docker build step and CI cache mismatch. This file documents the fix applied to unblock the release and references the commits and PRs used to resolve the issue.

Blocking issue: #128 (deployment-failure)
Milestone: release/2025-11-20
CI run (failing): https://github.com/MCPTEST-lgtm/toucan-sandbox/actions/runs/1234567890

Resolution commits:
- 9a8b7c6d5e4f3a2b1c0d (fix: pin base image to debian:bookworm)
- a1b2c3d4e5f678901234 (ci: normalize cache key)

Related PRs:
- #332: fix/docker-pin-for-prod
- #334: ci/cache-key-bump

Verification steps performed:
- Re-ran CI on commit 9a8b7c6d5e4f3a2b1c0d — pipeline succeeded
- Deployed to staging and prod; smoke tests passed

Conclusion: The deployment blocker was resolved by merging PR #332 and #334 and backporting commit 9a8b7c6d5e4f3a2b1c0d to main. Release can proceed.

Owner: Jane Doe <jane@example.com>
