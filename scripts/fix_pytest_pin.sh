#!/usr/bin/env bash
# Emergency helper script to ensure CI uses pytest 7.4.0
set -e
echo "Pinning pytest to 7.4.0"
python -m pip install --upgrade pip
pip install "pytest==7.4.0"
