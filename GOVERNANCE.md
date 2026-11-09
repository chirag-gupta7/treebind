# Governance

Treebind starts with one maintainer. This document says who can do what, how
decisions are made, and what contributors can expect. It changes only by pull
request, with the owner's approval.

## Roles

| Role | GitHub permission | What they do | How to become one |
| :-- | :-- | :-- | :-- |
| Contributor | Read, works from a fork | Opens issues and pull requests | Open a pull request |
| Reviewer | Triage | Labels and closes issues, reviews pull requests, cannot merge | A track record of useful reviews and triage, then a maintainer invites them |
| Maintainer | Write or Maintain | Merges, cuts releases, owns areas of the code | Several months of merged work and reviews, then a nomination that draws no objection from the maintainers in 7 days |
| Owner | Admin | Settings, rulesets, security and the repository itself. [@mohanedmoh](https://github.com/mohanedmoh) at the start | Held by the owner, and shared with maintainers only if the project moves to an organisation |

Maintainers who go quiet for six months move to an emeritus list. They keep
credit and can return.

## How decisions are made

- Most decisions happen in the pull request or issue. If no maintainer objects
  within a few working days, the proposal goes ahead (lazy consensus).
- A question that shapes the API, the architecture or the security model gets a
  `kind/decision` issue and ends in a short record in [docs/adr/](docs/adr/):
  context, decision, consequences.
- If maintainers disagree and discussion does not settle it, the owner decides
  and writes down why.
- Changes to governance, the licence or the conduct policy are proposed as a
  pull request and need the owner's approval.

## While there is one maintainer

The `main` ruleset requires zero approvals, because GitHub does not let an
author approve their own pull request. CI, the DCO check and resolved
conversations are the gate. Even so:

- Changes to the API, the lock protocol and anything security-related are
  reviewed by a contributor before they merge.
- The maintainer opens pull requests for their own changes too, so CI and the
  history stay uniform, and does not push to `main`.
- When a second maintainer joins, required approvals go up to 1 and code owner
  review turns on.
- Finding a second maintainer is a goal before v1.

## Response targets

| Event | Target |
| :-- | :-- |
| First response to a new issue or pull request | 3 working days |
| Acknowledgement of a private vulnerability report | 3 working days |
| Reply to a contributor's update on a review | 5 working days |

These are targets, not guarantees. The fix and disclosure timeline for
vulnerabilities is in [SECURITY.md](SECURITY.md).

## Maintainer duties

- Keep `main` green. A broken `main` outranks every other task.
- Apply the label rules, so the backlog stays searchable.
- Review in good faith: explain the reason for a change request, and thank the
  author.
- Follow the same rules as everyone else: sign off commits, use pull requests,
  no force-push to `main`.
- Keep security reports private until a fix is available.
- Record decisions in `docs/adr/`, so the next contributor does not have to ask.
