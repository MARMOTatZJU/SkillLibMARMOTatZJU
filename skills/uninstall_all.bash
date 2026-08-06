#!/usr/bin/env bash

# Written by GPT-5.6-Tierra

set -euo pipefail

# The source directory is the directory containing this script.
SKILL_ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
CODEX_SKILLS="${CODEX_HOME:-$HOME/.codex/skills}"

shopt -s nullglob

for skill_dir in "$SKILL_ROOT"/*/; do
    [[ -f "$skill_dir/SKILL.md" ]] || continue

    skill_name="$(basename "$skill_dir")"
    link_path="$CODEX_SKILLS/$skill_name"
    skill_target="${skill_dir%/}"
    link_target="$(readlink -f -- "$link_path" 2>/dev/null || true)"

    if [[ -L "$link_path" && "$link_target" == "$skill_target" ]]; then
        rm "$link_path"
        printf 'Removed: %s -> %s\n' "$link_path" "$skill_target"
    else
        printf 'Skipping non-matching link: %s\n' "$link_path"
    fi
done
