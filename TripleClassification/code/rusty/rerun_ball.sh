#!/bin/bash
# Complete one ball's rows, then run the anchored check. For each layer at level >= 5 (deepest first), rerun the
# sub-balls whose rows have no complete pattern list (a timeout, or the TypeError of score_first_run_v0/v1) with the
# fixed score_first_run.py (score-only unless TC_SCORE_ONLY=0, when the frozen certifier attempts every pattern the
# score leaves, within TC_SECONDS per sub-ball), appending the new rows and their score receipts. Then run
# anchored_run.py on every sub-ball whose undischarged patterns have no anchored receipt yet. One writer per file.
#SBATCH -p ccq --exclusive -N1 -t 8:00:00
set -u
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; G=$B/selective; C=$B/main_split3/TripleClassification/code
PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python; b=$1
W=${SLURM_CPUS_ON_NODE:-$(nproc --all)}            # before OMP_NUM_THREADS=1, which nproc alone would honour
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1 VECLIB_MAXIMUM_THREADS=1
for L in 10 9 8 7 6 5; do
  for d in selective selective2; do
    f=$B/$d/l$L/b${b}_l$L.json.gz; [ -f "$f" ] || continue
    echo "$(date +%H:%M) ball $b: $(basename $f)"
    TC_SCORE_ONLY=${TC_SCORE_ONLY:-1} TC_RERUN_INCOMPLETE=1 "$PY" -W ignore "$C/score_first_run.py" "$B/frozen_bd87c69" "$G/gamma_lower.json" \
      "$G/gamma_v3/b$b.jsonl" "$f" --workers "$W" --seconds ${TC_SECONDS:-900} < /dev/null
  done
done
AL=$(mktemp "$G/anchored_v1/.list_b$b.XXXXXX")
n=$(python3 "$G/anchored_list.py" "$AL" "$b")
echo "$(date +%H:%M) ball $b: $n sub-balls for the anchored check"
[ "$n" -gt 0 ] && "$PY" -W ignore "$C/anchored_run.py" "$B/frozen_bd87c69" "$AL" "$G/anchored_v1/b$b.jsonl" "$W" < /dev/null
rm -f -- "$AL"
echo "$(date +%H:%M) ball $b done"
