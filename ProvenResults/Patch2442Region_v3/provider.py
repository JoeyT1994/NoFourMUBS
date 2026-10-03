"""Outward Taylor model of the cleared signed mean, retaining shared variables."""
from pathlib import Path
from fractions import Fraction as Q
import ctypes,math
from mpmath import iv
HERE=Path(__file__).resolve().parent
class CpuBudget(Exception):pass
_LIB=None
LIBFILE=HERE/'work/mean_engine.so'

def V(x):
 x=Q(x);return iv.mpf(x.numerator)/x.denominator

def bounds(x):
 a=math.nextafter(float(x.a),-math.inf);b=math.nextafter(float(x.b),math.inf)
 if not math.isfinite(a) or not math.isfinite(b) or not(iv.mpf(a)<=x.a and iv.mpf(b)>=x.b):raise ValueError('outward conversion')
 return [a,b]

def library():
 global _LIB
 if _LIB is None:
  lib=ctypes.CDLL(str(LIBFILE));ptr=ctypes.POINTER(ctypes.c_double);lib.mean_region.argtypes=[ptr,ptr];lib.mean_region.restype=ctypes.c_int;lib.set_budget.argtypes=[ctypes.c_double];lib.set_budget.restype=None;_LIB=lib
 return _LIB

def evaluate(c,r,tr=False):
 iv.prec=160;order=[0,2,1,3] if tr else [0,1,2,3];data=[]
 for i in order:
  x=V(c[i]);data+=bounds(iv.cos(x))+bounds(iv.sin(x))
 data+=[0.0 if r[i]==0 else bounds(V(r[i]))[1] for i in order];out=(ctypes.c_double*26)();status=library().mean_region((ctypes.c_double*20)(*data),out)
 if status==-2:raise CpuBudget('native CPU budget')
 if status!=26:raise ArithmeticError('Taylor range '+str(status))
 return list(out)

def signs(co):
 if co[1]<=0:return {-1,1},'R_nonpositive'
 L=max(Q(0),Q(co[0]));U=Q(co[1]);sg=set()
 for j in range(3):
  k=4+6*j;c=Q(co[k]);f=Q(co[k+2])
  if c>0 and f>0:return {-1,1},'criterion_3_2'
  for sigma in (-1,1):
   y=Q(co[k+4] if sigma==1 else -co[k+5]);ok=False
   if c>=0 and y>=0:ok=c>0 or y>0 and L>0
   elif c>0 and y<0:ok=c*c>y*y*U
   elif c<0 and y>0 and L>0:ok=y*y*L>c*c
   if ok:sg.add(sigma)
 return sg,'signed_3_1' if sg else 'unresolved_mean'

def terminal(c,r):
 proofs=[];seen=set();scores=[0.]*4
 for tr in (False,True):
  co=evaluate(c,r,tr);sg,why=signs(co);proofs.append(dict(transpose=tr,coefficients=co[:22],signs=sorted(sg),reason=why))
  if len(sg)==2:return dict(ok=True,reason=why,providers=proofs)
  if co[1]<243:seen.update((-s if tr else s) for s in sg)
  if seen=={-1,1}:return dict(ok=True,reason='coupled_signed_means_non_Tao',providers=proofs)
  order=[0,2,1,3] if tr else [0,1,2,3]
  for i,k in enumerate(order):scores[k]+=co[22+i]
 axis=max(range(4),key=lambda k:(scores[k],r[k]))
 return dict(ok=False,reason='unresolved_mean',axis=axis,providers=proofs)
