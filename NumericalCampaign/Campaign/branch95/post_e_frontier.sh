#!/usr/bin/env bash
# One frontier shard (one exclusive node): exact-box region, ActiveShoulderClosure_v2_frontier driver (FT, lift,
# gated PSD, gated cover) within BUDGET worker CPU-seconds, then its verify.py -> POSTE_OUT/frontier/receipt_K.json.
# Only the receipt is read by the ledger; a failed or missing step leaves the shard's rows open for stage F.
set -uo pipefail
OUT="${POSTE_OUT:?}"; k="${SHARD:?}"; K=$(printf %06d "$k"); F="$OUT/frontier"
log() { echo "$(date -Is) $*" | tee -a "$OUT/pipeline.log"; }
module load gcc/13.3.0; export CXX=g++; source "$HOME/shoulder_v2_work/common.sh"
ASC="$SHOULDER_ROOT/ProvenResults/ActiveShoulderClosure_v2_frontier"; cd "$SHOULDER_ROOT"
S="$F/shards/boxes_$K.jsonl.gz"
$PY "$ASC/build_region.py" --boxes "$S" --output "$F/region_$K.json" || { log "frontier $k: build_region FAILED"; exit 1; }
[ -s "$F/forest_$K.jsonl.gz" ] || $PY "$ASC/driver.py" --region "$F/region_$K.json" --boxes "$S" --output "$F/forest_$K.jsonl.gz" \
  --jobs "${FRONTIER_JOBS:-64}" --cpu-per-root 10 --max-nodes 2047 --shard-cpu-budget "${BUDGET:?}" > "$F/driver_$K.log" 2>&1
log "frontier $k: driver exit $? ($(tail -1 "$F/driver_$K.log" | cut -c1-300))"
$PY "$ASC/verify.py" --region "$F/region_$K.json" --boxes "$S" --forest "$F/forest_$K.jsonl.gz" --output "$F/receipt_$K.json.part" \
  --check-built-region --jobs "${FRONTIER_JOBS:-64}" > "$F/verify_$K.log" 2>&1
rc=$?
if [ "$rc" = 0 ] || [ "$rc" = 2 ]; then mv "$F/receipt_$K.json.part" "$F/receipt_$K.json"; fi
log "frontier $k: verify exit $rc ($(tail -1 "$F/verify_$K.log" | cut -c1-300))"
