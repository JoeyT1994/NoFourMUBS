#!/bin/bash
#SBATCH --job-name=tc-xball-v4
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=24:00:00
#SBATCH --signal=B:USR1@300
#SBATCH --output=campaign_%j.log
set -euo pipefail
export OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1 OMP_NUM_THREADS=1 VECLIB_MAXIMUM_THREADS=1
PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python
X=proof/theorems/TC_triple_classification/xball
"$PY" "$X/experiments/test_campaign.py"
"$PY" "$X/test_xball.py"
resume=()
if [[ -f "$X/results/rusty_campaign_v4_20261028.manifest.json" ]]; then
    resume=(--resume)
fi
# Forward the scheduler's early warning to the controller to stop dispatching.
pid=''
trap 'if [[ -n "$pid" ]]; then kill -USR1 "$pid" 2>/dev/null || true; fi' USR1 TERM
set +e
"$PY" -u "$X/experiments/campaign.py" \
    --cover "$X/results/screen_20261028.cover.json" \
    --receipts "$X/results/screen_20261028.cells.jsonl" \
    --core "$X/results/core4_v4.json" \
    --output "$X/results/rusty_campaign_v4_20261028.json" \
    --workers ${WORKERS:-120} --max-level 11 --max-new-pieces ${PIECES:-100000} --core-power 4 --seconds 82800 \
    "${resume[@]}" &
pid=$!
wait "$pid"
result=$?
if kill -0 "$pid" 2>/dev/null; then
    wait "$pid"
    result=$?
fi
exit "$result"
