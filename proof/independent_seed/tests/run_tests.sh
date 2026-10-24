#!/bin/bash
# Tests of the independent seed-atlas replay (a few minutes on 4 threads).
#   tests/run_tests.sh [threads]          (JULIA=... to choose the julia binary)
# 1. check_seed.jl on the test certificate (FORMAT.md layout; not a closed atlas): the expected PASS / FAIL per object;
#    a second run resumes from the receipts and makes the same decisions.
# 2. Shards: two --shard runs and an --import run give the same receipts.
# 3. enclosure.jl: Taylor-model operations and box_map against BigFloat completions at sampled points; the normal
#    tube of records (T1') against BigFloat Hadamard points, on the test record and on F6's record (R = 0.125).
# 4. negative.jl: corrupted n, r, P, U, theta0, o, Mth, label radius, targets, corners, g, windings and boxes are
#    rejected; harmless changes are accepted.
# 5. End to end through the JSON: n of seed 0 times 0.2 (below its sampled true residual) is rejected; a malformed
#    certificate stops the run.
set -euo pipefail
cd "$(dirname "$0")/.."
NT=${1:-4}
if [ -z "${JULIA:-}" ]; then JULIA=$(command -v julia || echo "$HOME/.juliaup/bin/julia"); fi
JL() { "$JULIA" --startup-file=no --project=../independent/jlenv "$@"; }
OUT=$(mktemp -d)
trap 'rm -rf "$OUT"' EXIT
CERT=tests/data/seed_test_certificate.json.gz
fail() { echo "TEST FAILED: $*"; exit 1; }

echo "=== 1. whole-certificate run"
JL -t "$NT" check_seed.jl "$CERT" "$OUT/run" --partial > "$OUT/run.log" 2>&1 || true
grep -E "^(seed|record) |SUMMARY" "$OUT/run.log"
expect() {   # file idx status [message substring]
    local line; line=$(awk -F'\t' -v i="$2" '$1 == i' "$1")
    [ "$(echo "$line" | cut -f2)" = "$3" ] || fail "$1: object $2 is not $3"
    [ -z "${4:-}" ] || echo "$line" | grep -q "$4" || fail "$1: object $2 lacks '$4'"
}
expect "$OUT/run/seeds.tsv" 0 PASS
for i in 1 2 3 4; do expect "$OUT/run/seeds.tsv" $i FAIL "do not cover the sphere"; done
for i in 0 1 2 3 4; do awk -F'\t' -v i=$i '$1 == i && $10 != "PASS" {exit 1}' "$OUT/run/seeds.tsv" || fail "Stage C of seed $i"; done
expect "$OUT/run/records.tsv" 0 PASS; expect "$OUT/run/records.tsv" 1 PASS
expect "$OUT/run/recbound.tsv" 0 FAIL "do not cover the shell"; expect "$OUT/run/recbound.tsv" 1 PASS
grep -q "Tao: PASS" "$OUT/run/RESULT.txt" || fail "Tao's record"
JL -t "$NT" check_seed.jl "$CERT" "$OUT/run" --partial > "$OUT/resume.log" 2>&1 || true
grep -q "Resuming" "$OUT/resume.log" || fail "the second run did not resume"
diff <(grep -E "^(seed|record) " "$OUT/run.log") <(grep -E "^(seed|record) " "$OUT/resume.log") || fail "resume changed a decision"

echo "=== 2. shards"
JL -t "$NT" check_seed.jl "$CERT" "$OUT/s0" --partial --shard 0/2 > /dev/null 2>&1 || true
JL -t "$NT" check_seed.jl "$CERT" "$OUT/s1" --partial --shard 1/2 > /dev/null 2>&1 || true
JL -t "$NT" check_seed.jl "$CERT" "$OUT/merged" --partial --import "$OUT/s0,$OUT/s1" > "$OUT/merged.log" 2>&1 || true
diff <(grep -E "^(seed|record) " "$OUT/run.log") <(grep -E "^(seed|record) " "$OUT/merged.log") || fail "shards differ"
cmp <(grep -v '^#' "$OUT/run/seeds.tsv" | cut -f1-8,10-13,15-26,28 | sort) \
    <(grep -v '^#' "$OUT/merged/seeds.tsv" | cut -f1-8,10-13,15-26,28 | sort) || fail "shard receipts differ"

echo "=== 3. enclosure sampling"
JL tests/enclosure.jl "$OUT/run/certificate.txt" 2>&1 | grep -v "Warning\|└\|┌" | tail -9
python3 convert_seed.py tests/data/f6_record_shell.json.gz "$OUT/f6.txt" > /dev/null
JL tests/enclosure.jl "$OUT/f6.txt" 0 > "$OUT/f6.log" 2>&1 || true
grep -E "^\(c\)|CHECKS" "$OUT/f6.log"
grep -q "ENCLOSURE CHECKS PASS" "$OUT/f6.log" || fail "normal tube next to F6"

echo "=== 4. negative tests"
JL -t "$NT" tests/negative.jl "$OUT/run/certificate.txt" 2>&1 | grep -v "Warning\|└\|┌"

echo "=== 5. end to end through the JSON"
python3 - "$CERT" "$OUT/bad_n.json.gz" "$OUT/bad_fmt.json.gz" <<'EOF'
import gzip, json, sys
d = json.load(gzip.open(sys.argv[1]))
d['seeds'][0]['n'] = (float.fromhex(d['seeds'][0]['n']) * 0.2).hex()   # below the sampled true sup (negative.jl)
json.dump(d, gzip.open(sys.argv[2], 'wt'))
d['seeds'][0]['P'] = d['seeds'][0]['P'][:35]
json.dump(d, gzip.open(sys.argv[3], 'wt'))
EOF
JL -t "$NT" check_seed.jl "$OUT/bad_n.json.gz" "$OUT/bad_n" --partial --only 0 > /dev/null 2>&1 && fail "n x 0.2 accepted"
expect "$OUT/bad_n/seeds.tsv" 0 FAIL "C1:"
JL check_seed.jl "$OUT/bad_fmt.json.gz" "$OUT/bad_fmt" > "$OUT/bad_fmt.log" 2>&1 && fail "malformed certificate accepted"
grep -q "expected 36 floats" "$OUT/bad_fmt.log" || fail "malformed certificate: no message"
echo "ALL TESTS PASS"
