Scenario: DEPLOYMENT_BLOCKER

Summary: Production deploy is blocked by a backend API failure.
Affected component: backend-api
Blocking symptom: HTTP 500 on /v1/orders during deploy
Blocking commit (canonical id to search in releases): 0000000000000000000000000000000000000000
Required proof for unblock: release or tag that references the blocking commit id or a release that supersedes it with a hotfix PR/commit reference.

Triage owner: on-call-sre
