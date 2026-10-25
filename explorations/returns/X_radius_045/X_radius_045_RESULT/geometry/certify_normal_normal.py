if not __debug__:
    raise SystemExit("Verification requires assertions; do not use python -O.")

"""Exact symmetric quadratic normal-normal tensor bound."""
from fractions import Fraction as F
from pathlib import Path
from math import lcm
import importlib.util,json,time
spec=importlib.util.spec_from_file_location('cubic',Path(__file__).with_name('derive_cubic.py'));m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
e=m.e;start=time.time()
N=e.mm(e.GP,[[x/2 for x in row] for row in e.A]);assert N==e.tr(N) and e.mm(N,N)==N
cols=e.tr(N);L=[[None]*36 for _ in range(36)]
for a in range(36):
 for b in range(a,36):
  q=m.qs(cols[a],cols[b]);L[a][b]=q;L[b][a]=q
D=lcm(*(x.denominator for row in L for v in row for x in v))
# Rows are (normal first-input frame index, physical output index).
M=[[int(L[a][b][i]*D) for b in range(36)] for a in range(36) for i in range(36)]
MT=e.tr(M);C=[[3*sum(x*y for x,y in zip(a,b)) for b in MT] for a in MT]
den=D*D
# C/den is symmetric PSD; verify all its eigenvalues explicitly lie below19/54.
def factor(a,b):return [[a*x-(b*den if i==j else 0) for j,x in enumerate(row)] for i,row in enumerate(C)]
R=C
for a,b in [(64,17),(54,19),(3456,205),(3456,293),(3456,473)]:R=e.mm(R,factor(a,b))
assert all(x==0 for row in R for x in row)
out={'status':'PASS','symmetric_Q_NN_bilinear_norm_squared_upper':'19/54','safe_rational_norm_upper':'297/500','input_gram_eigenvalues_contained_in':['0','17/64','19/54','205/3456','293/3456','473/3456'],'tensor_coefficient_denominator':D,'gram_denominator':den,'elapsed_seconds_informational':time.time()-start}
assert F(297,500)**2>F(19,54)
Path(__file__).with_name('normal_normal_receipt.json').write_text(json.dumps(out,indent=2));print(json.dumps(out,indent=2))
