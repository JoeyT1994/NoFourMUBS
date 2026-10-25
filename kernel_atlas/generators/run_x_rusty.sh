#!/bin/bash
# Return X kernel run (lean/NoFourMUBs/X/README.md): build the X bridge and compile the generated Stage C modules of
# KernelAtlas/X/<SUB> (x_stagec.py) on one node, then the hypothesis-free theorems and their axioms.
#   rsync this checkout (no .git, no lean/.lake) to $REPO, then
#   sbatch --export=ALL,SUB=SC --output=/mnt/ceph/users/$USER/nofour_x/logs/x_%j.out kernel_atlas/generators/run_x_rusty.sh
# The toolchain and the Mathlib/NoFourMUBs builds come from the shared copy $SHARED (same toolchain and manifest);
# everything runs from node-local disk (rusty_stage.sh explains why).  Logs, timings and the build go to $OUT.
#SBATCH --job-name=nofour-x
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=08:00:00
set -uo pipefail
export ELAN_HOME=${ELAN_HOME:-/mnt/ceph/users/$USER/elan}
export TMPDIR=/tmp
VENV=${VENV:-/mnt/ceph/users/$USER/venvs/nofourmubs}
SHARED=${SHARED:-/mnt/ceph/users/$USER/NoFourMUBS}
REPO=${REPO:-/mnt/ceph/users/$USER/xk_repo}
OUT=${OUT:-/mnt/ceph/users/$USER/nofour_x/${SUB:-SC}_${SLURM_JOB_ID:-$$}}
SUB=${SUB:-SC}
JOBS=${JOBS:-24}
STAGE=/tmp/nofour-x-${SLURM_JOB_ID:-$$}
mkdir -p "$OUT" "$STAGE/repo/lean"
t0=$(date +%s)
rsync -a "$ELAN_HOME/" "$STAGE/elan/"
rsync -a "$SHARED/lean/.lake/" "$STAGE/repo/lean/.lake/"
rsync -a --exclude .git --exclude lean/.lake --exclude kernel_atlas/results "$REPO/" "$STAGE/repo/"
export ELAN_HOME="$STAGE/elan" PATH="$STAGE/elan/bin:$PATH"
cd "$STAGE/repo"
echo "staged in $(( $(date +%s) - t0 )) s on $(hostname)"
# the bridge and the analytic part (rebuilds what changed since the shared build)
( cd lean && /usr/bin/time -v lake build KernelAtlas.X.StageC KernelAtlas.StageCK2B KernelAtlas.Tangent2L KernelAtlas.Joint2S KernelAtlas.E0K KernelAtlas.Tables KernelAtlas.Pack ) > "$OUT/bridge.log" 2>&1 || { tail -50 "$OUT/bridge.log"; exit 1; }
echo "bridge built at $(( $(date +%s) - t0 )) s"
"$VENV/bin/python" -u kernel_atlas/generators/x_stagec.py "kernel_atlas/lean/KernelAtlas/X/$SUB" --compile \
    --module "NoFourMUBs.KernelAtlas.X.$SUB" --jobs "$JOBS" > "$OUT/compile.json" 2> "$OUT/compile.err"
rc=$?
cp -r "kernel_atlas/lean/KernelAtlas/X/$SUB/.logs" "$OUT/logs_modules" 2>/dev/null
echo "compile rc $rc at $(( $(date +%s) - t0 )) s"; cat "$OUT/compile.json"
# the hypothesis-free theorems (with `lean -o`: lake has no traces for the generated modules) and their axioms
if [ "${FINAL:-}" != "" ]; then
  ( cd lean && for m in $FINAL; do
      f=${m//.//}; mkdir -p "$(dirname .lake/build/lib/lean/$f)"
      /usr/bin/time -v lake env lean -R . -o ".lake/build/lib/lean/$f.olean" "$f.lean" || exit 1
    done && lake env lean NoFourMUBs/X/Axioms.lean ) > "$OUT/final.log" 2>&1
  echo "final rc $? at $(( $(date +%s) - t0 )) s"; grep -A3 "depends on axioms" "$OUT/final.log"
fi
mkdir -p "$OUT/build"
rsync -a lean/.lake/build/lib/lean/KernelAtlas/X "$OUT/build/" 2>/dev/null
rsync -a lean/.lake/build/lib/lean/NoFourMUBs/X "$OUT/build/NoFourMUBsX" 2>/dev/null
rm -rf "$STAGE"
echo "done at $(( $(date +%s) - t0 )) s"
