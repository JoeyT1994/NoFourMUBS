#!/usr/bin/env bash
# Full frontier run (5 Oct 2026; approved: about 8,800 CPU-h, measured per box on 8,166 real shoulder rows).
#   ./run_frontier.sh NODES      split postE/frontier/boxes.jsonl.gz into 50,000-box shards (MANIFEST.json in the
#                                format frontier_ledger.py reads), then NODES whole-node workers claim shards from a
#                                shared queue (atomic mkdir); per shard: build_region, driver, verify ->
#                                postE/frontier/receipt_K.json.  Progress: postE/frontier/progress.log.
#   ./run_frontier.sh worker     (inside a node job) the claim loop
set -uo pipefail
cd "$(dirname "$0")"; P=$PWD; F=$P/postE/frontier
SHR=$HOME/Documents/QuantumPhysics/ClusterScripts/nofourmubs_shoulder_v2_2026-10-02; ASC=$SHR/ProvenResults/ActiveShoulderClosure_v2_frontier
if [ "${1:-}" = worker ]; then
  module load gcc/13.3.0; export CXX=g++ OPENBLAS_NUM_THREADS=1; source $HOME/shoulder_v2_work/common.sh; cd $SHR
  K=$(python3 -c "import json;print(len(json.load(open('$F/shards/MANIFEST.json'))['shards']))")
  mkdir -p $F/claims
  for k in $(seq 0 $((K - 1))); do
    KK=$(printf %06d $k); [ -s $F/receipt_$KK.json ] && continue
    mkdir $F/claims/$KK 2>/dev/null || continue
    t=$(date +%s); S=$F/shards/boxes_$KK.jsonl.gz
    $PY $ASC/build_region.py --boxes $S --output $F/region_$KK.json > /dev/null 2>&1 || { echo "$(date -Is) $(hostname) shard $k build_region FAILED" >> $F/progress.log; continue; }
    [ -s $F/forest_$KK.jsonl.gz ] || $PY $ASC/driver.py --region $F/region_$KK.json --boxes $S --output $F/forest_$KK.jsonl.gz \
      --jobs 120 --cpu-per-root 10 --max-nodes 2047 > $F/driver_$KK.log 2>&1
    $PY $ASC/verify.py --region $F/region_$KK.json --boxes $S --forest $F/forest_$KK.jsonl.gz --output $F/receipt_$KK.json.part \
      --check-built-region --jobs 120 > $F/verify_$KK.log 2>&1; rc=$?
    if [ $rc = 0 ] || [ $rc = 2 ]; then mv $F/receipt_$KK.json.part $F/receipt_$KK.json; fi
    acc=$(python3 -c "import json;r=json.load(open('$F/receipt_$KK.json'));print(r['accepted_boxes'],'/',r['frontier_boxes'])" 2>/dev/null)
    echo "$(date -Is) $(hostname) shard $k of $K verify=$rc accepted $acc wall $(( $(date +%s) - t ))s" >> $F/progress.log
  done
  exit 0
fi
for v in $(env | grep -o '^SLURM_[A-Z0-9_]*'); do unset "$v"; done
NODES="${1:?nodes}"
SPLIT=$(sbatch --parsable --account=ccq --partition=ccq --cpus-per-task=4 --mem=64G --time=4:00:00 --job-name=nofour-frshard \
  --output=$F/shard.out --wrap "cd $P && module load python/3.11.11 && python3 - <<'EOF'
import gzip, hashlib, json, os
F = 'postE/frontier'; os.makedirs(F + '/shards', exist_ok=True); per = 50000; shards = []; n = 0; out = None
def close():
    out.close(); p = F + '/shards/' + shards[-1]['path']; shards[-1]['sha256'] = hashlib.sha256(open(p, 'rb').read()).hexdigest()
for line in gzip.open(F + '/boxes.jsonl.gz', 'rt'):
    if n % per == 0:
        if out: close()
        shards.append(dict(path='boxes_%06d.jsonl.gz' % len(shards), first_source_index=n, boxes=0))
        out = gzip.open(F + '/shards/' + shards[-1]['path'], 'wt', compresslevel=1)
    out.write(line); shards[-1]['boxes'] += 1; n += 1
close()
assert n == sum(1 for _ in open(F + '/index.txt'))
json.dump(dict(source=dict(path=F + '/boxes.jsonl.gz'), boxes=n, boxes_per_shard=per, shards=shards), open(F + '/shards/MANIFEST.json', 'w'), indent=1)
print(n, 'boxes', len(shards), 'shards')
EOF")
J=""
for i in $(seq 1 $NODES); do
  j=$(sbatch --parsable --dependency=afterok:$SPLIT --account=ccq --partition=ccq --nodes=1 --exclusive --mem=0 --constraint='rome&rocky9' \
    --time=24:00:00 --job-name=nofour-frontier --output=$F/worker_$i.out --wrap "$P/run_frontier.sh worker"); J="$J:$j"
done
echo "$(date -Is) frontier run: split $SPLIT, $NODES workers ${J#:}" | tee -a $P/logs/post_d.log
