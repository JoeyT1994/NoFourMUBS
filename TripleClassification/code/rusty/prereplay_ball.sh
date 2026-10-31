#!/bin/bash
# Pre-replay one ball for the live audit, on K nodes: its whole-cell manifest (plane_manifest.py), then every leaf of
# the uncached trees checked in parallel into the leaf cache (plane_prereplay.py --leaves, K parts), then the trees
# (plane_prereplay.py, K parts), which only walk and look leaves up. Jobs are named tc-prerep<ball> (close_loop.sh
# starts none while one runs). Prints the job ids.
#   bash prereplay_ball.sh BALL [K] [MANIFEST]     MANIFEST: 'none' (the manifest is current) or a job id to wait for
set -eu
b=$1; K=${2:-8}; MAN=${3:-}
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python
R=$B/pr4_914919b; grep -qx "$b" $B/plane_ext_balls.txt 2>/dev/null && R=$B/pr4ext
Q="-p preempt --qos=preempt"
if [ -z "$MAN" ]; then
  M=$(sbatch --parsable -J tc-prerep$b $Q -N1 -c 32 -t 3:00:00 -o $B/plane_v1/b$b.manifest.%j.out \
    --wrap "cd $R && $PY -W ignore $B/plane_manifest.py $R $B/plane_v1/b$b $b")
else M=$MAN; fi
D=''; [ "$M" != none ] && D="--dependency=afterok:$M"
L=''
for i in $(seq 0 $((K-1))); do
  j=$(sbatch --parsable -J tc-prerep$b $Q -N1 --exclusive -t 12:00:00 $D -o $B/plane_v1/b$b.leaves.p$i.%j.out \
    --wrap "cd $R && TC_LEAF_CACHE=$B/plane_v1 $PY -W ignore $B/plane_prereplay.py $R $B/plane_v1/b$b $b --part $i/$K --leaves")
  L=$L:$j
done
T=''
for i in $(seq 0 $((K-1))); do
  j=$(sbatch --parsable -J tc-prerep$b $Q -N1 --exclusive -t 12:00:00 --dependency=afterany$L -o $B/plane_v1/b$b.trees.p$i.%j.out \
    --wrap "cd $R && TC_LEAF_CACHE=$B/plane_v1 $PY -W ignore $B/plane_prereplay.py $R $B/plane_v1/b$b $b --part $i/$K")
  T=$T:$j
done
echo "ball $b: manifest $M, leaves ${L#:}, trees ${T#:}"
