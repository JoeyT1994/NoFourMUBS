#!/usr/bin/env bash
# v3 at its maximum budget on the (2,4,4,2)-beyond-ring and new-class boxes v3 has not closed (5 Oct 2026, overnight).
#   ./run_v3_60.sh launch N    after v3's 3 s pass on far2442 ends: build the input (boxes not accepted by v3fast/v3wide),
#                              split into N parts, submit N preempt workers
#   ./run_v3_60.sh worker K N  one part, in a private copy of the module and its pinned inputs (no shared build dir)
# Output: postE/small/v3_60_K.jsonl.gz (+ receipt), one per part; a requeued worker writes a fresh attempt file.
set -uo pipefail
cd "$(dirname "$0")"; P=$PWD; O=$P/postE/small
SHR=$HOME/Documents/QuantumPhysics/ClusterScripts/nofourmubs_shoulder_v2_2026-10-02
if [ "${1:-}" = worker ]; then
  K=$2; R=/tmp/v3root_$$; mkdir -p $R/ProvenResults
  cp -r $SHR/ProvenResults/Patch2442Region_v3 $R/ProvenResults/
  python3 -c "import json;[print(x['path']) for x in json.load(open('$SHR/ProvenResults/Patch2442Region_v3/PINNED_UPSTREAM.json'))['files']]" | \
    while read f; do mkdir -p $R/$(dirname $f); cp $SHR/$f $R/$f; done
  module load gcc/13.3.0; export CXX=g++ OPENBLAS_NUM_THREADS=1; source $HOME/shoulder_v2_work/common.sh; cd $R
  A=${SLURM_RESTART_COUNT:-0}
  $PY -B ProvenResults/Patch2442Region_v3/verify.py --boxes $O/v3_60_in_$K.jsonl.gz --output $O/v3_60_${K}_a$A.jsonl.gz \
    --jobs 124 --cpu-per-box 60 --max-depth 24 --max-nodes 65535 > $O/v3_60_${K}_a$A.log 2>&1
  echo "part $K attempt $A exit $?"; rm -rf $R; exit 0
fi
N=${2:-20}
python3 - $O $N <<'EOF'
import gzip, json, sys
O, N = sys.argv[1], int(sys.argv[2]); ok = set()
for k in ("far2442", "new"):
    for p in (f"{O}/v3fast_{k}.jsonl.gz", f"{O}/v3wide_{k}.jsonl.gz"):
        try:
            for l in gzip.open(p, "rt"):
                r = json.loads(l)
                if r.get("ok") is True: ok.add(r["id"])
        except (EOFError, OSError, ValueError): pass
for l in open(f"{O}/side_new.jsonl"):
    r = json.loads(l)
    if r.get("ok") is True: ok.add(r["index"])
rows = [l for k in ("far2442", "new") for l in gzip.open(f"{O}/{k}.boxes.jsonl.gz", "rt") if json.loads(l)["id"] not in ok]
outs = [gzip.open(f"{O}/v3_60_in_{i}.jsonl.gz", "wt") for i in range(N)]
for j, l in enumerate(rows): outs[j % N].write(l)
for f in outs: f.close()
print(len(ok), "already closed;", len(rows), "to v3 at 60 s in", N, "parts")
EOF
for k in $(seq 0 $((N - 1))); do
  sbatch --parsable --account=ccq --partition=preempt --qos=preempt --requeue --nodes=1 --exclusive --mem=0 --constraint='rome&rocky9' \
    --time=24:00:00 --job-name=nofour-v3x60 --output=$O/v3_60_$k.out --wrap "$P/run_v3_60.sh worker $k $N"
done | paste -sd' ' | sed "s/^/$(date -Is) v3 60 s workers: /" | tee -a $P/logs/post_d.log
