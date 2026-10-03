#!/usr/bin/env bash
# After the stage-D audit (afterany): check every stage-D output exists, then submit stage E (SignedCornerPSDPrune
# on every open box, one core per task line, 20 stage-D files per task; 2 slices of 4 nodes) and the audit with --stageE after it.
set -uo pipefail
cd "$(dirname "$0")"
for v in $(env | grep -o '^SLURM_[A-Z0-9_]*'); do unset "$v"; done
log() { echo "$(date -Is) $*" | tee -a logs/post_d.log; }
RETRY="${RETRY:-0}"
log "start (retry $RETRY)"
missing=$(awk '{print $2}' tasks_branchD.txt | while read f; do test -f "$f" || echo "$f"; done | wc -l)
if [ "$missing" != 0 ]; then
  # (2 Oct) self-healing, as in post_bc: rerun the missing stage-D tasks, rerun the stage-D audit, then this script
  [ "$RETRY" -lt 3 ] || { log "stage D still incomplete after 3 resubmissions ($missing missing); stopping"; exit 1; }
  nodes=$(( (missing + 127) / 128 )); [ "$nodes" -le 4 ] || nodes=4
  o="$(WALLTIME=24:00:00 ./submit.sh branchD "$nodes" tail rome)"; log "$o"; T="${o##* }"
  A=$(sbatch --parsable --dependency=afterany:$T --cpus-per-task=4 --mem=64G --time=6:00:00 --job-name=nofour-b95audit \
    --account=ccq --partition=ccq --output=logs/audit_branch95.log --open-mode=append --export=ALL,PACKAGE_DIR=$PWD \
    --wrap "cd $PWD && python3 -B branch95_audit.py --stageD results/stageD"); log "audit $A"
  sbatch --parsable --dependency=afterany:$A --cpus-per-task=1 --mem=8G --time=1:00:00 --job-name=nofour-b95postD \
    --account=ccq --partition=ccq --output=logs/post_d.out --open-mode=append --export=ALL,PACKAGE_DIR=$PWD,RETRY=$((RETRY + 1)) \
    --wrap "cd $PWD && ./post_d.sh" | tee -a logs/post_d.log
  exit 0
fi
mkdir -p results/stageE
ls results/stageD/d_*.txt | sort | awk '{f[NR]=$0} END {for (i=1;i<=NR;i+=20) {s=""; for (k=i;k<i+20&&k<=NR;k++) s=s" "f[k]; printf "./stageE_task.sh results/stageE/e_%07d.txt%s &> /dev/null\n", i, s}}' > tasks_branchE.txt
N=$(wc -l < tasks_branchE.txt); S=$(( (N + 1) / 2 ))
for r in "1 $S" "$(( S + 1 )) $N"; do WALLTIME=12:00:00 ./submit.sh branchE 4 $r rome | tee -a logs/post_d.log; done
J=$(awk '/branchE_/{print $1}' jobs_submitted.txt | tail -2 | paste -sd:)
AE=$(sbatch --parsable --dependency=afterany:$J --cpus-per-task=4 --mem=64G --time=6:00:00 --job-name=nofour-b95auditE \
  --account=ccq --partition=ccq --export=ALL,PACKAGE_DIR=$PWD --output=logs/audit_branch95_E.log --error=logs/audit_branch95_E.err \
  --wrap "cd $PWD && python3 -B branch95_audit.py --stageE results/stageE --open-out open_after_E.txt"); log "audit E $AE"
# (2 Oct) post_e.sh after the stage-E audit: stage-E completeness (self-healing), then the post-E pipeline
sbatch --parsable --dependency=afterany:$AE --cpus-per-task=1 --mem=8G --time=1:00:00 --job-name=nofour-b95postE \
  --account=ccq --partition=ccq --output=logs/post_e.out --open-mode=append --export=ALL,PACKAGE_DIR=$PWD \
  --wrap "cd $PWD && ./post_e.sh" | tee -a logs/post_d.log
log "submitted stage E ($N tasks), the audit and post_e"
