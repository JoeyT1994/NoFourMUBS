#!/bin/bash
# After open_cells.py: run plane_ball.py (PR #4's whole-cell certifier) on the three balls with the fewest open cells.
set -u
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc
for b in $(awk '$2=="OPEN_CELLS" && $6>0 {print $1}' $B/open_cells/summary.txt | head -3); do
  sbatch -J tc-plane$b -p ccq -N1 --exclusive -t 8:00:00 -o $B/plane_v1/b$b.%j.out \
    --wrap "/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python $B/plane_ball.py $b 64" < /dev/null
done
