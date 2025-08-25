#!/bin/bash
set -xe

npm run release:version 0.1.22-jb4

npm install
npm run build

npm pack --workspace @google/gemini-cli-core
npm pack --workspace @google/gemini-cli

rm -f /Users/saifhakeam/dev/Crappy_Projects/contract_auditor_parent/contract_auditor_docker_gemini/jailbrokenGemini/google-gemini-cli-*.tgz
mv google-gemini-cli-*.tgz /Users/saifhakeam/dev/Crappy_Projects/contract_auditor_parent/contract_auditor_docker_gemini/jailbrokenGemini/
