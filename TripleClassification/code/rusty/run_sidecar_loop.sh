#!/bin/bash
# Stage C sidecar loop: every 20 minutes, check the closed rows of every selective layer (levels 3-7, both batches)
# that sidecar_interim_2.jsonl does not cover yet (stagec_guard.py skips rows already in its output). Removes nothing.
#SBATCH --job-name=tc-sideloop
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=10:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/sidecar/sideloop_%j.out
set -u
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1 VECLIB_MAXIMUM_THREADS=1
end=$(( $(date +%s) + 9*3600 + 1800 ))
while [ "$(date +%s)" -lt "$end" ]; do
  files=$(ls $B/selective/children/b*_l3.json.gz $B/selective/l[4-9]/b*_l*.json.gz $B/selective/l1[0-9]/b*_l*.json.gz \
             $B/selective2/children/b*_l3.json.gz $B/selective2/l[4-9]/b*_l*.json.gz $B/selective2/l1[0-9]/b*_l*.json.gz 2>/dev/null)
  echo "$(date +%H:%M) $(echo $files | wc -w) layer files"
  "$PY" -W ignore "$B/main_split3/TripleClassification/code/stagec_guard.py" "$B/frozen_bd87c69" $files \
        --out "$B/sidecar/sidecar_interim_2.jsonl" --only-closed --workers 128
  sleep 1200
done
