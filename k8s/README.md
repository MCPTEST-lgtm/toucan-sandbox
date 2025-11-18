Context: This change was added to address a DEPLOYMENT_BLOCKER seen in the pipeline (failed rolling update due to missing probes).

Files added in this branch:
- k8s/healthcheck.yaml: Pod manifest with liveness and readiness probes pointing to /healthz and /ready.

Why this unblocks deployment:
- K8s will detect unhealthy containers more quickly and avoid surge/timeout regressions during rollout. Merge this branch to main and re-trigger the release pipeline to validate.
