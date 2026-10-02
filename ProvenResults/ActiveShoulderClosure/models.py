"""Five-variable outward quadratic models; python-flint/Arb is trusted.

Variables range independently over [-1,1]. The fifth variable is reserved
for a physical sqrt(R) slab when a correlated positive-root model fails.
"""
from fractions import Fraction
from flint import arb, acb
N=5
IJ=[(i,j) for i in range(N) for j in range(i,N)]
ZERO=acb(0)
UNIT=arb(0,1)
HALF=arb('0.5','0.5')

def real(x):
    if isinstance(x,Fraction):return arb(x.numerator)/x.denominator
    return arb(x)

def point(z):
    return acb(z.real.mid(),z.imag.mid())

def square(r):
    return acb(arb(0,r),arb(0,r))

def magnitude(z):return abs(z).upper()

class TM:
    __slots__=('c','d','q','e')
    def __init__(self,c=0,d=None,q=None,e=0):
        self.c=acb(c);self.d=[ZERO]*N if d is None else d
        self.q=[ZERO]*len(IJ) if q is None else q;self.e=acb(e)
    @staticmethod
    def coerce(x):return x if isinstance(x,TM) else TM(x)
    def lin(self):return sum((v*UNIT for v in self.d),ZERO)
    def quad(self):return sum((v*(HALF if i==j else UNIT) for v,(i,j) in zip(self.q,IJ)),ZERO)
    def poly_range(self):return self.c+self.lin()+self.quad()
    def range(self):return self.poly_range()+self.e
    def proposal(self):return TM(point(self.c),[point(x) for x in self.d],[point(x) for x in self.q])
    def __add__(self,o):
        o=TM.coerce(o)
        return TM(self.c+o.c,[a+b for a,b in zip(self.d,o.d)],[a+b for a,b in zip(self.q,o.q)],self.e+o.e)
    __radd__=__add__
    def __neg__(self):return TM(-self.c,[-v for v in self.d],[-v for v in self.q],-self.e)
    def __sub__(self,o):return self+-TM.coerce(o)
    def __rsub__(self,o):return TM.coerce(o)+-self
    def __mul__(self,o):
        if not isinstance(o,TM):
            o=acb(o);return TM(self.c*o,[v*o for v in self.d],[v*o for v in self.q],self.e*o)
        q=[self.c*b+o.c*a+self.d[i]*o.d[j]+(self.d[j]*o.d[i] if i!=j else ZERO)
           for a,b,(i,j) in zip(self.q,o.q,IJ)]
        l1,l2=self.lin(),o.lin();q1,q2=self.quad(),o.quad()
        e=l1*q2+q1*l2+q1*q2+(self.c+l1+q1)*o.e+(o.c+l2+q2)*self.e+self.e*o.e
        return TM(self.c*o.c,[self.c*b+o.c*a for a,b in zip(self.d,o.d)],q,e)
    __rmul__=__mul__
    def inv(self):
        c=self.c;full=self.range()
        if c.contains(0) or full.contains(0):raise ValueError('model denominator')
        l=self.lin();w=self.quad()+self.e;v=l+w
        ci=1/c;c2=ci*ci;c3=c2*ci
        q=[-x*c2+self.d[i]*self.d[j]*c3*(1 if i==j else 2) for x,(i,j) in zip(self.q,IJ)]
        e=-self.e*c2+(2*l*w+w*w)*c3-v*v*v*c3/full
        return TM(ci,[-x*c2 for x in self.d],q,e)
    def __truediv__(self,o):
        return self*o.inv() if isinstance(o,TM) else self*(1/acb(o))
    def __rtruediv__(self,o):return self.inv()*o
    def __pow__(self,n):
        if n==0:return TM(1)
        if n==1:return self
        if n==2:return self*self
        if n==3:return self*self*self
        raise ValueError('only powers 0..3')
    def conj(self):return TM(self.c.conjugate(),[v.conjugate() for v in self.d],[v.conjugate() for v in self.q],self.e.conjugate())
    def real(self):return TM(self.c.real,[acb(v.real) for v in self.d],[acb(v.real) for v in self.q],self.e.real)
    def imag(self):return TM(self.c.imag,[acb(v.imag) for v in self.d],[acb(v.imag) for v in self.q],self.e.imag)
    def abs2(self):return (self*self.conj()).real()
    def error(self,r):return TM(self.c,self.d,self.q,self.e+square(r))


def cis_affine(center,coeff):
    """Real affine phase, outward exp with cubic Lagrange remainder."""
    assert len(coeff)==N
    cc=[real(x) for x in coeff];z=acb(0,real(center)).exp()
    h=sum((abs(v) for v in cc),arb(0)).upper()
    return TM(z,[acb(0,x)*z for x in cc],[-z*cc[i]*cc[j]/(2 if i==j else 1) for i,j in IJ],square(h**3/6))


def positive_sqrt(m):
    """Enclose sqrt(m) on its nonnegative physical subset.

    A proposed polynomial p is validated by |sqrt(m)-p| =
    |m-p^2|/(sqrt(m)+p). No use if p cannot be proved positive.
    """
    rr=m.range().real;lo=rr.lower();hi=rr.upper()
    if not hi>0:raise ValueError('no positive R')
    lowroot=lo.sqrt() if lo>0 else arb(0)
    highroot=hi.sqrt()
    if not lo>0:
        d=[ZERO]*N;d[4]=acb((highroot-lowroot)/2)
        return TM((highroot+lowroot)/2,d), 'independent_tau'
    c=m.c.real.mid().sqrt()
    if not c>0:raise ValueError('sqrt center')
    p=TM(c,[v/(2*c) for v in m.d],[(v/(2*c)-m.d[i]*m.d[j]/(c**3*(8 if i==j else 4))) for v,(i,j) in zip(m.q,IJ)]).real().proposal()
    lower=p.range().real.lower()
    if not lower>0:
        d=[ZERO]*N;d[4]=acb((highroot-lowroot)/2)
        return TM((highroot+lowroot)/2,d),'independent_tau'
    eps=magnitude((m-p*p).range())/(lowroot+lower)
    # A real error suffices here; use a symmetric real outward interval.
    return TM(p.c,p.d,p.q,arb(0,eps)), 'correlated_tau'
