#!/bin/bash
# Labelled-Fourier-score discharge of open patterns (gamma_test.py batch) over the cells in LIST; one output per task.
# The task's share of LIST goes to a node-local temporary file (mktemp), the only file this script removes.
#SBATCH --job-name=tc-gamma
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=6:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/selective/gamma_%A_%a.out
set -u
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; S=$B/selective; PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1 VECLIB_MAXIMUM_THREADS=1
T=$SLURM_ARRAY_TASK_ID; NT=$SLURM_ARRAY_TASK_COUNT
PART=$(mktemp) || exit 1
awk -v t="$T" -v n="$NT" '(NR-1)%n==t' "$S/$LIST" > "$PART"
"$PY" -W ignore "$S/gamma_test.py" batch "$B/frozen_bd87c69" "$S/gamma_lower.json" "$PART" "$S/${LIST%.txt}_$T.jsonl" 128 900
rm -f -- "$PART"
