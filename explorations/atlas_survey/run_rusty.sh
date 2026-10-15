#!/bin/bash
# Atlas survey on rusty: NNODES whole nodes of the `ccq` partition (QOS ccq: up to 3,840 CPUs per user; `gen` allows 256) (128 cores each), one survey process per core, strided over all
# 12,021 Records (about 25 s per Record per core, so 4 nodes take about 10 minutes).
#
# Setup (once, on rusty), with the repository copied to $REPO:
#   module load python/3.12.9 && python3 -m venv $VENV && $VENV/bin/pip install -r $REPO/requirements.txt
# Submit from $REPO:   sbatch explorations/atlas_survey/run_rusty.sh
# Summarise:           $VENV/bin/python explorations/atlas_survey/summarize.py explorations/atlas_survey/results/full
#SBATCH --job-name=atlas-survey
#SBATCH --partition=ccq
#SBATCH --array=0-3
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --time=01:00:00
#SBATCH --output=explorations/atlas_survey/results/full/logs/%A_%a.out

set -uo pipefail
NNODES=4
CORES=128                     # fixed: nodes report different core counts, and the stride must be global
VENV=${VENV:-/mnt/ceph/users/$USER/venvs/nofourmubs}
OUT=explorations/atlas_survey/results/full
mkdir -p "$OUT/logs"
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
W=$((NNODES * CORES))
for k in $(seq 0 $((CORES - 1))); do
    w=$((SLURM_ARRAY_TASK_ID * CORES + k))
    "$VENV/bin/python" explorations/atlas_survey/survey.py "$OUT/w$w.jsonl" $(seq "$w" "$W" 12020) \
        > "$OUT/logs/w$w.log" 2>&1 &
done
wait
echo "node $SLURM_ARRAY_TASK_ID done on $(hostname)"
