#!/usr/bin/env bash
# Upgrade example-lib to patched version 1.2.4
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
# Example replacement for package.json; adjust as needed
if [ -f package.json ]; then
 jq '.dependencies["example-lib"] = "^1.2.4"' package.json > package.json.tmp && mv package.json.tmp package.json
fi
# Reinstall lockfile
if command -v npm >/dev/null 2>&1; then
 npm install
fi

echo "Pinned example-lib to ^1.2.4 and reinstalled dependencies."
