#!/bin/bash
# Gamma sweeper: every 20 minutes, score every open cell (C1 ok, certified normal form) that no gamma output covers yet.
# One output file per sweep (gamma_sw_<n>.jsonl); the cell list is a node-local mktemp file, the only file removed.
#SBATCH --job-name=tc-gsweep
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=10:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/selective/gsweep_%j.out
set -u
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; S=$B/selective; PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1 VECLIB_MAXIMUM_THREADS=1
end=$(( $(date +%s) + 9*3600 + 1800 ))
n=0
while [ "$(date +%s)" -lt "$end" ]; do
  LIST=$(mktemp) || exit 1
  "$PY" "$S/gamma_list_timeouts.py" "$LIST" "$S/gamma_*_[0-9]*.jsonl" "$S/children" "$S/l4" "$S/l5" "$S/l6" \
        "$B/selective2/children" "$B/selective2/l4" "$B/selective2/l5"
  if [ -s "$LIST" ]; then
    while [ -e "$S/gamma_sw_$n.jsonl" ]; do n=$((n+1)); done
    echo "$(date +%H:%M) sweep $n: $(wc -l < "$LIST") cells"
    "$PY" -W ignore "$S/gamma_test.py" batch "$B/frozen_bd87c69" "$S/gamma_lower.json" "$LIST" "$S/gamma_sw_$n.jsonl" 128 900
  fi
  rm -f -- "$LIST"
  sleep 1200
done
