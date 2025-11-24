# Hotfix: NGINX 60s proxy_read_timeout Regression (2025-11-24)

- Commit refs: a1b2c3d, d4e5f6a
- Affected path: infra/nginx/site.conf
- Rollback tag: v2025.11.23.2

## Summary
A configuration change introduced a regression that set NGINX `proxy_read_timeout` to 60s, causing upstream response handling to stall under load. This hotfix restores the intended timeout value and reloads NGINX across the fleet.

## Impact
- Region: US-East
- Symptom: Elevated request latency and sporadic timeouts
- Window: 2025-11-24 20:17–20:29 UTC
- Customer-facing effect: Increased tail latency; intermittent 504s on long-running endpoints

## Fix
- Reverted the timeout configuration to the previous stable setting in `infra/nginx/site.conf`.
- Applied patch in commits `a1b2c3d` and `d4e5f6a`.
- Performed rolling reload of NGINX to pick up the change.

## Validation
- CI: `hotfix_ci_342` passed (green).
- Deployed canary to US-East; monitored 15 minutes post-change.
- Metrics: p95 latency returned to baseline; 504 rate normalized to pre-regression levels.
- Artifact checksum: 9f1e2c

## Next Steps
- Add guardrail in CI to detect unintended changes to `proxy_read_timeout`.
- Extend synthetic checks for long-running endpoints.
- Audit recent infra changes around NGINX and upstream timeouts.
- Schedule a postmortem to document root cause and prevention measures.
