"""Subdivision-free exact box certificates. Standard-library integer arithmetic.

Interval endpoints are integers times 2^-80. Every rounding uses integer floor /
ceiling, never a hardware floating-point operation. Jets are full order two.
"""
from fractions import Fraction as F
from math import factorial
P=80
S=1<<P

def ceildiv(a,b): return -((-a)//b)
class I:
    __slots__=('lo','hi')
    def __init__(self,a=0,b=None):
        if isinstance(a,I):self.lo,self.hi=a.lo,a.hi;return
        a=F(a);b=a if b is None else F(b)
        if a>b:raise ValueError('reversed interval')
        self.lo=(a.numerator*S)//a.denominator
        self.hi=ceildiv(b.numerator*S,b.denominator)
    @classmethod
    def raw(cls,lo,hi):
        if lo>hi:raise ValueError('reversed interval')
        z=object.__new__(cls);z.lo,z.hi=lo,hi;return z
    def __add__(a,b):b=I(b);return I.raw(a.lo+b.lo,a.hi+b.hi)
    __radd__=__add__
    def __neg__(a):return I.raw(-a.hi,-a.lo)
    def __sub__(a,b):return a+-I(b)
    def __rsub__(a,b):return I(b)+-a
    def __mul__(a,b):
        b=I(b);x=(a.lo*b.lo,a.lo*b.hi,a.hi*b.lo,a.hi*b.hi)
        return I.raw(min(x)//S,ceildiv(max(x),S))
    __rmul__=__mul__
    def inv(a):
        if a.lo<=0<=a.hi:raise ValueError('zero denominator')
        return I.raw((S*S)//a.hi,ceildiv(S*S,a.lo))
    def __truediv__(a,b):return a*I(b).inv()
    def sq(a):
        lo=0 if a.lo<=0<=a.hi else min(a.lo*a.lo,a.hi*a.hi)
        return I.raw(lo//S,ceildiv(max(a.lo*a.lo,a.hi*a.hi),S))
    def mag(a):return I.raw(max(abs(a.lo),abs(a.hi)),max(abs(a.lo),abs(a.hi)))
    def endpoints(a):return [str(F(a.lo,S)),str(F(a.hi,S))]
    def __repr__(a):return 'I('+','.join(a.endpoints())+')'

class C:
    __slots__=('re','im')
    def __init__(self,a=0,b=0):
        if isinstance(a,C):self.re,self.im=a.re,a.im
        else:self.re,self.im=I(a),I(b)
    def __add__(a,b):b=C(b);return C(a.re+b.re,a.im+b.im)
    __radd__=__add__
    def __neg__(a):return C(-a.re,-a.im)
    def __sub__(a,b):return a+-C(b)
    def __rsub__(a,b):return C(b)+-a
    def __mul__(a,b):
        if isinstance(b,J):return b*a
        if isinstance(b,L):return b*a
        b=C(b);return C(a.re*b.re-a.im*b.im,a.re*b.im+a.im*b.re)
    __rmul__=__mul__
    def conj(a):return C(a.re,-a.im)
    def norm(a):return a.re.sq()+a.im.sq()
    def inv(a):return a.conj()*C(a.norm().inv())
    def __truediv__(a,b):return a*C(b).inv()
    def real(a):return C(a.re)

HJ=tuple((i,j) for i in range(4) for j in range(i,4))
ZERO=C()
class J:
    __slots__=('v','d','h')
    def __init__(self,v=0,d=None,h=None):
        if isinstance(v,J):self.v,self.d,self.h=v.v,v.d,v.h;return
        self.v=C(v);self.d=(ZERO,)*4 if d is None else tuple(d);self.h=(ZERO,)*10 if h is None else tuple(h)
    def __add__(a,b):b=J(b);return J(a.v+b.v,[x+y for x,y in zip(a.d,b.d)],[x+y for x,y in zip(a.h,b.h)])
    __radd__=__add__
    def __neg__(a):return J(-a.v,[-x for x in a.d],[-x for x in a.h])
    def __sub__(a,b):return a+-J(b)
    def __rsub__(a,b):return J(b)+-a
    def __mul__(a,b):
        if isinstance(b,L):return b*a
        b=J(b)
        return J(a.v*b.v,[a.d[i]*b.v+a.v*b.d[i] for i in range(4)],
                 [a.h[k]*b.v+a.v*b.h[k]+a.d[i]*b.d[j]+a.d[j]*b.d[i] for k,(i,j) in enumerate(HJ)])
    __rmul__=__mul__
    def inv(a):
        v=a.v.inv();v2=v*v;v3=v2*v
        return J(v,[-v2*x for x in a.d],[2*v3*a.d[i]*a.d[j]-v2*a.h[k] for k,(i,j) in enumerate(HJ)])
    def __truediv__(a,b):return a*J(b).inv()
    def __rtruediv__(a,b):return J(b)*a.inv()
    def conj(a):return J(a.v.conj(),[x.conj() for x in a.d],[x.conj() for x in a.h])
    def real(a):return J(a.v.real(),[x.real() for x in a.d],[x.real() for x in a.h])
    def __pow__(a,n):
        if n<0:return a.inv()**(-n)
        out=J(1)
        for _ in range(n):out=out*a
        return out
    def norm(a):return (a*a.conj()).real()

class L:
    __slots__=('a','b')
    def __init__(self,a=0,b=0):
        if isinstance(a,L):self.a,self.b=a.a,a.b
        else:self.a,self.b=J(a),J(b)
    def __add__(a,b):b=L(b);return L(a.a+b.a,a.b+b.b)
    __radd__=__add__
    def __neg__(a):return L(-a.a,-a.b)
    def __sub__(a,b):return a+-L(b)
    def __rsub__(a,b):return L(b)+-a
    def __mul__(a,b):b=J(b);return L(a.a*b,a.b*b)
    __rmul__=__mul__
    def conj(a):return L(a.a.conj(),a.b.conj())
    def real(a):return L(a.a.real(),a.b.real())

IM=C(0,1)
def invariants(ph):
    a,b,c,d=ph;s,t,r=-1-a-b,-1-c-d,-1-c*a.conj()-d*b.conj()
    X,Y,Z=s.norm(),t.norm(),r.norm();p=X+Y+Z
    JJ=2*(s*r*t.conj()).real();W=X*Y+X*Z+Y*Z-X*Y*Z
    g=27-3*p+JJ;eta=9-p+JJ;chi=W-(p-9)*(p-18)+(p-15)*JJ
    R=4*g*g*eta-chi*chi
    return s,t,r,X,Y,Z,g,eta,chi,R

def expressions(ph,cleared=False):
    a,b,c,d=ph
    s,t,r,X,Y,Z,g,eta,chi,R=invariants(ph)
    Ps=[r*s*s+r.conj()*t*t+(3-Z)*s*t,
        t*s.conj()**2+r*r*t.conj()+(3-Y)*r*s.conj(),
        s*t.conj()**2+r.conj()**2*s.conj()+(3-X)*r.conj()*t.conj()]
    ns=[p.norm() for p in Ps];Delta=ns[0]*ns[1]*ns[2]
    ks=[9-Z,9-Y,9-X]
    def num(i,j):
        re=2*g*g+2*ks[i]*ks[j]*eta+(ks[i]+ks[j])*chi
        return L(re,IM*(ks[j]-ks[i]))
    def AA(i):
        return chi+2*ks[i]*eta
    if cleared:
        u=num(0,1)*(Ps[0]*Ps[1].conj()*ns[2]/2)
        v=num(0,2)*(Ps[0]*Ps[2].conj()*ns[1]/2)
        w=num(2,1)*(Ps[2]*Ps[1].conj()*ns[0]/2)
        pi=L(AA(0),IM)*(Ps[0]*ns[1]*ns[2]/2)
        c1=L(AA(1),-IM)*(Ps[1].conj()*ns[0]*ns[2]/2)
        c2=L(AA(2),-IM)*(Ps[2].conj()*ns[0]*ns[1]/2)
        scale=Delta
    else:
        ips=[p.inv() for p in Ps]
        u=num(0,1)*(ips[0].conj()*ips[1]/2)
        v=num(0,2)*(ips[0].conj()*ips[2]/2)
        w=num(2,1)*(ips[2].conj()*ips[1]/2)
        pi=L(AA(0),IM)*(ips[0].conj()/2)
        c1=L(AA(1),-IM)*(ips[1]/2)
        c2=L(AA(2),-IM)*(ips[2]/2)
        scale=J(1)
    M={}
    def put(p,q,z):z=L(z);M[p,q]=z;M[-p,-q]=z.conj()
    put(0,0,3*scale);put(1,0,scale*s);put(0,1,scale*t);put(1,-1,scale*r.conj())
    put(2,0,L(scale*s*s)-u*(2*s.conj()));put(0,2,L(scale*t*t)-v*(2*t.conj()))
    put(1,1,L(scale*s*t)-pi);put(2,-1,L(scale*s*r.conj())-c1);put(-1,2,L(scale*t*r)-c2)
    put(2,1,M[1,1]*s-u*(s.conj()*t-r));put(1,2,M[1,1]*t-v*(t.conj()*s-r.conj()))
    put(2,-2,L(scale*r.conj()**2)-w*(2*r))
    put(3,-1,M[2,-1]*s+u*(t.conj()-s.conj()*r.conj()))
    put(-1,3,M[-1,2]*t+v*(s.conj()-t.conj()*r))
    put(3,-2,M[2,-1]*r.conj()+w*(t-r*s))
    put(-2,3,M[-1,2]*r+w.conj()*(s-r.conj()*t))
    xx,yy=[J(1),a,b],[J(1),c,d]
    weights=[(0,0),(1,0),(0,1),(-1,1)]
    pq=[(1,1),(1,-1),(2,-1),(0,1),(-1,2),(1,0)]
    def up(z,n):return z**n if n>=0 else z.conj()**(-n)
    nf=[]
    for j,k in [(0,1),(0,2),(1,2)]:
        A,Cc=xx[k]*xx[j].conj(),yy[k]*yy[j].conj();ai,ci=A.conj(),Cc.conj()
        cs=[-(A-Cc)**2*(A+Cc)*ai**2*ci**2,
            (A-Cc)*(A+Cc)*(A*Cc-1)*ai**2*ci,
            (Cc-1)**2*(Cc+1)*ai*ci,
            -(A*A-Cc)*(Cc-1)*(Cc+1)*ai*ci**2,
            (A-1)**2*(A+1)*ai*ci,
            (A-1)*(A+1)*(A-Cc*Cc)*ai**2*ci]
        ds=[co*up(xx[j],-p)*up(yy[j],-q) for co,(p,q) in zip(cs,pq)]
        row=[]
        for m,n in weights:
            z=L()
            for co,(p,q) in zip(ds,pq):z+=M[p+m,q+n]*co-M[-p+m,-q+n]*co.conj()
            z=z*IM;row.append(z.real() if (m,n)==(0,0) else z)
        nf.append(row)
    return dict(R=R,g=g,eta=eta,Delta=Delta,Pnorm=ns,scale=scale,G=[scale*s,scale*t,scale*r],nf=nf)

def phase_jets(anchors,radii,center=False):
    out=[]
    for i,(anchor,rho) in enumerate(zip(anchors,radii)):
        z=C(F(anchor[0]),F(anchor[1]))
        u=J(C(0 if center else I(-F(rho),F(rho))),[C(int(i==j)) for j in range(4)])
        out.append(z*(1+IM*u)/(1-IM*u))
    return out

def taylor(c,b,radii,imag=False,record=False):
    part=lambda z:z.im if imag else z.re
    e=I()
    for i in range(4):e+=I(radii[i])*part(c.d[i]).mag()
    for k,(i,j) in enumerate(HJ):e+=I(radii[i])*I(radii[j])*part(b.h[k]).mag()*(F(1,2) if i==j else 1)
    z=part(c.v)+I.raw(-e.hi,e.hi)
    if not record:return z
    return dict(bound=z.endpoints(),value=part(c.v).endpoints(),
                gradient=[part(x).endpoints() for x in c.d],
                hessian=[part(x).endpoints() for x in b.h],error_upper=str(F(e.hi,S)))

def bernstein(ex,w,T=F(1)):
    row=ex['nf'][w['j']];sg,ep,k=w['sg'],w['eps'],w['k']
    d0=row[0].a*ep;dT=d0+(3*ex['scale']+row[0].b*(ep*sg))*T
    z0=row[k+1].a*ep;zT=z0+(ex['G'][k]+row[k+1].b*(ep*sg))*T
    return [d0*d0-z0.norm(),d0*dT-(z0*zT.conj()).real(),dT*dT-zT.norm()]

def trig_center(c):
    c=F(c);N=36
    si=sum(((-1)**k*c**(2*k+1)/factorial(2*k+1) for k in range(N)),F(0))
    co=sum(((-1)**k*c**(2*k)/factorial(2*k) for k in range(N)),F(0))
    # Lagrange remainders, valid for all real c, no alternating-series guard.
    es=abs(c)**(2*N+1)/factorial(2*N+1)
    ec=abs(c)**(2*N)/factorial(2*N)
    return C(I(co-ec,co+ec),I(si-es,si+es))

def arc_radius(center,halfwidth,anchor):
    x,y=map(F,anchor)
    if x*x+y*y!=1:raise ValueError('anchor not exactly unit')
    r=F(halfwidth)
    if r<0:raise ValueError('negative halfwidth')
    v=trig_center(center)*C(x,-y)
    # cos(delta)>=1-delta^2/2, |sin(delta)|<=r, 0<Re(v)<=1.
    if v.re.lo<=0:raise ValueError('wrong Cayley chart')
    denom=1+v.re-I(r)*v.im.mag()-I(r*r/2)
    if denom.lo<=0:raise ValueError('Cayley pole not separated')
    radius=(v.im.mag()+r)/denom
    return F(radius.hi,S)

def coefficient_bounds(ec,eb,radii):
    def co(c,b):return C(taylor(c,b,radii),taylor(c,b,radii,imag=True))
    return dict(scale=co(ec['scale'],eb['scale']),G=[co(a,b) for a,b in zip(ec['G'],eb['G'])],
                nf=[[(co(x.a,y.a),co(x.b,y.b)) for x,y in zip(rc,rb)] for rc,rb in zip(ec['nf'],eb['nf'])])

def bernstein_intervals(ex,w,T=F(1)):
    row=ex['nf'][w['j']];sg,ep,k=w['sg'],w['eps'],w['k']
    d0=row[0][0].re*ep;dT=d0+(3*ex['scale'].re+row[0][1].re*(ep*sg))*T
    z0=row[k+1][0]*ep;zT=z0+(ex['G'][k]+row[k+1][1]*(ep*sg))*T
    return [d0.sq()-z0.norm(),d0*dT-(z0*zT.conj()).re,dT.sq()-zT.norm()]
