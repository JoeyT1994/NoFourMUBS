"""The two mixed-corner sums, reconstructed without a square sum.

F is exact rational arithmetic, Pair is a rank-two quadratic algebra.
The quadratic is only the zero-J relation h^2=-XYZ; it is not a
column splitting algebra. No critical-square-sum code is imported.
"""
from collections import defaultdict
from fractions import Fraction
from itertools import permutations
from flint import fmpq_mpoly_ctx
CTX=fmpq_mpoly_ctx.get(['z','X','Y','h'])
ZERO=CTX.constant(0);ONE=CTX.constant(1)
class F:
    def __init__(self,n=0,d=1,reduce=True):
        if isinstance(n,F):self.n,self.d=n.n,n.d;return
        self.n=n if hasattr(n,'terms') else CTX.constant(n)
        self.d=d if hasattr(d,'terms') else CTX.constant(d)
        assert self.d
        if not self.n:self.d=ONE;return
        if reduce:
            g=self.n.gcd(self.d);self.n=self.n/g;self.d=self.d/g
        lead=self.d.leading_coefficient();self.n=self.n/lead;self.d=self.d/lead
    def __add__(a,b):
        b=F(b)
        if not a.n:return b
        if not b.n:return a
        g=a.d.gcd(b.d);ad=a.d/g;bd=b.d/g;n=a.n*bd+b.n*ad;h=n.gcd(g)
        return F(n/h,ad*(b.d/h),False)
    __radd__=__add__
    def __neg__(a):return F(-a.n,a.d,False)
    def __sub__(a,b):return a+-F(b)
    def __rsub__(a,b):return F(b)+-a
    def __mul__(a,b):
        b=F(b)
        if not a.n or not b.n:return F(0)
        g=a.n.gcd(b.d);h=b.n.gcd(a.d)
        return F((a.n/g)*(b.n/h),(a.d/h)*(b.d/g),False)
    __rmul__=__mul__
    def __truediv__(a,b):
        b=F(b);return a*F(b.d,b.n,False)
    def __rtruediv__(a,b):return F(b)/a
    def __pow__(a,k):
        if k<0:return F(a.d,a.n,False)**(-k)
        return F(a.n**k,a.d**k,False)
    def __bool__(a):return bool(a.n)

def pair_type(base,hsq):
    """Return A[h]/(h^2-hsq), explicitly as pairs of scalar expressions."""
    class Pair:
        def __init__(self,c=0):self.c=c.c if isinstance(c,Pair) else tuple(base(v) for v in c) if isinstance(c,(tuple,list)) else (base(c),base(0))
        def __add__(self,b):
            b=Pair(b);return Pair([x+y for x,y in zip(self.c,b.c)])
        __radd__=__add__
        def __neg__(self):return Pair([-x for x in self.c])
        def __sub__(self,b):return self+-Pair(b)
        def __rsub__(self,b):return Pair(b)+-self
        def __mul__(self,b):
            b=Pair(b);a,c=self.c;d,e=b.c;return Pair([a*d+c*e*hsq,a*e+c*d])
        __rmul__=__mul__
        def __truediv__(self,b):
            b=Pair(b);a,c=b.c
            # Every division used here is by an explicit scalar lambda
            # denominator or positive row modulus. Never invert a norm.
            assert (not c.n) if isinstance(c,F) else c==0
            return Pair([v/a for v in self.c])
        def __rtruediv__(self,b):return Pair(b)/self
        def __pow__(self,k):
            assert k>=0;o=Pair(1)
            for _ in range(k):o=o*self
            return o
    return Pair

def add_poly(a,b,scale=1):
    o=dict(a)
    for e,c in b.items():o[e]=o.get(e,0)+scale*c
    return {e:c for e,c in o.items() if c}
def mul_poly(a,b):
    o=defaultdict(int)
    for e,c in a.items():
        for f,d in b.items():o[tuple(x+y for x,y in zip(e,f))]+=c*d
    return {e:c for e,c in o.items() if c}
def d_polynomial():
    one={(0,0,0,0):1}
    a,b,c,d=[{tuple(int(i==j) for j in range(4)):1} for i in range(4)]
    E=[[one,one,one],[one,a,b],[one,c,d]];det={};per={}
    for p in permutations(range(3)):
        term=mul_poly(mul_poly(E[0][p[0]],E[1][p[1]]),E[2][p[2]])
        per=add_poly(per,term);inv=sum(p[i]>p[j] for i in range(3) for j in range(i+1,3))
        det=add_poly(det,term,(-1)**inv)
    psi={tuple(i-1 for i in e):v for e,v in mul_poly(per,mul_poly(det,det)).items()}
    return add_poly(psi,{tuple(-i for i in e):v for e,v in psi.items()},-1)
def coefficients(name):
    # Half the ordered sum. The pair weight is x_j*y_c; after forgetting
    # ordering of j,k it is (x_j+x_k)*y_c/2, not x_j*y_c.
    shifts={'Tx':[(0,0),(0,0),(1,0)],'Tpair':[(1,0),(0,0),(0,1)]}[name]
    out=defaultdict(Fraction)
    for (a,b,c,d),co in d_polynomial().items():
        points=[(-a-b,-c-d),(a,c),(b,d)]
        pp=[(p[0]+q[0],p[1]+q[1]) for p,q in zip(points,shifts)]
        out[(tuple(sorted(pp[:2])),pp[2])]+=Fraction(co,2)
    return {key:co for key,co in out.items() if co}

def newton_moments(s,S,t,T,r,Q,u,v,w,U,V,W,pi,PI,up,vp,UP,VP):
    def half(s,S,t,T,r,Q,u,v,w,wb,pi,up,vp):
        m={(0,0):3,(1,0):s,(0,1):t,(1,-1):Q,(2,0):s*s-2*u*S,(0,2):t*t-2*v*T,
           (2,-2):Q*Q-2*w*r,(1,1):s*t-pi,(2,-1):s*Q-up,(-1,2):t*r-vp}
        m[3,0]=s**3-3*s*u*S+3*u;m[0,3]=t**3-3*t*v*T+3*v;m[3,-3]=Q**3-3*Q*w*r+3*w
        m[2,1]=s*m[1,1]-t*u*S+u*r;m[1,2]=t*m[1,1]-s*v*T+v*Q
        m[3,-1]=s*m[2,-1]-Q*u*S+u*T;m[3,-2]=Q*m[2,-1]-s*w*r+w*t
        m[-1,3]=t*m[-1,2]-r*v*T+v*S;m[-2,3]=r*m[-1,2]-t*wb*Q+wb*s
        return m
    m=half(s,S,t,T,r,Q,u,v,w,W,pi,up,vp);bar=half(S,s,T,t,Q,r,U,V,W,w,PI,UP,VP)
    m[2,2]=m[1,1]**2-2*u*v*bar[1,1];bar[2,2]=bar[1,1]**2-2*U*V*m[1,1]
    m[4,-2]=m[2,-1]**2-2*u*w*bar[2,-1];bar[4,-2]=bar[2,-1]**2-2*U*W*m[2,-1]
    m[-2,4]=m[-1,2]**2-2*v*W*bar[-1,2];bar[-2,4]=bar[-1,2]**2-2*V*w*m[-1,2]
    for (i,j),val in bar.items():m[-i,-j]=val
    return m

def side(Pair,z,X,Y,Z,s,S,t,T,r,q):
    s,S,t,T,r,q=map(Pair,(s,S,t,T,r,q));xx,yy,zz=map(Pair,(X,Y,Z))
    P0=r*s*s+q*t*t+s*t*(3-zz);P1=t*S*S+r*r*T+r*S*(3-yy);P2=s*T*T+q*q*S+q*T*(3-xx)
    B0=q*S*S+r*T*T+S*T*(3-zz);B1=T*s*s+q*q*t+q*s*(3-yy);B2=S*t*t+r*r*s+r*t*(3-xx)
    L0=Pair(z*(3*z+9-Z));L1=Pair(z*(3*z+9-Y));L2=Pair(z*(3*z+9-X))
    la,lb,lc=P0/L0,P1/L1,P2/L2;ba,bb,bc=B0/L0,B1/L1,B2/L2
    return newton_moments(s,S,t,T,r,q,la*bb,la*bc,lc*bb,lb*ba,lc*ba,lb*bc,la*Pair(z),ba*Pair(z),bb*Pair(z),bc*Pair(z),lb*Pair(z),lc*Pair(z))

def mixed_values(base,z,X,Y,names=('Tx','Tpair')):
    Z=9-z*z-X-Y;Pair=pair_type(base,-X*Y*Z);h=Pair([0,1]);r=h/Pair(Y);q=-h/Pair(X)
    M=side(Pair,z,X,Y,Z,1,X,1,Y,r,q);N=side(Pair,z,X,Y,Z,-1,-X,-1,-Y,-r,-q)
    values={}
    for name in names:
        values[name]=sum((Pair(base(int(co.numerator))/base(int(co.denominator)))*M[pp[0]]*M[pp[1]]*N[qq] for (pp,qq),co in coefficients(name).items()),Pair())
    return values

def generic_definitions(z,X,Y):
    Z=9-z*z-X-Y;t=z+3;eX=3*t-X;eY=3*t-Y;eZ=3*t-Z
    W=X*Y+X*Z+Y*Z-X*Y*Z-z*z*t*t
    P=z**4+3*z**3*X+3*z**3+19*z*z*X-9*z*z+3*z*X*X+24*z*X-27*z+10*X*X-18*X
    Q=(t*t-X)*(z*t-(z+2)*X)
    multiplier=X*(X-1)*eX*eY**2*eZ**2;c=18*z*(z+2)*t*(t-X)*(Y-Z)
    return W,multiplier,(c*X*t*P,-c*Q)
def repeated_definitions(z,X):
    t=z+3;C2=2*X*X+(z*z+2*z-6)*X+z*z*t
    C=6*z**8+111*z**7+798*z**6+2942*z**5+5568*z**4+3096*z**3-7344*z*z-14256*z-7776
    D=6*z**6+63*z**5+358*z**4+1266*z**3+2592*z*z+2808*z+1296
    targets={'Tpair':3*(C+2*X*D)/(16*t**5)}
    return C2,targets,(C,D)

def exact_targets():
    """Original rational sources and their ideal-membership certificates."""
    z,X,Y,h=[F(v) for v in CTX.gens()];raw=mixed_values(F,z,X,Y,('Tx',))['Tx'];W,mult,targets=generic_definitions(z,X,Y)
    cof=[]
    for i in range(2):
        error=mult*raw.c[i]-targets[i];q=error.n/W.n
        assert error.n==q*W.n and error.d==(z*z).n
        cof.append(F(q,error.d,False))
    out={'generic':(mult*(raw.c[0]+h*raw.c[1]),targets[0]+h*targets[1]+W*(cof[0]+h*cof[1]))}
    raw=mixed_values(F,z,X,X,('Tpair',));C2,targets,cd=repeated_definitions(z,X)
    repeated_cof={}
    for name in ('Tpair',):
        error=raw[name].c[0]-targets[name];q=error.n/C2.n;assert error.n==q*C2.n
        denominator=z**4*(z*z+3*z+2*X)**3*(3*z-X+9)**4*(z+3)**5/81
        assert not (F(error.d)-denominator).n
        repeated_cof[name]=F(q,error.d,False);out['repeated_'+name]=(raw[name].c[0],targets[name]+C2*repeated_cof[name])
    return out,cof,repeated_cof
