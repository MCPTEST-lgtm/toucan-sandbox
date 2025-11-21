Merge queue triage — 2025-11-21 (New York)

Top risks and sequencing

1) #137 Hotfix: reduce default timeout to 45s (2025-11-21)
   - Risk: production timeout bleed; user impact ongoing if not landed.
   - Action: expedite SRE + service owners review; smoke in staging and ship.

2) #136 Hotfix: force HTTPS in production
   - Risk: mixed-content and session issues; broad user-facing impact.
   - Action: verify redirect logic and headers; coordinate with edge/CDN; fast-merge.

3) #120 Hotfix: Null guard for request handler (2025-11-21)
   - Risk: 500s on anonymous traffic during EU spike; customer-visible.
   - Action: re-run checks, confirm artifact, stage verification, then merge.

4) #113 Hotfix: stabilize /healthz 200 response
   - Risk: health probes failing can block deploys and trigger false alarms.
   - Action: validate payload shape; ensure monitors updated; merge with urgency.

5) #135 HOTFIX: Log4j CVE-2025-0001 patch notes
   - Risk: security compliance/audit exposure if not documented and verified.
   - Action: confirm artifact verification evidence; merge for audit traceability.

Additional observations
- Security advisory work (#138, #80, #34) should batch after the hotfixes or run in parallel reviews.
- Deployment blockers (#37, #40, #75, #82) unblock release velocity; prioritize once the above five land.
- Several localization/docs-only PRs pose minimal risk; keep them out of the critical path today.

Operational suggestions for today
- Assign concrete reviewers to unassigned PRs (see owners.md) to spread load across SRE, Security, and Release.
- Re-check CI results for the hotfix set right before merge to ensure freshness.
- Keep batch size small: land the top 2, validate, then proceed with the next 2–3.
