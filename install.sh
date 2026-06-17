#!/usr/bin/env bash
# about-me-context installer
# Copies the skill into ~/.claude/skills/about-me-context/
# Never touches your ~/.claude/about-me/ files or your CLAUDE.md.
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="$HOME/.claude/skills/about-me-context"

echo "Installing about-me-context skill..."
mkdir -p "$HOME/.claude/skills"

if [ -d "$DEST" ]; then
  echo "Found an existing install at $DEST"
  read -r -p "Overwrite it? [y/N] " ans
  case "$ans" in
    [yY]|[yY][eE][sS]) rm -rf "$DEST" ;;
    *) echo "Aborted. Nothing changed."; exit 0 ;;
  esac
fi

mkdir -p "$DEST"
cp -R "$SRC/SKILL.md" "$SRC/references" "$SRC/templates" "$DEST"/

echo "Done. Skill installed at $DEST"
echo
echo "Next: open Claude Code in any folder and run  /about-me"
