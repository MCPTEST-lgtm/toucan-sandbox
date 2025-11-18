# SECURITY ADVISORY RESPONSE: GHSA-2025-XXXX

Date: 2025-11-18
Reported by: Security Team
Scenario tag: SECURITY_ADVISORY_RESPONSE

Summary:
A high-severity dependency vulnerability (GHSA-2025-XXXX) affects multiple internal components. This document records the initial triage, affected components inventory, current mitigation status, and concrete next actions assigned to teams.

Advisory ID: GHSA-2025-XXXX
Vulnerability: Prototype pollution in example-dep v1.2.3 (affects server-side JSON parsing)
CVE: (if assigned) N/A at publication

Affected components (inventory):
- MCPTEST-lgtm/toucan-sandbox (this repository) — component: backend/api-server (go-modules)
- org/repo-a (external internal repo name) — component: shared/json-utils
- org/repo-b — component: web/frontend-bundle

Current mitigation status (per-component):
- MCPTEST-lgtm/toucan-sandbox: DETECTED — uses example-dep v1.2.3 in go.mod. Action: pin or upgrade to patched version >=1.2.4, add CI dependency check. Responsible: backend-team.
- org/repo-a: PENDING — reported to owners, no patch yet. Responsible: infra-lib-team.
- org/repo-b: MITIGATED — patched to example-dep v1.2.4 in package-lock.json. Responsible: frontend-team.

Immediate action items (must be tracked):
1. Update go.mod in MCPTEST-lgtm/toucan-sandbox to require example-dep >=1.2.4 and run `go mod tidy` and CI. (Owner: backend-team, ETA: 48h)
2. Add a dependency scan job to CI to fail on known GHSA IDs. (Owner: ci-team, ETA: 72h)
3. Notify downstream consumers and create issues in org/repo-a to prioritize patching. (Owner: security-team, ETA: 24h)

Requested attachments and evidence:
- Link to vulnerable dependency entry: https://github.com/example/example-dep/releases/tag/v1.2.3
- Local verification commands executed: `go list -m all | grep example-dep`

Contacts and escalation:
- backend-team: backend-team@example.com
- security-team: security@example.com

Notes:
- This file is the canonical initial coordination record for the advisory. Please use the commit produced by this operation as the reference point for subsequent issues and PRs.

End of report.
