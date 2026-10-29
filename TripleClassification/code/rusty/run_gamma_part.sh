#!/bin/bash
# Helper for chain_v2.sh: score one part of a ball's open-cell list (gamma_test.py batch) into its own file OUTF.
#SBATCH --job-name=tc-ghelp
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=6:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/selective/ghelp_%j.out
set -u
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; G=$B/selective; PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1 VECLIB_MAXIMUM_THREADS=1
"$PY" -W ignore "$G/gamma_test.py" batch "$B/frozen_bd87c69" "$G/gamma_lower.json" "$LISTF" "$OUTF" 128 900
