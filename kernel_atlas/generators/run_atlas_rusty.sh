#!/bin/bash
# Kernel-check whole atlas Records (atlas_run.py): one ccq node per array task, Records strided over the tasks.
# After setup_lean_rusty.sh.  Submit from the repository root, e.g. a pilot of 2 nodes on the first 40 Records:
#   sbatch --array=0-1 --export=ALL,NTASK=2,LAST=39 kernel_atlas/generators/run_atlas_rusty.sh
# and the whole atlas on 30 nodes:
#   sbatch --array=0-29 --export=ALL,NTASK=30 kernel_atlas/generators/run_atlas_rusty.sh
#SBATCH --job-name=kernel-atlas
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --time=12:00:00
#SBATCH --output=kernel_atlas/results/atlas/logs/%A_%a.out

set -uo pipefail
export PATH=$HOME/.elan/bin:$PATH
VENV=${VENV:-/mnt/ceph/users/$USER/venvs/nofourmubs}
NTASK=${NTASK:-30}
FIRST=${FIRST:-0}
LAST=${LAST:-12020}
K=${SLURM_ARRAY_TASK_ID:-0}
OUT=kernel_atlas/results/atlas/node$K
mkdir -p "$OUT"
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
MEM_GB=$(awk '/MemTotal/ {printf "%d", $2 / 1048576 * 0.85}' /proc/meminfo)
CPUS=$(nproc)
seq $((FIRST + K)) "$NTASK" "$LAST" > "$OUT/idx.txt"
echo "node $(hostname): $CPUS cores, memory budget $MEM_GB GB, $(wc -l < "$OUT/idx.txt") Records"
"$VENV/bin/python" -u kernel_atlas/generators/atlas_run.py --out "$OUT" --idx-file "$OUT/idx.txt" \
    --mem-gb "$MEM_GB" --gen-workers $((CPUS / 6)) --max-records 60
echo "done on $(hostname)"
