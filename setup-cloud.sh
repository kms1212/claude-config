#!/bin/sh
# Setup script for Claude Code cloud environments.
# Paste into the environment's Setup script field, or run:
#   curl -fsSL https://raw.githubusercontent.com/kms1212/claude-config/main/setup-cloud.sh | sh
# Files go to ~/.claude/claude-config/; ~/.claude/CLAUDE.md gets an import line
# appended, so any CLAUDE.md the environment already has is kept.
set -eu
BASE=https://raw.githubusercontent.com/kms1212/claude-config/main
DEST="$HOME/.claude/claude-config"
mkdir -p "$DEST"
for f in CLAUDE.md tropes.md; do
  curl -fsSL "$BASE/$f" -o "$DEST/$f"
done
IMPORT='@~/.claude/claude-config/CLAUDE.md'
touch "$HOME/.claude/CLAUDE.md"
grep -qxF "$IMPORT" "$HOME/.claude/CLAUDE.md" || printf '\n%s\n' "$IMPORT" >> "$HOME/.claude/CLAUDE.md"
