#!/bin/bash
#SBATCH --job-name=zk2run6resume
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=06:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_work/run6_%j.log
set -euo pipefail
export PYTHONDONTWRITEBYTECODE=1
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
cd /mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_keep_code
exec /mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python -B -u \
  kernel_atlas/generators/budget_run6.py /mnt/ceph/users/jtindall/seed_atlas_build/hor/run6 \
  --workers 80 --rounds 3 --hours-per-pass 1.5
