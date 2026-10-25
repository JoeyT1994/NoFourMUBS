#!/usr/bin/env python3
"""Input-free exact cubic-filter tensor and remainder-constant bridge.
Standard library only. The natural predictors are regenerated from Fourier
orthogonality, then transformed exactly into the cover's orthonormal frame.
"""
if not __debug__:raise SystemExit('Assertions must be enabled; do not use -O.')
from math import factorial
from types import SimpleNamespace
import hashlib,time
started=time.time()
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

e=SimpleNamespace(V=V,G=G,GP=GP,A=A,Q=Q,co=co,si=si,pairs=pairs,mm=mm,mv=mv,quadratic=quadratic)
idx=[6*j+i for i in range(6) for j in range(6)]
def tp(v):return [v[k] for k in idx]
def qs(u,v):return [(x+y)/2 for x,y in zip(e.quadratic(u,v),tp(e.quadratic(tp(u),tp(v))))]
def cubic(u,v,w):
 jt=[F(0)]*36
 for i,k in e.pairs:
  hr=hi=F(0)
  for j in range(6):
   z=(u[6*i+j]-u[6*k+j])*(v[6*i+j]-v[6*k+j])*(w[6*i+j]-w[6*k+j])
   hr+=e.si[((i-k)*j)%6]*z;hi-=e.co[((i-k)*j)%6]*z
  for l in range(6):
   z=-3*e.si[((i-k)*l)%6]*hr+e.co[((i-k)*l)%6]*hi
   jt[6*i+l]+=z;jt[6*k+l]-=z
 return [-x/6 for x in e.mv(e.GP,jt)]
def cs(u,v,w):return [(x+y)/2 for x,y in zip(cubic(u,v,w),tp(cubic(tp(u),tp(v),tp(w))))]
def key(inds):return tuple(sum(a==j for a in inds) for j in range(4))
def add_vec(d,k,v):
 if k not in d:d[k]=[F(0)]*36
 d[k]=[a+b for a,b in zip(d[k],v)]
def addpoly(a,b):
 out=dict(a)
 for k,v in b.items():out[k]=out.get(k,F(0))+v
 return {k:v for k,v in out.items() if v}
def mulpoly(a,b):
 out={}
 for k,v in a.items():
  for l,w in b.items():
   m=tuple(x+y for x,y in zip(k,l));out[m]=out.get(m,F(0))+v*w
 return {k:v for k,v in out.items() if v}
def dotpoly(a,b):
 out={}
 for k,v in a.items():
  for l,w in b.items():
   m=tuple(x+y for x,y in zip(k,l));out[m]=out.get(m,F(0))+sum(x*y for x,y in zip(v,w))
 return {k:v for k,v in out.items() if v}
Qp={};Cp={};Pp={}
for a,b in product(range(4),repeat=2):add_vec(Qp,key((a,b)),e.Q[a][b])
for a,b,c in product(range(4),repeat=3):
 cubic_value=cs(e.V[a],e.V[b],e.V[c]);cross=[6*x for x in qs(e.V[a],e.Q[b][c])]
 add_vec(Cp,key((a,b,c)),cubic_value)
 add_vec(Pp,key((a,b,c)),[x+y for x,y in zip(cubic_value,cross)])
Qp={k:v for k,v in Qp.items() if any(v)};Cp={k:v for k,v in Cp.items() if any(v)};Pp={k:v for k,v in Pp.items() if any(v)}
qp=dotpoly(Qp,Pp);np=dotpoly(Pp,Pp)
na={};nb={}
for a,b in product(range(2),repeat=2):na[key((a,b))]=na.get(key((a,b)),F(0))+e.G[a][b]
for a,b in product(range(2,4),repeat=2):nb[key((a,b))]=nb.get(key((a,b)),F(0))+e.G[a][b]
prod=mulpoly(mulpoly(na,nb),addpoly(na,nb))
assert not qp
assert set(np)==set(prod) and all(np[k]==v/F(72) for k,v in prod.items())

# Exact field Q(sqrt2,sqrt3), basis (1,sqrt2,sqrt3,sqrt6).
FZ=(F(0),)*4;FO=(F(1),F(0),F(0),F(0));SQ3=(F(0),F(0),F(1),F(0))
def fa(a,b):return tuple(x+y for x,y in zip(a,b))
def fs(a,c):return tuple(x*c for x in a)
def fm(a,b):
 out=[F(0)]*4
 for i,x in enumerate(a):
  if not x:continue
  for j,y in enumerate(b):
   if not y:continue
   factor=(2 if i&j&1 else 1)*(3 if i&j&2 else 1)
   out[i^j]+=factor*x*y
 return tuple(out)
def fsum(values):
 out=FZ
 for v in values:out=fa(out,v)
 return out
RC=[[FZ for _ in range(4)] for _ in range(4)]
for a in (0,2):
 RC[a][a]=(F(0),F(1,2),F(0),F(0))
 RC[a][a+1]=(F(0),F(0),F(0),F(1,6))
 RC[a+1][a+1]=(F(0),F(0),F(0),F(1,3))
TF=[[fsum(fs(RC[a][k],V[a][i]) for a in range(4)) for k in range(4)] for i in range(36)]
for k in range(4):
 for l in range(4):assert fsum(fm(TF[i][k],TF[i][l]) for i in range(36))==(FO if k==l else FZ)
 for row in range(6):assert fsum(TF[6*row+j][k] for j in range(6))==FZ
 for col in range(6):assert fsum(TF[6*j+col][k] for j in range(6))==FZ

zero_key=(0,0,0,0)
def field_poly_mul(a,b):
 out={}
 for k,v in a.items():
  for l,w in b.items():
   kk=tuple(x+y for x,y in zip(k,l));out[kk]=fa(out.get(kk,FZ),fm(v,w))
 return {k:v for k,v in out.items() if v!=FZ}
def transform_polynomial(poly,coefficient_factor):
 out={}
 for powers,values in poly.items():
  sub={zero_key:FO}
  for a,count in enumerate(powers):
   lin={key((k,)):RC[a][k] for k in range(4) if RC[a][k]!=FZ}
   for _ in range(count):sub=field_poly_mul(sub,lin)
  for k,v in sub.items():
   v=fm(v,coefficient_factor);row=out.setdefault(k,[FZ]*36)
   out[k]=[fa(x,fs(v,y)) for x,y in zip(row,values)]
 return out
def multinomial(powers):
 value=factorial(sum(powers))
 for x in powers:value//=factorial(x)
 return value
Qorth=transform_polynomial(Qp,SQ3);Porth=transform_polynomial(Pp,FO)
QT={};PT={}
for a,b in product(range(4),repeat=2):
 powers=key((a,b));QT[(a,b)]=[fs(v,F(1,multinomial(powers))) for v in Qorth.get(powers,[FZ]*36)]
for a,b,c in product(range(4),repeat=3):
 powers=key((a,b,c));PT[(a,b,c)]=[fs(v,F(1,multinomial(powers))) for v in Porth.get(powers,[FZ]*36)]
# Independently compare polynomial substitution with the tensor-input rule.
nonzero_inputs=[[(a,RC[a][k]) for a in range(4) if RC[a][k]!=FZ] for k in range(4)]
for k,l in product(range(4),repeat=2):
 for physical in range(36):
  value=FZ
  for a,ra in nonzero_inputs[k]:
   for b,rb in nonzero_inputs[l]:value=fa(value,fs(fm(SQ3,fm(ra,rb)),Q[a][b][physical]))
  assert value==QT[(k,l)][physical]
for k,l,m in product(range(4),repeat=3):
 for physical in range(36):
  value=FZ
  for a,ra in nonzero_inputs[k]:
   for b,rb in nonzero_inputs[l]:
    for c,rc in nonzero_inputs[m]:
     powers=key((a,b,c));coefficient=Pp.get(powers,[F(0)]*36)[physical]/multinomial(powers)
     value=fa(value,fs(fm(fm(ra,rb),rc),coefficient))
  assert value==PT[(k,l,m)][physical]
# Regenerate the normal projector and confirm all predictor coefficients are normal.
GI=[[F(2,3),F(1,3),0,0],[F(1,3),F(2,3),0,0],[0,0,F(2,3),F(1,3)],[0,0,F(1,3),F(2,3)]]
Tproj=mm(mm(tr(V),GI),V)
P=[[F(int(i==j))-F(1,6) for j in range(6)] for i in range(6)]
Hproj=[[P[i//6][j//6]*P[i%6][j%6] for j in range(36)] for i in range(36)]
Nproj=[[x-y for x,y in zip(a,b)] for a,b in zip(Hproj,Tproj)]
assert mm(GP,[[x/2 for x in row] for row in A])==Nproj
for row in list(Qp.values())+list(Pp.values()):assert mv(Nproj,row)==row

# Sharp centered six-vector fourth moment via an exact projection Gram.
assert mm(P,P)==P and sum(P[i][i] for i in range(6))==5
vectors=[[F(int(i==a)-int(i==5)) for i in range(6)] for a in range(5)]
BB=[]
for v in vectors:
 Bv=[[sum(P[i][k]*v[k]*P[k][j] for k in range(6)) for j in range(6)] for i in range(6)]
 assert sum(P[i][j]*Bv[i][j] for i in range(6) for j in range(6))==0
 BB.append(Bv)
for a,b in product(range(5),repeat=2):
 assert sum(BB[a][i][j]*BB[b][i][j] for i in range(6) for j in range(6))==F(2,3)*sum(x*y for x,y in zip(vectors[a],vectors[b]))
# Orthogonal projection of aa^T onto P and B(v), for centered a, therefore
# gives residual squared (21/20)||a||^4-(3/2)sum a_i^4 >=0.
assert F(21,20)/F(3,2)==F(7,10)
pair_fourth=6*F(7,10)+3;assert pair_fourth==F(36,5)
# Pair coefficient |qj conj qk|=1/6 and cubic Taylor coefficient=1/6.
cubic_squared=6*pair_fourth/F(36**2);assert cubic_squared==F(1,30)
fourth=pair_fourth/F(6*24);assert fourth==F(1,20)
# Original looser coefficients are independently confirmed and remain safe.
assert F(6*8,36**2)==F(1,27) and F(8,6*24)==F(1,18)
# Integrating |R3'(phi+s theta)| <= (|phi|+s|theta|)^2/2 gives
# theta^3/6 + theta^2|phi|/2 + |theta|phi^2/2.
assert [F(1,2)*F(1,k+1) for k in (2,1,0)]==[F(1,6),F(1,4),F(1,2)]
assert 2*F(1,4)==F(1,2)

def encode(poly):return {','.join(map(str,k)):[str(x) for x in row] for k,row in poly.items()}
def encode_field(poly):return {','.join(map(str,k)):[[str(x) for x in v] for v in row] for k,row in poly.items()}
natural={'Q_div_sqrt3':encode(Qp),'P3':encode(Pp)}
tensors={'field_basis':['1','sqrt(2)','sqrt(3)','sqrt(6)'],'physical_order':'row-major row*6+column','frame':'V0/sqrt2,(V0+2V1)/sqrt6,V2/sqrt2,(V2+2V3)/sqrt6','natural_predictors':natural,'T':[[[str(x) for x in v] for v in row] for row in TF],'QT':encode_field(QT),'PT':encode_field(PT)}
root=Path(__file__).resolve().parent
(root/'cubic_filter_tensors.json').write_text(json.dumps(tensors,indent=2))
receipt={'status':'PASS','inputs':'none; all Fourier tensors regenerated exactly','field':'Q(sqrt2,sqrt3)','orthonormal_frame_verified':True,'Q_tensor_transform_verified':True,'P3_tensor_transform_verified':True,'all_predictor_coefficients_normal':True,'centered_fourth_moment_upper':'7/10','pair_fourth_moment_upper':'36/5','improved_cubic_remainder_coefficient_squared':'1/30','improved_fourth_remainder_coefficient':'1/20','original_cubic_remainder_coefficient_squared':'1/27','original_fourth_remainder_coefficient':'1/18','natural_predictors_sha256':hashlib.sha256(json.dumps(natural,sort_keys=True,separators=(',',':')).encode()).hexdigest(),'generated_tensors_sha256':hashlib.sha256((root/'cubic_filter_tensors.json').read_bytes()).hexdigest(),'elapsed_seconds_informational':time.time()-started}
(root/'cubic_filter_bridge_receipt.json').write_text(json.dumps(receipt,indent=2));print(json.dumps(receipt,indent=2))
