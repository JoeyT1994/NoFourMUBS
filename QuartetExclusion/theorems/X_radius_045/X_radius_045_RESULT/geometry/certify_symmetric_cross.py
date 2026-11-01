if not __debug__:
    raise SystemExit("Verification requires assertions; do not use python -O.")

"""Exact tensor bound for the average of row and column normal equations."""
from fractions import Fraction as F
from itertools import product
from math import lcm
from pathlib import Path
import json,time,importlib.util
spec=importlib.util.spec_from_file_location('quadratic',Path(__file__).with_name('derive_quadratic.py'))
e=importlib.util.module_from_spec(spec);spec.loader.exec_module(e)
start=time.time()
V=e.V;GI=[[F(2,3),F(1,3),0,0],[F(1,3),F(2,3),0,0],[0,0,F(2,3),F(1,3)],[0,0,F(1,3),F(2,3)]]
TP=e.mm(e.mm(e.tr(V),GI),V)
P=[[F(int(i==j))-F(1,6) for j in range(6)] for i in range(6)]
HP=[[P[i//6][j//6]*P[i%6][j%6] for j in range(36)] for i in range(36)]
N=[[HP[i][j]-TP[i][j] for j in range(36)] for i in range(36)]
assert e.mm(N,N)==N and e.mm(e.GP,N)==e.GP
assert e.mm(e.GP,[[x/2 for x in row] for row in e.A])==N
# The normal singular value bound follows from this exact spectral polynomial.
def shift(A,c):return [[x-(c if i==j else 0) for j,x in enumerate(row)] for i,row in enumerate(A)]
R=e.A
for c in (6,18,24):R=e.mm(R,shift(e.A,c))
assert all(x==0 for row in R for x in row)
assert all(x==0 for row in e.mm(e.A,e.tr(V)) for x in row)
idx=[6*j+i for i in range(6) for j in range(6)]
def transpose(v):return [v[k] for k in idx]
def qs(u,v):
 a=e.quadratic(u,v);b=transpose(e.quadratic(transpose(u),transpose(v)))
 return [(x+y)/2 for x,y in zip(a,b)]
for a,b in product(range(4),repeat=2):assert qs(V[a],V[b])==e.Q[a][b]
L=[[qs(v,n) for n in e.tr(N)] for v in V]
CC=[[F(0)]*36 for _ in range(36)]
for a,c in product(range(4),repeat=2):
 if not GI[a][c]:continue
 for b,d in product(range(36),repeat=2):
  CC[b][d]+=3*GI[a][c]*sum(x*y for x,y in zip(L[a][b],L[c][d]))
assert CC==e.tr(CC)
den=lcm(*(x.denominator for row in CC for x in row));C=[[int(x*den) for x in row] for row in CC]
def factor(a,b):return [[a*x-(b*den if i==j else 0) for j,x in enumerate(row)] for i,row in enumerate(C)]
R=C
for a,b in [(216,1),(96,1),(864,25),(768,41)]:R=e.mm(R,factor(a,b))
assert all(x==0 for row in R for x in row)
# CC sums output and orthonormal tangent indices. Hence for fixed normal nu,
# the squared Frobenius norm of the tangent-to-output map is nu^T CC nu.
# Its operator norm is no larger, proving the stated bilinear bound.
receipt={'status':'PASS','normal_equation':'average of Jrowplus*Orow and transpose(Jrowplus*Orow(delta^T))','TT_quadratic_unchanged':True,'quadratic_symmetric_TN_norm_squared_upper':'41/768','twice_TN_coefficient_squared_upper':'41/192','cross_gram_eigenvalues_contained_in':['0','1/216','1/96','25/864','41/768'],'cross_gram_denominator':den,'normal_singular_value_lower':'sqrt(3)','elapsed_seconds':time.time()-start}
Path(__file__).with_name('symmetric_cross_receipt.json').write_text(json.dumps(receipt,indent=2))
print(json.dumps(receipt,indent=2))
