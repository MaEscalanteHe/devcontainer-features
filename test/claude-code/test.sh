#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib

# Feature-specific tests
check "claude cli installed" command -v claude
check "claude version" claude --version
check "global claude follows the launcher" test "$(readlink -f /usr/local/bin/claude)" = "$(readlink -f "$HOME/.local/bin/claude")"

# Report results
reportResults
