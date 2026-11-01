#!/bin/bash
# One ball with onetree.py on one node: close (resumable), then check; leaves the check refuses are searched again
# (close --requeue-refused) and the tree checked again, up to three rounds. Prints the job id.
#   bash onetree_ball.sh BALL [MAX_LEVEL] [OUT] [CAPS] [EXTRA_CLOSE_ARGS...]
set -eu
b=$1; L=${2:-6}
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python
OUT=${3:-$B/onetree}; R=$B/pr4_914919b; CAPS=${4:+--caps $4}; EXTRA="${*:5}"
mkdir -p $OUT
C="$PY -W ignore $B/closer/onetree.py"
sbatch --parsable -J tc-one$b -p preempt --qos=preempt -N1 --exclusive -t 24:00:00 --requeue -o $OUT/b$b.%j.out \
  --wrap "cd $R && $C close $R $b $OUT --max-level $L --workers 128 $CAPS $EXTRA && for k in 1 2 3; do $C check $R $b $OUT --workers 128 && break; $C close $R $b $OUT --max-level $L --workers 128 $CAPS $EXTRA --requeue-refused || break; done"
