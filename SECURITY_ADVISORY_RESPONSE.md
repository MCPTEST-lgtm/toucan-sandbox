# GHSA-2025-0001 Response

Affected package: example-lib <= 1.2.3
Advisory ID: GHSA-2025-0001
Severity: high

Mitigation applied in this branch:
- Pin example-lib to 1.2.4 in package manifests (see upgrade script)
- Add remediation notes and verification steps

Verification steps:
1. Run scripts/upgrade-example-lib.sh to update package.json and yarn.lock
2. Run npm install && npm test

Contact: security-team@example.com
