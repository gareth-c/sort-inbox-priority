#!/bin/sh
# Builds dist/sort-inbox-priority.zip for uploading to the Claude app as a custom skill.
# Optional: pass the path to your personal overrides file to include it as
# references/overrides.md. Only the zip contains it; the repo never does.
set -eu

root=$(cd "$(dirname "$0")/.." && pwd)
out="$root/dist/sort-inbox-priority.zip"
work=$(mktemp -d)
trap 'rm -rf "$work"' EXIT

cp -R "$root/skills/sort-inbox-priority" "$work/"
if [ $# -gt 0 ]; then
  cp "$1" "$work/sort-inbox-priority/references/overrides.md"
  echo "Included your overrides as references/overrides.md"
fi

mkdir -p "$root/dist"
rm -f "$out"
(cd "$work" && zip -rqX "$out" sort-inbox-priority -x '*.DS_Store')
echo "Built $out"
