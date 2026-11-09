#!/usr/bin/env bash
# Checks that every non-merge commit in a range carries a Signed-off-by line.
#
# Usage: hack/check-dco.sh <base-ref> [head-ref]
#
# It checks that the line exists and is well formed, not that it matches the
# commit's author. That is enough to start with.
set -euo pipefail

base="${1:?usage: check-dco.sh <base-ref> [head-ref]}"
head="${2:-HEAD}"
fail=0

for c in $(git rev-list --no-merges "$base..$head"); do
  if ! git show -s --format=%B "$c" | grep -qE '^Signed-off-by: .+ <.+@.+>$'; then
    echo "missing Signed-off-by: $(git show -s --format='%h %s' "$c")"
    fail=1
  fi
done

if [ "$fail" -ne 0 ]; then
  echo
  echo "Every commit needs a sign-off. Add it with: git commit -s --amend"
  echo "For several commits: git rebase --signoff <base>, then force-push your branch."
fi
exit "$fail"
