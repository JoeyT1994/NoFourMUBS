#!/usr/bin/env bash
# Rerun stage D after the 3 Oct relative-path failure (stageD_task.sh now passes absolute paths); audit and post_d after it.
set -euo pipefail
cd "$HOME/Documents/QuantumPhysics/ClusterScripts/nofourmubs_branch95_full_2026-10-01"
for v in $(env | grep -o '^SLURM_[A-Z0-9_]*'); do unset "$v"; done
N=$(wc -l < tasks_branchD.txt); S=$(( (N + 2) / 3 ))
for r in "1 $S" "$(( S + 1 )) $(( 2 * S ))" "$(( 2 * S + 1 )) $N"; do WALLTIME=12:00:00 ./submit.sh branchD 4 $r rome | tee -a logs/post_bc.log; done
J=$(awk '/branchD_/{print $1}' jobs_submitted.txt | tail -3 | paste -sd:)
A=$(sbatch --parsable --dependency=afterany:$J --exclusive --mem=0 --time=6:00:00 --job-name=nofour-b95audit --account=ccq --partition=ccq \
  --output=logs/audit_branch95.log --open-mode=append --export=ALL,PACKAGE_DIR=$PWD --wrap "cd $PWD && python3 -B branch95_audit.py --stageD results/stageD")
P=$(sbatch --parsable --dependency=afterany:$A --cpus-per-task=1 --mem=8G --time=1:00:00 --job-name=nofour-b95postD --account=ccq --partition=ccq \
  --output=logs/post_d.out --open-mode=append --export=ALL,PACKAGE_DIR=$PWD --wrap "cd $PWD && ./post_d.sh")
echo "$(date -Iseconds) stage D rerun after the relative-path failure: jobs $J, audit $A, post_d $P" | tee -a logs/post_bc.log
