#!/bin/bash
# Submit ball $1's whole-cell runs as $2 disjoint parts (cells with index = i mod k), one node each, named tc-plane<ball>.
set -u
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; b=$1; k=$2; P=${3:-preempt}
Q=""; [ "$P" = preempt ] && Q="--qos=preempt"
for i in $(seq 0 $((k-1))); do
  sbatch -J tc-plane$b -p $P $Q -N1 --exclusive -t 8:00:00 -o $B/plane_v1/b$b.p$i.%j.out --export=ALL,TC_PART=$i/$k,TC_SPLIT_FIRST=${TC_SPLIT_FIRST:-0} \
    --wrap "/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python $B/plane_ball.py $b 64" < /dev/null > /dev/null
done
