#!/usr/bin/env bash
# Run once on a login node before submitting anything (about 5 minutes):
#   1. the code matches MANIFEST.sha256;
#   2. Julia 1.12.7 is installed and the pinned environment instantiates and precompiles;
#   3. end to end: two work cells certified locally must certify here too, with the production method
#      (run_task.sh defaults: the accelerated cover only).
set -euo pipefail
PKG="$(cd "$(dirname "$0")" && pwd)"
cd "$PKG"
JULIA="${JULIA:-$HOME/.juliaup/bin/julia +1.12.7}"
sha256sum -c --quiet MANIFEST.sha256
echo "PASS code manifest"
$JULIA --startup-file=no --project=code/Certification/jlenv_cluster -e 'using Pkg; Pkg.instantiate(); Pkg.precompile()'
echo "PASS julia environment"
rm -f tests/check_out.jsonl tests/check_out.jsonl.part
./run_task.sh batch tests/cells_check.txt 1 2 tests/check_out.jsonl
python3 - <<'PY'
import json
L = [json.loads(l) for l in open("tests/check_out.jsonl")]
leaves = [r for r in L if "status" in r]
done = [r for r in L if r.get("done")]
assert len(done) == 2 and all(r["failed"] == 0 for r in done) and all(r["status"] == "certified" for r in leaves), L
print("PASS end-to-end check: 2 cells certified (%s); %.0f s and %.0f s" % (", ".join(sorted({r["method"] for r in leaves})), *(r["t"] for r in done)))
PY
test "$(wc -l < jobs_L6.txt)" -eq 340972
echo "PASS preflight"
