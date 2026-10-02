#!/usr/bin/env bash
# Run once stage 1 is complete: merge, audit, then submit the layer prune and the 1% certify sample.
#   ./after_expand.sh [LAYER_NODES=4] [SAMPLE_NODES=20]
set -euo pipefail
cd "$(dirname "$0")"
LN="${1:-4}"; SN="${2:-20}"
EXTRA="${3:-}"    # pass --allow-missing to merge while a few jobs are still running (they are appended later)
python3 make_tasks.py cells 64 $EXTRA | tee logs/merge.log
python3 audit.py expand ${EXTRA:+--allow-pending} | tee logs/audit_expand.log
grep -q '^PASS' logs/audit_expand.log || { echo "expansion audit FAILED: not submitting"; exit 1; }
NT=$(wc -l < tasks_certify.txt); N1=$(( (NT + 99) / 100 ))          # 1% of the 64-cell certify tasks
python3 make_tasks.py sample "$N1" 8 | tee logs/sample.log
NL=$(wc -l < tasks_layer.txt); NS=$(wc -l < tasks_certify1pct.txt)
WALLTIME=24:00:00 ./submit.sh layer "$LN" 1 "$NL" rome
WALLTIME=48:00:00 ./submit.sh certify1pct "$SN" 1 "$NS" rome
echo "full run later: ./submit.sh certify NODES $(( N1 + 1 )) $NT"
