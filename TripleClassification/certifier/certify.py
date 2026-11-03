#!/usr/bin/env python3
"""Certificates of the classification of MUB triples in C^6, one ball at a time.

  python3 certify.py close BALL OUT         search for a certificate of a seed ball (atlas index) or of any ball (record file)
  python3 certify.py verify CERT            check one certificate from its files alone: CLOSED (exit 0) or the refused nodes
  python3 certify.py verify-all MANIFEST    every ball listed in a manifest, then the atlas summary
"""
import os, sys
for v in ('OPENBLAS_NUM_THREADS', 'MKL_NUM_THREADS', 'OMP_NUM_THREADS', 'VECLIB_MAXIMUM_THREADS'):
    os.environ.setdefault(v, '1')        # parallel over workers, not BLAS threads (set before numpy is imported)
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from certifier.__main__ import main

if __name__ == '__main__': sys.exit(main())
