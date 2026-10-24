#!/bin/bash
# Seed kernel run, Phase 3: SeedA/Final.lean and `#print axioms no_four_mubs_seed_kernel`, from the chunk tarballs and
# the record side ($ARCH/records.tar: SeedA/Records and its imports), all unpacked on local disk only.  The final
# process reads ~10^5 oleans: the nommap shim (`nommap_olean.c`, as for the old atlas) avoids vm.max_map_count.
#   sbatch --export=ALL,NB=12000 --output=/mnt/ceph/users/$USER/nofour_seedk/logs/final_%j.out kernel_atlas/generators/run_seed_final.sh
#SBATCH --job-name=nofour-seedk-final
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=03:00:00
set -uo pipefail
export ELAN_HOME=${ELAN_HOME:-/mnt/ceph/users/$USER/elan}
export TMPDIR=/tmp
export PATH=$ELAN_HOME/bin:$PATH
VENV=${VENV:-/mnt/ceph/users/$USER/venvs/nofourmubs}
ARCH=${ARCH:-/mnt/ceph/users/$USER/nofour_seedk}
source kernel_atlas/generators/rusty_stage.sh
export STAGE_TAR=${SEED_STAGE_TAR:-/mnt/ceph/users/$USER/nofour_seed_stage.tar}
: "${NB:?set NB}"
stage_in
for t in "$ARCH"/chunks/Chunk*.tar "$ARCH"/records.tar; do tar xf "$t" -C lean/.lake/build/lib/lean; done
tar xzf "$ARCH/records_src.tar.gz" -C kernel_atlas/lean 2>/dev/null || true
"$VENV/bin/python" kernel_atlas/generators/seed_assembly.py --nb "$NB" --final
gcc -shared -fPIC -O2 -o /tmp/nommap_$SLURM_JOB_ID.so kernel_atlas/generators/nommap_olean.c -ldl
cd lean
LD_PRELOAD=/tmp/nommap_$SLURM_JOB_ID.so /usr/bin/time -v lake env lean -R ../kernel_atlas/lean \
    -o .lake/build/lib/lean/KernelAtlas/SeedA/Final.olean ../kernel_atlas/lean/KernelAtlas/SeedA/Final.lean \
    > "$ARCH/logs/final_$SLURM_JOB_ID.log" 2>&1 && echo "Final compiled"
printf 'import KernelAtlas.SeedA.Final\n#print axioms NoFourMUBs.KernelAtlas.SeedA.no_four_mubs_seed_kernel\n' > /tmp/axf_$SLURM_JOB_ID.lean
LD_PRELOAD=/tmp/nommap_$SLURM_JOB_ID.so lake env lean /tmp/axf_$SLURM_JOB_ID.lean | tee "$ARCH/final_axioms.txt"
cp .lake/build/lib/lean/KernelAtlas/SeedA/Final.olean "$ARCH/" 2>/dev/null
cd ..
stage_clean
