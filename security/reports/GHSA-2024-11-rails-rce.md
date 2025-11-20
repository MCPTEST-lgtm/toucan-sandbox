# GHSA-2024-11: Rails Remote Code Execution (RCE)

Concise summary: A remote code execution vulnerability in Ruby on Rails allows crafted input to be executed within the application context under certain conditions. Projects depending on vulnerable Rails versions must upgrade to a patched release to mitigate the risk.

- Impacted module path: `services/web/Gemfile.lock`
- Current version: `rails 7.0.4.2`
- Required fixed version: `rails >= 7.0.8`

## Status

| Repository                       | Branch | Mitigation Status                     |
|----------------------------------|--------|----------------------------------------|
| MCPTEST-lgtm/toucan-sandbox      | main   | pending bump via Dependabot PR         |

## Actions

- [ ] Update rails to 7.0.8 (or newer within 7.0.x)
  - Owner: ops@toucan.example
  - Due: 2025-12-01
