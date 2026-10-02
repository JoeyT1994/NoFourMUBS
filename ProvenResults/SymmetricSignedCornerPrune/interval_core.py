"""Outward real/rectangular intervals, using mpmath's directed libmp backend.
All input floats are interpreted as their exact dyadic values. No float
comparison authorizes acceptance. Complex conjugation is explicit (the
mpmath 1.3.0 iv.mpc.conjugate method is not used).
"""
from fractions import Fraction
from mpmath import iv
import math
iv.dps=35

def V(x=0):
    if isinstance(x,Fraction):return iv.mpf(x.numerator)/x.denominator
    return iv.mpf(x)
def C(x=0,y=0):
    if hasattr(x,'imag') and hasattr(x,'real') and y==0:
        return iv.mpc(x.real,x.imag)
    return iv.mpc(V(x),V(y))
def conj(z):return iv.mpc(z.real,-z.imag)
def cis(t):return iv.mpc(iv.cos(t),iv.sin(t))
def abs2(z):return z.real**2+z.imag**2
def mag(x):return abs(x).b
def cmag(z):return iv.sqrt(abs2(z)).b
def box(c,r):
    c=V(c);r=V(r)
    if not r.a>=0:raise ValueError('negative or uncertain radius')
    return c+iv.mpf([-1,1])*r

def hull(lo,hi):return iv.mpf([V(lo).a,V(hi).b])
def upper_float(x):
    v=float(V(x).b)
    if not math.isfinite(v):return v
    v=math.nextafter(v,math.inf)
    assert V(v)>=V(x).b
    return v

def lower_float(x):
    v=float(V(x).a)
    if not math.isfinite(v):return v
    v=math.nextafter(v,-math.inf)
    assert V(v)<=V(x).a
    return v

def bounds(x):return [lower_float(x),upper_float(x)]
def midpoint(x):return float(V(x).a)/2+float(V(x).b)/2  # proposal only
def positive(x):return bool(V(x).a>0)
def excludes_zero(z):return bool(z.real.a>0 or z.real.b<0 or z.imag.a>0 or z.imag.b<0)
def radius_for_level(level):
    r=iv.pi/2**level+V(2)**(-40)
    return upper_float(r)

class Jet:
    """Four-variable order-two derivative jet, complex outward intervals."""
    def __init__(self,v,d=None,h=None):
        self.v=C(v);self.d=d if d is not None else [C(0)]*4
        self.h=h if h is not None else [[C(0) for j in range(4)] for i in range(4)]
    def __add__(self,o):
        if not isinstance(o,Jet):o=Jet(o)
        return Jet(self.v+o.v,[self.d[i]+o.d[i] for i in range(4)],[[self.h[i][j]+o.h[i][j] for j in range(4)] for i in range(4)])
    __radd__=__add__
    def __neg__(self):return self*(-1)
    def __sub__(self,o):return self+(-o)
    def __rsub__(self,o):return -self+o
    def __mul__(self,o):
        if not isinstance(o,Jet):return Jet(self.v*o,[x*o for x in self.d],[[x*o for x in row] for row in self.h])
        return Jet(self.v*o.v,[self.d[i]*o.v+self.v*o.d[i] for i in range(4)],[[self.h[i][j]*o.v+self.d[i]*o.d[j]+self.d[j]*o.d[i]+self.v*o.h[i][j] for j in range(4)] for i in range(4)])
    __rmul__=__mul__
    def conjugate(self):return Jet(conj(self.v),[conj(x) for x in self.d],[[conj(x) for x in row] for row in self.h])
    def real(self):return Jet(self.v.real,[x.real for x in self.d],[[x.real for x in row] for row in self.h])
    def abs2(self):return (self*self.conjugate()).real()
    def __pow__(self,k):
        if k==0:return Jet(1)
        if k==1:return self
        if k==2:return self*self
        raise ValueError(k)

def seed_jets(centers,radii):
    out=[]
    for i,(c,r) in enumerate(zip(centers,radii)):
        v=cis(box(c,r));d=[C(0)]*4;d[i]=C(0,1)*v
        h=[[C(0) for j in range(4)] for i in range(4)];h[i][i]=-v
        out.append(Jet(v,d,h))
    return out

def R_expression(phases,reverse=False):
    a,b,c,d=phases;s=-1-a-b;t=-1-c-d;r=-1-c*a.conjugate()-d*b.conjugate()
    X,Y,Z=s.abs2(),t.abs2(),r.abs2();p=X+Y+Z;J=2*(s*r*t.conjugate()).real();W=X*Y+X*Z+Y*Z-X*Y*Z
    if reverse:J=-J
    g=27-3*p+J;eta=9-p+J;chi=W-(p-9)*(p-18)+(p-15)*J
    return 4*g*g*eta-chi*chi

def taylor_bound(centerjet,boxjet,radii):
    e=sum(V(radii[i])*cmag(centerjet.d[i]) for i in range(4))
    e+=sum(V(radii[i])*V(radii[j])*cmag(boxjet.h[i][j]) for i in range(4) for j in range(4))/2
    return box(centerjet.v.real,e)

def seed_R_bound(centers,radii):
    c=R_expression(seed_jets(centers,[0]*4));b=R_expression(seed_jets(centers,radii))
    return taylor_bound(c,b,radii)

def _jinv(self):
    if not abs2(self.v).a>0:raise ValueError('Jet denominator contains zero')
    vi=1/self.v;v2=vi*vi;v3=v2*vi
    return Jet(vi,[-v2*x for x in self.d],[[2*v3*self.d[i]*self.d[j]-v2*self.h[i][j] for j in range(4)] for i in range(4)])
def _jdiv(self,o):return self*(o.inv() if isinstance(o,Jet) else V(1)/V(o))
def _jrdiv(self,o):return self.inv()*o
Jet.inv=_jinv;Jet.__truediv__=_jdiv;Jet.__rtruediv__=_jrdiv
Jet.imag=lambda self:Jet(self.v.imag,[x.imag for x in self.d],[[x.imag for x in row] for row in self.h])


def check_seed_box(centers,radii):
    """Public predicate arguments are finite rational numbers in radians."""
    if len(centers)!=4 or len(radii)!=4:
        raise ValueError('four centres and four radii required')
    for x in list(centers)+list(radii):
        if isinstance(x,bool) or not isinstance(x,(int,float,Fraction)):
            raise ValueError('expected rational input: int, Fraction or finite exact binary float')
        if isinstance(x,float) and not math.isfinite(x):
            raise ValueError('nonfinite rational input')
    if not all(x>0 for x in radii):
        raise ValueError('positive seed radii required')
