"""Rational outward interval arithmetic; all endpoints are Fractions.
No binary floating point is used to accept any certificate.
"""
from fractions import Fraction as F
from math import isqrt

class Interval:
    __slots__=('lo','hi')
    def __init__(self,lo,hi=None):
        if isinstance(lo,Interval)and hi is None:self.lo,self.hi=lo.lo,lo.hi;return
        self.lo=F(lo);self.hi=F(lo if hi is None else hi)
        if self.lo>self.hi:raise ValueError('reversed interval')
    def __add__(self,other):
        b=Interval(other);return Interval(self.lo+b.lo,self.hi+b.hi)
    __radd__=__add__
    def __neg__(self):return Interval(-self.hi,-self.lo)
    def __sub__(self,other):return self+-Interval(other)
    def __rsub__(self,other):return Interval(other)+-self
    def __mul__(self,other):
        b=Interval(other);v=[x*y for x in (self.lo,self.hi)for y in (b.lo,b.hi)]
        return Interval(min(v),max(v))
    __rmul__=__mul__
    def __truediv__(self,other):
        b=Interval(other)
        if b.lo<=0<=b.hi:raise ZeroDivisionError('interval denominator contains zero')
        return self*Interval(1/b.hi,1/b.lo)
    def __rtruediv__(self,other):return Interval(other)/self
    def __pow__(self,n):
        if not isinstance(n,int)or n<0:raise TypeError('nonnegative integer exponent required')
        if n==0:return Interval(1)
        if n%2==0:
            vals=(self.lo**n,self.hi**n)
            return Interval(0 if self.lo<=0<=self.hi else min(vals),max(vals))
        return Interval(self.lo**n,self.hi**n)
    def sqrt(self,places=55):
        if self.lo<0:raise ValueError('negative lower endpoint for real square root')
        scale=10**places
        lower=isqrt((self.lo.numerator*scale*scale)//self.lo.denominator)
        upper=isqrt((self.hi.numerator*scale*scale)//self.hi.denominator)+1
        ans=Interval(F(lower,scale),F(upper,scale))
        if ans.lo**2>self.lo or ans.hi**2<self.hi:raise ArithmeticError('sqrt enclosure failure')
        return ans
    def decimal_enclosure(self,places=30):
        scale=10**places
        low=(self.lo.numerator*scale)//self.lo.denominator
        high=-((-self.hi.numerator*scale)//self.hi.denominator)
        def fmt(n):return ('-'if n<0 else '')+str(abs(n)//scale)+'.'+str(abs(n)%scale).zfill(places)
        return [fmt(low),fmt(high)]
    def __repr__(self):return str(self.decimal_enclosure(20))

class ComplexInterval:
    __slots__=('re','im')
    def __init__(self,re=0,im=0):
        if isinstance(re,ComplexInterval):self.re,self.im=re.re,re.im;return
        self.re,self.im=Interval(re),Interval(im)
    def __add__(self,other):
        b=ComplexInterval(other);return ComplexInterval(self.re+b.re,self.im+b.im)
    __radd__=__add__
    def __neg__(self):return ComplexInterval(-self.re,-self.im)
    def __sub__(self,other):return self+-ComplexInterval(other)
    def __rsub__(self,other):return ComplexInterval(other)+-self
    def __mul__(self,other):
        b=ComplexInterval(other)
        return ComplexInterval(self.re*b.re-self.im*b.im,self.re*b.im+self.im*b.re)
    __rmul__=__mul__
    def __truediv__(self,other):
        # General complex division is intentionally unnecessary here.
        return ComplexInterval(self.re/other,self.im/other)
    def __pow__(self,n):
        if not isinstance(n,int)or n<0:raise TypeError('nonnegative integer exponent required')
        result=ComplexInterval(1)
        for _ in range(n):result=result*self
        return result
    def conj(self):return ComplexInterval(self.re,-self.im)
    def abs2(self):return self.re**2+self.im**2

def polynomial(x):return 9*x**4+60*x**3-488*x**2-976*x+5584

def isolate_root(lo=F(39298,10000),hi=F(39299,10000),steps=140):
    lo,hi=F(lo),F(hi)
    if polynomial(lo)*polynomial(hi)>=0:raise ArithmeticError('not a sign-changing interval')
    domain=Interval(lo,hi)
    deriv=36*domain**3+180*domain**2-976*domain-976
    if deriv.lo<=0<=deriv.hi:raise ArithmeticError('monotonicity not certified')
    # Sign change and strict monotonicity prove existence and uniqueness.
    for _ in range(steps):
        mid=(lo+hi)/2
        if polynomial(lo)*polynomial(mid)<=0:hi=mid
        else:lo=mid
    return Interval(lo,hi),deriv

def anchor_intervals(fixture):
    s,deriv=isolate_root();r=(6*s*s+8*s-120)/(3*s-14)
    P=(s+2*r).sqrt();D=(s-2*r).sqrt();p=(P+D)/2;q=(P-D)/2
    X=4-p*p;Y=4-q*q;A=X.sqrt();B=Y.sqrt();T=Interval(3).sqrt()
    u=(2-P*P)/(4*P);v=T*(s-2)/(4*D)
    z6=ComplexInterval(F(1,2),T/2);z12=ComplexInterval(T/2,F(1,2));omega=z6**2
    kappa=ComplexInterval(u,v)*omega**2
    x=[ComplexInterval(1),kappa*omega**2*ComplexInterval(p,-A)/2,
       kappa*ComplexInterval(q,-B)/2,ComplexInterval(1),
       kappa*omega**2*ComplexInterval(p,A)/2,kappa*ComplexInterval(q,B)/2]
    y=[z12**(j*j%12)*x[j]for j in fixture['canonical_row_order']]
    H=[[z6**n for n in row]for row in fixture['H_exponents']]
    U_probs=[sum((H[i][j].conj()*y[i]for i in range(6)),ComplexInterval()).abs2()/36 for j in range(6)]
    return dict(s=s,r=r,P=P,D=D,p=p,q=q,X=X,Y=Y,u=u,v=v,beta=(s-2)/12,
                U_probabilities=U_probs,derivative_on_initial_interval=deriv)
