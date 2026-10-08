#!/usr/bin/env bash
# Close what remains on our side (6 Oct 2026), three jobs in parallel:
#   hard2    shoulder boxes the max-budget frontier left open: frontier at 7,200 s per root, split over 2 nodes
#   cG       stage-C FAILED leaves (results/certify): SignedCornerPSDPrune (stageG_psd.py), one node
#   cP3      the same leaves rerun one per cell with the work-cell pass-3 caps (production cover), disBatch, 8 nodes
# All paths absolute.  Outputs: postE/hard2/, results/certify_branchP3/, results/certify_G/.
set -euo pipefail
cd "$(dirname "$0")"; P=$PWD; H2=$P/postE/hard2; mkdir -p $H2 $P/results/certify_branchP3 $P/logs/certify_branchP3 $P/results/certify_G
for v in $(env | grep -o '^SLURM_[A-Z0-9_]*'); do unset "$v"; done
SHR=$HOME/Documents/QuantumPhysics/ClusterScripts/nofourmubs_shoulder_v2_2026-10-02; ASC=$SHR/ProvenResults/ActiveShoulderClosure_v2_frontier
module load python/3.11.11
python3 - $P <<'EOF'
import glob, json, os, sys, math
P = sys.argv[1]; H = P + '/postE/hard'; H2 = P + '/postE/hard2'
# hard2 input: hard receipts' unresolved boxes, in part order
rows = []
for p in range(10):
    rp = H + f'/receipt_{p}.json'
    if not os.path.exists(rp): continue
    bad = set(json.load(open(rp))['unresolved_indices'])
    lines = open(H + f'/part_{p}.jsonl').read().splitlines()
    rows += [lines[j] for j in sorted(bad)]
for k in range(2):
    open(H2 + f'/part_{k}.jsonl', 'w').write(''.join(l + '\n' for l in rows[k::2]))
print('hard2 boxes', len(rows))
# stage-C FAILED leaves -> one cell each, exact level and centre (as cluster/make_pass3.py)
REC = 121
def level_of(cid):
    with open(P + '/cells_branch.txt', 'rb') as f:
        f.seek((cid - 1) * REC); g = f.read(REC).split()
    assert int(g[0]) == cid
    return int(g[2])
leaves = []; files = set()
for fn in sorted(glob.glob(P + '/results/certify/c_*.jsonl')):
    block = []
    for line in open(fn):
        r = json.loads(line)
        if r.get('header'): continue
        if r.get('done'):
            for x in block:
                if x['status'].startswith('FAILED'):
                    lev = round(math.log2(math.pi / x['rho'])); assert math.pi / 2 ** lev == x['rho']
                    leaves.append((r['cell'], lev, x['theta'])); files.add(fn)
            block = []
        else: block.append(r)
with open(P + '/cells_branchP3.txt', 'w') as c, open(P + '/tasks_branchP3.txt', 'w') as t:
    for n, (cid, lev, th) in enumerate(leaves, 1):
        rec = f'{n:9d} {cid:7d} {lev:2d} ' + ' '.join(f'{x:+.17e}' for x in th)
        assert len(rec) <= REC - 1 and [float(x) for x in rec.split()[3:]] == th
        c.write(rec.ljust(REC - 1) + '\n')
        t.write(f'CERT_CELLMAX=43200 CERT_CERTMAX=7200 CERT_MAXDEPTH=4 CERT_COVERBUDGET=200000000 ./run_task.sh batch '
                f'{P}/cells_branchP3.txt {n} {n} {P}/results/certify_branchP3/c_{n:09d}.jsonl &> {P}/logs/certify_branchP3/c_{n:09d}.log\n')
open(P + '/results/certify_G/files.txt', 'w').write('\n'.join(sorted(files)) + '\n')
print('stage-C failed leaves', len(leaves), 'in', len(files), 'files')
EOF
NODE="--account=ccq --partition=ccq --nodes=1 --exclusive --mem=0 --constraint=rome&rocky9"
J=""
for k in 0 1; do
  j=$(sbatch --parsable $NODE --time=12:00:00 --job-name=nofour-hard2 --output=$H2/ft_$k.out \
    --wrap "module load gcc/13.3.0 && export CXX=g++ OPENBLAS_NUM_THREADS=1 && source ~/shoulder_v2_work/common.sh && cd $SHR && \
      \$PY $ASC/build_region.py --boxes $H2/part_$k.jsonl --output $H2/region_$k.json && \
      \$PY $ASC/driver.py --region $H2/region_$k.json --boxes $H2/part_$k.jsonl --output $H2/forest_$k.jsonl.gz --jobs 120 \
        --cpu-per-root 7200 --max-nodes 65535 --direct-models --minimax-gauge --fallback-depth 8 > $H2/driver_$k.log 2>&1; \
      \$PY $ASC/verify.py --region $H2/region_$k.json --boxes $H2/part_$k.jsonl --forest $H2/forest_$k.jsonl.gz \
        --output $H2/receipt_$k.json --check-built-region --jobs 120 > $H2/verify_$k.log 2>&1; echo verify exit \$?"); J="$J $j"
done
G=$(sbatch --parsable $NODE --time=12:00:00 --job-name=nofour-certG --output=$P/results/certify_G/G.out --export=ALL,NOFOUR_ROOT=$P/code \
  --wrap "cd $P && module load python/3.11.11 && python3 -B stageG_psd.py $P/results/certify_G/g_000000001.txt \$(cat $P/results/certify_G/files.txt) --workers 120")
N=$(wc -l < tasks_branchP3.txt); NN=$(( (N + 127) / 128 )); [ $NN -le 8 ] || NN=8
P3=$(sbatch --parsable --account=ccq --partition=ccq --nodes=$NN --ntasks-per-node=128 --constraint='rome&rocky9' --time=14:00:00 \
  --job-name=nofour-certP3 --export=ALL,PACKAGE_DIR=$P,TASKFILE=$P/tasks_branchP3.txt,TASKLABEL=certP3 run_disbatch.slurm)
echo "$(date -Is) close_rest: hard2$J; stage-C leaves: PSD $G, pass-3 cover $P3 ($N tasks on $NN nodes)" | tee -a logs/post_d.log
