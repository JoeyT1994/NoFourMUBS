#!/usr/bin/env bash
# Shoulder hard tail (6 Oct 2026): boxes still open after frontier passes 1-3, attacked by two routes in parallel.
#   collect   postE/hard/boxes.jsonl (exact), map.tsv (frontier source, inventory row, shard, position), cells.txt
#   frontier  NPART parts, one whole node each: driver at 1,800 s / 65,535 nodes per root, direct models, minimax
#             gauge, root-free fallback at depth 8; then verify -> postE/hard/receipt_P.json
#   stage F   production cover (as post_e_F.sh) on 4 nodes, then stage G (PSD) on its FAILED leaves
# Usage: ./hard_tail.sh [NPART=10]
set -euo pipefail
cd "$(dirname "$0")"; P=$PWD; H=$P/postE/hard; mkdir -p $H/F/results $H/F/logs $H/G
for v in $(env | grep -o '^SLURM_[A-Z0-9_]*'); do unset "$v"; done
NP="${1:-10}"; SHR=$HOME/Documents/QuantumPhysics/ClusterScripts/nofourmubs_shoulder_v2_2026-10-02; ASC=$SHR/ProvenResults/ActiveShoulderClosure_v2_frontier
NODE="--account=ccq --partition=ccq --nodes=1 --exclusive --mem=0 --constraint=rome&rocky9"
C=$(sbatch --parsable --account=ccq --partition=ccq --cpus-per-task=2 --mem=96G --time=2:00:00 --job-name=nofour-hardcol \
  --output=$H/collect.out --wrap "cd $P && module load python/3.11.11 && python3 - $NP <<'EOF'
import glob, gzip, json, os, sys
NP = int(sys.argv[1]); F = 'postE/frontier'; H = 'postE/hard'
man = json.load(open(F + '/shards/MANIFEST.json'))['shards']
want = {}                                   # frontier source index -> (shard, position)
for p in sorted(glob.glob(F + '/receipt3_*.json')):
    KK = p.split('_')[-1].split('.')[0]; k = int(KK)
    pos = [int(x) for x in open(F + '/pass3_%s.pos' % KK)] if os.path.exists(F + '/pass3_%s.pos' % KK) else []
    if not pos: continue
    bad = set(json.load(open(p))['unresolved_indices'])
    for j, q in enumerate(pos):
        if j in bad: want[man[k]['first_source_index'] + q] = (k, q)
inv = {}
for n, line in enumerate(open(F + '/index.txt')):
    if n in want: inv[n] = int(line)
lev = {}; need = set(inv.values())
with gzip.open('postE/inventory.txt.gz', 'rt') as f:
    i = 0
    for line in f:
        if not line.strip() or line.startswith('#'): continue
        if i in need: lev[i] = line.split()
        i += 1
byshard = {}
for s, (k, q) in want.items(): byshard.setdefault(k, {})[q] = s
rows = []
for k, d in sorted(byshard.items()):
    for q, l in enumerate(gzip.open(F + '/shards/boxes_%06d.jsonl.gz' % k, 'rt')):
        if q in d: rows.append((d[q], k, q, l))
rows.sort()
from fractions import Fraction as Fr
parts = [open(H + '/part_%d.jsonl' % p, 'w') for p in range(NP)]
with open(H + '/boxes.jsonl', 'w') as b, open(H + '/map.tsv', 'w') as m, open(H + '/cells.txt', 'w') as c:
    for n, (s, k, q, l) in enumerate(rows, 1):
        i = inv[s]; r = lev[i]; b.write(l); parts[(n - 1) % NP].write(l)
        m.write(f'{s}\t{i}\t{k}\t{q}\t{(n - 1) % NP}\n')
        th = [float(Fr(x)) for x in json.loads(l)['centers']]
        rec = f'{n:9d} {i % 10**7:7d} {int(r[0]):2d} ' + ' '.join(f'{x:+.17e}' for x in th)
        assert [float(x) for x in rec.split()[3:]] == th
        c.write(rec.ljust(120) + '\n')
for f in parts: f.close()
print(json.dumps(dict(shards_with_pass3=len(glob.glob(F + '/receipt3_*.json')), hard=len(rows))))
EOF")
J=""
for p in $(seq 0 $((NP - 1))); do
  j=$(sbatch --parsable --dependency=afterok:$C $NODE --time=6:00:00 --job-name=nofour-hardFT --output=$H/ft_$p.out \
    --wrap "module load gcc/13.3.0 && export CXX=g++ OPENBLAS_NUM_THREADS=1 && source ~/shoulder_v2_work/common.sh && cd $SHR && \
      [ -s $H/part_$p.jsonl ] || exit 0; \
      \$PY $ASC/build_region.py --boxes $H/part_$p.jsonl --output $H/region_$p.json && \
      \$PY $ASC/driver.py --region $H/region_$p.json --boxes $H/part_$p.jsonl --output $H/forest_$p.jsonl.gz --jobs 120 \
        --cpu-per-root 1800 --max-nodes 65535 --direct-models --minimax-gauge --fallback-depth 8 > $H/driver_$p.log 2>&1; \
      \$PY $ASC/verify.py --region $H/region_$p.json --boxes $H/part_$p.jsonl --forest $H/forest_$p.jsonl.gz \
        --output $H/receipt_$p.json --check-built-region --jobs 120 > $H/verify_$p.log 2>&1; echo verify exit \$?")
  J="$J $j"
done
SF=$(sbatch --parsable --dependency=afterok:$C --account=ccq --partition=ccq --cpus-per-task=1 --mem=4G --time=0:30:00 \
  --job-name=nofour-hardFsetup --output=$H/F_setup.out --wrap "cd $P && n=\$(wc -l < $H/cells.txt) && \
  awk -v n=\$n 'BEGIN{for(a=1;a<=n;a+=4){b=a+3; if(b>n)b=n; printf \"CERT_COVER0=30 CERT_MAXDEPTH=3 CERT_CELLMAX=1800 CERT_CERTMAX=600 ./run_task.sh batch postE/hard/cells.txt %d %d postE/hard/F/results/c_%09d.jsonl &> postE/hard/F/logs/c_%09d.log\n\", a, b, a, a}}' > $H/F/tasks.txt && \
  JF=\$(sbatch --parsable --account=ccq --partition=ccq --nodes=4 --ntasks-per-node=128 --constraint='rome&rocky9' --time=6:00:00 \
    --job-name=nofour-hardF --export=ALL,PACKAGE_DIR=$P,TASKFILE=$H/F/tasks.txt,TASKLABEL=hardF run_disbatch.slurm) && \
  sbatch --parsable --dependency=afterany:\$JF --account=ccq --partition=ccq --nodes=1 --exclusive --mem=0 --constraint='rome&rocky9' \
    --time=4:00:00 --job-name=nofour-hardG --output=$H/G.out --export=ALL,NOFOUR_ROOT=$P/code \
    --wrap \"cd $P && module load python/3.11.11 && python3 -B stageG_psd.py $H/G/g_000000001.txt $H/F/results/c_*.jsonl --workers 120\"")
echo "$(date -Is) hard tail: collect $C; frontier max-budget parts$J; stage F setup $SF (F on 4 nodes, then G)" | tee -a logs/post_d.log
