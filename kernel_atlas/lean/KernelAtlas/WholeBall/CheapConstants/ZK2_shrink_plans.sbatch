#!/bin/bash
#SBATCH --job-name=zk2shrink
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=02:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_work/shrink_%j.log
set -euo pipefail
export PYTHONDONTWRITEBYTECODE=1 ZK2_TRACE=1
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
cd /mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_shrink_code
exec /mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python -B -u \
  kernel_atlas/generators/budget_plan.py --workers 80 --selection fine --shrink \
  --fine "$1" --out "$2"
