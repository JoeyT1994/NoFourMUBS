#!/bin/bash
#SBATCH --job-name=zk2budget
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --array=0-3
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=04:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_work/budget_%A_%a.log
set -euo pipefail
export PYTHONDONTWRITEBYTECODE=1
export ZK2_TRACE=1
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
cd /mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_code
exec /mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python -B -u \
  kernel_atlas/generators/budget_fine.py --workers 80 \
  --shards 4 --shard "${SLURM_ARRAY_TASK_ID}" \
  --resume-trials /mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_work/budget_7336869.log \
  --out "/mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_work/fine_budgets_${SLURM_ARRAY_TASK_ID}.jsonl"
