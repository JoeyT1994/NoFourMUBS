#!/usr/bin/env bash
# Evidence pipeline for layer-prune survivors (not a proof step).
#   ./survivors.sh OUTDIR [NSAMPLE=8000]
# 1. pull a random sample of unresolved layer cells from rusty; 2. classify in 8 parallel Julia processes
# (D₀ ∩ F float samples, R range); 3. exact seed distance to the Fourier atlas; 4. summary.
set -euo pipefail
OUT="$1"; N="${2:-8000}"; HERE="$(cd "$(dirname "$0")" && pwd)"; mkdir -p "$OUT"
SK=/private/tmp/claude-503/nfm-rusty.sock; D=Documents/QuantumPhysics/ClusterScripts/nofourmubs_campaign_2026-09-28_v1
ssh -S $SK -o BatchMode=yes rusty "cd ~/$D && cat results/layer/l_*.jsonl | grep '\"ok\": false' | shuf -n $N --random-source=<(yes)" > "$OUT/surv.jsonl"
python3 -c "
import sys; L=open(sys.argv[1]).read().splitlines()
for k in range(8): open(f'{sys.argv[2]}0{k}','w').write(''.join(l+chr(10) for l in L[k::8]))" "$OUT/surv.jsonl" "$OUT/part_"
for f in "$OUT"/part_0?; do
  (OPENBLAS_NUM_THREADS=1 julia --startup-file=no --project="$HERE/../../Certification/jlenv_cluster" "$HERE/layer_classify.jl" "$f" "$f.tsv" 2>&1 | grep -v -i juliaup >/dev/null) &
done; wait
head -1 "$OUT/part_00.tsv" > "$OUT/cls.tsv"; for f in "$OUT"/part_0?.tsv; do tail -n +2 "$f" >> "$OUT/cls.tsv"; done
python3 "$HERE/atlas_distance.py" "$OUT/cls.tsv" "$OUT/dist.tsv"
python3 - "$OUT/dist.tsv" <<'PY'
import csv, sys, statistics
R = list(csv.DictReader(open(sys.argv[1]), delimiter='\t')); n = len(R)
d0 = [r for r in R if int(r['nD0']) > 0]; far = [r for r in R if int(r['nD0']) == 0]
def q(v, p): v = sorted(v); return v[min(len(v) - 1, int(p * len(v)))] if v else float('nan')
print(f"{n} sampled survivors; touching D0∩F at a float sample: {len(d0)} ({100*len(d0)/max(n,1):.1f}%)")
for name, S in (("touching D0", d0), ("not touching", far)):
    ds = [float(r['atlas_dist_rad']) for r in S]
    if ds:
        print(f"  {name}: atlas distance median {q(ds,.5):.3g}, 90% {q(ds,.9):.3g}, max {max(ds):.3g}; within 0.012 rad {100*sum(d<0.0122 for d in ds)/len(ds):.0f}%, within 0.05 {100*sum(d<0.05 for d in ds)/len(ds):.0f}%")
rd = [float(r['RD0min']) for r in d0 if r['RD0min'] != 'NA']
if rd: print(f"  R at the sampled D0 points: min {min(rd):.3g}, median {q(rd,.5):.3g}; share of D0-touching cells with a D0 point at R<20: {100*sum(x<20 for x in rd)/len(rd):.0f}%")
print("  cells crossing R=0 (sampled R range contains 0):", sum(float(r['Rmin']) < 0 < float(r['Rmax']) for r in R))
PY
