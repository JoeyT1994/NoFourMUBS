#!/bin/bash
# Publish the latest audited live pass to main: fetch results_live from rusty, regenerate the README status block and
# results/ (publish_status.py), and commit and push only those files. Does nothing if no new pass has finished.
# Run from the repository root:  bash TripleClassification/code/sync_status.sh
set -u
R=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc
TOP=$(git rev-parse --show-toplevel) || exit 1
TC=$TOP/TripleClassification
STAMP=$TC/.last_published_pass                       # git-ignored marker: the live_log line last published
last=$(ssh -o BatchMode=yes rusty "tail -1 $R/live_log.txt 2>/dev/null")
[ -n "$last" ] || { echo "no audited pass yet"; exit 0; }
[ -f "$STAMP" ] && [ "$(cat "$STAMP")" = "$last" ] && { echo "already published: $last"; exit 0; }
TMP=$(mktemp -d) || exit 1
scp -q rusty:$R/results_live/balls.tsv rusty:$R/results_live/summary.json "$TMP/" || { rm -rf -- "$TMP"; exit 1; }
when="$(date '+%-d %B %Y'), ${last%% *}"
python3 "$TC/code/publish_status.py" "$TMP" --when "$when"
rm -rf -- "$TMP"
cd "$TOP" || exit 1
git add TripleClassification/README.md TripleClassification/results/balls.tsv TripleClassification/results/summary.json \
        TripleClassification/results/open.txt
if git diff --cached --quiet; then echo "no change"; echo "$last" > "$STAMP"; exit 0; fi
git commit -q -m "TripleClassification status: audited pass of $when

Co-Authored-By: Claude Opus 5.5 <noreply@anthropic.com>" -- TripleClassification/README.md TripleClassification/results/balls.tsv TripleClassification/results/summary.json TripleClassification/results/open.txt && \
git -c credential.helper= -c credential.helper='!gh auth git-credential' push -q origin main && echo "$last" > "$STAMP" && echo "published: $last"
