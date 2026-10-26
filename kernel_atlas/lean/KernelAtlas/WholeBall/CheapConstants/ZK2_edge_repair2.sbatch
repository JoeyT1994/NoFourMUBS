#!/bin/bash
#SBATCH --job-name=zk2edgerepair2
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=02:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_work/edge_repair2_%j.log
set -euo pipefail
export PYTHONDONTWRITEBYTECODE=1
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
cd /mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_edge_repair_code
exec /mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python -B -u - <<'PY'
from pathlib import Path
import subprocess, sys, os, json
base = Path('/mnt/ceph/users/jtindall/seed_atlas_build/hor')
processes = []
for shard in range(4):
    command = [sys.executable, '-B', '-u', 'kernel_atlas/generators/budget_edge.py',
               '--state', str(base/'run6/zk2_seed_closed_repair2.pkl'),
               '--edges', str(base/'run6/edge_balls.pkl'),
               '--out', str(base/'zk2_work/edge_repair2'),
               '--shard', str(shard), '--shards', '4', '--workers', '8',
               '--reuse', str(base/'zk2_work/edge_repair1'),
               '--reuse-state', str(base/'run6/zk2_seed_closed_repair1.pkl')]
    log = base/'zk2_work'/f"edge_repair2_{os.environ['SLURM_JOB_ID']}_{shard}.log"
    with log.open('x') as stream:
        processes.append((shard, subprocess.Popen(command, stdout=stream, stderr=subprocess.STDOUT)))
results = [(shard, process.wait()) for shard, process in processes]
print(json.dumps(dict(shard_exit_codes=results)), flush=True)
if any(code for _, code in results):
    raise SystemExit(1)
PY
