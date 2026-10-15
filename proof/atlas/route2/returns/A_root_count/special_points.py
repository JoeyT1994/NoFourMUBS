#!/usr/bin/env python3
"""NUMERICAL ONLY cross-checks on Fourier-family and Tao matrices.
Uses the supplied toolkit when available. These random-start counts are
lower bounds on the number found, never completeness certificates.
"""
import os
os.environ.setdefault('OPENBLAS_NUM_THREADS','1')
from pathlib import Path
import sys,time,json,itertools
import numpy as np
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE/'input_toolkit'))
from hadamards import fourier,tao
from unbiased import torus_solutions

def main():
 results=[];arrays={}
 for name,H in [('Fourier F6',fourier(0.,0.)),('Fourier family (0.23,0.41)',fourier(.23,.41)),('Tao',tao())]:
  t=time.perf_counter();X=torus_solutions(H,starts=2000,seed=20261015)
  mins={}
  for k in [2,3]:
   vals=[abs(np.linalg.det(H[np.ix_(I,J)])) for I in itertools.combinations(range(6),k) for J in itertools.combinations(range(6),k)]
   mins[str(k)]={'min_abs':float(min(vals)),'below_1e-9':int(sum(v<1e-9 for v in vals))}
  arrays['H_'+str(len(results))]=H;arrays['X_'+str(len(results))]=X
  out={'name':name,'status':'NUMERICAL ONLY; random-start counts are not completeness certificates','torus_roots_found':len(X),'starts':2000,'seconds':time.perf_counter()-t,'minor_diagnostics':mins}
  print(json.dumps(out,indent=2),flush=True);results.append(out)
 np.savez(HERE/'special_torus_candidates.npz',**arrays)
 (HERE/'special_points.json').write_text(json.dumps(results,indent=2)+'\n')
if __name__=='__main__':main()
