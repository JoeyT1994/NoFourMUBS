#!/bin/bash
#SBATCH -p ccq --exclusive -N1 -t 6:00:00
set -u
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc
/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python -W ignore $B/export_ball.py $1 $B/export_upstream_20261029 < /dev/null
