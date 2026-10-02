"""Exploratory sum of squared signed corners on the J=0 critical stratum.

Not a coverage verifier. Generic nonzero moment denominators are assumed.
"""
import collections,itertools,json,signal,time
from pathlib import Path
import sympy as sp
from flint import fmpq
from research_nonmatched_residual import F,CTX,common_sum

X,Y,z,_=[F(v) for v in CTX.gens()]
Z=9-z*z-X-Y
R2=-X*Z/Y
R1=F(0)


class Quad:
    def __init__(self,a=0,b=0):
        if isinstance(a,Quad):self.a,self.b=a.a,a.b
        else:self.a,self.b=F(a),F(b)
    def __add__(a,b):
        b=Quad(b);return Quad(a.a+b.a,a.b+b.b)
    __radd__=__add__
    def __neg__(a):return Quad(-a.a,-a.b)
    def __sub__(a,b):return a+-Quad(b)
    def __rsub__(a,b):return Quad(b)+-a
    def __mul__(a,b):
        b=Quad(b);return Quad(a.a*b.a+R2*a.b*b.b,a.a*b.b+a.b*b.a+R1*a.b*b.b)
    __rmul__=__mul__
    def __truediv__(a,b):
        if isinstance(b,Quad):
            assert not b.b.n;b=b.a
        return Quad(a.a/b,a.b/b)
    def __pow__(a,n):
        assert n>=0
        out=Quad(1)
        for _ in range(n):out=out*a
        return out


def side(s,S,t,T,r,Q,g=None,zz=None):
    if g is None:g=3*z*z
    if zz is None:zz=z
    P0=r*s*s+Q*t*t+s*t*(3-Z)
    P1=t*S*S+r*r*T+r*S*(3-Y)
    P2=s*T*T+Q*Q*S+Q*T*(3-X)
    B0=Q*S*S+r*T*T+S*T*(3-Z)
    B1=T*s*s+Q*Q*t+Q*s*(3-Y)
    B2=S*t*t+r*r*s+r*t*(3-X)
    L0=g+(9-Z)*zz;L1=g+(9-Y)*zz;L2=g+(9-X)*zz
    la,lb,lc=P0/L0,P1/L1,P2/L2
    ba,bb,bc=B0/L0,B1/L1,B2/L2
    u,v,w=la*bb,la*bc,lc*bb
    U,V,W=lb*ba,lc*ba,lb*bc
    pi,PI=la*zz,ba*zz
    def half(s,S,t,T,r,Q,u,v,w,wb,pi,up,vp):
        m={(0,0):Quad(3),(1,0):s,(0,1):t,(1,-1):Q,
           (2,0):s*s-2*u*S,(0,2):t*t-2*v*T,
           (2,-2):Q*Q-2*w*r,(1,1):s*t-pi,
           (2,-1):s*Q-up,(-1,2):t*r-vp}
        m[3,0]=s**3-3*s*u*S+3*u
        m[0,3]=t**3-3*t*v*T+3*v
        m[3,-3]=Q**3-3*Q*w*r+3*w
        m[2,1]=s*m[1,1]-t*u*S+u*r
        m[1,2]=t*m[1,1]-s*v*T+v*Q
        m[3,-1]=s*m[2,-1]-Q*u*S+u*T
        m[3,-2]=Q*m[2,-1]-s*w*r+w*t
        m[-1,3]=t*m[-1,2]-r*v*T+v*S
        m[-2,3]=r*m[-1,2]-t*wb*Q+wb*s
        return m
    m=half(s,S,t,T,r,Q,u,v,w,W,pi,bb*zz,bc*zz)
    bar=half(S,s,T,t,Q,r,U,V,W,w,PI,lb*zz,lc*zz)
    m[2,2]=m[1,1]**2-2*u*v*bar[1,1]
    bar[2,2]=bar[1,1]**2-2*U*V*m[1,1]
    m[4,-2]=m[2,-1]**2-2*u*w*bar[2,-1]
    bar[4,-2]=bar[2,-1]**2-2*U*W*m[2,-1]
    m[-2,4]=m[-1,2]**2-2*v*W*bar[-1,2]
    bar[-2,4]=bar[-1,2]**2-2*V*w*m[-1,2]
    for (i,j),val in bar.items():m[-i,-j]=val
    return m


def squared_corner_moment_coefficients():
    a,b,c,d=sp.symbols('a b c d',nonzero=True)
    E=sp.Matrix([[1,1,1],[1,a,b],[1,c,d]])
    per=sum(sp.prod(E[i,p[i]] for i in range(3)) for p in itertools.permutations(range(3)))
    t=per*E.det()**2/(a*b*c*d)
    D=sp.expand(t-t.xreplace({v:1/v for v in (a,b,c,d)}))
    squared=sp.expand(-D*D/6)
    ans=collections.defaultdict(lambda:sp.Rational(0))
    zeros={(1,0),(-1,0),(0,1),(0,-1),(1,-1),(-1,1)}
    for term in squared.as_ordered_terms():
        powers=term.as_powers_dict()
        A,B,C,Dd=[int(powers.get(v,0)) for v in (a,b,c,d)]
        coefficient=term/(a**A*b**B*c**C*d**Dd)
        points=[(-A-B,-C-Dd),(A,C),(B,Dd)]
        if any(p in zeros for p in points):continue
        coefficient*=6**points.count((0,0))
        key=tuple(sorted(p for p in points if p!=(0,0)))
        ans[key]+=coefficient
    return {p:c for p,c in ans.items() if c}


if __name__=='__main__':
    signal.alarm(180);start=time.process_time()
    def mark(s):print(f'{time.process_time()-start:.2f}s {s}',flush=True)
    rr=Quad(0,1)
    values=[Quad(1),Quad(X),Quad(1),Quad(Y),rr,rr*(-Y/X)]
    m0=side(*values);m1=side(*[-v for v in values])
    m={key:m0[key]+m1[key] for key in m0}
    mark('total six-column moments')
    co=squared_corner_moment_coefficients();mark(f'{len(co)} moment monomials')
    terms=[]
    for key,c in co.items():
        val=Quad(fmpq(str(c)))
        for p in key:val=val*m[p]
        terms.append(val)
    a=common_sum([t.a for t in terms]);b=common_sum([t.b for t in terms])
    mark(f'sum numerator terms {len(a.n)}, quadratic coefficient terms {len(b.n)}')
    constraint=(X*Y+X*Z+Y*Z-X*Y*Z-z*z*(z+3)**2).n
    an=a.n%constraint;bn=b.n%constraint
    mark(f'remainders {len(an)}, {len(bn)}')
    for name,p in [('numerator',an),('denominator',a.d),('quadratic_numerator',bn)]:
        unit,factors=p.factor() if p else (0,[])
        print(name,'unit',unit,'factors',[(str(f) if len(f)<100 else f'{len(f)} terms',e) for f,e in factors],flush=True)
    out={'status':'RESEARCH_ONLY','constraint':str(constraint),'a':a.record(),'b':b.record(),
         'a_numerator_remainder':str(an),'b_numerator_remainder':str(bn)}
    Path(__file__).with_name('Research').joinpath('critical_J0_moments.json').write_text(json.dumps(out,indent=2)+'\n')
