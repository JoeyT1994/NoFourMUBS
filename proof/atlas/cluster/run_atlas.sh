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
N=$($PY -c "from export import load_certificate as L; print(len(L('$OUT/atlas_certificate.json.gz').recs))")
NC=$(nproc); CH=$(( (N + 4*NC - 1) / (4*NC) ))
echo "=== certifying $N records on $NC cores, chunk $CH  $(date)"
rm -f $OUT/cert_exits.txt
seq 0 $CH $((N - 1)) | xargs -P $NC -I{} sh -c "$PY certify.py $OUT/atlas_certificate.json.gz {} \$(( {} + $CH )) > $OUT/cert_{}.log 2>&1; echo \"chunk {} exit \$?\" >> $OUT/cert_exits.txt"
echo "=== certify done $(date)"
awk '{n++; s+=($4!=0)} END {print "chunks", n, "nonzero exits", s}' $OUT/cert_exits.txt
grep -h "^certified\|^FAIL\|NOTE" $OUT/cert_*.log | awk '/^certified/{c+=$2; f+=$4} /^FAIL/{print} END {print "TOTAL certified", c, "failures", f}'
$PY nonempty.py $OUT/atlas_certificate.json.gz
echo "=== nonempty exit $? $(date)"
