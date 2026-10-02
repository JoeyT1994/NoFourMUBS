#!/usr/bin/env bash
# Assemble the cluster package in DEST (local), ready to rsync to rusty.
#   ./build_bundle.sh DEST
# Only the sources the campaign loads are copied; MANIFEST.sha256 pins them.
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"; NC="$HERE/../.."
DEST="$1"; mkdir -p "$DEST/code/Certification/jlenv_cluster" "$DEST/code/Campaign" "$DEST/tests"
for f in fasttm fastcoeffs single_radical single_radical_tm ctm fasthplus hform fastexcl lsred complete gram domain cover box_capacity cartesian_cover cover_labels cover_accelerated; do
    cp "$NC/Certification/$f.jl" "$DEST/code/Certification/"
done
cp "$NC/Certification/jlenv_cluster/Project.toml" "$NC/Certification/jlenv_cluster/Manifest.toml" "$DEST/code/Certification/jlenv_cluster/"
cp "$NC/Campaign/driver.jl" "$DEST/code/Campaign/"
PR="$NC/../ProvenResults/CornerBounds"; mkdir -p "$DEST/code/CornerBounds/SideTriplePrune" "$DEST/code/CornerBounds/SideColumnPrune"
cp "$PR/SideTriplePrune/triple_prune.py" "$DEST/code/CornerBounds/SideTriplePrune/"
cp "$PR/SideColumnPrune/prune.py" "$DEST/code/CornerBounds/SideColumnPrune/"
cp "$NC/Campaign/jobs_L6.txt" "$DEST/"
cp "$HERE"/{run_task.sh,run_layer.sh,layer_prune.py,run_disbatch.slurm,submit.sh,preflight.sh,make_tasks.py,status.py,audit.py,split_tail.py,after_expand.sh,run_small.slurm,replay_full.jl,status_v2.py,status_fast.py,make_pass2.py,compare_runs.py,post_expand_guarded.sh,README.md} "$DEST/"
cp "$HERE/tests/cells_check.txt" "$DEST/tests/"
(cd "$DEST" && find code jobs_L6.txt run_task.sh run_layer.sh layer_prune.py run_disbatch.slurm submit.sh preflight.sh make_tasks.py status.py audit.py split_tail.py after_expand.sh run_small.slurm tests/cells_check.txt \
    -type f | sort | xargs shasum -a 256 > MANIFEST.sha256)
echo "bundle in $DEST: $(wc -l < "$DEST/MANIFEST.sha256") files"
