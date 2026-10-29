"""Import the frozen native certifier without modifying its source files."""
from pathlib import Path
import os
import sys

HERE = Path(__file__).resolve().parent
TC = HERE.parent
ROOT = HERE.parents[3]
NATIVE = TC / 'family_neighbourhoods'
for variable in ('OPENBLAS_NUM_THREADS', 'MKL_NUM_THREADS',
                 'VECLIB_MAXIMUM_THREADS', 'OMP_NUM_THREADS'):
    os.environ.setdefault(variable, '1')
sys.path[:0] = [str(NATIVE)]
import native_columns as C
import moving_symmetry as MS
import native_cover as NC
import run as native_run

