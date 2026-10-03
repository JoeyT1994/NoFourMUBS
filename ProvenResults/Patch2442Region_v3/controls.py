"""Independent exact polynomial, coefficient and physical negative controls."""
from pathlib import Path
from fractions import Fraction as Q
import ctypes,subprocess,json,time,sys,importlib.util,itertools,math
from mpmath import iv
import sympy as S
import provider
HERE=Path(__file__).resolve().parent

def exact_inside(pair,x):
 if not (iv.mpf(pair[0])<=x.a and iv.mpf(pair[1])>=x.b):raise AssertionError('reference interval not enclosed')

def reference(phases):
 a,b,c,d=phases;bar=lambda z:iv.mpc(z.real,-z.imag);s=-1-a-b;t=-1-c-d;r=-1-c/a-d/b
 X=(s*bar(s)).real;Y=(t*bar(t)).real;Z=(r*bar(r)).real;p=X+Y+Z;j=2*(s*r*bar(t)).real;w=X*Y+X*Z+Y*Z-X*Y*Z
 g=27-3*p+j;eta=9-p+j;chi=w-(p-9)*(p-18)+(p-15)*j;R=4*g*g*eta-chi*chi
 P=[r*s*s+bar(r)*t*t+(3-Z)*s*t,t*bar(s)**2+r*r*bar(t)+(3-Y)*r*bar(s),s*bar(t)**2+bar(r)**2*bar(s)+(3-X)*bar(r)*bar(t)]
 A=[chi+2*k*eta for k in [9-Z,9-Y,9-X]];delta=iv.mpf(1)
 for z in P:delta*= (z*bar(z)).real
 I=iv.mpc(0,1);M=[s*t-A[0]/(2*bar(P[0])),bar(r),s*bar(r)-A[1]/(2*P[1]),t,t*r-A[2]/(2*P[2]),s]
 B=[-I/(2*bar(P[0])),0,I/(2*P[1]),0,I/(2*P[2]),0]
 def coeff(a,c):return [-(a-c)**2*(a+c)/(a*a*c*c),(a-c)*(a+c)*(a*c-1)/(a*a*c),(c-1)**2*(c+1)/(a*c),-(a*a-c)*(c-1)*(c+1)/(a*c*c),(a-1)**2*(a+1)/(a*c),(a-1)*(a+1)*(a-c*c)/(a*a*c)]
 out=[R,delta];xx=[iv.mpc(1),a,b];yy=[iv.mpc(1),c,d];pq=[(1,1),(1,-1),(2,-1),(0,1),(-1,2),(1,0)]
 for u,v in [(0,1),(0,2),(1,2)]:
  ds=[z*xx[u]**(-e)*yy[u]**(-f) for z,(e,f) in zip(coeff(xx[v]/xx[u],yy[v]/yy[u]),pq)]
  sa=sum(x*y for x,y in zip(ds,M));sb=sum(x*y for x,y in zip(ds,B));alpha=delta*(I*(sa-bar(sa))).real;beta=delta*(I*(sb-bar(sb))).real;D=3*delta;C=alpha*alpha+(beta*beta-D*D)*R;T=2*alpha*beta
  out.extend([C,C*C-T*T*R,T])
 return out

def run():
 if not __debug__:raise ValueError('Python -O forbidden')
 start=time.process_time();iv.prec=224;binary=HERE/'work/control_engine.so'
 subprocess.run(['c++','-O2','-DTM_ORDER=4','-std=c++17','-fno-fast-math','-ffp-contract=off','-fPIC','-shared',str(HERE/'control_engine.cpp'),'-o',str(binary)],check=True,capture_output=True,text=True)
 lib=ctypes.CDLL(str(binary));dp=ctypes.POINTER(ctypes.c_double);ip=ctypes.POINTER(ctypes.c_int)
 lib.control_exponents.argtypes=[ip];ex=(ctypes.c_int*280)();n=lib.control_exponents(ex);assert n==70
 es=[tuple(ex[4*i+j] for j in range(4)) for i in range(n)];assert len(set(es))==70 and set(es)=={e for e in itertools.product(range(5),repeat=4) if sum(e)<=4}
 lib.control_weights.argtypes=[dp];ww=(ctypes.c_double*(2*625*n))();assert lib.control_weights(ww)==2*625*n
 # Independent exact univariate basis reconstruction, then every tensor weight.
 t=S.symbols('t');one={}
 for m in range(5):
  aa=S.symbols('b:5');target=S.Poly(sum(aa[i]*S.binomial(4,i)*t**i*(1-t)**(4-i) for i in range(5))-(2*t-1)**m,t)
  sol=S.solve(target.all_coeffs(),aa);one[m]=[Q(int(sol[x].p),int(sol[x].q)) for x in aa]
 for k in range(625):
  idx=[k//5**v%5 for v in range(4)]
  for m,e in enumerate(es):
   v=math.prod(one[e[j]][idx[j]] for j in range(4));lo,hi=map(Q,ww[2*(k*n+m):2*(k*n+m)+2]);assert lo<=v<=hi
 x=S.symbols('x:4');forms=[(1+x[0])**6,(x[0]+x[1])**5,x[0]**2+x[1]**2,(1+x[0])*(1-x[0])*(1+x[1])**4,S.Integer(0)]
 lib.control_polynomial.argtypes=[ctypes.c_int,dp]
 for k,f in enumerate(forms):
  z=(ctypes.c_double*(4*n+4))();assert lib.control_polynomial(k,z)==4*n+4;poly=S.Poly(S.expand(f),*x)
  for i,e in enumerate(es):
   co=Q(int(poly.coeff_monomial(e)));assert Q(z[4*i])<=co<=Q(z[4*i+1]);assert z[4*i+2]<=0<=z[4*i+3]
  trunc=sum(poly.coeff_monomial(e)*math.prod(v**a for v,a in zip(x,e)) for e in es);rem=S.Poly(S.expand(f-trunc),*x)
  for point in itertools.product((-1,Q(-1,2),0,Q(1,2),1),repeat=4):
   value=sum(Q(int(co))*math.prod(v**a for v,a in zip(point,e)) for e,co in rem.terms());assert Q(z[4*n])<=value<=Q(z[4*n+1])
 lib.mean_region.argtypes=[dp,dp];point_count=0
 for ints in [(-3,2,1,5,2,1,-2,3),(2,1,3,1,4,3,5,2),(1,2,2,3,3,4,4,5)]:
  phases=[];raw=[]
  for m,n0 in zip(ints[::2],ints[1::2]):
   re=Q(m*m-n0*n0,m*m+n0*n0);im=Q(2*m*n0,m*m+n0*n0);z=iv.mpc(provider.V(re),provider.V(im));phases.append(z);raw+=provider.bounds(z.real)+provider.bounds(z.imag)
  vals=(ctypes.c_double*26)();assert lib.mean_region((ctypes.c_double*20)(*raw,*([0.]*4)),vals)==26
  for k,v in enumerate(reference(phases)):exact_inside(vals[2*k:2*k+2],v);point_count+=1
 # Exact physical family and all-400 maximal-corner census, adopted algebra replay.
 spec=importlib.util.spec_from_file_location('physical_family',HERE/'physical_algebra.py');alg=importlib.util.module_from_spec(spec);spec.loader.exec_module(alg);D,R=alg.corner_algebra();physical=alg.physical_controls(D,R)
 provider.LIBFILE=binary;provider._LIB=None
 from search import certify
 negatives=[]
 for delta in [Q(1,100),Q(1,5),Q(1,2)]:
  exact=[-2*iv.pi/3,-iv.pi/3+provider.V(delta),provider.V(0),-iv.pi+provider.V(delta)]
  for order in ([0,1,2,3],[0,2,1,3]):
   c=[Q(float(exact[i].mid)) for i in order];r=[Q(1,2**35)]*4
   assert all(abs(exact[i]-provider.V(cc)).b<provider.V(rr).a for i,cc,rr in zip(order,c,r))
   q=certify(c,r,cpu=.3,depth=4,nodes=31);assert not q['ok'];negatives.append(dict(delta=str(delta),transpose=order[1]==2,reason=q['reason']))
 # This closed box contains both the R=0 family endpoint and positive strict-D0 points.
 exact=[-2*iv.pi/3,-iv.pi/3,provider.V(0),-iv.pi];c=[Q(float(z.mid)) for z in exact];r=[Q(1,1000)]*4
 assert all(abs(z-provider.V(cc)).b<provider.V(rr).a for z,cc,rr in zip(exact,c,r))
 q=certify(c,r,cpu=.3,depth=4,nodes=31);assert not q['ok']
 result=dict(status='PASS',tensor_Bernstein_weights=625*70,polynomial_controls=5,exact_remainder_point_controls=5*625,independent_mean_coefficients=point_count,physical_family=physical,strict_D0_negative_controls=negatives,R_zero_touching_control=q['reason'],cpu_seconds=time.process_time()-start)
 (HERE/'results/CONTROLS.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result),flush=True)
 return result
if __name__=='__main__':run()
