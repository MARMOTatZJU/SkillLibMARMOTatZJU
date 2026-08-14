#!/usr/bin/env bash

# Written by GPT-5.6-Tierra

set -euo pipefail

# The source directory is the directory containing this script.
SKILL_ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
CODEX_SKILLS="${CODEX_HOME:-$HOME/.codex/skills}"

mkdir -p "$CODEX_SKILLS"
shopt -s nullglob

for skill_dir in "$SKILL_ROOT"/*/; do
    [[ -f "$skill_dir/SKILL.md" ]] || continue

    skill_name="$(basename "$skill_dir")"
    link_path="$CODEX_SKILLS/$skill_name"

    # Repair a dangling link occupying this skill name.
    if [[ -L "$link_path" && ! -e "$link_path" ]]; then
        rm -- "$link_path"
        printf 'Removed expired link: %s\n' "$link_path"
    fi

    if [[ -e "$link_path" || -L "$link_path" ]]; then
        printf 'Skipping existing: %s\n' "$link_path"
        continue
    fi

    ln -s "$skill_dir" "$link_path"
    printf 'Linked: %s -> %s\n' "$link_path" "$skill_dir"
done
