#!/usr/bin/env bash
# After the stage-E audit (afterany): check every stage-E output exists (self-healing, as post_d), then start the
# post-E pipeline (2 Oct 2026):
#   post_e_stage1.sh   one node: inventory, v2 lookup, (4,5,0,3) side cover, frontier input; submits the frontier
#                      shards (post_e_frontier.sh, one node each) and post_e_F.sh after them
#   post_e_F.sh        stage F on the rows still open (not (2,4,4,2) unless INCLUDE_2442=1), then G, then the ledger
#   post_e_ledger.sh   frontier_ledger.py over every source -> POSTE_OUT/ledger_receipt.json, open list, SUMMARY.txt
# Budgets (environment, defaults): FRONTIER_CPU_H=1500 (search, split over shards by box count), F_NODES=4 and
# F_WALL=4:00:00 (stage F is cut off at the walltime; unfinished cells stay open); post_e_v3.sh up to
# about 1,000 CPU-h.  Total at most about 4,600 CPU-h.
set -uo pipefail
cd "$(dirname "$0")"
for v in $(env | grep -o '^SLURM_[A-Z0-9_]*'); do unset "$v"; done
log() { echo "$(date -Is) $*" | tee -a logs/post_e.log; }
RETRY="${RETRY:-0}"
log "start (retry $RETRY)"
missing=$(awk '{print $2}' tasks_branchE.txt | while read f; do test -f "$f" || echo "$f"; done | wc -l)
if [ "$missing" != 0 ]; then
  [ "$RETRY" -lt 3 ] || { log "stage E still incomplete after 3 resubmissions ($missing missing); stopping"; exit 1; }
  nodes=$(( (missing + 127) / 128 )); [ "$nodes" -le 4 ] || nodes=4
  # D/E task lines are "TASK OUT IN...": submit.sh's tail mode reads the last field, so build the tail list here
  awk '{print $2}' tasks_branchE.txt | paste -d'|' - tasks_branchE.txt | while IFS='|' read -r f l; do test -f "$f" || echo "$l"; done > tasks_branchEtail.txt
  o="$(WALLTIME=12:00:00 ./submit.sh branchEtail "$nodes" 1 "$(wc -l < tasks_branchEtail.txt)" rome)"; log "$o"; T="${o##* }"
  [ -n "$T" ] || { log "tail submission failed"; exit 1; }
  AE=$(sbatch --parsable --dependency=afterany:$T --exclusive --mem=0 --time=6:00:00 --job-name=nofour-b95auditE \
    --account=ccq --partition=ccq --export=ALL,PACKAGE_DIR=$PWD --output=logs/audit_branch95_E.log --open-mode=append \
    --wrap "cd $PWD && python3 -B branch95_audit.py --stageE results/stageE --open-out open_after_E.txt"); log "audit E $AE"
  sbatch --parsable --dependency=afterany:$AE --cpus-per-task=1 --mem=8G --time=1:00:00 --job-name=nofour-b95postE \
    --account=ccq --partition=ccq --output=logs/post_e.out --open-mode=append --export=ALL,PACKAGE_DIR=$PWD,RETRY=$((RETRY + 1)) \
    --wrap "cd $PWD && ./post_e.sh" | tee -a logs/post_e.log
  exit 0
fi
OUT="${POSTE_OUT:-$PWD/postE}"; mkdir -p "$OUT"
J=$(sbatch --parsable ${SB_PART:---account=ccq --partition=ccq} --nodes=1 --exclusive --mem=0 --constraint='rome&rocky9' --time=10:00:00 \
  --job-name=nofour-postE1 --output="$OUT/stage1.out" --export=ALL,PACKAGE_DIR=$PWD,POSTE_OUT=$OUT \
  --wrap "cd $PWD && ./post_e_stage1.sh")
log "stage E complete; post-E stage 1 is job $J (output $OUT)"
