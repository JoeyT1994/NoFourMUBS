#!/bin/bash
#SBATCH --job-name=tc-interim
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=4:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/sidecar/interim_%j.out
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; S=$B/selective; PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1 VECLIB_MAXIMUM_THREADS=1
cd $B/sidecar
$PY complete_files.py interim_files.txt $S/l4 $S/l5 $S/l6 $B/selective2/children $B/selective2/l4 $B/selective2/l5
$PY -W ignore $B/main_split3/TripleClassification/code/stagec_guard.py $B/frozen_bd87c69 $(cat interim_files.txt) --out sidecar_interim_${TAGI:-1}.jsonl --only-closed --workers 128
