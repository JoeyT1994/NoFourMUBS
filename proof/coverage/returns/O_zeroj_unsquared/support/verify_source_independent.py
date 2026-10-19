#!/usr/bin/env python3
"""Independent exact source reconstruction for O the generic identity and the repeated Tpair identity.

Requires python-flint. Does not import any file from the old return.
Uses full polynomials in h, reduced by h^2=-XYZ, rather than its Pair class.
All divisions are by explicitly displayed scalar lambda denominators.
"""
from collections import defaultdict
from fractions import Fraction
from itertools import permutations
from flint import fmpq_mpoly_ctx

R=fmpq_mpoly_ctx.get(('z','X','Y','h'))
zz,xx,yy,hh=R.gens();ONE=R.constant(1);H2=R.constant(0)

def h_reduce(p):
    out=R.constant(0)
    for ex,co in p.terms():
        a,b,c,d=ex
        out+=co*zz**a*xx**b*yy**c*hh**(d%2)*H2**(d//2)
    return out

class Q:
    def __init__(self,n=0,d=1):
        if isinstance(n,Q):self.n,self.d=n.n,n.d;return
        n=n if hasattr(n,'terms') else R.constant(n)
        d=d if hasattr(d,'terms') else R.constant(d)
        assert d
        assert all(ex[3]==0 for ex,co in d.terms()),'Only scalar denominators allowed'
        n=h_reduce(n)
        g=n.gcd(d);n=n/g;d=d/g
        c=d.leading_coefficient();self.n=n/c;self.d=d/c
    def __add__(a,b):
        b=Q(b);return Q(a.n*b.d+b.n*a.d,a.d*b.d)
    __radd__=__add__
    def __neg__(a):return Q(-a.n,a.d)
    def __sub__(a,b):return a+-Q(b)
    def __rsub__(a,b):return Q(b)+-a
    def __mul__(a,b):
        b=Q(b);return Q(a.n*b.n,a.d*b.d)
    __rmul__=__mul__
    def __truediv__(a,b):
        b=Q(b);return Q(a.n*b.d,a.d*b.n)
    def __rtruediv__(a,b):return Q(b)/a
    def __pow__(a,k):
        assert k>=0
        return Q(a.n**k,a.d**k)

def add(a,b,scale=1):
    out=dict(a)
    for e,c in b.items():out[e]=out.get(e,0)+scale*c
    return {e:c for e,c in out.items() if c}
def mul(a,b):
    out=defaultdict(int)
    for e,c in a.items():
        for f,d in b.items():out[tuple(i+j for i,j in zip(e,f))]+=c*d
    return {e:c for e,c in out.items() if c}
def source_coefficients():
    # Regenerate the dephased signature, including complex conjugation.
    one={(0,0,0,0):1}
    a,b,c,d=[{tuple(int(i==j) for j in range(4)):1} for i in range(4)]
    E=[[one,one,one],[one,a,b],[one,c,d]];det={};per={}
    for p in permutations(range(3)):
        term=mul(E[1][p[1]],E[2][p[2]])
        per=add(per,term)
        inv=sum(p[i]>p[j] for i in range(3) for j in range(i+1,3))
        det=add(det,term,(-1)**inv)
    psi={tuple(v-1 for v in e):c for e,c in mul(per,mul(det,det)).items()}
    sig=add(psi,{tuple(-v for v in e):c for e,c in psi.items()},-1)
    out={}
    for name,shifts in [('Tx',((0,0),(0,0),(1,0))),('Tpair',((1,0),(0,0),(0,1)))]:
        terms=defaultdict(Fraction)
        for (a,b,c,d),co in sig.items():
            pts=[(-a-b,-c-d),(a,c),(b,d)]
            pts=[(u+i,v+j) for (u,v),(i,j) in zip(pts,shifts)]
            terms[tuple(sorted(pts[:2])),pts[2]]+=Fraction(co,2)
        out[name]={p:c for p,c in terms.items() if c}
    assert len(sig)==48 and [len(out[n]) for n in ('Tx','Tpair')]==[24,44]
    return out

COEFFICIENTS=source_coefficients()

def half_moments(s,S,t,T,r,q,u,v,w,U,V,W,pi,PI):
    # Traces in the actual coordinate cubics. The source formulas here use
    # actual products u*PI etc, not their already simplified lambda form.
    def positive(s,S,t,T,r,q,u,v,w,W,pi,up,vp):
        m={(0,0):Q(3),(1,0):s,(0,1):t,(1,-1):q,
           (2,0):s*s-2*u*S,(0,2):t*t-2*v*T,
           (2,-2):q*q-2*w*r,(1,1):s*t-pi,
           (2,-1):s*q-up,(-1,2):t*r-vp}
        m[3,0]=s**3-3*s*u*S+3*u
        m[0,3]=t**3-3*t*v*T+3*v
        m[3,-3]=q**3-3*q*w*r+3*w
        m[2,1]=s*m[1,1]-t*u*S+u*r
        m[1,2]=t*m[1,1]-s*v*T+v*q
        m[3,-1]=s*m[2,-1]-q*u*S+u*T
        m[3,-2]=q*m[2,-1]-s*w*r+w*t
        m[-1,3]=t*m[-1,2]-r*v*T+v*S
        m[-2,3]=r*m[-1,2]-t*W*q+W*s
        return m
    m=positive(s,S,t,T,r,q,u,v,w,W,pi,u*PI,v*PI)
    bar=positive(S,s,T,t,q,r,U,V,W,w,PI,U*pi,V*pi)
    for (i,j),val in bar.items():m[-i,-j]=val
    return m

def side(z,X,Y,Z,sgn):
    s,t=Q(sgn),Q(sgn);S,T=sgn*X,sgn*Y
    r,q=sgn*Q(hh)/Y,-sgn*Q(hh)/X
    p0=r*s*s+q*t*t+(3-Z)*s*t
    p1=t*S*S+r*r*T+(3-Y)*r*S
    p2=s*T*T+q*q*S+(3-X)*q*T
    b0=q*S*S+r*T*T+(3-Z)*S*T
    b1=T*s*s+q*q*t+(3-Y)*q*s
    b2=S*t*t+r*r*s+(3-X)*r*t
    l0,l1,l2=z*(3*z+9-Z),z*(3*z+9-Y),z*(3*z+9-X)
    a,b,c=p0/l0,p1/l1,p2/l2;A,B,C=b0/l0,b1/l1,b2/l2
    # Lambda norm identities are audited explicitly before simplification.
    Wrel=X*Y+X*Z+Y*Z-X*Y*Z-z*z*(z+3)**2
    for lam,bar in ((a,A),(b,B),(c,C)):
        check=lam*bar-1
        assert check.n % Wrel.n==0
    return half_moments(s,S,t,T,r,q,a*B,a*C,c*B,b*A,c*A,b*C,z*a,z*A)

def build(repeated=False,names=('Tx','Tpair')):
    global H2
    Xp,Yp=xx,xx if repeated else yy
    Zp=9-zz*zz-Xp-Yp
    H2=-Xp*Yp*Zp
    z,X,Y,Z=map(Q,(zz,Xp,Yp,Zp))
    M,N=side(z,X,Y,Z,1),side(z,X,Y,Z,-1)
    values={}
    for name in names:
        coefficients=COEFFICIENTS[name]
        val=Q(0)
        for (pts,pt),co in coefficients.items():
            val+=Q(co.numerator)/co.denominator*M[pts[0]]*M[pts[1]]*N[pt]
        values[name]=val
    return z,X,Y,Z,values

def run():
    z,X,Y,Z,val=build(names=('Tx',))
    t=z+3;eX=3*t-X;eY=3*t-Y;eZ=3*t-Z
    rel=X*Y+X*Z+Y*Z-X*Y*Z-z*z*t*t
    P=z**4+3*z**3*X+3*z**3+19*z*z*X-9*z*z+3*z*X*X+24*z*X-27*z+10*X*X-18*X
    qq=(t*t-X)*(z*t-(z+2)*X)
    lhs=X*(X-1)*eX*eY**2*eZ**2*val['Tx']
    rhs=18*z*(z+2)*t*(t-X)*(Y-Z)*(X*t*P-Q(hh)*qq)
    error=lhs-rhs
    assert error.n % rel.n==0,'Generic source identity (12) failed'
    print('PASS independent original-product source identity (12)',flush=True)

    z,v,_,Z,val=build(repeated=True,names=('Tpair',));t=z+3
    C2=2*v*v+(z*z+2*z-6)*v+z*z*t
    C=6*z**8+111*z**7+798*z**6+2942*z**5+5568*z**4+3096*z**3-7344*z*z-14256*z-7776
    D=6*z**6+63*z**5+358*z**4+1266*z**3+2592*z*z+2808*z+1296
    for name,target in [('Tpair',3*(C+2*v*D)/(16*t**5))]:
        realnum=R.from_dict({ex:co for ex,co in val[name].n.terms() if ex[3]==0})
        error=Q(realnum,val[name].d)-target
        assert error.n % C2.n==0,'Repeated real source identity (27a) failed: '+name
        print('PASS independent original-product real source identity (27a): '+name,flush=True)
    # Independent checks of the shortened repeated-modulus deduction.
    # Here all quantities are polynomials, without quotient-ring arithmetic.
    z,v=zz,xx;t=z+3;p=9-z*z;m=z*z+2*z-6
    C2=2*v*v+m*v+z*z*t
    q=(t*t-v)*(z*t-(z+2)*v)
    rr=(3*v-p)*q
    a=t*(11*z**4+86*z**3+156*z*z-108*z-324)
    b=3*z**4+46*z**3+256*z*z+588*z+468
    ee=6*(z+2)*v-7*z**3-62*z*z-156*z-108
    H=(z*z-6*z-18)*(z*z+2*z-2)*(z*z+6*z+6)
    G=6*z**5+43*z**4+128*z**3+216*z*z+216*z+108
    C=6*z**8+111*z**7+798*z**6+2942*z**5+5568*z**4+3096*z**3-7344*z*z-14256*z-7776
    D=6*z**6+63*z**5+358*z**4+1266*z**3+2592*z*z+2808*z+1296
    U=-28284*z**4-126868*z**3-269543*z*z-317298*z-201258
    V=4714*z**5-3211*z**4-226040*z**3-527112*z*z-50088*z+409428
    assert 4*rr==z*(a+b*v)+ee*C2
    assert (a+b*v)*(2*a-b*m-2*b*v)==-24*(z+2)*t**4*H-b*b*C2
    assert (C+2*v*D)*(C-D*m-2*v*D)==48*z**3*(z+2)*t**6*G-2*D*D*C2
    assert U*H+V*G==746496
    print('PASS independent shortened repeated proof: reduction, two norms, Bezout 746496',flush=True)
    print('PASS: no return source imports, no signature squares, no column splitting algebra',flush=True)

if __name__=='__main__':
    if not __debug__:
        raise SystemExit('Run without -O: assertions are mandatory.')
    run()
