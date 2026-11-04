"""Import the frozen native certifier without modifying its source files."""
import os
from pathlib import Path
import sys

for variable in ('OPENBLAS_NUM_THREADS', 'MKL_NUM_THREADS',
                 'VECLIB_MAXIMUM_THREADS', 'OMP_NUM_THREADS'):
    os.environ[variable] = '1'

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
NATIVE = HERE.parent / 'family_neighbourhoods'
sys.path.insert(0, str(NATIVE))

import run as native_run
import native_columns as C
import native_cover as NC
import moving_symmetry as MS
import edge_wholeball as EW
import edgecert as EC

FROZEN_NATIVE_BINDING = 'aaab342ca5aca367c5ae9c13500d7dfcf3a6fe13233cfdda1f8c7fec6bf7ecc7'


def verify_frozen_native():
    value = native_run.binding(native_run.DEFAULT_ATLAS)
    if value['id'] != FROZEN_NATIVE_BINDING:
        raise ArithmeticError('frozen native acceptance sources changed')
    return value
