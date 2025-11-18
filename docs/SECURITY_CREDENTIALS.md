# SECURITY_CREDENTIALS.md

Purpose
-------
This file documents recommended practices for storing and rotating credentials (API tokens, service accounts, SSH keys) used by this repository and related CI/CD pipelines.

Recommendations
---------------
1. Use repository or organization secrets (e.g. GitHub Actions Secrets) for runtime credentials; never commit credentials to the repository.
2. Limit scope and lifetime of tokens. Prefer short-lived tokens and minimum required permissions.
3. Rotate credentials at least every 90 days or immediately if compromise is suspected.
4. Record rotation steps in a secure runbook (access-controlled) and test service connectivity after rotation.

How to rotate a GitHub Personal Access Token (example)
-----------------------------------------------
1. Create a new PAT from https://github.com/settings/tokens with only the scopes needed (e.g. repo:status, workflow).
2. Update repository Actions secret named "REPO_PAT" in Settings → Secrets and variables → Actions.
3. Update any local or CI installations that used the old token.
4. Revoke the old token at https://github.com/settings/tokens.

How to update an AWS access key used in CI (example)
----------------------------------------------------
1. In AWS IAM, create a new access key for the required service account with minimal permissions.
2. Update the CI secret (e.g. AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY) in the repository's secrets.
3. Run CI pipelines to verify the new key works.
4. Delete the old access key from IAM.

Examples (commands)
--------------------
- Example: base64-encode a small secret file and set it in Actions UI when needed:
 cat secret.txt | base64

- Example: verify Actions secret exists locally (do not echo secrets in logs):
 # In workflows reference secrets via: ${{ secrets.MY_SECRET }}

Notes
-----
- Do not store plaintext credentials in the repository history. If credentials were committed, rotate them immediately and purge history if required.

(Added on 2025-11-18 by doc automation.)