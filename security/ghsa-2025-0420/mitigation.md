# GHSA-2025-0420 Mitigation Brief

This brief documents the mitigation for GHSA-2025-0420 in MCPTEST-lgtm/toucan-sandbox.

Scope of vulnerability
- Affects releases tagged v1.9.0 through v2.1.3 (inclusive).
- Impact is limited to components depending on the affected package; no data migration is required.

Mitigation actions
- Pin the vulnerable dependency to version 3.4.7.
- Ensure CI enforces the pin and rebuild affected images/artifacts.

Rollback plan (for tags v1.9.0–v2.1.3)
- If issues arise post-mitigation, roll back deployments referencing tags in the affected range to their last known-good build prior to the change.
- Revert the dependency pin commit and redeploy.

Verification
- Run the security test suite and confirm no findings related to GHSA-2025-0420.
- Validate application health checks and error rates post-deploy.

Ownership
- Incident coordinator: Toronto region.

References
- This repository security advisory: security/ghsa-2025-0420/status.json
