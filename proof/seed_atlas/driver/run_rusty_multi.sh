#!/bin/bash
# Build the seed atlas on several ccq nodes: the master (driver.py --dist-port) on the first node, distworker.py on
# every node.  Resumable from run/atlas_state.pkl.  NODES defaults to 20 (per-user cap 3,840 CPUs on ccq).
#SBATCH -J seedatlas
#SBATCH -p ccq
#SBATCH --exclusive
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=128
#SBATCH --time=12:00:00
#SBATCH -o /mnt/ceph/users/jtindall/seed_atlas_build/logs/driver_%j.out
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
BUILD=/mnt/ceph/users/jtindall/seed_atlas_build
PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python
RUN=${RUN:-$BUILD/run2}
PORT=${PORT:-47613}
KEY=seedatlas-$SLURM_JOB_ID
cd $BUILD
MASTER=$(hostname)
NW=$(( SLURM_JOB_NUM_NODES * 124 ))
$PY proof/seed_atlas/driver/driver.py $RUN --workers $NW --dist-port $PORT --dist-key $KEY \
    --hours ${HOURS:-11.5} ${EXTRA:-} &
MPID=$!
sleep 20
srun --ntasks-per-node=1 --cpus-per-task=128 $PY proof/seed_atlas/driver/distworker.py $MASTER $PORT $KEY 124 &
wait $MPID
scancel --signal=TERM $SLURM_JOB_ID.0 2>/dev/null
