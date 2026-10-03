#!/usr/bin/env bash
# Post-E stage F/G: production cover (same frozen code and acceptance as the work cells) on the rows still open after
# v2, side cover and the frontier, then SignedCornerPSDPrune on its FAILED leaves (stageG_psd.py), then the ledger.
set -uo pipefail
SB_PART="${SB_PART:---account=ccq --partition=ccq}"   # rehearsal: "--account=ccq --partition=gen --qos=gen"
cd "${PACKAGE_DIR:?}"
for v in $(env | grep -o '^SLURM_[A-Z0-9_]*'); do unset "$v"; done
OUT="${POSTE_OUT:?}"; log() { echo "$(date -Is) $*" | tee -a "$OUT/pipeline.log"; }
source "$HOME/shoulder_v2_work/common.sh"
$PY -B postE.py F-prep "$OUT" "${F_PER:-4}" > "$OUT/F_prep.json" 2> "$OUT/F_prep.err" || { log "F-prep FAILED"; exit 1; }
log "F-prep: $(cat "$OUT/F_prep.json")"
T=$(wc -l < "$OUT/F/tasks_F.txt"); mkdir -p "$OUT/G"
L=$(sbatch --parsable $SB_PART --cpus-per-task=2 --mem=16G --time=2:00:00 --job-name=nofour-postEled \
  --output="$OUT/ledger.out" --export=ALL,PACKAGE_DIR=$PWD,POSTE_OUT=$OUT --hold --wrap "cd $PWD && ./post_e_ledger.sh")
if [ "$T" -gt 0 ]; then
  n=$(( (T + 127) / 128 )); [ "$n" -le "${F_NODES:-4}" ] || n="${F_NODES:-4}"
  JF=$(sbatch --parsable $SB_PART --nodes=$n --ntasks-per-node=128 --constraint='rome&rocky9' --time="${F_WALL:-5:00:00}" \
    --job-name=nofour-postEstageF --export=ALL,PACKAGE_DIR=$PWD,TASKFILE=$OUT/F/tasks_F.txt,TASKLABEL=postE_F run_disbatch.slurm)
  JG=$(sbatch --parsable --dependency=afterany:$JF $SB_PART --nodes=1 --exclusive --mem=0 \
    --constraint='rome&rocky9' --time=4:00:00 --job-name=nofour-postEstageG --output="$OUT/G.out" \
    --export=ALL,PACKAGE_DIR=$PWD,NOFOUR_ROOT=$PWD/code \
    --wrap "cd $PWD && module load python/3.11.11 && python3 -B stageG_psd.py $OUT/G/g_000000001.txt $OUT/F/results/c_*.jsonl --workers 120")
  scontrol update JobId=$L Dependency=afterany:$JG
  log "stage F: $T tasks on $n nodes (job $JF, walltime ${F_WALL:-5:00:00}); stage G job $JG; ledger job $L"
else
  log "stage F: nothing to do; ledger job $L"
fi
scontrol release $L
