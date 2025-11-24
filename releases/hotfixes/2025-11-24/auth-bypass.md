# Hotfix 2025-11-24: Authentication Bypass in Login Middleware

Date: 2025-11-24
CI Build: ci-2025-11-24-7421

Summary
- Emergency patch to address an authentication bypass discovered in the login middleware.
- Root cause: a logic gap allowed requests with partially initialized session state to skip downstream auth checks.
- Fix: reinforced middleware to strictly enforce session establishment and token validation; removed permissive short-circuit, added explicit checks for missing/invalid auth state, and tightened route allow-listing.

Artifacts and SHA256 Checksums
- toucan-linux-amd64.tar.gz  
  2f3b9c1a0e5249b2b8a2e7d9b3e6e0a1c7f4a9de3f1c2b5a6d7e8f9a0b1c2d3e
- toucan-macos-arm64.tar.gz  
  9a1c2b3d4e5f6789ab0c1d2e3f4a5b6c7d8e9fa0b1c2d3e4f5a6b7c8d9e0f1a2

Risk and Rollback
- Validate before tagging:
  - Verify checksums of downloaded artifacts match the values above.
  - Run smoke tests: unauthenticated requests must be rejected; authenticated flows must succeed.
  - Confirm no public routes are inadvertently gated; only intended paths remain unauthenticated (health, metrics if applicable).
  - Review CI build ci-2025-11-24-7421 logs for auth middleware tests passing.
- Rollback plan:
  - If regressions are detected, revert to the previous stable tag on main and redeploy.
  - Disable the new middleware behavior behind its feature flag if available, or roll back the deployment using your standard orchestration.
