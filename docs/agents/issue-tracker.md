# Issue tracker: GitHub

Commissions live as GitHub issues in `allanbcrawford/built-to-order-commissions`. Use the `gh` CLI.

## Conventions

- **List commissions waiting for screening**: `gh issue list --label new --json number,title,body,labels`.
- **Read a commission**: `gh issue view <number> --json number,title,body,labels,comments,reactionGroups`.
- **Screen a commission**: remove `new` and add `screened`, `wildcard`, or `declined` with `gh issue edit <number> --remove-label new --add-label screened`. Also add `software` or `hardware`.
- **Decline**: comment with a one-line reason, then close. `gh issue comment <number> --body "..."`, then `gh issue close <number>`.
- **Votes**: the 👍 count in `reactionGroups`. Comments do not count.
- **Shortlist for a poll**: `scripts/shortlist.sh allanbcrawford/built-to-order-commissions`. Add `on-poll` to the 4 picks, and remove it when the poll closes.
- **Winner**: swap `on-poll` for `building`, then run `scripts/new-build.sh <name> <number>` from the home repo.
- **Shipped**: swap `building` for `shipped`, comment with the video and repo links, and close the issue.

Do not change labels or close issues that Allan has not screened, unless he asks. Comments here are public.

## Pull requests as a request surface

**PRs as a request surface: no.** Commissions come only through the issue form.
