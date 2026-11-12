# Built to Order: commissions

**You pick it. AI builds it. I ship it.**

Built to Order is a YouTube channel. Viewers commission builds. Allan builds them with AI agents on camera, ships them to the person who asked, and publishes the code.

## Commission a build

1. Read the [submission terms](SUBMISSION_TERMS.md).
2. [Fill in the commission form](https://github.com/allanbcrawford/built-to-order-commissions/issues/new/choose).

## Vote

- Give a 👍 reaction to the commissions you want built. One account, one vote.
- Each poll takes the top 3 `screened` commissions plus 1 `wildcard`. The poll runs on YouTube for 7 days.
- The poll is advice. Allan keeps a veto.

[How commissions get screened and picked](HOW-IT-WORKS.md).

## Shipped builds

Each build gets its own public repo, named `bto-<name>`, under Apache 2.0.

| Build | Video | Repo |
|---|---|---|
| (none yet) | | |

## Maintainer scripts

```bash
scripts/setup-labels.sh allanbcrawford/built-to-order-commissions   # create the labels once
scripts/shortlist.sh allanbcrawford/built-to-order-commissions      # top 3 + wildcard for the poll
```
