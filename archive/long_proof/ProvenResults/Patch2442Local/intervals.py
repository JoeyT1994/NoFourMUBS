"""Exact integer-based outward dyadic intervals, fixed precision 112 bits.

Every endpoint is an integer divided by 2**112. Multiplication/division
round by integer floor/ceiling. No floating-point operation enters a proof.
"""
from fractions import Fraction as Q
from math import isqrt, factorial
BITS=112
SCALE=1<<BITS

def ceildiv(a,b):
    if b<=0: raise ValueError('positive divisor required')
    return -((-a)//b)
class IV:
    __slots__=('lo','hi')
    def __init__(self,x=0,y=None,*,raw=False):
        if raw:
            self.lo=int(x);self.hi=int(y)
        elif isinstance(x,IV) and y is None:
            self.lo=x.lo;self.hi=x.hi
        else:
            x=Q(x);y=Q(y) if y is not None else x
            self.lo=(x.numerator*SCALE)//x.denominator
            self.hi=ceildiv(y.numerator*SCALE,y.denominator)
        if self.lo>self.hi:raise ValueError('reversed interval')
    def __add__(a,b):
        if not isinstance(b,(IV,int,Q)):return NotImplemented
        b=IV(b);return IV(a.lo+b.lo,a.hi+b.hi,raw=True)
    __radd__=__add__
    def __neg__(a):return IV(-a.hi,-a.lo,raw=True)
    def __sub__(a,b):return a+-IV(b)
    def __rsub__(a,b):return IV(b)+-a
    def __mul__(a,b):
        if not isinstance(b,(IV,int,Q)):return NotImplemented
        b=IV(b);v=(a.lo*b.lo,a.lo*b.hi,a.hi*b.lo,a.hi*b.hi)
        return IV(min(v)//SCALE,ceildiv(max(v),SCALE),raw=True)
    __rmul__=__mul__
    def __truediv__(a,b):
        if isinstance(b,(int,Q)):
            b=Q(b)
            if not b:raise ZeroDivisionError
            if b<0:return -a/(-b)
            return IV(a.lo*b.denominator//b.numerator,ceildiv(a.hi*b.denominator,b.numerator),raw=True)
        b=IV(b)
        if b.lo<=0<=b.hi:raise ZeroDivisionError('interval contains zero')
        if b.hi<0:return -a/(-b)
        inv=IV(SCALE*SCALE//b.hi,ceildiv(SCALE*SCALE,b.lo),raw=True)
        return a*inv
    def __pow__(a,n):
        if n<0:raise ValueError('negative interval power')
        if n==2:
            lo=0 if a.lo<=0<=a.hi else min(a.lo*a.lo,a.hi*a.hi)
            hi=max(a.lo*a.lo,a.hi*a.hi)
            return IV(lo//SCALE,ceildiv(hi,SCALE),raw=True)
        z=IV(1)
        while n:
            if n&1:z=z*a
            a=a*a;n//=2
        return z
    def abs(a):return IV(0 if a.lo<=0<=a.hi else min(abs(a.lo),abs(a.hi)),max(abs(a.lo),abs(a.hi)),raw=True)
    def record(a):return [str(Q(a.lo,SCALE)),str(Q(a.hi,SCALE))]
    def __repr__(a):return str(a.record())
    def contains(a,b):
        b=IV(b);return a.lo<=b.lo and b.hi<=a.hi
class CX:
    __slots__=('re','im')
    def __init__(self,re=0,im=0):
        if isinstance(re,CX):self.re,self.im=re.re,re.im
        else:self.re,self.im=IV(re),IV(im)
    def __add__(a,b):
        b=CX(b);return CX(a.re+b.re,a.im+b.im)
    __radd__=__add__
    def __neg__(a):return CX(-a.re,-a.im)
    def __sub__(a,b):return a+-CX(b)
    def __rsub__(a,b):return CX(b)+-a
    def __mul__(a,b):
        b=CX(b);return CX(a.re*b.re-a.im*b.im,a.re*b.im+a.im*b.re)
    __rmul__=__mul__
    def __truediv__(a,b):return CX(a.re/b,a.im/b)
    def __pow__(a,n):
        if n<0:raise ValueError('use explicit conjugation for unit inverses')
        z=CX(1)
        while n:
            if n&1:z=z*a
            a=a*a;n//=2
        return z
    def star(a):return CX(a.re,-a.im)
    def abs2(a):return a.re**2+a.im**2
    def record(a):return [a.re.record(),a.im.record()]

SQRT3=IV(isqrt(3*SCALE*SCALE),isqrt(3*SCALE*SCALE)+1,raw=True)
I=CX(0,1)
OMEGA=CX(Q(-1,2),SQRT3/2)

def exprel(v,rho,n=12):
    """Enclose (exp(i*rho*v)-1)/rho, continued at rho=0.
    Both v and rho are real intervals. Integral Taylor remainder applies
    to their actual real product; no complex exponential estimate is used.
    """
    v=IV(v);rho=IV(rho);out=CX(0)
    for k in range(1,n+1):
        co=v**k*rho**(k-1)/factorial(k)
        if k%4==0:out+=CX(co)
        elif k%4==1:out+=CX(0,co)
        elif k%4==2:out-=CX(co)
        else:out-=CX(0,co)
    err=(v.abs()**(n+1)*rho.abs()**n/factorial(n+1)).hi
    er=IV(-err,err,raw=True)
    return CX(out.re+er,out.im+er)
