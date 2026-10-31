#!/bin/bash
# One ball with onetree.py on 16 nodes: each level-1 child of the chart box is closed as a part (resumable, requeued on
# preemption), then one job joins the parts and checks the whole tree. Prints the job ids.
#   bash onetree_parts.sh BALL [MAX_LEVEL] [OUT] [CAPS]
set -eu
b=$1; L=${2:-6}
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python
OUT=${3:-$B/onetree}; R=$B/pr4_914919b; CAPS=${4:+--caps $4}; Q="-p preempt --qos=preempt"
mkdir -p $OUT; P=''
for i in $(seq 0 15); do
  c="$(( (i>>3)&1 )),$(( (i>>2)&1 )),$(( (i>>1)&1 )),$(( i&1 ))"
  j=$(sbatch --parsable -J tc-one$b $Q -N1 --exclusive -t 24:00:00 --requeue -o $OUT/b$b.part$i.%j.out \
    --wrap "cd $R && $PY -W ignore $B/closer/onetree.py close $R $b $OUT --part --cell 1:$c --max-level $L --workers 128 $CAPS")
  P=$P:$j
done
J=$(sbatch --parsable -J tc-one$b $Q -N1 --exclusive -t 6:00:00 --dependency=afterok$P -o $OUT/b$b.join.%j.out \
  --wrap "cd $R && $PY -W ignore $B/closer/onetree.py join $R $b $OUT && $PY -W ignore $B/closer/onetree.py check $R $b $OUT --workers 128")
echo "ball $b: parts ${P#:}, join+check $J"
