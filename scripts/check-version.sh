#!/bin/sh
# Fails if plugin.json, marketplace.json and SKILL.md disagree on the version.
set -eu

root=$(cd "$(dirname "$0")/.." && pwd)
plugin=$(sed -n 's/^  "version": "\(.*\)",*$/\1/p' "$root/.claude-plugin/plugin.json")
market=$(sed -n 's/^ *"version": "\(.*\)",*$/\1/p' "$root/.claude-plugin/marketplace.json")
skill=$(sed -n 's/^\*\*Version:\*\* \(.*\)$/\1/p' "$root/skills/sort-inbox-priority/SKILL.md")

if [ "$plugin" = "$market" ] && [ "$plugin" = "$skill" ]; then
  echo "Version $plugin everywhere"
else
  echo "Version mismatch: plugin.json=$plugin marketplace.json=$market SKILL.md=$skill" >&2
  exit 1
fi
