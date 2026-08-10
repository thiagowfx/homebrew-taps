tap := "thiagowfx/taps"

# List recipes
default:
    @just --list

# Check tap syntax and formula style
check:
    #!/usr/bin/env bash
    set -euo pipefail
    trap 'rm -f bottle_output.txt linkage_output.txt steps_output.txt skipped_or_failed_formulae-*.txt' EXIT
    brew test-bot --only-tap-syntax

# Install a formula from this tap
install formula:
    brew install {{ tap }}/{{ formula }}

# Run an installed formula's test block
test formula:
    brew test {{ tap }}/{{ formula }}

# Update the repository and upgrade a formula
update formula:
    git pull --rebase
    brew update
    brew upgrade {{ tap }}/{{ formula }}
