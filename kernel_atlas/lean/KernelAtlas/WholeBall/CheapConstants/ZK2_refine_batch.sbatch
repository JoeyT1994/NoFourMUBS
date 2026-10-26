#!/bin/bash
#SBATCH --job-name=zk2radius
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=04:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_work/radius_%j.log
set -euo pipefail
export PYTHONDONTWRITEBYTECODE=1 ZK2_TRACE=1
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
cd /mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_audit_code
py=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python
work=/mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_work
source_run=/mnt/ceph/users/jtindall/seed_atlas_build/hor/run5
"$py" -B proof/seed_atlas/driver/shrink_balls.py \
  "$source_run/atlas_state.pkl" "$1" "$work/refine_batch$2" \
  --edge-source "$source_run/atlas_state_edge.pkl" > "$work/refine_preparation_$2.json"
exec "$py" -B -u kernel_atlas/generators/budget_state.py \
  --state "$work/refine_batch$2/atlas_state.pkl" --workers 80 \
  --changed-only --refine-changed --out "$work/radius_budgets_$2.jsonl"
