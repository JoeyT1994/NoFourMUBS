#!/bin/bash
# Many balls with onetree.py on one node: LANES balls at a time, WORKERS processes each (small balls cannot use a whole
# node: their first levels have 1, 16 and 256 cells). Each ball is closed (resumable) and then checked. Prints the job id.
#   bash onetree_batch.sh LIST OUT [LANES] [WORKERS] [MAX_LEVEL]     LIST: one ball per line
set -eu
L=$1; OUT=$2; N=${3:-8}; W=${4:-16}; M=${5:-8}
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python; R=$B/pr4_914919b
mkdir -p $OUT
sbatch --parsable -J tc-onebatch -p preempt --qos=preempt -N1 --exclusive -t 24:00:00 --requeue -o $OUT/batch.$(basename $L).%j.out \
  --wrap "cd $R && xargs -a $L -P $N -I{} sh -c '$PY -W ignore $B/closer/onetree.py close $R {} $OUT --max-level $M --workers $W > $OUT/b{}.close.log 2>&1; $PY -W ignore $B/closer/onetree.py check $R {} $OUT --workers $W > $OUT/b{}.check.log 2>&1; echo {} \$(tail -c 200 $OUT/b{}.check.log)'"
