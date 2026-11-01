#!/bin/bash
# Regenerate the one-tree atlas status (onetree_status.py) on one node, unless a run is already queued. Prints the job id.
#   bash onetree_status.sh          (expects $B/closer/onetree_status.py; sync_status.sh copies it there)
set -eu
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python
mkdir -p $B/dissem
[ -z "$(squeue -u $USER -h -n tc-status -o %i)" ] || { echo "tc-status already queued"; exit 0; }
sbatch --parsable -J tc-status -p preempt --qos=preempt -N1 --exclusive -t 2:00:00 -o $B/dissem/status.%j.out \
  --wrap "$PY $B/closer/onetree_status.py $B/onetree $B/dissem/status --workers 96"
