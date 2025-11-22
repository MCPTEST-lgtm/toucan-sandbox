Webhook outage WB-482 has been resolved by commit abc123def.

Verification run at 2025-11-21T09:00:00Z confirmed:
- /health/webhook 200
- /metrics webhook_errors=0

This aligns with the fix proposed in PR #128 and demonstrates that the payment webhook is healthy with zero reported errors.
