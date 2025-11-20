# Security Advisory Log: ghsa-2025-11-aws-keys

Repository: MCPTEST-lgtm/toucan-sandbox
Coordinator: GHSA review, November 2025 window

This synthetic log records two advisories for tracking purposes during triage and release verification. Authoritative status is the release notes and tags in this repository.

---

## CVE-2024-9999 — Potential AWS credential exposure via verbose logging

- Affected components:
  - runtime/env loader and logging configuration
  - deployment manifests and CI job logs where DEBUG logging may surface secrets
- Impact: risk of inadvertent AWS Access Key/Secret exposure in logs and artifacts.
- Fixed version(s): v1.3.2 and later (mask secrets in logger; rotate leaked keys; bump aws-sdk; disable DEBUG on auth paths)
- Detection: code audit + secret-scanning alert
- Status: pending verification against release notes
- References: internal triage ticket SEC-2025-11-aws-keys

---

## GHSA-abc1-xzy2-pqr3 — Unsafe XML entity resolution in config parser (synthetic)

- Affected components:
  - config-parser module and CLI bootstrap
- Impact: XXE leading to possible SSRF / file disclosure when parsing untrusted config
- Fixed version(s): v1.4.0 and later (hardened parser; disabled external entity resolution)
- Detection: static analysis + unit test coverage gap identified
- Status: fix staged; awaiting publication window
- References: GHSA-abc1-xzy2-pqr3

---

Note: This file is synthetic for coordination purposes and may be refined as verification proceeds.