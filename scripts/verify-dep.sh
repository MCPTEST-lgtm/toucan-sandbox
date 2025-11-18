#!/usr/bin/env bash
set -e
# Print the installed version recorded in package.json for quick verification
node -e "console.log(require('../package.json').dependencies['vulnerable-lib'])"
