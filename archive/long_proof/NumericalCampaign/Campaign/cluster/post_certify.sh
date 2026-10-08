#!/usr/bin/env bash
# After the certification slices (afterany): resubmit any unfinished tasks (and requeue itself), otherwise build and
# submit pass 2 for cells with failed leaves, then chain the certify audit and the independent replay.
#SBATCH --job-name=nofour-postcert
#SBATCH --account=ccq
#SBATCH --partition=ccq
#SBATCH --output=logs/slurm-%j.out
#SBATCH --error=logs/slurm-%j.err
set -euo pipefail
cd "${PACKAGE_DIR:?}"
for v in $(env | grep -o '^SLURM_[A-Z0-9_]*'); do unset "$v"; done
log() { echo "$(date -Iseconds) $*" | tee -a logs/post_certify.log; }
log start
missing=0
while IFS= read -r line; do out="$(echo "$line" | sed 's/ &>.*//' | awk '{print $NF}')"; test -f "$out" || missing=$((missing+1)); done < tasks_certify.txt
if [ "$missing" -gt 0 ]; then
  log "$missing certify tasks unfinished: resubmitting the tail"
  T=$(WALLTIME=24:00:00 ./submit.sh certify 2 tail rome | tee -a logs/post_certify.log | grep -o 'job [0-9]*' | awk '{print $2}')
  sbatch --parsable --dependency=afterany:$T --cpus-per-task=2 --mem=16G --time=2:00:00 --export=ALL,PACKAGE_DIR=$PWD post_certify.sh | tee -a logs/post_certify.log
  exit 0
fi
python3 make_pass2.py certify certify_pass2 | tee -a logs/post_certify.log
NP=$(wc -l < tasks_certifypass2.txt)
DEP=""
if [ "$NP" -gt 0 ]; then
  P=$(WALLTIME=24:00:00 ./submit.sh certifypass2 2 1 "$NP" rome | tee -a logs/post_certify.log | grep -o 'job [0-9]*' | awk '{print $2}')
  DEP="--dependency=afterany:$P"
fi
A=$(sbatch --parsable $DEP --cpus-per-task=4 --mem=32G --time=4:00:00 --job-name=nofour-certaudit --account=ccq --partition=ccq \
    --output=logs/audit_certify.log --wrap "cd $PWD && python3 audit.py certify certify certify_pass2")
log "audit job $A"
R=$(sbatch --parsable --dependency=afterany:$A --nodes=1 --ntasks=1 --cpus-per-task=1 --mem=16G --time=12:00:00 --job-name=nofour-replay \
    --account=ccq --partition=ccq --output=logs/replay_full.log \
    --wrap "cd $PWD && OPENBLAS_NUM_THREADS=1 \$HOME/.juliaup/bin/julia +1.12.7 --startup-file=no --project=code/Certification/jlenv_cluster replay_full.jl 200 20261001 certify")
log "replay job $R (200 random certified leaves)"
