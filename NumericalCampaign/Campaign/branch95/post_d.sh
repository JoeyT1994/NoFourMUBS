#!/usr/bin/env bash
# After the stage-D audit (afterany): check every stage-D output exists, then submit stage E (SignedCornerPSDPrune
# on every open box, one core per task line, 20 stage-D files per task; 2 slices of 4 nodes) and the audit with --stageE after it.
set -uo pipefail
cd "$(dirname "$0")"
log() { echo "$(date -Is) $*" | tee -a logs/post_d.log; }
log start
missing=$(awk '{print $2}' tasks_branchD.txt | while read f; do test -f "$f" || echo "$f"; done | wc -l)
[ "$missing" = 0 ] || { log "stage D incomplete ($missing outputs missing); resubmit ./submit.sh branchD 4 tail, then rerun post_d"; exit 1; }
mkdir -p results/stageE
ls results/stageD/d_*.txt | sort | awk '{f[NR]=$0} END {for (i=1;i<=NR;i+=20) {s=""; for (k=i;k<i+20&&k<=NR;k++) s=s" "f[k]; printf "./stageE_task.sh results/stageE/e_%07d.txt%s &> /dev/null\n", i, s}}' > tasks_branchE.txt
N=$(wc -l < tasks_branchE.txt); S=$(( (N + 1) / 2 ))
for r in "1 $S" "$(( S + 1 )) $N"; do WALLTIME=12:00:00 ./submit.sh branchE 4 $r rome | tee -a logs/post_d.log; done
J=$(awk '/branchE_/{print $1}' jobs_submitted.txt | tail -2 | paste -sd:)
sbatch --parsable --dependency=afterany:$J --cpus-per-task=4 --mem=64G --time=6:00:00 --job-name=nofour-b95auditE \
  --account=ccq --partition=ccq --export=ALL,PACKAGE_DIR=$PWD --output=logs/audit_branch95_E.log --error=logs/audit_branch95_E.err \
  --wrap "cd $PWD && python3 -B branch95_audit.py --stageE results/stageE --open-out open_after_E.txt" | tee -a logs/post_d.log
log "submitted stage E ($N tasks) and the audit"
