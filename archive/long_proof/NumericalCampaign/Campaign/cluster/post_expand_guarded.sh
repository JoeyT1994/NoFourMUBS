#!/usr/bin/env bash
# Runs as a Slurm job after the guarded expansion (dependency afterany on the three expand jobs):
# merge, audit, compare with the unguarded expansion, then submit the layer prune and the full certification.
#   sbatch --dependency=afterany:J1:J2:J3 --cpus-per-task=8 --mem=96G --time=6:00:00 \
#          --export=ALL,PACKAGE_DIR=$PWD,OLD_DIR=... post_expand_guarded.sh
#SBATCH --job-name=nofour-postexpand
#SBATCH --account=ccq
#SBATCH --partition=ccq
#SBATCH --output=logs/slurm-%j.out
#SBATCH --error=logs/slurm-%j.err
set -euo pipefail
cd "${PACKAGE_DIR:?}"
OLD="${OLD_DIR:?}"
for v in $(env | grep -o '^SLURM_[A-Z0-9_]*'); do unset "$v"; done    # sbatch from inside a job: no inherited job settings
log() { echo "$(date -Iseconds) $*" | tee -a logs/post_expand.log; }
log "start"
test "$(ls results/expand | grep -c part || true)" = 0 || { log "expansion has .part files: not merging"; exit 1; }
python3 make_tasks.py cells 64 | tee logs/merge.log
python3 audit.py expand | tee logs/audit_expand.log
grep -q '^PASS' logs/audit_expand.log || { log "expansion audit FAILED: not submitting"; exit 1; }
log "expansion audit PASS"
python3 - "$OLD/results/layer" results/old_layer_survivor_ids.txt <<'PY'
import os, re, sys
pat = re.compile(r'"cell": (\d+),.*"ok": false')
n = 0
with open(sys.argv[2], "w") as out:
    for fn in sorted(os.listdir(sys.argv[1])):
        if fn.endswith(".jsonl"):
            for line in open(os.path.join(sys.argv[1], fn)):
                m = pat.search(line)
                if m:
                    out.write(m.group(1) + "\n"); n += 1
print("old layer survivors:", n)
PY
python3 compare_runs.py "$OLD" . --layer-map results/layer_id_map_old_to_new.tsv --only-ids results/old_layer_survivor_ids.txt \
    | tee logs/compare_runs.log || log "compare_runs: DIFFERENT (see logs/compare_runs.log); certification proceeds on the guarded cells"
mkdir -p logs/layer logs/certify results/layer results/certify
NL=$(wc -l < tasks_layer.txt); NT=$(wc -l < tasks_certify.txt)
S=$(( (NT + 2) / 3 ))
WALLTIME=24:00:00 ./submit.sh layer 4 1 "$NL" rome | tee -a logs/post_expand.log
WALLTIME=36:00:00 ./submit.sh certify 10 1 "$S" rome | tee -a logs/post_expand.log
WALLTIME=36:00:00 ./submit.sh certify 10 $(( S + 1 )) $(( 2 * S )) rome | tee -a logs/post_expand.log
WALLTIME=36:00:00 ./submit.sh certify 10 $(( 2 * S + 1 )) "$NT" rome | tee -a logs/post_expand.log
log "submitted layer ($NL tasks) and certify ($NT tasks in 3 slices)"
