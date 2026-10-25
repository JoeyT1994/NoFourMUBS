#!/usr/bin/env python3
"""Fresh exact Fourier tangent and normal bounds. Standard library only."""

if not __debug__:
    raise SystemExit("Verification requires assertions; do not use python -O.")

from fractions import Fraction as F
from itertools import combinations,permutations,product as cartesian_product
from pathlib import Path
import json,time

def mul(A,B):
 cols=list(zip(*B));return [[sum(a*b for a,b in zip(row,col)) for col in cols] for row in A]
def shift(A,c):return [[a-(c if i==j else 0) for j,a in enumerate(row)] for i,row in enumerate(A)]
def det(A):
 n=len(A);return sum(((-1)**sum(p[i]>p[j] for i in range(n) for j in range(i+1,n)))*prod(A[i][p[i]] for i in range(n)) for p in permutations(range(n)))
def prod(v):
 p=1
 for x in v:p*=x
 return p

def run():
 t0=time.time();A=[[0]*36 for _ in range(36)];co=[2,1,-1,-2,-1,1]
 # A=2 J0^T J0, for all 15 complex row-orthogonality sums.
 for i,k in combinations(range(6),2):
  for j in range(6):
   for l in range(6):
    v=co[((i-k)*(j-l))%6]
    for r,sig in [(i,1),(k,-1)]:
     for s,tau in [(i,1),(k,-1)]:A[6*r+j][6*s+l]+=sig*tau*v
 assert A==list(map(list,zip(*A)))
 B=mul(mul(shift(A,6),shift(A,18)),shift(A,24))
 assert all(x==0 for row in mul(A,B) for x in row)
 assert sum(B[i][i] for i in range(36))==-2592*15
 # Hence symmetricAhasroots0,6,18,24; zero eigenspace hasdimension15.
 V=[]
 for k in range(4):
  f=[0,int(k==0),int(k==1)];g=[0,int(k==2),int(k==3)]
  raw=[[int(j%2)*f[i%3]+int(i%2)*g[j%3] for i in range(6)] for j in range(6)]
  rr=[sum(row) for row in raw];cc=[sum(raw[j][i] for j in range(6)) for i in range(6)];tt=sum(rr)
  assert tt%6==0
  vv=[[6*raw[j][i]-rr[j]-cc[i]+tt//6 for i in range(6)] for j in range(6)]
  assert all(sum(row)==0 for row in vv) and all(sum(col)==0 for col in zip(*vv))
  V.append([x for row in vv for x in row])
 G=[[F(sum(a*b for a,b in zip(V[i],V[j])),36) for j in range(4)] for i in range(4)]
 target=[[2,-1,0,0],[-1,2,0,0],[0,0,2,-1],[0,0,-1,2]]
 assert G==target
 assert all(x==0 for row in mul(A,list(map(list,zip(*V)))) for x in row)
 # Gauge space:allrow+columnconstantmatrices,dimension11,alsoannihilated.
 gauges=[]
 for k in range(6):gauges.append([int(i==k) for i in range(6) for j in range(6)])
 for k in range(5):gauges.append([int(j==k) for i in range(6) for j in range(6)])
 assert all(x==0 for row in mul(A,list(map(list,zip(*gauges)))) for x in row)
 # Therefore the horizontal kernel is exactlythe4Dtangent,and normal sigma>=sqrt3.
 # Column operator norm<=1/sqrt3 via G/3-columnGram positive semidefinite.
 for col in range(6):
  C=[[F(sum(V[a][6*j+col]*V[b][6*j+col] for j in range(6)),36) for b in range(4)] for a in range(4)]
  P=[[G[a][b]/3-C[a][b] for b in range(4)] for a in range(4)]
  for n in range(1,5):
   for inds in combinations(range(4),n):assert det([[P[a][b] for b in inds] for a in inds])>=0
 vertices=[]
 for tail in cartesian_product((-1,1),repeat=5):
  d=[F(0)]+list(map(F,tail));mean=sum(d)/6;x=[v-mean for v in d]
  vertices.append((sum(v*v for v in x),sum(abs(v) for v in x),max(abs(v) for v in x)))
 assert max(v[0] for v in vertices)==F(29,6)
 assert max(v[1] for v in vertices)==5
 assert max(v[2] for v in vertices)==F(3,2)
 rho=F(3,20);normal=F(147,8000);column=F(21,200)
 assert normal*normal>=F(2,3)*rho**4
 assert column>normal and 3*(column-normal)**2>=rho*rho
 out={'status':'PASS','normal_singular_value_squared_lower':'3','normal_kernel_dimension':'15',
 'horizontal_tangent_dimension':'4','column_tangent_operator_norm_squared_upper':'1/3',
 'bin_vertex_norm_squared':'29/6','bin_vertex_l1':'5','bin_vertex_linf':'3/2',
 'rho':'3/20','normal_radius_upper':'147/8000','column_radius_upper':'21/200',
 'global_Hessian_bound':'2*sqrt(2), by analytic centered-row-difference proof',
 'elapsed_seconds_informational':time.time()-t0}
 (Path(__file__).resolve().parents[1]/'certificates'/'geometry.json').write_text(json.dumps(out,indent=2));print(json.dumps(out,indent=2))
if __name__=='__main__':run()
