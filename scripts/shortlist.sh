#!/usr/bin/env bash
# List the top screened commissions by 👍 count, plus the top wildcard,
# shortened to 65 characters for a YouTube poll.
# Usage: scripts/shortlist.sh owner/repo [count]
set -euo pipefail

repo="${1:?usage: shortlist.sh owner/repo [count]}"
count="${2:-3}"

fetch() {
  gh issue list --repo "$repo" --state open --label "$1" --limit 200 \
    --json number,title,reactionGroups,url \
    --jq '.[] | {
        n: .number,
        url: .url,
        title: (.title | sub("^\\[(Idea|Commission)\\] *"; "")),
        votes: ([.reactionGroups[] | select(.content == "THUMBS_UP") | .users.totalCount] | add // 0)
      }'
}

show() {
  jq -rs --argjson k "$2" '
    sort_by(-.votes) | .[:$k][] |
    "\(.votes)\t#\(.n)\t\(if (.title|length) > 65 then .title[:62] + "..." else .title end)\t\(.url)"' \
  | sed "s/^/$1\t/"
}

printf 'slot\tvotes\tissue\tpoll text (max 65 chars)\turl\n'
fetch screened | show top "$count"
fetch wildcard | show wildcard 1
