# 2025-11-21 Hotfix: Timeout Bleed

Scope: Mitigates runaway request timeouts impacting staging and production.

Change Summary: Adjusts service default timeout from 180s to 45s and documents rollout procedure.

Risk: Low; config-only.

Rollback: Revert to prior defaults.

Verification: CI green; staging smoke tests pass.