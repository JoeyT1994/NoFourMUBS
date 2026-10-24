#!/bin/bash
#SBATCH -J seedballs
#SBATCH -p gen
#SBATCH -N 1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=64
#SBATCH --time=03:00:00
#SBATCH --array=0-31
#SBATCH -o /mnt/ceph/users/jtindall/seedballs_run/logs/%A_%a.out
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
cd /mnt/ceph/users/jtindall/NoFourMUBS/explorations/seed_balls
/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python run_all.py $SLURM_ARRAY_TASK_ID 32 \
    /mnt/ceph/users/jtindall/seedballs_run/out_$SLURM_ARRAY_TASK_ID.jsonl 64
