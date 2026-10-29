#!/bin/bash
# Helper for chain_v2.sh: certify one part of a layer (score_first_run.py with TC_PART, TC_ROWS_OUT) on its own node.
#SBATCH --job-name=tc-lhelp
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=8:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/selective/lhelp_%j.out
set -u
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; G=$B/selective; C=$B/main_split3/TripleClassification/code
PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1 VECLIB_MAXIMUM_THREADS=1
"$PY" -W ignore "$C/score_first_run.py" "$B/frozen_bd87c69" "$G/gamma_lower.json" "$GOUT" "$LAYER" --workers 128 --seconds 300
