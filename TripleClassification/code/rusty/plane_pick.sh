#!/bin/bash
# Run plane_ball.py (PR #4's whole-cell certifier) on the three open balls with the fewest open cells, as listed by the
# live audit's results_live/open_cells.json (waits for the first pass that writes it).
#SBATCH -p ccq -n1 -c1 -t 2:00:00
set -u
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc
until [ -f $B/results_live/open_cells.json ]; do sleep 60; done
for b in $(python3 -c "import json;d=json.load(open('$B/results_live/open_cells.json'))['balls'];print(' '.join(sorted(d,key=lambda k:len(d[k]['cells']))[:3]))"); do
  sbatch -J tc-plane$b -p ccq -N1 --exclusive -t 8:00:00 -o $B/plane_v1/b$b.%j.out \
    --wrap "/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python $B/plane_ball.py $b 64" < /dev/null
done
