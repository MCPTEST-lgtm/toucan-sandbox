# 2025-11-20 Hotfix

- Fix: lock @actions/cache to 3.3.2 to resolve checksum mismatch in build job.
- Impact: restores artifact reproducibility for tags v2.4.1–v2.4.2.
- Validation: rerun pipeline on tag v2.4.2; confirm artifact SHA256=7e8a9d3b0c1e4a64ce2ab9d5a8f0b6e6a4c2d1f0b9a7e3c1d5f2e9a0c7b1d223.
- Rollback: revert lockfile change if cache miss persists.