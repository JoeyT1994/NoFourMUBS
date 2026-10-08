"""Exact algebra/convention checks and independent arithmetic controls.

The continuation and analytic remainder proofs are written in PROOF.md.
These checks do not purport to be a proof-assistant formalization.
"""
from fractions import Fraction as Q
from collections import defaultdict
from itertools import permutations,product
from interval import *
from geometry import FRAMES,DOMAIN,HU,HW,EXPONENTS,majorants
from charts import PhaseBase,double_center
from rootchart import QTERMS
import ctypes
from fastmm import lib,endpoints,audit as matrix_audit

def clean(p):return {e:c for e,c in p.items() if c}
def add(*ps):
 d=defaultdict(Q)
 for p in ps:
  for e,c in p.items():d[e]+=c
 return clean(d)
def sc(p,a):return clean({e:a*c for e,c in p.items()})
def mul(p,q):
 d=defaultdict(Q)
 for e,c in p.items():
  for f,b in q.items():d[tuple(x+y for x,y in zip(e,f))]+=c*b
 return clean(d)
def star(p):return {tuple(-x for x in e):c for e,c in p.items()}
def unit(n):return {(0,)*n:Q(1)}
def variable(n,k):return {tuple(int(j==k) for j in range(n)):Q(1)}
def parity(p):return (-1)**sum(p[i]>p[j] for i in range(len(p)) for j in range(i+1,len(p)))

def invariant_polynomial():
 O=unit(4);a,b,c,d=[variable(4,k) for k in range(4)]
 s=sc(add(O,a,b),-1);t=sc(add(O,c,d),-1);r=sc(add(O,mul(c,star(a)),mul(d,star(b))),-1)
 X,Y,Z=[mul(x,star(x)) for x in [s,t,r]];p=add(X,Y,Z);J=add(mul(mul(s,r),star(t)),mul(mul(star(s),star(r)),t))
 W=add(mul(X,Y),mul(X,Z),mul(Y,Z),sc(mul(mul(X,Y),Z),-1))
 g=add(sc(O,27),sc(p,-3),J);eta=add(sc(O,9),sc(p,-1),J)
 chi=add(W,sc(mul(add(p,sc(O,-9)),add(p,sc(O,-18))),-1),mul(add(p,sc(O,-15)),J))
 return add(sc(mul(mul(g,g),eta),4),sc(mul(chi,chi),-1))

def exact_side_audit():
 O=unit(6);X=[[O,O,O],[variable(6,k) for k in range(3)],[variable(6,k+3) for k in range(3)]]
 dt={};pm={}
 for pp in permutations(range(3)):
  t=O
  for i,j in enumerate(pp):t=mul(t,X[i][j])
  dt=add(dt,sc(t,parity(pp)));pm=add(pm,t)
 S=sc(mul(pm,mul(dt,dt)),-1);S={tuple(e[i]-1 for i in range(6)):c for e,c in S.items()}
 Q2i={}
 for powers,cw in QTERMS:
  e=tuple(int(powers[6*i+j]) for i in [1,2] for j in [3,4,5]);Q2i=add(Q2i,{e:cw,tuple(-x for x in e):-cw})
 require(sc(Q2i,4)==add(S,sc(star(S),-1)),'4 Q = Im(-perm det^2/product) failed')
 return dict(sine_terms=len(QTERMS),signed_side_identity=True)

ROOTS=[(Q(1),Q(0)),(Q(0),Q(1)),(Q(-1),Q(1)),(Q(-1),Q(0)),(Q(0),Q(-1)),(Q(1),Q(-1))]
def radd(out,e,z,scale_=Q(1)):
 x,y=out.get(e,(Q(0),Q(0)));a,b=ROOTS[z%6];out[e]=(x+scale_*a,y+scale_*b)
def rclean(out):return {e:c for e,c in out.items() if c!=(0,0)}

def exact_reference_audit():
 B=PhaseBase(v(0),v(0));C=B.coef
 # The raw affine reference agrees entrywise with [[F3,F3],[F3 Z,-F3 Z]].
 order=[0,1,3,2,4,5]
 for i,old in enumerate(order):
  r=old%3;lower=old>=3
  for j in range(6):
   k=j%3;expected=[Q(2*r*k,3)+int(lower and j>=3)+(Q(k,3) if lower else 0),Q(int(lower and k==1)),-Q(int(lower and k!=0)),Q(0),Q(0)]
   require((C[i,j,0]-expected[0])%2==0 and list(C[i,j,1:])==expected[1:],'explicit block reference mismatch')
 for i in range(6):
  for j in range(6):
   d={}
   for k in range(6):
    coeff=C[i,k]-C[j,k];root=3*coeff[0];require(root.denominator==1,'sixth-root coefficient');e=tuple(int(x) for x in coeff[1:3]);radd(d,e,int(root))
   require(rclean(d)==({(0,0):(Q(6),Q(0))} if i==j else {}),'Fourier Gram Laurent identity')
 d={}
 for powers,cw in QTERMS:
  v0=sum((int(x)*C.reshape(36,5)[i,0] for i,x in enumerate(powers)),Q(0));vp=sum((int(x)*C.reshape(36,5)[i,1] for i,x in enumerate(powers)),Q(0));vq=sum((int(x)*C.reshape(36,5)[i,2] for i,x in enumerate(powers)),Q(0));require((3*v0).denominator==vp.denominator==vq.denominator==1,'Q reference exponents')
  e=(int(vp),int(vq));radd(d,e,int(3*v0),cw);radd(d,tuple(-x for x in e),-int(3*v0),-cw)
 expected={}
 for e in [(2,-1),(1,1),(1,-2)]:radd(expected,e,0,Q(-3,4));radd(expected,tuple(-x for x in e),0,Q(3,4))
 require(rclean(d)==rclean(expected),'Q_F = -3/4 sum of three sines')
 # N^T with reordered columns is F(P-q,-q); a monomial involution gives F(P,q).
 import sympy as sp
 p,q=sp.symbols('p q');reorder=[0,2,1,4,3,5]
 def fp(a,b,i,j):return sp.Rational(i*j,6)+(j%2)*[0,a,b][i%3]
 def np_(i,j):return sp.Rational(C[i,j,0])/2+sp.Rational(C[i,j,1])*p+sp.Rational(C[i,j,2])*q
 for i in range(6):
  for j in range(6):
   require(sp.expand(fp(p-q,-q,i,j)-np_(reorder[j],i)).is_Integer,'reference transpose convention')
   require(sp.expand(fp(p-q,-q,i,j)-fp(p,q,(2-i)%6,(-j)%6)+fp(p,q,2,(-j)%6)).is_Integer,'Fourier parameter involution')
 return dict(reference_Gram_entries=36,signed_reference_formula=True,transpose_phase_checks=72)

def frame_audit(R):
 require(len(FRAMES)==144,'complete frame count')
 for fr in FRAMES:
  M=fr['matrix'];transformed={}
  for e,c in R.items():
   ee=tuple(sum(e[i]*M[i][j] for i in range(4)) for j in range(4));transformed[ee]=transformed.get(ee,Q(0))+c
  require(clean(transformed)==R,'R frame invariance')
 return dict(frames=144,R_Laurent_terms=len(R))

def gauge_audit():
 from signed import phase_projection
 B=PhaseBase(v(0),v(0));FP=B.coef[:,:,1];FQ=B.coef[:,:,2];A=double_center(FP);Bf=double_center(FQ)
 require(sum(x*x for x in A.flat)==2 and sum(x*x for x in Bf.flat)==2 and sum(x*y for x,y in zip(A.flat,Bf.flat))==-1,'family gauge Gram')
 for a,b in zip(A,Bf):
  require(sum(x*x for x in a)/6==Q(1,18) and sum(x*x for x in b)/6==Q(1,18) and sum(x*y for x,y in zip(a,b))/6==Q(-1,36),'row family metric')
 rng=__import__('random').Random(1062)
 for _ in range(4):
  C=np.array([[Q(rng.randrange(-32,33),64) for j in range(6)] for i in range(6)],dtype=object);T,aa,bb=phase_projection(C)
  require(all(sum(row)==0 for row in T) and all(sum(col)==0 for col in T.T),'gauge row/column sums')
  require(sum(x*y for x,y in zip(T.flat,A.flat))==0 and sum(x*y for x,y in zip(T.flat,Bf.flat))==0,'family phase orthogonality')
  require(np.array_equal(double_center(C),T+aa*A+bb*Bf),'phase projection exact reconstruction')
 require(2*iv.pi**2/9 < v(Q(9,4)),'family distance coefficient 3/2')
 data=majorants();L=list(map(Q,data['row_coefficients']));Lu=L[0]+Q(data['error_row'])/HU;Lw=L[1]+Q(data['error_row'])/HW
 for k,(a,b) in enumerate(EXPONENTS[2:],start=2):
  if a and b:Lu+=L[k]*HU**(a-1)*HW**b/2;Lw+=L[k]*HU**a*HW**(b-1)/2
  elif a:Lu+=L[k]*HU**(a-1)
  else:Lw+=L[k]*HW**(b-1)
 require(Lu<=Q(1,3) and Lw<=Q(1,5),'global simple transverse constants')
 Lb=list(map(Q,data['both_coefficients']));Bu=Lb[0]+Q(data['error_both'])/HU;Bw=Lb[1]+Q(data['error_both'])/HW
 for k,(a,b) in enumerate(EXPONENTS[2:],start=2):
  if a and b:Bu+=Lb[k]*HU**(a-1)*HW**b/2;Bw+=Lb[k]*HU**a*HW**(b-1)/2
  elif a:Bu+=Lb[k]*HU**(a-1)
  else:Bw+=Lb[k]*HW**(b-1)
 require(Bu<=Q(1,3) and Bw<=Q(1,5),'both-orientation simple constants')
 return dict(row_linear_u=str(Lu),row_linear_w=str(Lw),both_linear_u=str(Bu),both_linear_w=str(Bw),simple_bound='|u|/3+|w|/5',family_bound='3/2 sqrt(dp^2-dp*dq+dq^2)')

def scalar_audit():
 t=span(Q(-3,8),Q(3,8));q=span(DOMAIN[2],DOMAIN[3]);der=12*(iv.cos(2*t)+v(Q(97,100))*iv.cos(t))
 require(der.a>19,'reference scalar root derivative')
 P=span(DOMAIN[0],DOMAIN[1]);cu=2*iv.pi*(P-q)+box(HW);dv=-2*iv.pi*q
 require(cu.a>=v(Q(-3,8)) and cu.b<=v(Q(9,16)) and dv.a>=v(Q(-5,32)) and dv.b<=v(Q(7,64)),'physical seed strip containment')
 require(HU<Q(13,128),'normal u strip containment')
 require(mag(iv.pi*(2*P-q))<v(Q(3,8)),'root reference range')
 return dict(reference_root_derivative_lower=str(as_rational(der.a)),c_phase_strip=bounds_text(cu),d_phase_strip=bounds_text(dv))

def polynomial_backend_audit():
 from fastmm import from_float
 from math import factorial
 exps=[(d-j,j) for d in range(1,19) for j in range(d+1)]
 rng=__import__('random').Random(1841062);checks=0
 arr=np.ctypeslib.ndpointer(dtype=np.float64,ndim=2,flags='C_CONTIGUOUS');ai=np.ctypeslib.ndpointer(dtype=np.int32,ndim=1,flags='C_CONTIGUOUS')
 fn=lib().tangent_polynomial;fn.argtypes=[arr]*14+[ai,ai,arr,arr,arr,ctypes.c_int,ctypes.c_int,ctypes.c_double,ctypes.c_double];fn.restype=ctypes.c_int
 for wh in [0,1]:
  coeff=[[Q(rng.randrange(-5,6),1024) for _ in range(9)] for j in range(3)];a,b,c=coeff;bp,bq=Q(2),Q(-3);hp,hq=Q(1,512),Q(1,1024)
  pol={e:x for e,x in zip(EXPONENTS,a) if x};pp={e:x for e,x in zip(EXPONENTS,b) if x};pq={e:x for e,x in zip(EXPONENTS,c) if x};power=unit(2);er={};ei={}
  for k in range(1,6):
   power=mul(power,pol);sgn=[1,1,-1,-1][k%4]
   if k%2:ei=add(ei,sc(power,Q(sgn,factorial(k))))
   else:er=add(er,sc(power,Q(sgn,factorial(k))))
  Eplus=add(unit(2),er)
  pre=sc(add(sc(ei,bp),mul(pp,ei)),-hp);pim=sc(add(sc(er,bp),mul(pp,Eplus)),hp)
  qre=sc(add(sc(ei,bq),mul(pq,ei)),-hq);qim=sc(add(sc(er,bq),mul(pq,Eplus)),hq)
  exact=[er,pre,qre] if wh==0 else [ei,pim,qim]
  inp=[]
  for mat_ in [[[Q(1)]],[[Q(0)]],[a],[b],[c],[[bp]],[[bq]]]:inp.extend(endpoints(mat(mat_)))
  out=[np.empty((1,567)),np.empty((1,567))];status=fn(*inp,np.array([0],np.int32),np.array([wh],np.int32),np.array([[1.]]),*out,1,1,float(hp),float(hq));require(status==0,'synthetic polynomial backend rejected')
  for part in range(3):
   for k,e in enumerate(exps):
    val=exact[part].get(e,Q(0));require(Q(float(out[0][0,part*189+k]))<=val<=Q(float(out[1][0,part*189+k])),'exact tangential polynomial coefficient containment');checks+=1
 return dict(exact_rational_polynomial_coefficient_checks=checks)

def trig_backend_audit():
 arr=np.ctypeslib.ndpointer(dtype=np.float64,ndim=1,flags='C_CONTIGUOUS');fn=lib().audit_trig;fn.argtypes=[ctypes.c_double,ctypes.c_double,arr];fn.restype=ctypes.c_int
 checks=0
 for n in range(-32,33):
  x=Q(n,16);out=np.empty(4);st=fn(float(x),float(x),out);require(st==0,'trig point rejected');co,si=iv.cos(v(x)),iv.sin(v(x))
  require(v(Q(out[0]))<=co.a and co.b<=v(Q(out[1])) and v(Q(out[2]))<=si.a and si.b<=v(Q(out[3])),'trig directed cross-check');checks+=2
 require(fn(-3.,0.,np.empty(4))!=0,'trig out-of-domain rejection')
 return dict(trigonometric_point_cross_checks=checks)

def audit():
 out={};out.update(exact_side_audit());out.update(exact_reference_audit());R=invariant_polynomial();out.update(frame_audit(R));out.update(gauge_audit());out.update(scalar_audit());out.update(matrix_audit());out.update(polynomial_backend_audit());out.update(trig_backend_audit());out.update(seed_backend_audit(R));return out

def seed_backend_audit(R=None):
 """Independent exact Laurent evaluation of R and all four phase derivatives."""
 from geometry import native_R
 if R is None:R=invariant_polynomial()
 def gm(x,y):return (x[0]*y[0]-x[1]*y[1],x[0]*y[1]+x[1]*y[0])
 def ga(x,y):return (x[0]+y[0],x[1]+y[1])
 inputs=[[(Q(3,5),Q(4,5)),(Q(5,13),Q(12,13)),(Q(-3,5),Q(4,5)),(Q(0),Q(-1))],[(Q(0),Q(1)),(Q(-1),Q(0)),(Q(1),Q(0)),(Q(3,5),Q(-4,5))]]
 checks=0
 for aa in inputs:
  powers=[]
  for j,a in enumerate(aa):
   require(a[0]**2+a[1]**2==1,'exact unit test seeds');tab={0:(Q(1),Q(0))}
   for k in range(1,1+max(abs(e[j]) for e in R)):tab[k]=gm(tab[k-1],a);tab[-k]=(tab[k][0],-tab[k][1])
   powers.append(tab)
  accum=[(Q(0),Q(0)) for _ in range(5)]
  for e,coeff in R.items():
   term=(coeff,Q(0))
   for j in range(4):term=gm(term,powers[j][e[j]])
   accum[0]=ga(accum[0],term)
   for j in range(4):accum[j+1]=ga(accum[j+1],(-e[j]*term[1],e[j]*term[0]))
  intervals=native_R([c(x,y) for x,y in aa])
  for actual,interval in zip(accum,intervals):
   require(actual[1]==0 and interval.a<=v(actual[0]).a and v(actual[0]).b<=interval.b,'exact R/phase derivative backend containment');checks+=1
 return dict(exact_seed_invariant_derivative_checks=checks)

if __name__=='__main__':
 import json,time
 t=time.process_time();out=audit();print(json.dumps(dict(status='PASS',cpu_s=time.process_time()-t,checks=out),indent=2))
