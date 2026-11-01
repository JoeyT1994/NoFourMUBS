#!/bin/bash
#SBATCH -p preempt --qos=preempt -N1 -n1 -c16 -t 02:00:00 -J symleaves -o /mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/symmetry_census/leaves.%j.out
set -u
D=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/symmetry_census
/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python "$D/leaves.py" "$D/best_certs.tsv" "$D/leaves.tsv.gz"
