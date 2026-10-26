#!/usr/bin/env python3
"""Exact fixed-point interval verification of the complete five-phase cover.
Only the standard library. Every bin is explicitly retained, rejected by a
verified support inequality, or subdivided into all 32 closed children.
Floating-point arithmetic is used only in optional progress displays.
"""

if not __debug__:
    raise SystemExit("Verification requires assertions; do not use python -O.")

from fractions import Fraction
from math import isqrt,factorial
from itertools import product
from pathlib import Path
import json,zlib,struct,time,hashlib

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
INV6=ONE/frac(6).sqrt();RHO=frac(3,20);NORMAL=frac(147,8000);RCOL=frac(21,200)
assert Fraction(147,8000)**2>=Fraction(2,3)*Fraction(3,20)**4
assert 3*(Fraction(21,200)-Fraction(147,8000))**2>=Fraction(3,20)**2

# Horizontal tangent vectors, scaled by 6, with Gram inverse (1/3)[[2,1],[1,2]].
VT=[]
for k in range(4):
 f=[0,int(k==0),int(k==1)];g=[0,int(k==2),int(k==3)]
 v=[[int(j%2)*f[i%3]+int(i%2)*g[j%3] for i in range(6)] for j in range(6)]
 rows=[sum(row) for row in v];cols=[sum(v[j][i] for j in range(6)) for i in range(6)];total=sum(rows)
 assert total%6==0
 VT.append([[6*v[j][i]-rows[j]-cols[i]+total//6 for i in range(6)] for j in range(6)])

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
 def __init__(self,M,centers,den):
  self.M=M;self.tab=trig_table(M);self.a=PI/M;self.X=frac(29,6).sqrt()*self.a;self.Lam=self.a*5;self.I=self.a*3/2
  self.centers=centers;self.den=den;assert den%(2*M)==0
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
  rad=frac(399 if label<12 else 299,1000)
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
   rhs=self.a*isum(x.abs() for x in J[i][1:])+RHO*self.tangent_norm(J,y)+NORMAL*norm(J[i])
   rhs=rhs+(1+A[i]*INV6)*(self.X+RCOL).sq()/2
   return c[i].abs().lo>rhs.hi
  assert code==14 and yi is not None
  assert all(abs(v)<=YQ for v in yi) and any(yi)
  y=[I(v*(SCALE//YQ)) for v in yi]
  ay=[v.abs() for v in y];sy=[cscale(s,v) for s,v in zip(S,y)];syabs=[cabs(v) for v in sy]
  jt=[isum(y[i]*J[i][j] for i in range(6)) for j in range(6)]
  nn=norm(y[i]*J[i][j] for i in range(6) for j in range(6))
  gy=imax(cabs(csum(cmul((sy[i][0],-sy[i][1]),Q[i][j]) for i in range(6))) for j in range(6))
  rhs=self.a*isum(v.abs() for v in jt[1:])+RHO*self.tangent_norm(J,y)+NORMAL*nn
  sy2=norm(syabs);sy1=isum(syabs);syinf=imax(syabs)
  err=imin(imax(ay)*(self.X+RHO).sq(),isum(ay)*(self.X+RCOL).sq())
  err=err+imin(gy*self.X.sq(),sy2*self.I*self.X)
  err=err+INV6*2*self.X*imin(sy2*RHO,sy1*RCOL)
  err=err+INV6*imin(syinf*RHO.sq(),sy1*RCOL.sq())
  rhs=rhs+err/2
  lhs=isum(v*w for v,w in zip(y,c)).abs()
  return lhs.lo>rhs.hi

def main():
 base=Path(__file__).resolve().parents[1]/'data'
 meta=json.loads((base/'manifest.json').read_text());cent=json.loads((base/'quantized48.json').read_text())
 assert meta['radii']==['399/1000']*12+['299/1000']*36
 assert meta['rho']=='3/20' and meta['normal']=='147/8000' and meta['column']=='21/200' and meta['YQ']==YQ
 centers=cent['phase_indices'];den=cent['denominator'];assert den==12288 and len(centers)==48
 assert all(len(row)==6 and row[0]==0 and all(isinstance(x,int) and 0<=x<den for x in row) for row in centers)
 b=list(product(range(12),repeat=5));expectedM=12;total=0;receipts=[];started=time.time()
 for lev in meta['levels']:
  M=lev['M'];assert M==expectedM and len(b)==lev['nodes']
  codes=zlib.decompress((base/f'codes_{M}.z').read_bytes());assert len(codes)==len(b)
  raw=zlib.decompress((base/f'witness_{M}.z').read_bytes());assert len(raw)==24*sum(c==14 for c in codes)
  witnesses=iter(struct.iter_unpack('<6i',raw));check=Checker(M,centers,den)
  parents=[];covered=rejected=0;t0=time.time()
  for index,(bb,code) in enumerate(zip(b,codes)):
   if code==0:parents.append(bb)
   elif 128<=code<176:
    assert check.cover(bb,code-128),('label',M,index,bb,code)
    covered+=1
   else:
    assert 1<=code<=14
    wit=next(witnesses) if code==14 else None
    assert check.reject(bb,code,wit),('reject',M,index,bb,code,wit)
    rejected+=1
   if (index+1)%50000==0:print('M',M,'checked',index+1,'of',len(b),'elapsed',round(time.time()-t0,1),flush=True)
  assert next(witnesses,None) is None
  assert len(parents)==lev['refined'] and covered==lev['covered']
  total+=len(b);receipts.append({'M':M,'nodes':len(b),'covered':covered,'rejected':rejected,'refined':len(parents)})
  print('PASS LEVEL',receipts[-1],'seconds',round(time.time()-t0,2),flush=True)
  sub=list(product((0,1),repeat=5));b=[tuple(2*x+y for x,y in zip(bb,ch)) for bb in parents for ch in sub];expectedM*=2
 assert not b,'unfinished leaves'
 out={'status':'PASS','rho':'3/20','total_nodes_checked':total,'levels':receipts,'interval_scale':SCALE,
 'all_decisions':'exact directed integer intervals; no floating-point acceptance',
 'quantized_centers_sha256':hashlib.sha256((base/'quantized48.json').read_bytes()).hexdigest(),
 'elapsed_seconds_informational':time.time()-started}
 (base.parent/'certificates'/'cover.json').write_text(json.dumps(out,indent=2));print('ALL PASS',out,flush=True)
if __name__=='__main__':main()
