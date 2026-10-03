#!/usr/bin/env bash
# Post-E ledger: every inventory row must be closed by a recorded source (frontier_ledger.py); writes the receipt,
# the exact open list and a short SUMMARY.txt (open rows by code and class).
set -uo pipefail
cd "${PACKAGE_DIR:?}"
OUT="${POSTE_OUT:?}"; log() { echo "$(date -Is) $*" | tee -a "$OUT/pipeline.log"; }
module load python/3.11.11 >/dev/null 2>&1 || true
args=(--inventory "$OUT/inventory.txt.gz" --v2 "$OUT/v2.jsonl.gz")
[ -s "$OUT/sidecover.jsonl" ] && args+=(--sidecover "$OUT/sidecover.jsonl")
[ -s "$OUT/frontier/shards/MANIFEST.json" ] && args+=(--frontier "$OUT/frontier")
[ -s "$OUT/F/cells_F.txt" ] && args+=(--stageF "$OUT/F/results" --cellsF "$OUT/F/cells_F.txt" --stageG "$OUT/G")
python3 -B frontier_ledger.py "${args[@]}" --receipt "$OUT/ledger_receipt.json" --open-out "$OUT/open_after_postE.txt" > /dev/null
rc=$?
python3 - "$OUT" "$rc" > "$OUT/SUMMARY.txt" <<'EOF'
import json, sys
out, rc = sys.argv[1], sys.argv[2]
r = json.load(open(out + "/ledger_receipt.json"))
print(f"post-E ledger: {r['status']} (exit {rc})")
print(f"inventory {r['inventory']}, closed {r['closed']}, open {r['open']}, errors {r['errors']}")
print("closed by terminal:", json.dumps(r["by_terminal"]))
print("open by code/class:", json.dumps(r["open_by_class"]))
if r["errors"]:
    print("error examples:", r["error_examples"])
EOF
log "ledger exit $rc: $(head -2 "$OUT/SUMMARY.txt" | tr '\n' ' ')"
