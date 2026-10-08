#!/usr/bin/env python3
"""Replay all exact certificates in this return bundle.

Nonzero exit means failure. No floating-point quantity participates in any
mathematical acceptance decision. This does not validate any absent Record.
"""
from pathlib import Path
import subprocess
import sys
import time

if not __debug__:
    raise SystemExit('Run without Python -O; all certificate checks must remain active.')


def main():
    root=Path(__file__).resolve().parent
    tasks=[
        ('Exact maximum, Hessian, orbit and neighborhoods',
         ['exact_maxima.py','--fourier','data/rfourier.json']),
        ('Global reduction to two deltoid boundaries',
         ['verify_deltoid_reduction.py']),
        ('Exhaustive double-boundary classification',
         ['verify_two_boundary.py']),
        ('Sheet action, branch algebra, and Fourier degeneration',
         ['verify_sheet_branches.py']),
        ('Uniform affine-Fourier and exact Tao conditioning',
         ['verify_conditioning.py']),
    ]
    started=time.perf_counter()
    for title,args in tasks:
        print('\n=== '+title+' ===',flush=True)
        subprocess.run([sys.executable,*args],cwd=root,check=True)
    print('\nALL EXACT CERTIFICATES PASS.',flush=True)
    print('The global positive-maximum census is proved by the accompanying argument.')
    print('No finite family of Records, boundary cover, or local quartet certificate')
    print('is supplied or certified by this replay.')
    print('Elapsed seconds (diagnostic only): %.3f'%(time.perf_counter()-started))


if __name__=='__main__':
    main()
