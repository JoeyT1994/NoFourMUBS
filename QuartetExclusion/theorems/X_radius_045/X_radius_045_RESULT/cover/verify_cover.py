#!/usr/bin/env python3
"""Exact fixed-point interval verification of the complete five-phase cover.
Only the standard library. Every bin is explicitly retained, rejected by a
verified support inequality, or subdivided into all 32 closed children.
Floating-point arithmetic is used only in optional progress displays.
"""
from fractions import Fraction
from math import isqrt,factorial
from itertools import product,permutations,combinations_with_replacement
from pathlib import Path
import json,zlib,struct,time,hashlib,argparse,os
from concurrent.futures import ProcessPoolExecutor, wait, FIRST_COMPLETED

PREC=48;SCALE=1<<PREC;YQ=1<<20
class I:
 __slots__=('lo','hi')
 def __init__(self,lo,hi=None):self.lo=lo;self.hi=lo if hi is None else hi
 def __add__(a,b):
  if isinstance(b,int):b=I(b*SCALE)
  return I(a.lo+b.lo,a.hi+b.hi)
 __radd__=__add__
 def __neg__(a):return I(-a.hi,-a.lo)
 def __sub__(a,b):return a+-b if isinstance(b,I) else a+(-b)
 def __rsub__(a,b):return -a+b
 def __mul__(a,b):
  if isinstance(b,int):
   return I(a.lo*b,a.hi*b) if b>=0 else I(a.hi*b,a.lo*b)
  vals=(a.lo*b.lo,a.lo*b.hi,a.hi*b.lo,a.hi*b.hi)
  return I(min(vals)//SCALE,-((-max(vals))//SCALE))
 __rmul__=__mul__
 def __truediv__(a,b):
  if isinstance(b,int):
   assert b>0
   return I(a.lo//b,-((-a.hi)//b))
  assert b.lo>0
  vals=(Fraction(a.lo*SCALE,b.lo),Fraction(a.lo*SCALE,b.hi),Fraction(a.hi*SCALE,b.lo),Fraction(a.hi*SCALE,b.hi))
  lo=min(vals);hi=max(vals)
  return I(lo.numerator//lo.denominator,-((-hi.numerator)//hi.denominator))
 def abs(a):
  return I(0 if a.lo<=0<=a.hi else min(abs(a.lo),abs(a.hi)),max(abs(a.lo),abs(a.hi)))
 def sq(a):
  aa=a.abs();return I(aa.lo*aa.lo//SCALE,-((-aa.hi*aa.hi)//SCALE))
 def sqrt(a):
  assert a.hi>=0
  lo=isqrt(max(0,a.lo)*SCALE);hi=isqrt(a.hi*SCALE)
  if hi*hi<a.hi*SCALE:hi+=1
  return I(lo,hi)
 def __repr__(a):return f'I({a.lo}/{SCALE},{a.hi}/{SCALE})'

def frac(n,d=1):return I((n*SCALE)//d,-((-n*SCALE)//d))
def isum(v):
 lo=hi=0
 for x in v:lo+=x.lo;hi+=x.hi
 return I(lo,hi)
def norm(v):return isum(x.sq() for x in v).sqrt()
def imax(v):
 v=list(v);return I(max(x.lo for x in v),max(x.hi for x in v))
def imin(a,b):return I(min(a.lo,b.lo),min(a.hi,b.hi))
def cmul(a,b):return (a[0]*b[0]-a[1]*b[1],a[0]*b[1]+a[1]*b[0])
def csum(v):
 v=list(v);return (isum(x[0] for x in v),isum(x[1] for x in v))
def cabs(v):return norm(v)
def cscale(v,y):return (v[0]*y,v[1]*y)
ZERO=I(0);ONE=I(SCALE)

# Machin's identity, with alternating rational arctangent sums.
def atan_bounds(inv,N=60):
 s=sum((Fraction((-1)**k,(2*k+1)*inv**(2*k+1)) for k in range(N)),Fraction())
 e=Fraction((-1)**N,(2*N+1)*inv**(2*N+1))
 return min(s,s+e),max(s,s+e)
a,b=atan_bounds(5);c,d=atan_bounds(239)
PILO=16*a-4*d;PIHI=16*b-4*c
PI=I((PILO*SCALE).numerator//(PILO*SCALE).denominator,-((-(PIHI*SCALE).numerator)//(PIHI*SCALE).denominator))
assert PIHI**72/Fraction(factorial(72))<Fraction(1,SCALE)
INV6=ONE/frac(6).sqrt();RHO=frac(9,20);NORMAL=frac(157,2500);RCOL=frac(3017,10000);QERROR=frac(589,62500);CERROR=frac(2027,500000)
# The sharper physical normal bound is proved by the companion geometry replay.
# Check that the declared column enclosure follows from orthogonal T/N splitting.
assert Fraction(157,2500)**2 <= Fraction(3,5)*Fraction(9,20)**2
assert (((RHO.sq()-NORMAL.sq())/3).sqrt()+NORMAL/frac(2).sqrt()).hi<RCOL.lo

# Horizontal tangent vectors, scaled by 6, with Gram inverse (1/3)[[2,1],[1,2]].
VT=[]
for k in range(4):
 f=[0,int(k==0),int(k==1)];g=[0,int(k==2),int(k==3)]
 v=[[int(j%2)*f[i%3]+int(i%2)*g[j%3] for i in range(6)] for j in range(6)]
 rows=[sum(row) for row in v];cols=[sum(v[j][i] for j in range(6)) for i in range(6)];total=sum(rows)
 assert total%6==0
 VT.append([[6*v[j][i]-rows[j]-cols[i]+total//6 for i in range(6)] for j in range(6)])

INV2=ONE/frac(2).sqrt()
TF=[[[None for k in range(4)] for j in range(6)] for i in range(6)]
for i in range(6):
 for j in range(6):
  TF[i][j][0]=frac(VT[0][j][i],6)*INV2
  TF[i][j][1]=frac(VT[0][j][i]+2*VT[1][j][i],6)*INV6
  TF[i][j][2]=frac(VT[2][j][i],6)*INV2
  TF[i][j][3]=frac(VT[2][j][i]+2*VT[3][j][i],6)*INV6

# Exact quadratic normal predictor in the same natural tangent frame.
QP=json.loads((Path(__file__).resolve().parent/'cover_data/quadratic_tensor.json').read_text())
for aa in range(4):
 for jj in range(6):
  for ii in range(6):
   assert Fraction(QP['natural_frame_V'][aa][6*jj+ii])==Fraction(VT[aa][jj][ii],6)
QNat=[[[Fraction(v) for v in row] for row in block] for block in QP['Q_div_sqrt3']]
assert len(QNat)==4 and all(len(row)==4 for row in QNat)
for aa in range(4):
 for bb in range(4):
  assert len(QNat[aa][bb])==36 and QNat[aa][bb]==QNat[bb][aa]
  if aa//2==bb//2:assert all(v==0 for v in QNat[aa][bb])
combos=[(0,2,frac(3).sqrt()/2,QNat[0][2]),
 (0,3,frac(1,2),[a+2*b for a,b in zip(QNat[0][2],QNat[0][3])]),
 (1,2,frac(1,2),[a+2*b for a,b in zip(QNat[0][2],QNat[1][2])]),
 (1,3,frac(3).sqrt()/6,[a+2*b+2*c+4*d for a,b,c,d in zip(QNat[0][2],QNat[0][3],QNat[1][2],QNat[1][3])])]
QBLOCK=[]
for aa,bb,factor,vals in combos:
 terms=[]
 for pos,v in enumerate(vals):
  if v:terms.append((pos//6,pos%6,frac(v.numerator,v.denominator)))
 QBLOCK.append((aa,bb,factor,terms))
# Row-difference tangent dual norm squared is at most 7/18.
for ii in range(6):
 for jj in range(6):
  for kk in range(jj+1,6):
   w=[Fraction(VT[aa][jj][ii]-VT[aa][kk][ii],6) for aa in range(4)]
   v=Fraction(2,3)*(w[0]**2+w[0]*w[1]+w[1]**2+w[2]**2+w[2]*w[3]+w[3]**2)
   assert v<=Fraction(7,18)
assert Fraction(157,2500)**2<=Fraction(23,30)*Fraction(9,20)**2
PAIR=imin(frac(2).sqrt()*RCOL,frac(7,18).sqrt()*(RHO.sq()-NORMAL.sq()).sqrt()+frac(23,18).sqrt()*NORMAL)

# Exact conversion of the cubic predictor to this orthonormal tangent frame.
# T_a = sum_b FRAME[b][a] V_b / sqrt(DIAG[a]).  The stored natural
# coefficients are ordinary polynomial coefficients, hence division by the
# number of distinct permutations gives the symmetric trilinear tensor.
FRAME=((1,1,0,0),(0,2,0,0),(0,0,1,1),(0,0,0,2))
DIAG=(2,6,2,6)
CP=json.loads((Path(__file__).resolve().parent/'cover_data/cubic_tensor.json').read_text())
assert CP['phase_units']=='radians'
qpoly={}
for aa in range(4):
 for bb in range(4):
  powers=[0]*4;powers[aa]+=1;powers[bb]+=1;key=','.join(map(str,powers))
  qpoly.setdefault(key,[Fraction() for _ in range(36)])
  qpoly[key]=[x+y for x,y in zip(qpoly[key],QNat[aa][bb])]
qpoly={k:v for k,v in qpoly.items() if any(v)}
assert qpoly=={k:list(map(Fraction,v)) for k,v in CP['Q_div_sqrt3'].items()}
pnat={}
for key,vals in CP['P3'].items():
 powers=list(map(int,key.split(',')))
 assert len(powers)==4 and min(powers)>=0 and sum(powers)==3 and len(vals)==36
 inds=[a for a,power in enumerate(powers) for _ in range(power)]
 perms=set(permutations(inds));vv=[Fraction(v)/len(perms) for v in vals]
 for perm in perms:
  assert perm not in pnat
  pnat[perm]=vv
TRIPLES=list(combinations_with_replacement(range(4),3))
TRIPLE_MULT=[len(set(permutations(abc))) for abc in TRIPLES]
PBLOCK=[]
DPBLOCK=[]
for aa,bb,cc in TRIPLES:
 den=frac(DIAG[aa]*DIAG[bb]*DIAG[cc]).sqrt()
 vals=[Fraction() for _ in range(36)]
 for (a,b,c),v in pnat.items():
  fac=FRAME[a][aa]*FRAME[b][bb]*FRAME[c][cc]
  if fac:vals=[x+fac*y for x,y in zip(vals,v)]
 PBLOCK.append([(pos//6,pos%6,frac(v.numerator,v.denominator)/den) for pos,v in enumerate(vals) if v])
 terms=[]
 for ii in range(6):
  for jj in range(6):
   for kk in range(jj+1,6):
    numer=1
    for a in (aa,bb,cc):numer*=sum(FRAME[b][a]*(VT[b][jj][ii]-VT[b][kk][ii]) for b in range(4))
    if numer:terms.append((ii,jj,kk,frac(numer,216)/den))
 DPBLOCK.append(terms)
TRIPLE_INDEX={abc:i for i,abc in enumerate(TRIPLES)}

def rational_psd(mat):
 mat=[list(row) for row in mat]
 for k in range(len(mat)):
  assert mat[k][k]>=0
  if mat[k][k]==0:
   assert all(mat[k][j]==0 for j in range(k+1,len(mat)))
  else:
   for i in range(k+1,len(mat)):
    for j in range(i,len(mat)):
     mat[i][j]-=mat[i][k]*mat[k][j]/mat[k][k];mat[j][i]=mat[i][j]
G=[[sum(Fraction(VT[a][j][i]*VT[b][j][i],36) for j in range(6) for i in range(6)) for b in range(4)] for a in range(4)]
assert G==[[Fraction(v) for v in row] for row in ((2,-1,0,0),(-1,2,0,0),(0,0,2,-1),(0,0,-1,2))]
# Every tangent column has norm at most ||eta|| / sqrt(3).
for ii in range(6):
 C=[[sum(Fraction(VT[a][j][ii]*VT[b][j][ii],36) for j in range(6)) for b in range(4)] for a in range(4)]
 rational_psd([[G[a][b]/3-C[a][b] for b in range(4)] for a in range(4)])
AM=RHO/frac(3).sqrt();BM=frac(5,6).sqrt()*NORMAL
# The centered six-vector fourth-moment improvement is an orthogonal
# projection identity. B(v)=P diag(v) P satisfies ||B(v)||_F^2=(2/3)||v||^2
# for centered v, and B(v) is perpendicular to P. Projecting aa^T onto these
# two spaces gives (21/20)||a||^4-(3/2)sum(a_j^4)>=0, hence the pair-difference
# fourth-moment bound 36/5 and cubic coefficient 1/sqrt(30).
P=[[Fraction(int(j==k))-Fraction(1,6) for k in range(6)] for j in range(6)]
PB=[[[P[j][a]*P[a][k] for k in range(6)] for j in range(6)] for a in range(6)]
assert sum(P[j][j] for j in range(6))==5
for a in range(6):
 assert sum(P[j][k]*PB[a][j][k] for j in range(6) for k in range(6))==Fraction(5,6)
 for b in range(6):
  assert sum(PB[a][j][k]*PB[b][j][k] for j in range(6) for k in range(6))==Fraction(2,3)*int(a==b)+Fraction(1,36)
MIXED3=ONE/frac(30).sqrt()

def trig_table(M):
 tab=[]
 for k in range(2*M):
  kk=k if k<=M else k-2*M;t=PI*kk/M;tt=t.sq()
  co=term=ONE
  for m in range(1,36):term=-(term*tt)/((2*m-1)*(2*m));co=co+term
  si=term=t
  for m in range(1,36):term=-(term*tt)/((2*m)*(2*m+1));si=si+term
  # Interval-rounded Taylor series plus a rigorous remainder below one quantum.
  co=I(co.lo-1,co.hi+1);si=I(si.lo-1,si.hi+1)
  tab.append((co*INV6,si*INV6))
 return tab

class Checker:
 def __init__(self,M,centers,den,radii):
  self.M=M;self.tab=trig_table(M);self.a=PI/M;self.X=frac(29,6).sqrt()*self.a;self.Lam=self.a*5;self.I=self.a*3/2
  self.centers=centers;self.den=den;self.radii=radii;assert den%(2*M)==0
  self.tau=self.Lam*INV6+RCOL
 def qcolumn(self,b,i):
  phase=[0]+[2*x+1 for x in b];M=self.M
  return [self.tab[(phase[j]-(M//3)*j*i)%(2*M)] for j in range(6)]
 def cover(self,b,label):
  D=self.den;mul=D//(2*self.M)
  u=[0]+[(2*x+1)*mul for x in b]
  dif=[(x-y+D//2)%D-D//2 for x,y in zip(u,self.centers[label])]
  zz=6*sum(x*x for x in dif)-sum(dif)**2;assert zz>=0
  distance=PI*2*frac(zz,6*D*D).sqrt()
  rad=self.radii[label]
  return (distance+self.X).hi<rad.lo
 def single_data(self,b):
  Q=[self.qcolumn(b,i) for i in range(6)] # i,j
  S=[csum(q) for q in Q];A=[cabs(s) for s in S]
  c=[(s[0].sq()+s[1].sq()-1)/2 for s in S]
  J=[[-(S[i][0]*Q[i][j][1]-S[i][1]*Q[i][j][0]) for j in range(6)] for i in range(6)]
  return Q,S,A,c,J
 def tangent_norm(self,J,y):
  cc=[[J[i][j]*y[i] for j in range(6)] for i in range(6)]
  g=[isum(cc[i][j]*VT[k][j][i] for i in range(6) for j in range(6))/6 for k in range(4)]
  return ((g[0]+g[1]).sq()/2+(g[0]-g[1]).sq()/6+(g[2]+g[3]).sq()/2+(g[2]-g[3]).sq()/6).sqrt()
 def delta_support(self,J,y):
  jt=[isum(y[i]*J[i][j] for i in range(6)) for j in range(6)]
  nn2=isum((y[i]*J[i][j]).sq() for i in range(6) for j in range(6))
  h2=nn2-isum(x.sq() for x in jt)/6
  bt=self.tangent_norm(J,y);normal2=h2-bt.sq()
  hn=h2.sqrt();cn=normal2.sqrt()
  full=RHO*hn
  if (RHO.sq()*normal2).lo>(NORMAL.sq()*h2).hi:
   full=(RHO.sq()-NORMAL.sq()).sqrt()*bt+NORMAL*cn
  return imin(full,RHO*bt+NORMAL*cn)
 def cubic_coefficients(self,Q,J,y,HT):
  # Symmetric tensor of eta^T H Q(eta) - <C,P3(eta)> - D^3 f(eta)^3/6.
  inner={}
  for bb,cc,factor,terms in QBLOCK:
   for aa in range(4):
    val=factor*isum(HT[ii][jj][aa]*coef for jj,ii,coef in terms)
    inner[aa,bb,cc]=inner[aa,cc,bb]=val
  pair={}
  for ii in range(6):
   for jj in range(6):
    for kk in range(jj+1,6):
     pair[ii,jj,kk]=y[ii]*(Q[ii][jj][1]*Q[ii][kk][0]-Q[ii][jj][0]*Q[ii][kk][1])
  coeff=[]
  for pos,(aa,bb,cc) in enumerate(TRIPLES):
   tq=(inner.get((aa,bb,cc),ZERO)+inner.get((bb,aa,cc),ZERO)+inner.get((cc,aa,bb),ZERO))/3
   mp=isum(y[ii]*J[ii][jj]*v for jj,ii,v in PBLOCK[pos])
   hp=isum(pair[ii,jj,kk]*v for ii,jj,kk,v in DPBLOCK[pos])
   coeff.append(tq-mp-hp/6)
  return coeff
 def cubic_flat_norm(self,coeff):
  # Operator norm of the 4 x 16 flattening, via the Gram matrix row sums.
  flat=[[coeff[TRIPLE_INDEX[tuple(sorted((a,b,c)))]] for b in range(4) for c in range(4)] for a in range(4)]
  gram=[[isum(v*w for v,w in zip(flat[a],flat[b])) for b in range(4)] for a in range(4)]
  return imax(isum(v.abs() for v in row) for row in gram).sqrt()
 def trust_region_bound(self,A,b,lam):
  # For lambda>=0 and P=A+2lambda I positive definite,
  # sup_{||t||<=rho}(b.t-t^T A t/2)
  # <=lambda rho^2 + b^T P^{-1}b/2.
  # Interval LDL certifies every positive pivot. If w=L^{-1}b,
  # b^T P^{-1}b=sum_k w_k^2/D_k, avoiding an explicit matrix inverse.
  assert lam.lo>=0
  P=[[A[i][j]+(lam*2 if i==j else ZERO) for j in range(4)] for i in range(4)]
  L=[[ZERO for _ in range(4)] for _ in range(4)];D=[];w=[]
  for k in range(4):
   d=P[k][k]-isum(L[k][j].sq()*D[j] for j in range(k))
   if d.lo<=0:return None
   D.append(d);L[k][k]=ONE
   for i in range(k+1,4):
    L[i][k]=(P[i][k]-isum(L[i][j]*L[k][j]*D[j] for j in range(k)))/d
   w.append(b[k]-isum(L[k][j]*w[j] for j in range(k)))
  return lam*RHO.sq()+isum(w[k].sq()/D[k] for k in range(4))/2
 def quadratic_reject(self,Q,S,c,J,y,predictor=False,cubic=False,lam=None):
  trust=lam is not None
  # H_i is the exact midpoint Hessian of (|S_i|^2-1)/2.
  H=[]
  for i in range(6):
   mat=[]
   for j in range(6):
    row=[]
    for k in range(6):
     v=Q[i][j][0]*Q[i][k][0]+Q[i][j][1]*Q[i][k][1]
     if j==k:v=v-(S[i][0]*Q[i][j][0]+S[i][1]*Q[i][j][1])
     row.append(v*y[i])
    mat.append(row)
   H.append(mat)
  Hxx=[[isum(H[i][j][k] for i in range(6)) for k in range(6)] for j in range(6)]
  HT=[[[isum(H[i][j][l]*TF[i][l][k] for l in range(6)) for k in range(4)] for j in range(6)] for i in range(6)]
  HxT=[[isum(HT[i][j][k] for i in range(6)) for k in range(4)] for j in range(6)]
  HTT=[[isum(TF[i][j][k]*HT[i][j][l] for i in range(6) for j in range(6)) for l in range(4)] for k in range(4)]
  htt_sq=isum(v.sq() for row in HTT for v in row)
  htn_sq=isum(v.sq() for block in HT for row in block for v in row)-isum(v.sq() for row in HxT for v in row)/6-htt_sq
  HTN=htn_sq.sqrt()
  HxN=[]
  for j in range(6):
   vv=isum(H[i][k][j].sq() for i in range(6) for k in range(6))-isum(Hxx[k][j].sq() for k in range(6))/6-isum(v.sq() for v in HxT[j])
   HxN.append(vv.sqrt())
  if predictor:
   MQ=[[ZERO for _ in range(4)] for _ in range(4)]
   for aa,bb,factor,terms in QBLOCK:
    value=factor*isum(y[ii]*J[ii][jj]*coef for jj,ii,coef in terms)
    MQ[aa][bb]=MQ[bb][aa]=value
   eff=[[HTT[aa][bb]-MQ[aa][bb]*2 for bb in range(4)] for aa in range(4)]
   htt_norm=imin(norm(v for row in eff for v in row),imax(isum(v.abs() for v in row) for row in eff))
  else:
   htt_norm=imin(htt_sq.sqrt(),imax(isum(v.abs() for v in row) for row in HTT))
  hn=imin(imax(norm(v for row in block for v in row) for block in H),imax(isum(v.abs() for v in row) for block in H for row in block))
  quad=self.a.sq()*isum(Hxx[j][k].abs() for j in range(1,6) for k in range(1,6))/2
  quad=quad+self.a*RHO*isum(norm(HxT[j]) for j in range(1,6))
  if not trust:quad=quad+RHO.sq()*htt_norm/2
  quad=quad+(QERROR if cubic else NORMAL)*RHO*HTN+self.a*NORMAL*isum(HxN[1:])+NORMAL.sq()*hn/2
  ay=[v.abs() for v in y];y1=isum(ay);y2=norm(y);yinf=imax(ay)
  r3base=y1*self.X.sq()+self.X*2*imin(y2*RHO,y1*RCOL)+imin(yinf*RHO.sq(),y1*RCOL.sq())
  r3fac=imin((self.a*2+PAIR)/6,frac(3).sqrt()/9*(self.X+RCOL))
  r3=r3fac*r3base
  jt=[isum(y[i]*J[i][j] for i in range(6)) for j in range(6)]
  if predictor:
   bt=self.tangent_norm(J,y)
   hn2=isum((y[ii]*J[ii][jj]).sq() for ii in range(6) for jj in range(6))-isum(v.sq() for v in jt)/6
   normal=(hn2-bt.sq()).sqrt()
   lin=self.a*isum(v.abs() for v in jt[1:])+(CERROR if cubic else QERROR)*normal
   if not trust:lin=lin+RHO*bt
  else:
   lin=self.a*isum(v.abs() for v in jt[1:])+self.delta_support(J,y)
  signed_lhs=isum(v*w for v,w in zip(y,c))
  lhs=signed_lhs if trust else signed_lhs.abs()
  if trust:
   btvec=[isum(y[ii]*J[ii][jj]*TF[ii][jj][aa] for ii in range(6) for jj in range(6)) for aa in range(4)]
   tr=self.trust_region_bound(eff,btvec,lam)
   if tr is None:return False
   lin=lin+tr
  if cubic:
   # Expand the pure physical displacement to order three. The change caused
   # by the phase-bin displacement is bounded by a global mixed cubic term.
   s1=imin(imin(yinf*AM*RHO*NORMAL,y2*AM.sq()*NORMAL),y1*AM.sq()*BM)
   s2=imin(imin(yinf*AM*NORMAL.sq(),y2*BM.sq()*RHO),y1*AM*BM.sq())
   s3=imin(imin(yinf*BM*NORMAL.sq(),y2*BM.sq()*NORMAL),y1*BM.sq()*BM)
   high3=MIXED3*(s1*3+s2*3+s3)
   mixed3=MIXED3*(y1*self.X.sq()*self.X+self.X.sq()*3*imin(y2*RHO,y1*RCOL)+self.X*3*imin(yinf*RHO.sq(),y1*RCOL.sq()))
   pure4=imin(yinf*RCOL.sq()*RHO.sq(),y1*RCOL.sq().sq())/20
   coeff=self.cubic_coefficients(Q,J,y,HT)
   frob=isum(v.sq()*mult for v,mult in zip(coeff,TRIPLE_MULT)).sqrt()
   base=lin+quad+high3+mixed3+pure4;rho3=RHO.sq()*RHO
   if lhs.lo>(base+rho3*frob).hi:return True
   return lhs.lo>(base+rho3*imin(frob,self.cubic_flat_norm(coeff))).hi
  return lhs.lo>(lin+quad+r3).hi
 def reject(self,b,code,yi=None):
  if 1<=code<=6:
   a=cabs(csum(self.qcolumn(b,code-1)))
   return (a-1).abs().lo>self.tau.hi
  if code==7:
   aa=[cabs(csum(self.qcolumn(b,i))) for i in range(6)]
   return isum((a-1).sq() for a in aa).lo>(self.X+RHO).sq().hi
  Q,S,A,c,J=self.single_data(b)
  if 8<=code<=13:
   i=code-8;y=[ZERO]*6;y[i]=ONE
   rhs=self.a*isum(x.abs() for x in J[i][1:])+self.delta_support(J,y)
   rhs=rhs+(1+A[i]*INV6)*(self.X+RCOL).sq()/2
   return c[i].abs().lo>rhs.hi
  assert code in (14,15,16,17,18) and yi is not None
  assert len(yi)==(7 if code==18 else 6)
  lam=None
  if code==18:
   assert 0<=yi[6]<(1<<31)
   lam=I(yi[6]*(SCALE//YQ));yi=yi[:6]
  assert all(abs(v)<=YQ for v in yi) and any(yi)
  y=[I(v*(SCALE//YQ)) for v in yi]
  if code in (15,16,17,18):return self.quadratic_reject(Q,S,c,J,y,predictor=(code>=16),cubic=(code>=17),lam=lam)
  ay=[v.abs() for v in y];sy=[cscale(s,v) for s,v in zip(S,y)];syabs=[cabs(v) for v in sy]
  jt=[isum(y[i]*J[i][j] for i in range(6)) for j in range(6)]
  nn=norm(y[i]*J[i][j] for i in range(6) for j in range(6))
  gy=imax(cabs(csum(cmul((sy[i][0],-sy[i][1]),Q[i][j]) for i in range(6))) for j in range(6))
  rhs=self.a*isum(v.abs() for v in jt[1:])+self.delta_support(J,y)
  sy2=norm(syabs);sy1=isum(syabs);syinf=imax(syabs)
  err=imin(imax(ay)*(self.X+RHO).sq(),isum(ay)*(self.X+RCOL).sq())
  err=err+imin(gy*self.X.sq(),sy2*self.I*self.X)
  err=err+INV6*2*self.X*imin(sy2*RHO,sy1*RCOL)
  err=err+INV6*imin(syinf*RHO.sq(),sy1*RCOL.sq())
  rhs=rhs+err/2
  lhs=isum(v*w for v,w in zip(y,c)).abs()
  return lhs.lo>rhs.hi

_WORKER_CHECKERS={}
def verify_heavy_batch(args):
 M,centers,den,radius_strings,jobs=args
 key=(M,tuple(radius_strings))
 if key not in _WORKER_CHECKERS:
  radii=[frac(Fraction(x).numerator,Fraction(x).denominator) for x in radius_strings]
  _WORKER_CHECKERS[key]=Checker(M,centers,den,radii)
 check=_WORKER_CHECKERS[key]
 for index,bb,code,wit in jobs:
  if not check.reject(bb,code,wit):return len(jobs),(M,index,bb,code,wit)
 return len(jobs),None

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--workers',type=int,default=4);opts=ap.parse_args()
 assert 1<=opts.workers<=64
 base=Path(__file__).resolve().parent/'cover_data'
 meta=json.loads((base/'manifest.json').read_text());cent=json.loads((base/'quantized48.json').read_text())
 assert meta['rho']=='9/20' and meta['normal']=='157/2500' and meta['column']=='3017/10000' and meta['normal_error']=='589/62500' and meta['cubic_error']=='2027/500000' and meta['YQ']==YQ
 centers=cent['phase_indices'];den=cent['denominator'];assert den==12288 and len(centers)==48
 assert all(len(row)==6 and row[0]==0 and all(isinstance(x,int) and 0<=x<den for x in row) for row in centers)
 radius_strings=meta['radii'];assert len(radius_strings)==48 and all(0<Fraction(x)<2 for x in radius_strings)
 assert list(map(Fraction,radius_strings))==[Fraction(669,1000)]*12+[Fraction(58,125)]*36
 radii=[frac(Fraction(x).numerator,Fraction(x).denominator) for x in radius_strings]
 b=list(product(range(12),repeat=5));expectedM=12;total=0;receipts=[];started=time.time()
 pool=ProcessPoolExecutor(max_workers=opts.workers) if opts.workers>1 else None
 try:
  for lev in meta['levels']:
   M=lev['M'];assert M==expectedM and len(b)==lev['nodes']
   codes=zlib.decompress((base/f'codes_{M}.z').read_bytes());assert len(codes)==len(b)
   raw=zlib.decompress((base/f'witness_{M}.z').read_bytes());assert len(raw)==24*sum(c in (14,15,16,17) for c in codes)+28*codes.count(18)
   witness_offset=0;check=Checker(M,centers,den,radii)
   parents=[];covered=rejected=0;t0=time.time();pending=set();batch=[];heavy_submitted=heavy_checked=0
   def accept(done):
    nonlocal heavy_checked
    for fut in done:
     count,failure=fut.result();assert failure is None,('heavy rejection failed',failure)
     heavy_checked+=count
   def flush():
    nonlocal batch,heavy_submitted,pending
    if batch:
     heavy_submitted+=len(batch)
     pending.add(pool.submit(verify_heavy_batch,(M,centers,den,radius_strings,batch)))
     batch=[]
    if len(pending)>=opts.workers*8:
     done,pending=wait(pending,return_when=FIRST_COMPLETED);accept(done)
   for index,(bb,code) in enumerate(zip(b,codes)):
    if code==0:parents.append(bb)
    elif 128<=code<176:
     assert check.cover(bb,code-128),('label',M,index,bb,code)
     covered+=1
    else:
     assert 1<=code<=18
     wit=None
     if code in (14,15,16,17,18):
      nw=7 if code==18 else 6
      wit=struct.unpack_from('<'+str(nw)+'i',raw,witness_offset);witness_offset+=4*nw
     if pool is not None and code in (15,16,17,18):
      batch.append((index,bb,code,wit))
      if len(batch)>=64:flush()
     else:assert check.reject(bb,code,wit),('reject',M,index,bb,code,wit)
     rejected+=1
    if (index+1)%100000==0:print('M',M,'visited',index+1,'of',len(b),'heavy pending',heavy_submitted-heavy_checked+len(batch),'elapsed',round(time.time()-t0,1),flush=True)
   if pool is not None:
    flush()
    if pending:
     done,_=wait(pending);accept(done)
    assert heavy_checked==heavy_submitted
   assert witness_offset==len(raw)
   assert len(parents)==lev['refined'] and covered==lev['covered']
   total+=len(b);receipts.append({'M':M,'nodes':len(b),'covered':covered,'rejected':rejected,'refined':len(parents),'heavy_checked':heavy_checked})
   print('PASS LEVEL',receipts[-1],'seconds',round(time.time()-t0,2),flush=True)
   sub=list(product((0,1),repeat=5));b=[tuple(2*x+y for x,y in zip(bb,ch)) for bb in parents for ch in sub];expectedM*=2
  assert not b,'unfinished leaves'
 finally:
  if pool is not None:pool.shutdown(wait=True,cancel_futures=False)
 out={'status':'PASS','rho':'9/20','normal':'157/2500','column':'3017/10000','normal_error':'589/62500','cubic_error':'2027/500000','total_nodes_checked':total,'levels':receipts,'interval_scale':SCALE,'workers':opts.workers,
 'all_decisions':'exact directed integer intervals; no floating-point acceptance',
 'quantized_centers_sha256':hashlib.sha256((base/'quantized48.json').read_bytes()).hexdigest(),
 'quadratic_tensor_sha256':hashlib.sha256((base/'quadratic_tensor.json').read_bytes()).hexdigest(),
 'cubic_tensor_sha256':hashlib.sha256((base/'cubic_tensor.json').read_bytes()).hexdigest(),
 'elapsed_seconds_informational':time.time()-started}
 (base/'replay_receipt.json').write_text(json.dumps(out,indent=2));print('ALL PASS',out,flush=True)
if __name__=='__main__':main()
