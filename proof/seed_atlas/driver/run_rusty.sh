#!/bin/bash
# Build the seed atlas on one rusty node (ccq, 128 cores), from an empty run directory or a resumable one:
#   1. grow the seed balls (driver.py; the X-ball at F6 is the edge ball, so T3 transfers reach it);
#   2. cover the X-ball's sphere (edge_multi.py), adding gap balls (driver.py --gaps) until it closes;
#   3. export the certificate (seed_export.py), then raise each ball's n to its whole-ball C1 bound where Stage C
#      still passes (wholeball_n.py), so that the certifiers' C1 is one centre computation per ball.
# Every step is resumable: rerun to continue.  RUN (default $BUILD/run), X (the X-ball's tangent radius, 0.13).
#SBATCH -J seedatlas
#SBATCH -p ccq
#SBATCH -N 1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=24:00:00
#SBATCH -o /mnt/ceph/users/jtindall/seed_atlas_build/logs/driver_%j.out
set -u
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1 SEED_NO_RECORD=1
BUILD=/mnt/ceph/users/jtindall/seed_atlas_build
cd $BUILD
PY=${PY:-/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python}
D=proof/seed_atlas/driver
RUN=${RUN:-$BUILD/run}
X=${X:-0.13}
W=$(( ${SLURM_CPUS_ON_NODE:-128} - 2 ))

$PY $D/driver.py $RUN --workers $W --hours ${HOURS:-20} --edge --xball $X || exit 1
tail -1 $RUN/driver.log | grep -q "DONE balls" || { echo "growth did not finish"; exit 4; }
for round in 1 2 3 4 5; do
  $PY -u $D/edge_multi.py $RUN --workers $W --xball $X --no-grow --rounds 1; rc=$?
  [ $rc -eq 0 ] && break
  [ $rc -eq 3 ] || exit $rc
  $PY $D/driver.py $RUN --workers $W --hours 3 --edge --xball $X --gaps $RUN/edge_gaps.pkl || exit 1
done
[ $rc -eq 0 ] || { echo "the X-ball sphere did not close"; exit 2; }
$PY $D/seed_export.py $RUN/atlas_state_edge.pkl $RUN/certificate_raw.json.gz --edge || exit 1
$PY $D/wholeball_n.py $RUN/certificate_raw.json.gz $RUN/seed_atlas_certificate.json.gz --workers $W --log $RUN/wholeball_n.jsonl
