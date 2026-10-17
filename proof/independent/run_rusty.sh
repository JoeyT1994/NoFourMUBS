#!/bin/bash
#SBATCH -J nofour_indep_v4
#SBATCH -p gen
#SBATCH -N 1
#SBATCH --exclusive
#SBATCH -t 1-00:00:00
#SBATCH -o out/indep_%j.log
# Fresh, complete independent check (Steps 3, 4 and F6 nonemptiness) of the atlas certificate. See README "Results".
set -u
cd "$SLURM_SUBMIT_DIR"
NT=${SLURM_CPUS_ON_NODE:-$(nproc)}
echo "=== host $(hostname)  threads $NT  $(date)"
sha256sum atlas_certificate.json.gz
rm -rf out/fresh && mkdir -p out/fresh
julia --startup-file=no -t $NT --project=jlenv check.jl atlas_certificate.json.gz out/fresh
echo "=== check exit $? $(date)"
julia --startup-file=no --project=jlenv tests/sanity.jl out/fresh/certificate.txt
echo "=== sanity exit $? $(date)"
grep -E "SUMMARY|VERDICT" out/fresh/RESULT.txt
