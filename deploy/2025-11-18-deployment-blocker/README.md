# DEPLOYMENT_BLOCKER (2025-11-18) — Debug logging patch and verification checklist

Context
- Persona: On-call SRE investigating a deployment blocker impacting production rollout.
- Target repo: MCPTEST-lgtm/toucan-sandbox
- Branch created for this work: deploy-blocker/2025-11-18/add-debug-logs

Patch: minimal Python snippet to increase logging for the suspected component
```python
# File: src/observability/enable_verbose_logging.py
# Purpose: attach to the running service to enable verbose logging for the next deploy
import logging

def enable_verbose_logging():
 logger = logging.getLogger('toucan')
 logger.setLevel(logging.DEBUG)
 # If handlers are not configured, add a console handler for immediate diagnostics
 if not logger.handlers:
 ch = logging.StreamHandler()
 ch.setLevel(logging.DEBUG)
 formatter = logging.Formatter('%(asctime)s %(levelname)s %(name)s: %(message)s')
 ch.setFormatter(formatter)
 logger.addHandler(ch)
 logger.debug('Verbose logging enabled by deploy-blocker/2025-11-18/add-debug-logs')

if __name__ == '__main__':
 enable_verbose_logging()
```

Verification checklist (must be performed in order by the SRE):
1. Checkout the branch locally or in CI: git fetch origin && git checkout deploy-blocker/2025-11-18/add-debug-logs
2. Run the snippet in a staging replica of the failing service: python src/observability/enable_verbose_logging.py
3. Reproduce the failing workflow and capture logs for the 5 minutes around failure; confirm additional DEBUG entries appear with the marker 'Verbose logging enabled'
4. If logs show root cause evidence (stack trace, missing config, retry loop), record exact log lines in a ticket and attach them as evidence
5. If the blocker is diagnosed and fixed in code, create a follow-up branch from main named fix/deploy-blocker-2025-11-18-<short-desc> and reference this branch and any log evidence in the PR
6. If this file is used to resolve the blocker, open a PR from deploy-blocker/2025-11-18/add-debug-logs into main with title: "DEPLOYMENT_BLOCKER: add debug logs for investigation (2025-11-18)" and include links to log evidence and reproduction steps

Notes
- This file is intentionally additive and non-destructive. It documents the investigation steps and provides a small diagnostic script.
- Replace <short-desc> in the follow-up branch name with a concise description of the code fix.
