#!/usr/bin/env bash
# Class (0,0,2,4) boxes still open (export2 rows, 4,796 on 6 Oct 2026): frontier at 1,800 s / 65,535 nodes per root,
# direct models, minimax gauge, fallback depth 8 (as hard_tail.sh), NPART whole nodes.  Output postE/h0024/.
# Usage: ./hard_0024.sh [NPART=12]
set -euo pipefail
cd "$(dirname "$0")"; P=$PWD; H=$P/postE/h0024; mkdir -p $H
for v in $(env | grep -o '^SLURM_[A-Z0-9_]*'); do unset "$v"; done
NP="${1:-12}"; SHR=$HOME/Documents/QuantumPhysics/ClusterScripts/nofourmubs_shoulder_v2_2026-10-02; ASC=$SHR/ProvenResults/ActiveShoulderClosure_v2_frontier
module load python/3.11.11
python3 - $NP <<'PYEOF'
import gzip, json, sys
NP = int(sys.argv[1]); F = 'postE/frontier'; H = 'postE/h0024'
rows = set()
for s in json.load(open('export2_2026-10-05/MANIFEST.json'))['shards']:
    for l in gzip.open('export2_2026-10-05/' + s['file'], 'rt'):
        r = json.loads(l)
        if r['class'] == '0,0,2,4': rows.add(r['inventory_row'])
acc = {int(l.split('\t')[1]) for l in open('export2_update_2026-10-06/ACCEPTED_SINCE_EXPORT2.tsv') if not l.startswith('#')}
rows -= acc
man = json.load(open(F + '/shards/MANIFEST.json'))['shards']
src = {}
for n, line in enumerate(open(F + '/index.txt')):
    i = int(line)
    if i in rows: src[n] = i
assert len(src) == len(rows), ('rows not in frontier index', len(rows) - len(src))
byshard = {}
for n in src:
    k = max(j for j in range(len(man)) if man[j]['first_source_index'] <= n)
    byshard.setdefault(k, set()).add(n - man[k]['first_source_index'])
out = []
for k, qs in sorted(byshard.items()):
    for q, l in enumerate(gzip.open(F + '/shards/boxes_%06d.jsonl.gz' % k, 'rt')):
        if q in qs: out.append((man[k]['first_source_index'] + q, l))
out.sort(); assert len(out) == len(rows)
parts = [open(H + '/part_%d.jsonl' % p, 'w') for p in range(NP)]
with open(H + '/map.tsv', 'w') as m:
    for n, (s, l) in enumerate(out):
        parts[n % NP].write(l); m.write(f'{s}\t{src[s]}\t{n % NP}\n')
for f in parts: f.close()
print('class 0,0,2,4 boxes', len(out), 'in', len(byshard), 'frontier shards')
PYEOF
NODE="--account=ccq --partition=ccq --nodes=1 --exclusive --mem=0 --constraint=rome&rocky9"
J=""
for p in $(seq 0 $((NP - 1))); do
  j=$(sbatch --parsable $NODE --time=8:00:00 --job-name=nofour-h0024 --output=$H/ft_$p.out \
    --wrap "module load gcc/13.3.0 && export CXX=g++ OPENBLAS_NUM_THREADS=1 && source ~/shoulder_v2_work/common.sh && cd $SHR && \
      \$PY $ASC/build_region.py --boxes $H/part_$p.jsonl --output $H/region_$p.json && \
      \$PY $ASC/driver.py --region $H/region_$p.json --boxes $H/part_$p.jsonl --output $H/forest_$p.jsonl.gz --jobs 120 \
        --cpu-per-root 1800 --max-nodes 65535 --direct-models --minimax-gauge --fallback-depth 8 > $H/driver_$p.log 2>&1; \
      \$PY $ASC/verify.py --region $H/region_$p.json --boxes $H/part_$p.jsonl --forest $H/forest_$p.jsonl.gz \
        --output $H/receipt_$p.json --check-built-region --jobs 120 > $H/verify_$p.log 2>&1; echo verify exit \$?"); J="$J $j"
done
echo "$(date -Is) hard_0024: frontier max-budget parts$J" | tee -a logs/post_d.log
