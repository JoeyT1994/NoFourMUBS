#!/bin/bash
# graph_v2.py (clustering variants; direct + joint without support) over a list of Records, NNODES whole ccq nodes.
# Submit from the repository root:   sbatch kernel_atlas/generators/run_graph_v2_rusty.sh <list file>
#SBATCH --job-name=graph-v2
#SBATCH --partition=ccq
#SBATCH --array=0-1
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --time=02:00:00
#SBATCH --output=kernel_atlas/results/graph_v2/logs/%A_%a.out

set -uo pipefail
NNODES=2
CORES=128
LIST=$1
VENV=${VENV:-/mnt/ceph/users/$USER/venvs/nofourmubs}
OUT=kernel_atlas/results/graph_v2
mkdir -p "$OUT/logs"
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
W=$((NNODES * CORES))
for k in $(seq 0 $((CORES - 1))); do
    w=$((SLURM_ARRAY_TASK_ID * CORES + k))
    "$VENV/bin/python" -W ignore kernel_atlas/generators/graph_v2.py --out "$OUT/w$w.jsonl" \
        $(awk -v w=$w -v W=$W 'NR % W == w' "$LIST") > "$OUT/logs/w$w.log" 2>&1 &
done
wait
