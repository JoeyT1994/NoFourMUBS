#!/bin/bash
#SBATCH --job-name=zk2finalcompact
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --array=0-1
#SBATCH --time=04:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_work/final_%A_%a.log
set -euo pipefail
export PYTHONDONTWRITEBYTECODE=1 ZK2_TRACE=1
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
cd /mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_final_code
base=/mnt/ceph/users/jtindall/seed_atlas_build/hor
exec /mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python -B -u \
  kernel_atlas/generators/budget_state.py --state "$base/run6/zk2_closed_compact_state.pkl" \
  --workers 80 --require-closed --refine-changed --shard "$SLURM_ARRAY_TASK_ID" --shards 2 \
  --fine "$base/zk2_work/fine_budgets_0.jsonl" "$base/zk2_work/fine_budgets_1.jsonl" \
    "$base/zk2_work/fine_budgets_2.jsonl" "$base/zk2_work/fine_budgets_3.jsonl" \
    "$base/zk2_work/fine_budgets_4.jsonl" "$base/zk2_work/radius_budgets_1.jsonl" \
    "$base/zk2_work/radius_budgets_2.jsonl" "$base/zk2_work/radius_budgets_3.jsonl" \
  --out "$base/zk2_work/final_state_$SLURM_ARRAY_TASK_ID.jsonl"
