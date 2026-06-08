#!/bin/bash
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Verify Python 3 is available (required for search scripts)
python3 --version

# Ensure search script is executable
chmod +x "$CLAUDE_PROJECT_DIR/src/ui-ux-pro-max/scripts/search.py" 2>/dev/null || true

echo "UI UX Pro Max skill ready."
