#!/usr/bin/env bash
# Post-E stage 1 (one exclusive node): inventory, v2 lookup, (4,5,0,3) side cover, frontier input and shards.
# Submits one post_e_frontier.sh job per shard and post_e_F.sh after all of them.  See post_e.sh.
set -uo pipefail
SB_PART="${SB_PART:---account=ccq --partition=ccq}"   # rehearsal: "--account=ccq --partition=gen --qos=gen"
cd "${PACKAGE_DIR:?}"
for v in $(env | grep -o '^SLURM_[A-Z0-9_]*'); do unset "$v"; done
OUT="${POSTE_OUT:?}"; export SHOULDER_ROOT="${SHOULDER_ROOT:-$HOME/Documents/QuantumPhysics/ClusterScripts/nofourmubs_shoulder_v2_2026-10-02}"
log() { echo "$(date -Is) $*" | tee -a "$OUT/pipeline.log"; }
module load gcc/13.3.0; export CXX=g++; source "$HOME/shoulder_v2_work/common.sh"
step() { local name="$1"; shift; log "$name: start"; if "$@" > "$OUT/$name.json" 2> "$OUT/$name.err"; then log "$name: $(tail -c 600 "$OUT/$name.json")"; else log "$name: FAILED (exit $?), see $OUT/$name.err"; return 1; fi; }
[ -s "$OUT/inventory.txt.gz" ] || step inventory $PY -B postE.py inventory results/stageE "$OUT" || exit 1
[ -s "$OUT/v2.jsonl.gz" ] || step v2 $PY -B postE.py v2 "$OUT" || exit 1
[ -s "$OUT/sidecover.jsonl" ] || step sidecover $PY -B postE.py sidecover "$OUT" "${SIDE_PROCS:-120}" || true
step frontier_prep $PY -B postE.py frontier-prep "$OUT" || exit 1
N=$(wc -l < "$OUT/frontier/index.txt"); ASC="$SHOULDER_ROOT/ProvenResults/ActiveShoulderClosure_v2_frontier"
deps=""
if [ "$N" -gt 0 ]; then
  rm -rf "$OUT/frontier/shards"
  (cd "$SHOULDER_ROOT" && $PY "$ASC/shard_boxes.py" --boxes "$OUT/frontier/boxes.jsonl.gz" --output-dir "$OUT/frontier/shards" \
     --boxes-per-shard "${FRONTIER_SHARD:-50000}") >> "$OUT/pipeline.log" 2>&1 || { log "shard_boxes FAILED"; exit 1; }
  K=$(python3 -c "import json;print(len(json.load(open('$OUT/frontier/shards/MANIFEST.json'))['shards']))")
  for k in $(seq 0 $((K - 1))); do
    B=$(python3 -c "import json;m=json.load(open('$OUT/frontier/shards/MANIFEST.json'));print(int(${FRONTIER_CPU_H:-1500}*3600*m['shards'][$k]['boxes']/$N))")
    H=$(( B / ${FRONTIER_JOBS:-64} / 3600 * 3 / 2 + 3 ))
    j=$(sbatch --parsable $SB_PART --nodes=1 --exclusive --mem=0 --constraint='rome&rocky9' --time=$H:00:00 \
      --job-name=nofour-postEfr$k --output="$OUT/frontier/shard_$k.out" \
      --export=ALL,PACKAGE_DIR=$PWD,POSTE_OUT=$OUT,SHOULDER_ROOT=$SHOULDER_ROOT,SHARD=$k,BUDGET=$B,FRONTIER_JOBS=${FRONTIER_JOBS:-64} --wrap "cd $PWD && ./post_e_frontier.sh")
    deps="$deps:$j"; log "frontier shard $k: job $j, budget $B CPU-s, walltime ${H}h"
  done
else
  log "frontier: no input rows"
fi
J=$(sbatch --parsable ${deps:+--dependency=afterany$deps} $SB_PART --cpus-per-task=1 --mem=16G --time=2:00:00 \
  --job-name=nofour-postEF --output="$OUT/F.out" --export=ALL,PACKAGE_DIR=$PWD,POSTE_OUT=$OUT,SHOULDER_ROOT=$SHOULDER_ROOT \
  --wrap "cd $PWD && ./post_e_F.sh")
log "stage F setup: job $J"
