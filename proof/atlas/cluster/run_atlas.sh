#!/bin/bash
#SBATCH -J nofour_atlas2
#SBATCH -p gen
#SBATCH -N 1
#SBATCH --exclusive
#SBATCH -t 3-00:00:00
#SBATCH -o out/atlas_%j.log
# Resume the intrinsic atlas (single-threaded BFS), export the compact certificate, certify it in parallel, check F6.
set -u
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
PY=~/venvs/nofour_shoulder/bin/python
OUT=$SLURM_SUBMIT_DIR/out
cd "$SLURM_SUBMIT_DIR/atlas"
$PY -u atlas.py centre_fold52.json 1000000000 $OUT/atlas.pkl
echo "=== driver exit $? $(date)"
$PY export.py $OUT/atlas.pkl $OUT/atlas_certificate.json.gz
NC=${SLURM_CPUS_ON_NODE:-$(nproc)}
echo "=== certifying on $NC worker processes  $(date)"
$PY certify.py $OUT/atlas_certificate.json.gz -j $NC --tsv=$OUT/certify.tsv > $OUT/certify.log 2>&1
echo "=== certify exit $? $(date)"
grep "^FAIL\|^NOTE\|^max\|^certified" $OUT/certify.log
$PY nonempty.py $OUT/atlas_certificate.json.gz
echo "=== nonempty exit $? $(date)"
