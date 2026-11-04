#!/bin/bash
# Float self-check of the exported certificate on one rusty node.
#SBATCH -J seedcheck
#SBATCH -p ccq
#SBATCH -N 1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=06:00:00
#SBATCH -o /mnt/ceph/users/jtindall/seed_atlas_build/logs/selfcheck_%j.out
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
BUILD=/mnt/ceph/users/jtindall/seed_atlas_build
cd $BUILD
/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python proof/seed_atlas/driver/selfcheck.py \
    $BUILD/seed_atlas_certificate.json.gz -j 126 ${EXTRA:-}
