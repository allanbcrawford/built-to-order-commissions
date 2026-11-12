#!/usr/bin/env bash
# Create the commission board labels on a GitHub repo.
# Usage: scripts/setup-labels.sh owner/repo
set -euo pipefail

repo="${1:?usage: setup-labels.sh owner/repo}"

label() { gh label create "$1" --repo "$repo" --color "$2" --description "$3" --force; }

label commission    "0e8a16" "A build commission from a viewer"
label new           "fbca04" "Not screened yet"
label screened      "1d76db" "Passed the checklist; can go on a poll"
label wildcard      "d876e3" "Odd but safe; one per poll"
label on-poll       "fef2c0" "In the current YouTube poll"
label software      "c5def5" "Software build"
label hardware      "f9d0c4" "Hardware build"
label needs-funding "e99695" "Larger hardware; creator funds or pre-sale"
label declined      "cccccc" "Did not pass the checklist"
label building      "5319e7" "Won the poll; build in progress"
label shipped       "0b6e2e" "Done; video and repo linked"
