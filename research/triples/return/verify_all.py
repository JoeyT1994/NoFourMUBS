#!/usr/bin/env python3
"""Replay every supplied exact verifier, exiting nonzero on any failure."""
from pathlib import Path
import subprocess
import sys

HERE=Path(__file__).resolve().parent
SCRIPTS=[
    'verify_dita.py',
    'verify_dita_corners.py',
    'verify_zauner_family.py',
    'verify_fourier_completion.py',
    'verify_fourier_direct.py',
    'verify_fourier_corner_count.py',
    'verify_omega.py',
    'verify_positive_vertical.py',
]


def main():
    for name in SCRIPTS:
        path=HERE/name
        if not path.is_file():
            raise FileNotFoundError('Required verifier is missing: '+name)
        print('\n=== '+name+' ===',flush=True)
        subprocess.run([sys.executable,str(path)],cwd=HERE,check=True)
    print('\nALL EXACT VERIFIERS PASSED',flush=True)


if __name__=='__main__':
    main()
