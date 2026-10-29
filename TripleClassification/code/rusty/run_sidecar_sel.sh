#!/bin/bash
# Stage C precondition sidecar on a selective layer: the file list is taken when the job starts (after the layer ran).
#SBATCH --job-name=tc-sidecar
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=12:00:00
#SBATCH --output=sidecar_%A_%a.out
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1 VECLIB_MAXIMUM_THREADS=1
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python
T=$SLURM_ARRAY_TASK_ID; NT=$SLURM_ARRAY_TASK_COUNT
files=$(ls $DIR/b*_l*.json.gz | awk -v t=$T -v n=$NT "(NR-1)%n==t")
$PY -W ignore $B/main_split3/TripleClassification/code/stagec_guard.py $B/frozen_bd87c69 $files --out sidecar_${TAG}_$T.jsonl --only-closed --workers 128
