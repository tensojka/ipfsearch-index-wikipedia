#!/bin/bash

npm install --quiet
node_modules/typescript/bin/tsc -p tsconfig.json
mkdir -p ./assets
echo "Prerequisites satisfied. Generating..."
node main.js "$@"
mv assets/generated/inx/.meta.json assets/meta.json