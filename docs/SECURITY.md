# Emergency HOTFIX Release note (2025-11-18)

This repository received an urgent documentation hotfix to clarify mitigation steps for a recently discovered packaging mismatch in distribution builds. This change was made on branch `hotfix/security-note-2025-11-18` so CI can validate artifacts before merging.

Summary of changes:
- Added an explicit workaround and verification steps to ensure package signatures are validated during release packaging.

Please run the repository CI on this branch and confirm artifact checks pass prior to merging.
