# Dependency Vulnerability Audit — 2025-11-23

Scope: package.json and requirements.txt. This snapshot intentionally includes only the entries listed below to ensure deterministic content.

## Findings

1) lodash
- Package manager: npm
- File: package.json
- Version in repo: 4.17.15
- CVE: CVE-2020-28500
- Fixed target version: 4.17.21
- Notes: upgrade via `npm install lodash@4.17.21`

2) requests
- Package manager: pip
- File: requirements.txt
- Version in repo: 2.19.1
- CVE: CVE-2018-18074
- Fixed target version: 2.31.0
- Notes: upgrade via `pip install -U "requests==2.31.0"`

## Remediation status and owners
- lodash (npm): owner dev@toucan — Status: Pending remediation
- requests (pip): owner sre@toucan — Status: Pending remediation

## Sign-off
- Security: Pending
- SRE: Pending
