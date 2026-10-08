#!/usr/bin/env python3
"""Run every delivered exact/interval verifier; never run a float search.

Usage: python3 VERIFY_ALL.py
Requires Python >=3.10, sympy, and python-flint. Individual Fourier,
gauge-rational, signed-invariant, and moment verifiers are standard-library only.
"""
import os
from pathlib import Path
import subprocess
import sys

ROOT = Path(__file__).resolve().parent
VERIFIERS = [
    'verification/verify_geometry.py',
    'verification/verify_signed_bounds.py',
    'fourier_sector/verify_fourier.py',
    'fourier_sector/verify_ambient_gradient.py',
    'mc1/verify_global_moments.py',
    'mc1/verify_hadamard_corner.py',
    'fourier_sector/verify_robust_corner.py',
    'descent/verify_chart_denominators.py',
    'verification/verify_intervals.py',
]


def main():
    if not __debug__:
        raise RuntimeError('Run without -O: exact proof assertions must remain enabled.')
    env = dict(os.environ)
    env['PYTHONDONTWRITEBYTECODE'] = '1'
    env['PYTHONOPTIMIZE'] = '0'
    for relative in VERIFIERS:
        path = ROOT/relative
        if not path.is_file():
            raise FileNotFoundError(path)
        print('\nVerifying: '+relative, flush=True)
        subprocess.run([sys.executable, '-B', str(path)], cwd=path.parent,
                       env=env, check=True)
    print('\nALL DELIVERED EXACT AND INTERVAL VERIFIERS PASS', flush=True)
    print('This verifies the stated partial results, not unrestricted global confinement.',
          flush=True)


if __name__ == '__main__':
    main()
