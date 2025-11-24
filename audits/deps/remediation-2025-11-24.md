# Dependency Vulnerability Remediation Plan (Nov 24, 2025)

Owner: Security Lead (Seattle)
Source: DEPENDENCY_VULNERABILITY_SCAN
Target completion date: 2025-12-01

Scope: runtime and development dependencies impacted by CVEs listed in report-2025-11-24.json.

Remediation steps

- openssl (system) 1.1.1u — upgrade to 1.1.1w or 3.0.x per distro guidance; validate TLS flows.
- log4j-core (maven) 2.14.1 — upgrade to 2.17.2+; verify JndiLookup removed and re-run integration tests.
- urllib3 (pypi) 1.26.5 — upgrade to 1.26.19 or 2.x if compatible; run API client regression suite.
- lodash (npm) 4.17.19 — upgrade to 4.17.21; run frontend unit tests and bundle audit.
- jackson-databind (maven) 2.9.10 — upgrade to 2.13.4.1 or 2.15.x; re-scan for transitive gadget chains.
- ffi (rubygems) 1.15.0 — upgrade to 1.15.5; run native extension smoke tests.

Timelines

- Critical/high (log4j-core, openssl, lodash, jackson-databind, ffi): PRs by 2025-11-27; merge by 2025-11-29 pending CI.
- Medium (urllib3): PR by 2025-11-28; merge by 2025-11-30.

Validation & sign-off

- Re-run SCA and SAST after each bump; attach reports in audits/deps/.
- Security lead to sign off by EOD 2025-12-01.
