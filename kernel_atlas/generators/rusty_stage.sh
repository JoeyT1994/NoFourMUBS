# Sourced by the rusty job scripts: run Lean from node-local disk, not from ceph.
#
# /mnt/ceph is a FUSE mount: Lean memory-maps several GB of oleans per process (Mathlib alone ~6 GB), and over FUSE
# these pages are neither cached nor fast, so dozens of Lean processes sit at a few % CPU waiting on I/O (measured:
# ~100 processes at 4% CPU each, 2 GB page cache, 16 min for a trivial module).  stage_in copies the toolchain, the
# repository and its .lake (packages and builds) to $STAGE on the node's local SSD (/tmp, 1.8 TB) and points ELAN_HOME
# and the working directory there; the stage_out_* functions copy build products back to ceph.
# Copying the many small files from FUSE is metadata-bound (~10 MB/s); one tarball is read sequentially.  stage_pack
# (run by setup_lean_rusty.sh after the shared build) writes $STAGE_TAR: the toolchain and lean/.lake; stage_in unpacks
# it when present and copies only the repository's sources file by file.
REPO=${REPO:-/mnt/ceph/users/$USER/NoFourMUBS}
STAGE=${STAGE:-/tmp/nofour-${SLURM_JOB_ID:-$$}-${SLURM_ARRAY_TASK_ID:-0}}
STAGE_TAR=${STAGE_TAR:-/mnt/ceph/users/$USER/nofour_stage.tar}

stage_in() {
  local t0=$(date +%s)
  mkdir -p "$STAGE"
  if [ -f "$STAGE_TAR" ] && [ -z "${STAGE_FRESH:-}" ]; then
    tar xf "$STAGE_TAR" -C "$STAGE"
    if [ -n "${STAGE_SYNC_BUILD:-}" ]; then   # kernel-atlas builds on ceph newer than the tarball (pilot layout)
      rsync -a "$REPO/lean/.lake/build/lib/lean/KernelAtlas/" "$STAGE/repo/lean/.lake/build/lib/lean/KernelAtlas/"
    fi
  else
    rsync -a "$ELAN_HOME/" "$STAGE/elan/"
    mkdir -p "$STAGE/repo/lean"
    rsync -a "$REPO/lean/.lake/" "$STAGE/repo/lean/.lake/"
  fi
  rsync -a --exclude .git --exclude lean/.lake --exclude kernel_atlas/results "$REPO/" "$STAGE/repo/"
  export ELAN_HOME="$STAGE/elan"
  export PATH="$ELAN_HOME/bin:$PATH"
  cd "$STAGE/repo"
  echo "staged $REPO into $STAGE in $(( $(date +%s) - t0 )) s ($(du -sh "$STAGE" | cut -f1))"
}

# the whole build tree (shared modules, table, Records) back to ceph
stage_out_build() {
  local t0=$(date +%s)
  rsync -a "$STAGE/repo/lean/.lake/build/" "$REPO/lean/.lake/build/"
  echo "copied the build back in $(( $(date +%s) - t0 )) s"
}

# generated sources (Records, chunks) back to ceph
stage_out_sources() {
  rsync -a "$STAGE/repo/kernel_atlas/lean/KernelAtlas/" "$REPO/kernel_atlas/lean/KernelAtlas/"
}

# the staged toolchain and lean/.lake as one tarball on ceph, for the next jobs' stage_in (default: $STAGE_TAR)
stage_pack() {
  local out=${1:-$STAGE_TAR} t0=$(date +%s)
  tar cf "$out.tmp" -C "$STAGE" elan repo/lean/.lake && mv "$out.tmp" "$out"
  echo "packed $out ($(du -sh "$out" | cut -f1)) in $(( $(date +%s) - t0 )) s"
}

stage_clean() {
  cd /tmp && rm -rf "$STAGE"
}
