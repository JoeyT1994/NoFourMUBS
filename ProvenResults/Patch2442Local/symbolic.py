"""Exact multivariate leading forms over Q(i,sqrt(3)); no sampled identities.

The variable rho is truncated after degree two *after radial deflation*.
Thus this computes R_4..6, Delta_12..14, A_12..14 and B_10..12.
"""
import sys
sys.dont_write_bytecode=True
import json,time
from pathlib import Path
from functools import lru_cache
import sympy as S
from sympy.polys.rings import ring
from sympy.polys.domains import QQ
HERE=Path(__file__).resolve().parent

def generate():
    start=time.process_time();K=QQ.algebraic_field(S.I,S.sqrt(3));rr,*u=ring('u1,u2,u3,u4',K)
    ii=rr.ground_new(K.from_sympy(S.I));zz=rr.ground_new(K.from_sympy(S.sqrt(3)));om=(-1+ii*zz)/2
    @lru_cache(None)
    def bc(x):
        vv=[QQ.zero]*(4-len(x.to_list()))+x.to_list();a3,a2,a1,a0=vv
        return K.new([-a3-a1/4,-a2,a1,a0+4*a2])
    def bar(p):return rr.from_dict({e:bc(v) for e,v in p.items()})
    class J:
        def __init__(self,x=0,y=0,z=0):self.v=[rr(x),rr(y),rr(z)]
        def __add__(x,y):
            y=y if isinstance(y,J) else J(y);return J(*(a+b for a,b in zip(x.v,y.v)))
        __radd__=__add__
        def __neg__(x):return J(*(-a for a in x.v))
        def __sub__(x,y):return x+-(y if isinstance(y,J) else J(y))
        def __rsub__(x,y):return J(y)+-x
        def __mul__(x,y):
            y=y if isinstance(y,J) else J(y)
            return J(*(sum((x.v[j]*y.v[k-j] for j in range(k+1)),rr.zero) for k in range(3)))
        __rmul__=__mul__
        def __truediv__(x,y):return J(*(a/y for a in x.v))
        def __pow__(x,n):
            if n<0:raise ValueError('negative generic series power')
            z=J(1)
            while n:
                if n&1:z=z*x
                x=x*x;n//=2
            return z
        def star(x):return J(*(bar(a) for a in x.v))
        def abs2(x):return x*x.star()
    rho=J(0,1)
    ph=[J(w,w*ii*v,-w*v*v/2) for w,v in zip([om,bar(om),bar(om),om],u)]
    phi=lambda v:J(ii*v,-v*v/2,-ii*v**3/6)
    s=-J(om)*phi(u[0])-J(bar(om))*phi(u[1]);t=-J(bar(om))*phi(u[2])-J(om)*phi(u[3]);r=-J(om)*phi(u[2]-u[0])-J(bar(om))*phi(u[3]-u[1])
    X=s.abs2();Y=t.abs2();Z=r.abs2();p=X+Y+Z;j=s*r*t.star()+s.star()*r.star()*t;w=X*Y+X*Z+Y*Z;h=X*Y*Z
    R=324*w-81*p*p+54*rho*p*j+rho**2*(27*j*j+18*p**3-54*p*w-324*h)
    Ps=[3*s*t+rho*(r*s*s+r.star()*t*t)-rho**2*Z*s*t,
        3*r*s.star()+rho*(t*s.star()**2+r*r*t.star())-rho**2*Y*r*s.star(),
        3*r.star()*t.star()+rho*(s*t.star()**2+r.star()**2*s.star())-rho**2*X*r.star()*t.star()]
    ns=[z.abs2() for z in Ps];delta=ns[0]*ns[1]*ns[2]
    U=[Ps[0]*ns[1]*ns[2]/2,Ps[1].star()*ns[0]*ns[2]/2,Ps[2].star()*ns[0]*ns[1]/2]
    Aj=[9*p-18*z+3*rho*j+rho**2*(w-p*p+2*z*p) for z in [Z,Y,X]]
    M=[rho**2*delta*s*t-Aj[0]*U[0],rho*delta*r.star(),rho**2*delta*s*r.star()-Aj[1]*U[1],rho*delta*t,rho**2*delta*t*r-Aj[2]*U[2],rho*delta*s]
    MB=[-J(ii)*U[0],J(0),J(ii)*U[1],J(0),J(ii)*U[2],J(0)]
    def cs(a,c):
        ai=a.star();ci=c.star()
        return [-(a-c)**2*(a+c)*ai**2*ci**2,(a-c)*(a+c)*(a*c-1)*ai**2*ci,(c-1)**2*(c+1)*ai*ci,-(a*a-c)*(c-1)*(c+1)*ai*ci**2,(a-1)**2*(a+1)*ai*ci,(a-1)*(a+1)*(a-c*c)*ai**2*ci]
    def up(z,n):return z.star()**(-n) if n<0 else z**n
    def record(poly):
        out=[]
        for ex,co in sorted(poly.items()):
            vv=[QQ.zero]*(4-len(co.to_list()))+co.to_list();a3,a2,a1,a0=vv
            assert a2==0 and a1+8*a3==0, 'coefficient not real quadratic'
            out.append([list(ex),str(a0),str(a1)])
        return out
    det=u[0]*u[3]-u[1]*u[2];f2=9*zz*det;xyz=X.v[0]*Y.v[0]*Z.v[0]
    assert R.v[0]==243*det**2==f2*f2
    assert delta.v[0]==729*xyz**2
    a,b,c,d=ph;xx=[J(1),a,b];yy=[J(1),c,d];pq=[(1,1),(1,-1),(2,-1),(0,1),(-1,2),(1,0)]
    assert K.ext.as_expr()==S.sqrt(3)+S.I
    out={'coefficient_ring':'Q(sqrt(3)); each term is [exponents, rational_part, sqrt3_part]',
         'R':{str(k+4):record(z) for k,z in enumerate(R.v)},
         'Delta':{str(k+12):record(z) for k,z in enumerate(delta.v)},'pairs':[]}
    for k,l in [(0,1),(0,2),(1,2)]:
        co=[z*up(xx[k],-e)*up(yy[k],-f) for z,(e,f) in zip(cs(xx[l]*xx[k].star(),yy[l]*yy[k].star()),pq)]
        sa=sum((x*y for x,y in zip(co,M)),J(0));sb=sum((x*y for x,y in zip(co,MB)),J(0));A=J(ii)*(sa-sa.star());B=J(ii)*(sb-sb.star())
        assert B.v[0]==S.Rational(9,2)*xyz*R.v[0]
        assert A.v[0]+f2*B.v[0]==0
        # This factored identity proves that [A^2-B^2 R]_25 vanishes
        # without expanding a degree-25 product.
        assert 2*f2*A.v[1]+2*R.v[0]*B.v[1]+B.v[0]*R.v[1]==0
        # Coefficients are retained below in the exact real quadratic field.
        out['pairs'].append({'pair':[k,l],'A':{str(n+12):record(z) for n,z in enumerate(A.v)},'B':{str(n+10):record(z) for n,z in enumerate(B.v)}})
    xx,yy,kk=S.symbols('x y k',real=True)
    expr=R.v[1].as_expr();sub={rr.symbols[0]:xx,rr.symbols[1]:yy,rr.symbols[2]:kk*xx,rr.symbols[3]:kk*yy}
    rank1=648*S.sqrt(3)*kk*(kk-1)*xx*yy*(xx-yy)*(kk*kk-kk+1)*(xx*xx-xx*yy+yy*yy)
    assert S.expand(expr.subs(sub)-rank1)==0
    # On u=(x,0,y,0), the degree-six coefficient has this factorization.
    sub={rr.symbols[0]:xx,rr.symbols[1]:0,rr.symbols[2]:yy,rr.symbols[3]:0}
    assert S.expand(R.v[2].as_expr().subs(sub)-9*(xx+yy)**2*(xx-2*yy)**2*(2*xx-yy)**2)==0
    return out,time.process_time()-start

def verify():
    out,cpu=generate();expected=json.loads((HERE/'symbolic_coefficients.json').read_text())
    if out!=expected:raise AssertionError('symbolic coefficient replay mismatch')
    return {'status':'PASS','global_orders':{'R':4,'Delta':12,'A':12,'B':10,'C':24,'F':52},
            'A2_minus_B2R_degrees_24_25_zero':True,'cpu_seconds':cpu}
if __name__=='__main__':
    if not __debug__:raise RuntimeError('Python -O forbidden')
    out,cpu=generate();(HERE/'symbolic_coefficients.json').write_text(json.dumps(out,separators=(',',':'))+'\n')
    print('exact coefficient generation CPU',cpu,flush=True)
