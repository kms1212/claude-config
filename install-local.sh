#!/bin/sh
# Links ~/.claude/claude-config to this clone and imports its CLAUDE.md from
# ~/.claude/CLAUDE.md. Edits pushed by any session show up after `git pull` here.
set -eu
DIR=$(cd "$(dirname "$0")" && pwd)
mkdir -p "$HOME/.claude"
ln -sfn "$DIR" "$HOME/.claude/claude-config"
IMPORT='@~/.claude/claude-config/CLAUDE.md'
touch "$HOME/.claude/CLAUDE.md"
grep -qxF "$IMPORT" "$HOME/.claude/CLAUDE.md" || printf '\n%s\n' "$IMPORT" >> "$HOME/.claude/CLAUDE.md"
echo "linked ~/.claude/claude-config to $DIR"
