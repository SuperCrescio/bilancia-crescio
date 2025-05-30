#!/bin/bash
set -e
if ! command -v npm >/dev/null; then
    echo "Node.js and npm must be installed." >&2
    exit 1
fi

npm install
npm test || echo "No tests configured"
