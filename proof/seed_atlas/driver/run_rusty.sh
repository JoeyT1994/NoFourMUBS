#!/bin/bash
# Build the seed atlas on one rusty node (ccq, 128 cores).  Resumable: rerun to continue from run/atlas_state.pkl.
#SBATCH -J seedatlas
#SBATCH -p ccq
#SBATCH -N 1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=24:00:00
#SBATCH -o /mnt/ceph/users/jtindall/seed_atlas_build/logs/driver_%j.out
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
BUILD=/mnt/ceph/users/jtindall/seed_atlas_build
cd $BUILD
/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python proof/seed_atlas/driver/driver.py $BUILD/run \
    --workers 126 --hours ${HOURS:-23.5} ${EXTRA:-}
