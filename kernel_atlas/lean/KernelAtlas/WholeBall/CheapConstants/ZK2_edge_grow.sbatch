#!/bin/bash
#SBATCH --job-name=zk2edgegrow
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=02:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_work/edge_grow_%j.log
set -euo pipefail
export PYTHONDONTWRITEBYTECODE=1
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
cd /mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_edge_repair_code
base=/mnt/ceph/users/jtindall/seed_atlas_build/hor
exec /mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python -B -u \
  kernel_atlas/generators/budget_edge_grow.py --run "$base/run6" --workers 80 --pass-id 1 \
  --previous-state "$base/run6/zk2_seed_closed_state.pkl" --previous-shards "$base/zk2_work/edge_shards"
