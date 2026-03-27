# Hotfix: Enforce HTTPS in production

- Context: Urgent redirect issue observed in us-east-1 at 2025-11-21T09:40Z
- Change: Add middleware src/middleware/forceHttps.js to redirect http -> https using X-Forwarded-Proto header
- Verification: curl -I http://sandbox.toucan.local/ -> 301 to https
- Rollout note: verify CloudFront X-Forwarded-Proto
