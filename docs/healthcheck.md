# Healthcheck

This document describes the repository healthcheck guidance used by CI. It includes how to run a basic HTTP healthcheck and what to monitor:

- Endpoint: /health
- Expected status: 200
- Response JSON: { "status": "ok" }

Add a short script or workflow that curls /health and verifies HTTP 200.
