# HOTFIX RELEASE CI Validation - 2025-11-18

Scenario: HOTFIX_RELEASE
Persona: Release Engineer

Purpose:
Provide a machine-readable checklist to validate CI artifacts and to create the hotfix tag and release.

Checklist:
- [ ] Re-run failing CI jobs for the commit on main and capture the job IDs.
- [ ] Verify produced build artifact checksums (SHA256) match the expected values supplied by the build system.
- [ ] If artifacts are validated, create tag v2025.11.18-hotfix on the validated commit SHA and push the tag.
- [ ] Create releases/v2025.11.18-hotfix.md containing a 2-line release note and link to validated artifacts.

Contact: releng@example.com
