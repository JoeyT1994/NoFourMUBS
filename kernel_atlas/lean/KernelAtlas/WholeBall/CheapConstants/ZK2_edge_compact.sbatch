#!/bin/bash
#SBATCH --job-name=zk2compact
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=00:45:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_work/compact_%j.log
set -euo pipefail
export PYTHONDONTWRITEBYTECODE=1
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
cd /mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_compact_code
base=/mnt/ceph/users/jtindall/seed_atlas_build/hor
exec /mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python -B -u \
  kernel_atlas/generators/budget_edge_compact.py --state "$base/run6/zk2_closed_state.pkl" \
  --run "$base/run6" --out "$base/run6/zk2_closed_compact_state.pkl" --workers 8
