#!/bin/bash
#SBATCH -J nofour_atlas
#SBATCH -p gen
#SBATCH -N 1
#SBATCH --exclusive
#SBATCH -t 3-00:00:00
#SBATCH -o out/atlas_%j.log
# Build the intrinsic atlas (single-threaded BFS; resumes from out/atlas.pkl), then certify it in parallel.
set -u
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
PY=~/venvs/nofour_shoulder/bin/python
cd "$SLURM_SUBMIT_DIR/simplerproof/atlas"
OUT=$SLURM_SUBMIT_DIR/out
$PY -u atlas.py centre_fold52.json 1000000000 $OUT/atlas.pkl
echo "=== driver exit $? $(date)"
N=$($PY -c "import atlas; A=atlas.load('$OUT/atlas.pkl'); print(len(A.recs))")
NC=$(nproc); CH=$(( (N + NC - 1) / NC ))
echo "=== certifying $N records on $NC cores, chunk $CH"
seq 0 $CH $((N - 1)) | xargs -P $NC -I{} sh -c "$PY certify.py $OUT/atlas.pkl {} \$(( {} + $CH )) > $OUT/cert_{}.log 2>&1; echo \"chunk {} exit \$?\" >> $OUT/cert_exits.txt"
echo "=== certify done $(date)"; sort -n -k2 $OUT/cert_exits.txt | awk '{s+=$4} END {print "chunks", NR, "nonzero exits", s}'
grep -h "^certified\|^FAIL\|NOTE" $OUT/cert_*.log | awk '/^certified/{c+=$2; f+=$4} /^FAIL/{print} END {print "TOTAL certified", c, "failures", f}'
