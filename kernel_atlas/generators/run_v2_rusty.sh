#!/bin/bash
# Exact v2 tangent-test mirror (check_v2.py) on every atlas Record: one whole `ccq` node, 128 processes, strided.
# Submit from the repository root:   sbatch kernel_atlas/generators/run_v2_rusty.sh
#SBATCH --job-name=tangent-v2
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --time=02:00:00
#SBATCH --output=kernel_atlas/results/v2/logs/%j.out

set -uo pipefail
CORES=128
VENV=${VENV:-/mnt/ceph/users/$USER/venvs/nofourmubs}
OUT=kernel_atlas/results/v2
mkdir -p "$OUT/logs"
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
for w in $(seq 0 $((CORES - 1))); do
    "$VENV/bin/python" -W ignore kernel_atlas/generators/check_v2.py --out "$OUT/w$w.jsonl" $(seq "$w" "$CORES" 12020) \
        > "$OUT/logs/w$w.log" 2>&1 &
done
wait
echo "done on $(hostname)"
