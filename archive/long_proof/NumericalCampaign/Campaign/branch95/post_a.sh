#!/usr/bin/env bash
# Runs as a Slurm job after the stage-A slices (afterany): checks completeness, merges, submits stages B/C as 3 slices.
#SBATCH --job-name=nofour-b95postA
#SBATCH --account=ccq
#SBATCH --partition=ccq
#SBATCH --output=logs/slurm-%j.out
#SBATCH --error=logs/slurm-%j.err
set -euo pipefail
cd "${PACKAGE_DIR:?}"
for v in $(env | grep -o '^SLURM_[A-Z0-9_]*'); do unset "$v"; done
log() { echo "$(date -Iseconds) $*" | tee -a logs/post_a.log; }
log start
NT=$(wc -l < tasks_branchexpand.txt); ND=$(ls results/expand | grep -vc part || true)
[ "$ND" = "$NT" ] || { log "stage A incomplete: $ND of $NT outputs; not submitting"; exit 1; }
python3 merge_full.py 500 64 | tee -a logs/post_a.log
mkdir -p logs/certify results/certify results/triple
N=$(wc -l < tasks_branchBC.txt); S=$(( (N + 2) / 3 ))
WALLTIME=40:00:00 ./submit.sh branchBC 10 1 "$S" rome | tee -a logs/post_a.log
WALLTIME=40:00:00 ./submit.sh branchBC 10 $(( S + 1 )) $(( 2 * S )) rome | tee -a logs/post_a.log
WALLTIME=40:00:00 ./submit.sh branchBC 10 $(( 2 * S + 1 )) "$N" rome | tee -a logs/post_a.log
J=$(awk '/branchBC_/{print $1}' jobs_submitted.txt | tail -3 | paste -sd:)
sbatch --parsable --dependency=afterany:$J --cpus-per-task=4 --mem=32G --time=2:00:00 --export=ALL,PACKAGE_DIR=$PWD post_bc.sh | tee -a logs/post_a.log
log "submitted stage B/C ($N tasks in 3 slices) and post_bc after them"
