# Clean-room rules

Treebind is Apache-2.0 and written from scratch. These rules keep it that way,
so that every user and contributor can rely on the licence.

## What you must not bring in

Do not copy, paste, translate or closely paraphrase any of the following into
this repository, an issue, a discussion or a pull request:

- **Code** from a proprietary, employer or private project, including any
  earlier private implementation of a similar idea.
- **History**: commits, branches or patches taken from such a project.
- **Data**: configuration, fixtures, logs, screenshots or test data taken from
  such a project or from a real environment.
- **Credentials**: keys, tokens, passwords, internal hostnames or URLs, in any
  form and even if expired.

## What is fine

- Code you wrote yourself, for this project, on your own initiative or with
  your employer's written permission to contribute.
- Code from another project under Apache-2.0 or a compatible licence, with the
  source and licence stated in the pull request and an attribution added to
  [NOTICE](../NOTICE).
- Ideas, public documentation and published specifications, described in your
  own words.

## Write requirements as behaviour

Describe what the system must do, not how some other system does it. A good
requirement reads like "when the remote and the volume both change the same
file, keep both versions and report a conflict in status". It does not refer to
another implementation's functions, file layout or internal names.

Plans, design notes and issues in this project follow the same rule. If you are
unsure whether something crosses the line, ask in
[Discussions](https://github.com/mohanedmoh/treebind/discussions) before you
write any code.

## Your responsibility

By signing off a commit (`git commit -s`) you certify the
[Developer Certificate of Origin](https://developercertificate.org): that you
wrote the change or have the right to submit it under the project's licence. You
are responsible for everything you submit.

A maintainer who finds that a contribution does not meet these rules will
remove it, and will rewrite or revert affected history if needed.
