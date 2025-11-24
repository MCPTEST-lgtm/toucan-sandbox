Incident: TLS timeouts observed after a recent change caused slower handshakes to fail in Dublin.
Scope: Impacts service-to-service calls using outbound TLS from the toucan-sandbox stack.
Change: Tightened handshake/read timeouts and restricted ciphers to modern AEAD suites; minimum TLS 1.2.
Risk: Legacy clients or high-latency links may fail more often; watch 5xx/error budgets and handshake errors.
Rollback: Revert this hotfix commit and restore prior TLS settings; redeploy the affected services.
Validation: Canary in Dublin; verify latency/handshake success and cipher negotiation on dashboards.