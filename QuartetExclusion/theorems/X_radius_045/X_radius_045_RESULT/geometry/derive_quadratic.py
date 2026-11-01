if not __debug__:
    raise SystemExit("Verification requires assertions; do not use python -O.")

from fractions import Fraction as F
from itertools import combinations,product
from pathlib import Path
import json

def tr(A):return list(map(list,zip(*A)))
def mm(A,B):
 C=tr(B);return [[sum(x*y for x,y in zip(row,col)) for col in C] for row in A]
def mv(A,v):return [sum(x*y for x,y in zip(row,v)) for row in A]
def solve(A,b):
 M=[list(map(F,row))+[F(c)] for row,c in zip(A,b)];n=len(M)
 for k in range(n):
  p=next(j for j in range(k,n) if M[j][k]);M[k],M[p]=M[p],M[k]
  z=M[k][k];M[k]=[x/z for x in M[k]]
  for j in range(n):
   if j!=k:
    z=M[j][k];M[j]=[x-z*y for x,y in zip(M[j],M[k])]
 return [row[-1] for row in M]
co=[F(x,2) for x in (2,1,-1,-2,-1,1)]
si=[F(x,2) for x in (0,1,1,0,-1,-1)] # actual sine / sqrt3
pairs=list(combinations(range(6),2))
A=[[F(0)]*36 for _ in range(36)]
for i,k in pairs:
 for j in range(6):
  for l in range(6):
   v=2*co[((i-k)*(j-l))%6]
   for r,sig in [(i,1),(k,-1)]:
    for s,tau in [(i,1),(k,-1)]:A[6*r+j][6*s+l]+=sig*tau*v
coeff=solve([[F(t)**d for d in range(4)] for t in (0,6,18,24)],[0,F(1,3),F(1,9),F(1,12)])
Ap=[[[F(int(i==j)) for j in range(36)] for i in range(36)],A]
for d in range(2,4):Ap.append(mm(Ap[-1],A))
GP=[[sum(coeff[d]*Ap[d][i][j] for d in range(4)) for j in range(36)] for i in range(36)]
V=[]
for k in range(4):
 f=[0,int(k==0),int(k==1)];g=[0,int(k==2),int(k==3)]
 raw=[[int(j%2)*f[i%3]+int(i%2)*g[j%3] for i in range(6)] for j in range(6)]
 rr=[sum(row) for row in raw];cc=[sum(raw[j][i] for j in range(6)) for i in range(6)];tt=sum(rr)
 V.append([F(raw[j][i])-F(rr[j],6)-F(cc[i],6)+F(tt,36) for j in range(6) for i in range(6)])
G=mm(V,tr(V))
# Q(u,v)=-1/2 Jplus D2O(0)[u,v], represented after dividing sqrt3.
def quadratic(u,v):
 jt=[F(0)]*36
 for i,k in pairs:
  hr=hi=F(0)
  for j in range(6):
   z=(u[6*i+j]-u[6*k+j])*(v[6*i+j]-v[6*k+j])
   hr-=co[((i-k)*j)%6]*z
   hi-=si[((i-k)*j)%6]*z
  for l in range(6):
   z=-si[((i-k)*l)%6]*hr+co[((i-k)*l)%6]*hi
   jt[6*i+l]+=z;jt[6*k+l]-=z
 return [-x/2 for x in mv(GP,jt)]
Q=[[quadratic(V[a],V[b]) for b in range(4)] for a in range(4)]
assert all(x==0 for a,b in product(range(2),repeat=2) for x in Q[a][b])
assert all(x==0 for a,b in product(range(2,4),repeat=2) for x in Q[a][b])
# Polynomial of ||Q(Vz,Vz)||²; all coefficients are rational.
poly={}
for a,b,c,d in product(range(4),repeat=4):
 val=3*sum(x*y for x,y in zip(Q[a][b],Q[c][d]))
 key=tuple(sum(x==j for x in (a,b,c,d)) for j in range(4))
 poly[key]=poly.get(key,F(0))+val
poly={k:v for k,v in poly.items() if v}
prodpoly={}
for a,b in product(range(2),repeat=2):
 for c,d in product(range(2,4),repeat=2):
  key=tuple(sum(x==j for x in (a,b,c,d)) for j in range(4))
  prodpoly[key]=prodpoly.get(key,F(0))+G[a][b]*G[c][d]
ratios=set(poly[k]/v for k,v in prodpoly.items())
assert set(poly)==set(prodpoly) and ratios=={F(1,3)}
if __name__=='__main__':
 print('G',G)
 print('Gplus polynomial in A',coeff)
 print('Qnorm polynomial',{str(k):str(v) for k,v in sorted(poly.items())})
 print('product ratios',ratios)
 for a,b in ((0,2),(0,3),(1,2),(1,3)):
  print('Q',a,b,[str(x) for x in Q[a][b]])
 Path(__file__).with_name('quadratic_data.json').write_text(json.dumps({'gram':[[str(x) for x in row] for row in G],'Gplus_polynomial':[str(x) for x in coeff],'tensor_Q_div_sqrt3':[[[str(x) for x in col] for col in row] for row in Q],'Qnorm_polynomial':{','.join(map(str,k)):str(v) for k,v in poly.items()},'ratios':[str(v) for v in ratios]},indent=2))
