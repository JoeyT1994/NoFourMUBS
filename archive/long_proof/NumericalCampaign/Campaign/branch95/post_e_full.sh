#!/usr/bin/env bash
# Post-E at full scale, up to a measured calibration (4 Oct 2026).  One exclusive node, after the stage-E audit.
#   1. inventory (parallel)          POSTE_OUT/inventory.txt.gz, inventory_boxes.jsonl.gz
#   2. v2 lookup (parallel)          POSTE_OUT/v2.jsonl.gz
#   3. (4,5,0,3) side cover          POSTE_OUT/sidecover.jsonl
#   4. frontier input                POSTE_OUT/frontier/boxes.jsonl.gz, index.txt (rows not closed; not (2,4,4,2), (4,5,0,3))
#   5. calibration                   CAL_COUNT random frontier boxes: frontier driver + verify on this node
#   6. POSTE_OUT/CALIBRATION.txt     measured closure fraction and CPU per box, and the census.  Then it stops:
#      the full frontier run needs a budget decision.
# The (2,4,4,2) ring is with the collaborator (release ring-2026-10-04).
set -uo pipefail
cd "${PACKAGE_DIR:?}"
OUT="${POSTE_OUT:?}"; mkdir -p "$OUT"; CAL="${CAL_COUNT:-4096}"
SHR="${SHOULDER_ROOT:-$HOME/Documents/QuantumPhysics/ClusterScripts/nofourmubs_shoulder_v2_2026-10-02}"
ASC="$SHR/ProvenResults/ActiveShoulderClosure_v2_frontier"
log() { echo "$(date -Is) $*" | tee -a "$OUT/pipeline.log"; }
module load gcc/13.3.0; export CXX=g++; source "$HOME/shoulder_v2_work/common.sh"; export SHOULDER_ROOT="$SHR"
step() { local name="$1"; shift; log "$name: start"; if "$@" > "$OUT/$name.json" 2> "$OUT/$name.err"; then log "$name: $(tail -c 600 "$OUT/$name.json")"; else log "$name: FAILED (exit $?), see $OUT/$name.err"; return 1; fi; }
[ -s "$OUT/inventory.txt.gz" ] || step inventory $PY -B postE.py inventory "${STAGE_E_DIR:-results/stageE}" "$OUT" 120 || exit 1
[ -s "$OUT/v2.jsonl.gz" ] || step v2 timeout 36000 $PY -B postE.py v2 "$OUT" "${V2_PROCS:-48}" || exit 1
[ -s "$OUT/sidecover.jsonl" ] || step sidecover $PY -B postE.py sidecover "$OUT" 120 || true
step frontier_prep $PY -B postE.py frontier-prep "$OUT" || exit 1
mkdir -p "$OUT/cal"
( cd "$SHR" && $PY "$ASC/sample_boxes.py" --boxes "$OUT/frontier/boxes.jsonl.gz" --output "$OUT/cal/sample.jsonl" --count "$CAL" \
  && $PY "$ASC/build_region.py" --boxes "$OUT/cal/sample.jsonl" --output "$OUT/cal/region.json" \
  && $PY "$ASC/driver.py" --region "$OUT/cal/region.json" --boxes "$OUT/cal/sample.jsonl" --output "$OUT/cal/forest.jsonl.gz" \
       --jobs 120 --cpu-per-root 10 --max-nodes 2047 > "$OUT/cal/driver.log" 2>&1 ; \
  $PY "$ASC/verify.py" --region "$OUT/cal/region.json" --boxes "$OUT/cal/sample.jsonl" --forest "$OUT/cal/forest.jsonl.gz" \
       --output "$OUT/cal/receipt.json" --check-built-region --jobs 120 > "$OUT/cal/verify.log" 2>&1 )
log "calibration: driver $(tail -1 "$OUT/cal/driver.log" | cut -c1-300)"
log "calibration: verify $(tail -1 "$OUT/cal/verify.log" | cut -c1-300)"
python3 - "$OUT" "$CAL" > "$OUT/CALIBRATION.txt" <<'EOF'
import json, sys, os, gzip, collections
out, cal = sys.argv[1], int(sys.argv[2]); J = lambda p: json.load(open(os.path.join(out, p)))
inv = J("inventory.json"); v2 = J("v2.json"); fp = J("frontier_prep.json")
print("post-E census (full run)")
print(" inventory rows:", inv["boxes"]); print(" by code/class:", json.dumps(inv["by_code_class"]))
print(" v2 closed:", v2["closed"], "of", v2["rows"])
try: print(" side cover:", json.dumps(J("sidecover.json")))
except Exception as e: print(" side cover: missing", e)
print(" frontier input rows:", fp["frontier_boxes"])
d = [json.loads(l) for l in open(os.path.join(out, "cal", "driver.log")) if l.startswith("{")]
s = [x for x in d if x.get("type") == "summary"]
try:
    r = J("cal/receipt.json"); acc = r["accepted_boxes"]; n = r["frontier_boxes"]
    cpu = s[-1]["cpu_seconds"] if s else float("nan"); aud = r.get("audit_cpu_seconds", 0) + r.get("main_cpu_seconds", 0)
    print(f"calibration sample: {n} boxes, accepted {acc} ({acc / n:.1%}); search CPU {cpu:.0f} s = {cpu / n:.2f} s/box; replay {aud:.0f} s")
    print(f"extrapolated to all {fp['frontier_boxes']} frontier rows: search {cpu / n * fp['frontier_boxes'] / 3600:.0f} CPU-h, "
          f"expected closure {acc / n:.1%} at these budgets (sample of {n}; extrapolated, not measured)")
except Exception as e:
    print("calibration receipt missing:", e)
EOF
log "post-E calibration done: $(head -3 "$OUT/CALIBRATION.txt" | tr '\n' ' ')"
