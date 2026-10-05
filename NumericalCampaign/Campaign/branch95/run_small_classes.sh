#!/usr/bin/env bash
# Small post-E classes in parallel with the v2 lookup (5 Oct 2026): extract, then three whole-node jobs.
#   sidecover 4503        residual_lift side cover on every (4,5,0,3) row
#   sidecover new+far     the same on the three new classes and the (2,4,4,2) rows beyond the ring
#   v3                    Patch2442Region_v3: 0.3 s per box, then 3 s on the rest; new, far2442, 4503 in turn
# Outputs: postE/small/.  Each method's results are read by frontier_ledger.py later; overlaps are harmless.
set -euo pipefail
cd "$(dirname "$0")"
for v in $(env | grep -o '^SLURM_[A-Z0-9_]*'); do unset "$v"; done
P=$PWD; O=$P/postE/small; mkdir -p $O; SHR=$HOME/Documents/QuantumPhysics/ClusterScripts/nofourmubs_shoulder_v2_2026-10-02
NODE="--account=ccq --partition=ccq --nodes=1 --exclusive --mem=0 --constraint=rome&rocky9 --time=24:00:00"
X=$(sbatch --parsable --account=ccq --partition=ccq --cpus-per-task=2 --mem=32G --time=2:00:00 --job-name=nofour-extract \
  --output=$O/extract.out --wrap "cd $P && module load python/3.11.11 && python3 -B extract_classes.py postE $O")
S1=$(sbatch --parsable --dependency=afterok:$X $NODE --job-name=nofour-side4503 --output=$O/side_4503.out \
  --wrap "cd $P && source ~/shoulder_v2_work/common.sh && export SHOULDER_ROOT=$SHR && \$PY -B sidecover_rows.py $O/4503.rows.txt.gz $O/side_4503.jsonl 120")
S2=$(sbatch --parsable --dependency=afterok:$X $NODE --job-name=nofour-sidenew --output=$O/side_new.out \
  --wrap "cd $P && source ~/shoulder_v2_work/common.sh && export SHOULDER_ROOT=$SHR && \$PY -B sidecover_rows.py $O/new.rows.txt.gz $O/side_new.jsonl 120 && \$PY -B sidecover_rows.py $O/far2442.rows.txt.gz $O/side_far2442.jsonl 120")
V3=""
for k in new far2442 4503; do
  V3="$V3 \$PY -B ProvenResults/Patch2442Region_v3/verify.py --boxes $O/$k.boxes.jsonl.gz --output $O/v3fast_$k.jsonl.gz --jobs 120 --cpu-per-box 0.3 > $O/v3fast_$k.log 2>&1;"
  V3="$V3 \$PY -c \"import gzip,json;ok={json.loads(l)['id'] for l in gzip.open('$O/v3fast_$k.jsonl.gz','rt') if json.loads(l).get('ok') is True};f=gzip.open('$O/v3retry_$k.jsonl.gz','wt');[f.write(l) for l in gzip.open('$O/$k.boxes.jsonl.gz','rt') if json.loads(l)['id'] not in ok];f.close()\";"
  V3="$V3 \$PY -B ProvenResults/Patch2442Region_v3/verify.py --boxes $O/v3retry_$k.jsonl.gz --output $O/v3wide_$k.jsonl.gz --jobs 120 --cpu-per-box 3 > $O/v3wide_$k.log 2>&1;"
done
J=$(sbatch --parsable --dependency=afterok:$X $NODE --job-name=nofour-v3small --output=$O/v3.out \
  --wrap "cd $SHR && module load gcc/13.3.0 && export CXX=g++ OPENBLAS_NUM_THREADS=1 && source ~/shoulder_v2_work/common.sh && $V3")
echo "$(date -Is) small classes: extract $X; side cover 4503 $S1; side cover new+far2442 $S2; v3 $J" | tee -a logs/post_d.log
