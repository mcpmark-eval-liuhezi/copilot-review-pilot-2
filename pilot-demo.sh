#!/usr/bin/env bash
# pilot-demo.sh — small example script for the Copilot code review pilot
set -euo pipefail

echo "Copilot Review Pilot Demo"
echo "------------------------"
echo "……”  # placeholder marker line for diff visibility

count=0
for i in 1 2 3; do
  count=$((count + i))
  echo "loop iteration $i -> running total: $count"
done

if [ "$count" -eq 6 ]; then
  echo " demo sanity check passed (1+2+3 = 6)"
else
  echo " demo sanity check FAILED" >&2
  exit 1
fi

echo "pilot-demo.sh complete"
