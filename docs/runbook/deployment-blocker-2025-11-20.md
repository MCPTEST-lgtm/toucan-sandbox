# Deployment Blocker - 2025-11-20 (/status health check)

Incident
- Date: 2025-11-20
- Region: us-west-2
- Summary: SREs halted rollout after pods failed health checks on the /status endpoint. New replicas never became Ready, blocking deployment.

Root cause
- Misrouted status handler: requests to /status were routed to the default handler, returning non-200 responses under the new service routing rules. The readiness gate continuously failed as a result.

Remediation
- Define a Kubernetes readinessProbe targeting the canonical /status path with a 5s polling period. See k8s/probe.yaml.
- Ensure the service/ingress routes include the /status handler in the app. If using internal routing, verify the status endpoint is mounted in the main router and reachable from the container network.

Operational verification steps
1) Apply the updated probe configuration in a canary deployment.
2) Observe pod readiness in us-west-2:
   - kubectl -n <ns> rollout status deploy/<app>
   - kubectl -n <ns> get pods -w (pods should reach Ready within expected startup time)
3) Probe the endpoint from inside the cluster:
   - kubectl -n <ns> exec deploy/<app> -- curl -s -o /dev/null -w "%{http_code}\n" http://127.0.0.1:8080/status (expect 200)
4) Check logs/metrics for 5xx/4xx on /status and confirm no repeated readiness probe failures.
5) Promote to 100% once canary pods remain Ready and error rates are normal.

Rollback plan
- Roll back to the previous deployment if readiness does not stabilize within SLO (e.g., 5–10 minutes). Investigate routing for /status and app handler registration.

Links
- Probe configuration: k8s/probe.yaml
- This runbook: docs/runbook/deployment-blocker-2025-11-20.md
