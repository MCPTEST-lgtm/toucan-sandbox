# 2025-11-21 Hotfix
- Patch: Null guard in request handler to prevent 500s on anonymous traffic.
- Incident: EU traffic spike 2025-11-21 09:20 UTC; verified in staging.
- Rollback plan: revert commit and disable feature flag `auth_enforce_v2`.