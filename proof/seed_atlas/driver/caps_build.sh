#!/bin/bash
# Spherical caps (return ZC) for every seed ball whose transfers are all T0/T1, then a certificate carrying them.
#   sbatch -p ccq -N1 --exclusive -c128 caps_build.sh CERT WORKDIR OUT_CERT
# Stages: ZC proposals, weighted augmentation (proof/theorems/ZC_cap_transfers/.../construction.py), the exact coverage
# certificate and the production Arb check (caps_check.py), then caps_merge.py.  Balls whose caps do not certify keep
# their boxes.  Run the certifiers on OUT_CERT afterwards.
set -u
CERT=$(readlink -f "$1"); W=$(readlink -f "$2"); OUT=$3
HERE=$(cd "$(dirname "$0")" && pwd)
ZC=$HERE/../../theorems/ZC_cap_transfers/ZC_cap_results/ZC_work
PY=${PY:-python3}; N=${WORKERS:-120}
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1 PYTHONUNBUFFERED=1
mkdir -p "$W"
SEEDS=$($PY -c "
import gzip,json,sys
d=json.load(gzip.open(sys.argv[1],'rt'))
print(','.join(str(i) for i,s in enumerate(d['seeds']) if s.get('transfers') and all(g['kind'] in ('T0','T1') for g in s['transfers'])))" "$CERT")
echo "$SEEDS" | tr ',' '\n' | wc -l | xargs echo "balls with T0/T1 transfers only:"
t=$(date +%s); (cd "$ZC" && $PY construction.py --input "$CERT" --seeds "$SEEDS" --out "$W/proposals" --workers $N > "$W/A.log" 2>&1)
echo "proposals $(( $(date +%s)-t )) s"
t=$(date +%s); (cd "$ZC" && $PY construction.py --input "$CERT" --seeds "$SEEDS" --out "$W/proposals" --workers $N --augment --weighted > "$W/B.log" 2>&1)
echo "augmentation $(( $(date +%s)-t )) s"
t=$(date +%s); $PY "$HERE/caps_check.py" "$CERT" "$W/proposals" "$W/caps" $N "$SEEDS" > "$W/C.log" 2>&1
echo "coverage + Arb check $(( $(date +%s)-t )) s; PASS: $(grep -c '"PASS"' "$W/C.log")"
$PY "$HERE/caps_merge.py" "$CERT" "$W/caps" "$OUT"
