#!/usr/bin/env python3
"""verify-all in audit mode: every floating-point exception raised, no warning suppressed.

  python3 tools/fp_audit.py MANIFEST [--results R] [--shard I/N] [--workers W]

The ordinary entry point (`certify.py`) silences NumPy's RuntimeWarnings, because some BLAS builds (Apple
Accelerate among them) raise spurious floating-point flags inside matrix products. In this mode, any overflow,
divide-by-zero or invalid operation instead raises, and the node that raised it fails, so the ball is reported OPEN.
A CLOSED verdict here therefore shows that no floating-point exception occurred anywhere in that certificate's
check. Use a BLAS without spurious flags (OpenBLAS on Linux): on Accelerate this mode refuses everything.
"""
import argparse, json, os, sys, warnings
for v in ('OPENBLAS_NUM_THREADS', 'MKL_NUM_THREADS', 'OMP_NUM_THREADS', 'VECLIB_MAXIMUM_THREADS'):
    os.environ.setdefault(v, '1')
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
import numpy as np
np.seterr(all='raise')
warnings.simplefilter('error', RuntimeWarning)
from certifier.verify import verify_all

if __name__ == '__main__':
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('manifest'); p.add_argument('--results'); p.add_argument('--shard', default='0/1')
    p.add_argument('--workers', type=int, default=8)
    a = p.parse_args()
    blas = np.show_config(mode='dicts')['Build Dependencies']['blas']
    print(json.dumps(dict(numpy=np.__version__, blas=blas.get('name'), blas_version=blas.get('version'), mode='raise')))
    i, n = map(int, a.shard.split('/'))
    s = verify_all(a.manifest, a.results, (i, n), a.workers)
    print(json.dumps(s, indent=1))
    sys.exit(0 if s['all_closed'] else 1)
