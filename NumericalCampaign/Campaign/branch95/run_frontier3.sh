#!/usr/bin/env bash
# Frontier pass 3 (5 Oct 2026, overnight): the shoulder boxes still open after pass 2, at 300 s / 65,535 nodes per root
# with --minimax-gauge.  Derived from run_frontier2b.sh: as run_frontier2.sh, but rows of class (2,4,4,2) and the new classes (marked
# F and N in postE/frontier/class.txt) are left out of the rerun (they go to the collaborator and to v3); only the
# shoulder leftovers are rerun.  Frontier pass 2 (5 Oct 2026), started while pass 1 runs: for every pass-1 shard K that has a receipt, the boxes
# it left unresolved are rerun with larger budgets (--cpu-per-root 300 --max-nodes 65535 --minimax-gauge).
#   postE/frontier/pass3_K.jsonl.gz   the unresolved boxes, in shard order
#   postE/frontier/pass3_K.pos        their positions within shard K (to map back through index.txt)
#   postE/frontier/receipt3_K.json    the pass-2 verify receipt
# Workers claim shards with mkdir; a claim older than 4 h without a receipt is taken over (preempted worker).
# The loop keeps polling until every pass-1 shard has a receipt and has been handled.
#   ./run_frontier2.sh worker          (inside a node job)
set -uo pipefail
cd "$(dirname "$0")"; P=$PWD; F=$P/postE/frontier
SHR=$HOME/Documents/QuantumPhysics/ClusterScripts/nofourmubs_shoulder_v2_2026-10-02; ASC=$SHR/ProvenResults/ActiveShoulderClosure_v2_frontier
module load gcc/13.3.0; export CXX=g++ OPENBLAS_NUM_THREADS=1; source $HOME/shoulder_v2_work/common.sh; cd $SHR
K=$(python3 -c "import json;print(len(json.load(open('$F/shards/MANIFEST.json'))['shards']))"); mkdir -p $F/claims3
while :; do
  left=0; did=0
  for k in $(seq 0 $((K - 1))); do
    KK=$(printf %06d $k)
    [ -s $F/receipt3_$KK.json ] && continue
    [ -s $F/receipt2_$KK.json ] || { left=1; continue; }
    c=$F/claims3/$KK
    if ! mkdir $c 2>/dev/null; then
      [ -n "$(find $c -maxdepth 0 -mmin +240 2>/dev/null)" ] || { left=1; continue; }
      touch $c
    fi
    did=1; t=$(date +%s)
    n=$($PY - $F $KK <<'EOF'
import gzip, json, sys
F, KK = sys.argv[1], sys.argv[2]
import os
pos = [int(x) for x in open(f"{F}/pass2_{KK}.pos")]
b2 = set(json.load(open(f"{F}/receipt2_{KK}.json"))["unresolved_indices"]) if pos else set()
first = json.load(open(f"{F}/shards/MANIFEST.json"))["shards"][int(KK)]["first_source_index"]
with open(f"{F}/class.txt", "rb") as cf:
    cf.seek(first); cls = cf.read(50000).decode()
bad = {pos[j] for j in range(len(pos)) if j in b2 and cls[pos[j]] == "S"}
with gzip.open(f"{F}/pass3_{KK}.jsonl.gz", "wt") as o, open(f"{F}/pass3_{KK}.pos", "w") as p:
    for i, l in enumerate(gzip.open(f"{F}/shards/boxes_{KK}.jsonl.gz", "rt")):
        if i in bad:
            o.write(l); p.write(f"{i}\n")
print(len(bad))
EOF
)
    if [ "$n" -gt 0 ]; then
      $PY $ASC/build_region.py --boxes $F/pass3_$KK.jsonl.gz --output $F/region3_$KK.json > /dev/null 2>&1
      [ -s $F/forest3_$KK.jsonl.gz ] || $PY $ASC/driver.py --region $F/region3_$KK.json --boxes $F/pass3_$KK.jsonl.gz \
        --output $F/forest3_$KK.jsonl.gz --jobs 120 --cpu-per-root 300 --max-nodes 65535 --minimax-gauge > $F/driver3_$KK.log 2>&1
      $PY $ASC/verify.py --region $F/region3_$KK.json --boxes $F/pass3_$KK.jsonl.gz --forest $F/forest3_$KK.jsonl.gz \
        --output $F/receipt3_$KK.json.part --check-built-region --jobs 120 > $F/verify3_$KK.log 2>&1; rc=$?
      if [ $rc = 0 ] || [ $rc = 2 ]; then mv $F/receipt3_$KK.json.part $F/receipt3_$KK.json; fi
      acc=$(python3 -c "import json;r=json.load(open('$F/receipt3_$KK.json'));print(r['accepted_boxes'],'/',r['frontier_boxes'])" 2>/dev/null)
    else
      echo '{"frontier_boxes": 0, "accepted_boxes": 0, "unresolved_indices": [], "status": "PASS", "note": "nothing left after pass 1"}' > $F/receipt3_$KK.json; rc=0; acc="0 / 0"
    fi
    echo "$(date -Is) $(hostname) pass3 shard $k: verify=$rc accepted $acc wall $(( $(date +%s) - t ))s" >> $F/progress3.log
  done
  [ $left = 0 ] && break
  [ $did = 0 ] && sleep 120
done
