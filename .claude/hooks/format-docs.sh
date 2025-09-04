#!/bin/bash
cd "$CLAUDE_PROJECT_DIR"
pnpm exec prettier --write .
pnpm exec markdownlint --fix **/*.md