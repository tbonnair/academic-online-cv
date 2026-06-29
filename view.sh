#!/usr/bin/env bash
#
# Local preview (private — only visible at http://localhost:1313 on this machine).
#
# This theme (Wowchemy v5) only builds with Hugo 0.87.0 extended, the same
# version Netlify uses. Newer Hugo removed functions the theme relies on
# (e.g. getCSV), so we pin the binary here.
#
# Requires Go on PATH (for Hugo Modules). Installed via Homebrew at /opt/homebrew/bin.

set -e
export PATH="/opt/homebrew/bin:$HOME/.local/bin:$PATH"

HUGO="$HOME/.local/bin/hugo-0.87.0"

if [ ! -x "$HUGO" ]; then
  echo "Pinned Hugo not found at $HUGO"
  echo "Download it with:"
  echo "  curl -L https://github.com/gohugoio/hugo/releases/download/v0.87.0/hugo_extended_0.87.0_macOS-ARM64.tar.gz | tar xz -C \"\$HOME/.local/bin\" hugo && mv \"\$HOME/.local/bin/hugo\" \"$HUGO\""
  exit 1
fi

rm -f .hugo_build.lock
exec "$HUGO" server --disableFastRender
