#!/usr/bin/env bash
# review-checklist.sh — tiny example used in the Copilot code review pilot.
# Prints the pre-merge checklist items for the demo pull request.

set -euo pipefail

echo "==> Copilot Review Pilot — pre-merge checklist"
echo "   1) PR description is clear and references the meeting date"
echo "   2) Example file (pilot-demo.sh) is present on the pilot-change branch"
echo "   3) Request a GitHub Copilot code review on this pull request"
echo "   4) Verify the review comment appears under the PR"

count=0
for i in 1 2 3; do
  count=$((count + i))
  echo "    loop check $i -> running total: $count"
done

if [ "$count" -eq 6 ]; then
  echo "    checklist sanity check passed (1+2+3 = 6)"
else
  echo "    checklist sanity check FAILED" >&2
  exit 1
fi

echo "==> Pilot review checklist complete."
