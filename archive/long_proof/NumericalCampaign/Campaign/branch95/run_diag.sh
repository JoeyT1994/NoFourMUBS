#!/usr/bin/env bash
# Leftover diagnosis (5 Oct 2026): collect (census + 2,000-box hard-tail sample), then three method trials in parallel
# on separate nodes: stage F (production cover), frontier driver alternative modes, v3 (0.3 s then 3 s).
# Output: postE/diag/.  Each trial writes a one-line summary to postE/diag/SUMMARY.txt.
set -euo pipefail
cd "$(dirname "$0")"; P=$PWD; D=$P/postE/diag; mkdir -p $D/F/results $D/F/logs
for v in $(env | grep -o '^SLURM_[A-Z0-9_]*'); do unset "$v"; done
SHR=$HOME/Documents/QuantumPhysics/ClusterScripts/nofourmubs_shoulder_v2_2026-10-02; ASC=$SHR/ProvenResults/ActiveShoulderClosure_v2_frontier
PRE="--account=ccq --partition=preempt --qos=preempt --requeue --nodes=1 --exclusive --mem=0 --constraint=rome&rocky9"
C=$(sbatch --parsable --account=ccq --partition=ccq --cpus-per-task=4 --mem=128G --time=3:00:00 --job-name=nofour-diagcol \
  --output=$D/collect.out --wrap "cd $P && module load python/3.11.11 && python3 -B diag_collect.py $D 2000")
# stage F: 2,000 cells, 4 per task, production caps (as post_e_F.sh), then a closure count
awk 'BEGIN{for(a=1;a<=2000;a+=4){b=a+3; printf "CERT_COVER0=30 CERT_MAXDEPTH=3 CERT_CELLMAX=1800 CERT_CERTMAX=600 ./run_task.sh batch postE/diag/sample.cells.txt %d %d postE/diag/F/results/c_%09d.jsonl &> postE/diag/F/logs/c_%09d.log\n", a, b, a, a}}' > $D/F/tasks.txt
J1=$(sbatch --parsable --dependency=afterok:$C $PRE --ntasks-per-node=128 --time=6:00:00 --job-name=nofour-diagF \
  --output=$D/F.out --export=ALL,PACKAGE_DIR=$P,TASKFILE=$D/F/tasks.txt,TASKLABEL=diagF run_disbatch.slurm)
J1s=$(sbatch --parsable --dependency=afterany:$J1 --account=ccq --partition=ccq --cpus-per-task=1 --mem=4G --time=0:30:00 \
  --job-name=nofour-diagFsum --output=$D/F_summary.out --wrap "cd $P && python3 - <<'EOF'
import glob, json
done = closed = 0
for fn in glob.glob('postE/diag/F/results/c_*.jsonl'):
    block = []
    for line in open(fn):
        r = json.loads(line)
        if r.get('header'): continue
        if r.get('done'):
            done += 1; closed += not any(x['status'].startswith('FAILED') for x in block); block = []
        else: block.append(r)
open('postE/diag/SUMMARY.txt', 'a').write(f'stage F (production cover): {closed} of {done} finished cells closed (sample 2000)\n')
EOF")
# frontier driver, alternative modes and bigger roots
J2=$(sbatch --parsable --dependency=afterok:$C $PRE --time=8:00:00 --job-name=nofour-diagFT --output=$D/frontier_alt.out \
  --wrap "module load gcc/13.3.0 && export CXX=g++ && source ~/shoulder_v2_work/common.sh && cd $SHR && \
  \$PY $ASC/build_region.py --boxes $D/sample.boxes.jsonl --output $D/region.json && \
  \$PY $ASC/driver.py --region $D/region.json --boxes $D/sample.boxes.jsonl --output $D/forest_alt.jsonl.gz --jobs 120 \
     --cpu-per-root 300 --max-nodes 65535 --direct-models --minimax-gauge --fallback-depth 8 --wide-tau-splits > $D/driver_alt.log 2>&1; \
  \$PY $ASC/verify.py --region $D/region.json --boxes $D/sample.boxes.jsonl --forest $D/forest_alt.jsonl.gz --output $D/receipt_alt.json \
     --check-built-region --jobs 120 > $D/verify_alt.log 2>&1; \
  python3 -c \"import json;r=json.load(open('$D/receipt_alt.json'));open('$D/SUMMARY.txt','a').write(f'frontier alt modes (300 s/root, direct models, minimax, fallback 8, wide tau): {r[\\\"accepted_boxes\\\"]} of {r[\\\"frontier_boxes\\\"]} accepted\\n')\"")
# v3
J3=$(sbatch --parsable --dependency=afterok:$C $PRE --time=6:00:00 --job-name=nofour-diagv3 --output=$D/v3.out \
  --wrap "module load gcc/13.3.0 && export CXX=g++ && source ~/shoulder_v2_work/common.sh && cd $SHR && \
  \$PY -B ProvenResults/Patch2442Region_v3/verify.py --boxes $D/sample.boxes.jsonl --output $D/v3fast.jsonl.gz --jobs 120 --cpu-per-box 0.3 > $D/v3fast.log 2>&1; \
  \$PY -B ProvenResults/Patch2442Region_v3/verify.py --boxes $D/sample.boxes.jsonl --output $D/v3wide.jsonl.gz --jobs 120 --cpu-per-box 3 > $D/v3wide.log 2>&1; \
  python3 -c \"import json;a=json.load(open('$D/v3fast.jsonl.gz.receipt.json'))['counts'];b=json.load(open('$D/v3wide.jsonl.gz.receipt.json'))['counts'];open('$D/SUMMARY.txt','a').write(f'v3: 0.3 s {a}; 3 s {b}\\n')\"")
echo "$(date -Is) diagnosis: collect $C; stage F $J1 (+summary $J1s); frontier alt $J2; v3 $J3" | tee -a logs/post_d.log
