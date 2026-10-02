#!/usr/bin/env bash
# After the stage-B/C slices (afterany): check completeness, submit stage D (3 slices), then the audit job after it.
#SBATCH --job-name=nofour-b95postBC
#SBATCH --account=ccq
#SBATCH --partition=ccq
#SBATCH --output=logs/slurm-%j.out
#SBATCH --error=logs/slurm-%j.err
set -euo pipefail
cd "${PACKAGE_DIR:?}"
for v in $(env | grep -o '^SLURM_[A-Z0-9_]*'); do unset "$v"; done
log() { echo "$(date -Iseconds) $*" | tee -a logs/post_bc.log; }
log start
missing=0
while IFS= read -r line; do out="$(echo "$line" | sed 's/ &>.*//' | awk '{print $NF}')"; test -f "$out" || missing=$((missing+1)); done < tasks_branchBC.txt
log "stage B/C outputs missing: $missing"
[ "$missing" = 0 ] || { log "stage B/C incomplete; resubmit with ./submit.sh branchBC N tail, then rerun post_bc"; exit 1; }
mkdir -p results/stageD
ls results/triple/t_*.txt | sort | awk '{f[NR]=$0} END {for (i=1;i<=NR;i+=20) {s=""; for (k=i;k<i+20&&k<=NR;k++) s=s" "f[k]; printf "./stageD_task.sh results/stageD/d_%07d.txt%s &> /dev/null\n", i, s}}' > tasks_branchD.txt
N=$(wc -l < tasks_branchD.txt); S=$(( (N + 2) / 3 ))
for r in "1 $S" "$(( S + 1 )) $(( 2 * S ))" "$(( 2 * S + 1 )) $N"; do WALLTIME=12:00:00 ./submit.sh branchD 4 $r rome | tee -a logs/post_bc.log; done
J=$(awk '/branchD_/{print $1}' jobs_submitted.txt | tail -3 | paste -sd:)
A=$(sbatch --parsable --dependency=afterany:$J --cpus-per-task=4 --mem=64G --time=6:00:00 --job-name=nofour-b95audit \
  --account=ccq --partition=ccq --output=logs/audit_branch95.log --export=ALL,PACKAGE_DIR=$PWD \
  --wrap "cd $PWD && python3 -B branch95_audit.py --stageD results/stageD"); echo "$A" | tee -a logs/post_bc.log
# stage E (added 1 Oct): post_d.sh after the stage-D audit
sbatch --parsable --dependency=afterany:$A --cpus-per-task=1 --mem=8G --time=1:00:00 --job-name=nofour-b95postD \
  --account=ccq --partition=ccq --output=logs/post_d.out --export=ALL,PACKAGE_DIR=$PWD \
  --wrap "cd $PWD && ./post_d.sh" | tee -a logs/post_bc.log
log "submitted stage D ($N tasks), the audit and post_d (stage E)"
