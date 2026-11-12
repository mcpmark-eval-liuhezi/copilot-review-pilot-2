#!/usr/bin/env bash
# pilot-demo.sh — small example script for the Copilot code review pilot
# Compiles a list of repos and prints a readiness summary.

set -euo pipefail

REPO="${1:-mcpmark-eval-liuhezi/copilot-review-pilot-2}"

echo "==> Piloting Copilot code review on ${REPO}"

declare -a support=(linux darwin windows)
declare -a arch=(x86_64 arm64)

for os in "${support[@]}"; do
  for abi in "${arch[@]}"; do
    echo "  target: ${os}/${abi}"
  done
done

echo "==> Pilot setup complete. Requesting a Copilot code review."
