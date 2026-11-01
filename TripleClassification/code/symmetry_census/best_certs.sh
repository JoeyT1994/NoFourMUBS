#!/bin/bash
#SBATCH -p preempt --qos=preempt -N1 -n1 -c2 -t 00:30:00 -J symcensus -o /mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/symmetry_census/best_certs.%j.out
set -u
D=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/symmetry_census
/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python "$D/best_certs.py" "$D/best_certs.tsv"
