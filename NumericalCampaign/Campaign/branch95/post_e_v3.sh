#!/usr/bin/env bash
# Post-E add-on (2 Oct 2026): Patch2442Region_v3 on the exact 16-child split of every row the post-E ledger left
# open; fast profile (0.3 s/box) on all children (fast.jsonl.gz), then 3 s on the rest (wide.jsonl.gz).  Writes POSTE_OUT/v3
# (with the verifier's receipts) only; nothing here changes the post-E ledger.  Caps: V3_WALL=5h and V3R_WALL=3h on
# one node each (about 1,000 CPU-h at most).  The module's build directory is shared, so the two runs are sequential.
set -uo pipefail
SB_PART="${SB_PART:---account=ccq --partition=ccq}"
cd "${PACKAGE_DIR:?}"
for v in $(env | grep -o '^SLURM_[A-Z0-9_]*'); do unset "$v"; done
OUT="${POSTE_OUT:?}"; log() { echo "$(date -Is) $*" | tee -a "$OUT/pipeline.log"; }
SHR="${SHOULDER_ROOT:-$HOME/Documents/QuantumPhysics/ClusterScripts/nofourmubs_shoulder_v2_2026-10-02}"
source "$HOME/shoulder_v2_work/common.sh"
[ -s "$OUT/open_after_postE.txt" ] || { log "v3: no open rows"; exit 0; }
$PY -B postE.py v3-prep "$OUT" > "$OUT/v3_prep.json" 2>&1 || { log "v3-prep FAILED"; exit 1; }
log "v3-prep: $(cat "$OUT/v3_prep.json")"
V="ProvenResults/Patch2442Region_v3/verify.py"
run() {  # NAME INPUT CPU WALL_HOURS
  echo "cd $SHR && module load gcc/13.3.0 && export CXX=g++ OPENBLAS_NUM_THREADS=1 && timeout $(( $4 * 3600 - 900 )) $PY -B $V --boxes $OUT/v3/$2 --output $OUT/v3/$1.jsonl.gz --jobs 120 --cpu-per-box $3 > $OUT/v3/$1.log 2>&1; echo $1 exit \$? >> $OUT/pipeline.log"
}
J1=$(sbatch --parsable $SB_PART --nodes=1 --exclusive --mem=0 --constraint='rome&rocky9' --time=${V3_WALL:-5}:00:00 \
  --job-name=nofour-postEv3 --output="$OUT/v3/fast.out" --wrap "$(run fast children.jsonl.gz 0.3 ${V3_WALL:-5})")
J2=$(sbatch --parsable --dependency=afterany:$J1 $SB_PART --nodes=1 --exclusive --mem=0 --constraint='rome&rocky9' \
  --time=${V3R_WALL:-3}:00:00 --job-name=nofour-postEv3r --output="$OUT/v3/retry.out" \
  --wrap "cd $PWD && $PY -B postE.py v3-retry $OUT >> $OUT/pipeline.log 2>&1; $(run wide retry.jsonl.gz 3 ${V3R_WALL:-3})")
log "v3: fast job $J1, 3 s retry job $J2"
