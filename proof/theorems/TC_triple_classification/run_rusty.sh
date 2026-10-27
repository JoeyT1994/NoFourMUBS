#!/bin/bash
# Submit from the dedicated triples_tc return directory, after copying this package.
#SBATCH --job-name=tc-local-replay
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4G
#SBATCH --time=00:10:00
#SBATCH --output=results/rusty-%j.log
set -euo pipefail
cd "${SLURM_SUBMIT_DIR:?submit from the TC package directory}"
TC_PYTHON=${TC_PYTHON:-/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python}
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
"$TC_PYTHON" replay.py --output results/rusty_local_receipt.json
"$TC_PYTHON" tao.py --output results/rusty_tao_receipt.json
"$TC_PYTHON" -m unittest discover -s . -p 'test_tc.py' -v
