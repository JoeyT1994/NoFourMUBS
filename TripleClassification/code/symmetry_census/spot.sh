#!/bin/bash
#SBATCH -p preempt --qos=preempt -N1 -n1 -c16 -t 01:00:00 -J symspot -o /mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/symmetry_census/spot.%j.out
set -u
D=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/symmetry_census
cd "$D" && /mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python -W ignore "$D/spot.py" "$D/spot_specs.json" "$D/spot_results.json"
