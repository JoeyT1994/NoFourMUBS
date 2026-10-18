#!/usr/bin/env bash
# Tests of the independent checker (run by CI; about 5 min on 4 threads).  From the repository root:
#   bash proof/independent/tests/run_tests.sh [OUTDIR]
#  1. check.jl --partial on a small sub-certificate of the atlas (atlas Record 11992 and its 21 boundary-transfer targets,
#     tests/atlas_fixture.py): the closed Record and every target must PASS.
#     Then: without --partial it must exit 1 (not a complete atlas), and receipts must not be reused for a
#     changed mode or certificate.
#  2. tests/sanity.jl on that certificate: no "unsound" line, and both self-checks report OK.
#  3. tests/negative.jl: the targeted corruptions of tests/corruptions.py are rejected (the 'accept' cases accepted).
# Needs julia (1.12, env proof/independent/jlenv instantiated) and python3 (standard library only).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
OUT="${1:-$(mktemp -d)}"
mkdir -p "$OUT"
JL=(julia --startup-file=no -t "${JULIA_NUM_THREADS:-4}" --project="$ROOT/proof/independent/jlenv")

python3 "$ROOT/tests/atlas_fixture.py" "$OUT/sub.json.gz"
"${JL[@]}" "$ROOT/proof/independent/check.jl" "$OUT/sub.json.gz" "$OUT/check" --partial
grep -q "SUMMARY: 1 / 1 closed records PASS" "$OUT/check/RESULT.txt"
grep -q "Non-closed records used as targets: 21; Step 3 PASS for 21 of them." "$OUT/check/RESULT.txt"
echo "check.jl on the sub-certificate: PASS"

# Exit status and resume binding: without --partial the sub-certificate is not a complete atlas, so check.jl
# (resuming from the receipts above) must exit 1; a changed mode or a changed certificate must not reuse them.
if "${JL[@]}" "$ROOT/proof/independent/check.jl" "$OUT/sub.json.gz" "$OUT/check" > "$OUT/strict.log"; then
  echo "check.jl exited 0 on an incomplete certificate: FAILED"; exit 1; fi
grep -q "Resuming: BINDING.txt matches this run." "$OUT/strict.log"
if "${JL[@]}" "$ROOT/proof/independent/check.jl" "$OUT/sub.json.gz" "$OUT/check" --fast --partial > "$OUT/mode.log"; then
  echo "check.jl reused receipts across modes: FAILED"; exit 1; fi
cp "$OUT/sub.json.gz" "$OUT/changed.json.gz"; printf x >> "$OUT/changed.json.gz"
if "${JL[@]}" "$ROOT/proof/independent/check.jl" "$OUT/changed.json.gz" "$OUT/check" --partial > "$OUT/changed.log"; then
  echo "check.jl reused receipts for a changed certificate: FAILED"; exit 1; fi
grep -q "holds receipts from a different run" "$OUT/mode.log"
grep -q "holds receipts from a different run" "$OUT/changed.log"
echo "check.jl exit status and resume binding: PASS"

"${JL[@]}" "$ROOT/proof/independent/tests/sanity.jl" "$OUT/check/certificate.txt" | tee "$OUT/sanity.log"
if grep -Eq "unsound|FAILED" "$OUT/sanity.log"; then echo "sanity.jl: FAILED"; exit 1; fi
grep -q "all 15 O edges among the six labels survive: OK" "$OUT/sanity.log"
grep -q "none reported in random graphs: OK" "$OUT/sanity.log"
grep -q "F6 pre-filter: class minimum = exhaustive minimum" "$OUT/sanity.log"
echo "sanity.jl: PASS"

python3 "$ROOT/tests/negative_atlas.py" --write "$OUT/cases"
"${JL[@]}" "$ROOT/proof/independent/tests/negative.jl" "$OUT/cases"
