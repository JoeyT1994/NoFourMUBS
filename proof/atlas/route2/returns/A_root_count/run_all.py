#!/usr/bin/env python3
"""Replay all returned exact certificates. No network or original ZIP is needed."""
import os,time
os.environ.setdefault('OPENBLAS_NUM_THREADS','1')
os.environ.setdefault('OMP_NUM_THREADS','1')
from exact_checks import main as exact_checks
from torus_certificate import run as torus
from physical_witness import run as physical

def main():
    start=time.perf_counter()
    exact_checks()
    for idx in [100,2471,5305]:
        torus(idx)  # includes a fresh full 252-root certificate replay
        physical(idx)
    print(f'PASS: all exact algebra, root, torus, clique, and conditional matched-enclosure checks ({time.perf_counter()-start:.3f}s)')
    print('The matched Hadamard property is an explicitly stated upstream mathematical input, not re-proved by this checker.')
if __name__=='__main__':main()
