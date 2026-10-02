"""Small exact quotient algebra used for the algebraic anchor certificate.

Base: Q[s]/(9*s^4+60*s^3-488*s^2-976*s+5584).
Successive real radicals P,D,A,T obey
 P^2=s+2r, D^2=s-2r, A^2=(8-s-P*D)/2, T^2=3;
finally i^2=-1. The real embedding / positive radicals are fixed separately
by rational intervals. Equality in this algebra implies equality at that
embedding; no floating-point arithmetic or root search is used here.
"""
from fractions import Fraction as F
from functools import lru_cache
import sympy as sp

S=sp.Symbol('s')
POLY=9*S**4+60*S**3-488*S**2-976*S+5584
RED=tuple(map(F,[-5584,976,488,-60]))
RED=tuple(x/9 for x in RED)  # s^4 = sum RED[j] s^j

class Base:
    __slots__=('c',)
    def __init__(self, value=0):
        if isinstance(value,Base): self.c=value.c
        elif isinstance(value,(list,tuple)):
            a=[F(x) for x in value]
            for k in range(len(a)-1,3,-1):
                for j in range(4): a[k-4+j]+=a[k]*RED[j]
            self.c=tuple((a+[F(0)]*4)[:4])
        else: self.c=(F(value),F(0),F(0),F(0))
    def __bool__(self): return any(self.c)
    def __eq__(self,other):
        try: return self.c==Base(other).c
        except (TypeError,ValueError): return False
    def __hash__(self): return hash(self.c)
    def __add__(self,other):
        b=Base(other);return Base([x+y for x,y in zip(self.c,b.c)])
    __radd__=__add__
    def __neg__(self):return Base([-x for x in self.c])
    def __sub__(self,other):return self+-Base(other)
    def __rsub__(self,other):return Base(other)+-self
    def __mul__(self,other):
        b=Base(other);a=[F(0)]*7
        for i,x in enumerate(self.c):
            if x:
                for j,y in enumerate(b.c):
                    if y:a[i+j]+=x*y
        return Base(a)
    __rmul__=__mul__
    def inverse(self):
        if not self:raise ZeroDivisionError('zero base field element')
        expr=sum(sp.Rational(x.numerator,x.denominator)*S**j for j,x in enumerate(self.c))
        inv=sp.Poly(sp.invert(expr,POLY,S),S)
        result=Base([F(inv.nth(j))for j in range(4)])
        if self*result!=1:raise ArithmeticError('base inverse check failed')
        return result
    def __truediv__(self,other):return self*Base(other).inverse()
    def __pow__(self,n):
        if not isinstance(n,int):raise TypeError('integer exponent required')
        if n<0:return self.inverse()**(-n)
        ans=Base(1);x=self
        while n:
            if n&1:ans=ans*x
            x=x*x;n//=2
        return ans
    def strings(self):return [str(x)for x in self.c]
    def __repr__(self):return 'Base('+repr(self.strings())+')'

s=Base([0,1]);r=(6*s*s+8*s-120)/(3*s-14)
L=s+2*r;M=s-2*r
# A bitmask indexes products of P,D,A,T,i in that order. Radicands only
# involve earlier generators, so recursive monomial reduction terminates.
RAD={0:{0:L},1:{0:M},2:{0:(8-s)/2,3:Base(F(-1,2))},3:{0:Base(3)},4:{0:Base(-1)}}

@lru_cache(maxsize=None)
def basis_product(a,b):
    common=a&b
    if not common:return ((a^b,Base(1)),)
    j=common.bit_length()-1;bit=1<<j
    d={}
    for mask,c in basis_product(a^bit,b^bit):
        for rm,rc in RAD[j].items():
            for out,bc in basis_product(mask,rm):
                d[out]=d.get(out,Base(0))+c*rc*bc
    return tuple((mask,c)for mask,c in d.items()if c)

class Exact:
    __slots__=('d',)
    def __init__(self,value=0):
        if isinstance(value,Exact):self.d=dict(value.d)
        elif isinstance(value,dict):self.d={int(k):Base(v)for k,v in value.items()if Base(v)}
        else:
            b=Base(value);self.d={0:b}if b else {}
    def __eq__(self,other):
        try:return self.d==Exact(other).d
        except (TypeError,ValueError):return False
    def __bool__(self):return bool(self.d)
    def __add__(self,other):
        other=Exact(other);a=dict(self.d)
        for k,v in other.d.items():a[k]=a.get(k,Base(0))+v
        return Exact(a)
    __radd__=__add__
    def __neg__(self):return Exact({k:-v for k,v in self.d.items()})
    def __sub__(self,other):return self+-Exact(other)
    def __rsub__(self,other):return Exact(other)+-self
    def __mul__(self,other):
        other=Exact(other);a={}
        for k,v in self.d.items():
            for l,w in other.d.items():
                vw=v*w
                for m,c in basis_product(k,l):a[m]=a.get(m,Base(0))+vw*c
        return Exact(a)
    __rmul__=__mul__
    def __truediv__(self,other):
        # Only division by elements of the base field is allowed. Radical
        # reciprocals in the certificate are written explicitly using squares.
        if isinstance(other,Exact):
            if set(other.d)-{0}:raise TypeError('non-base division is not supported')
            other=other.d.get(0,Base(0))
        return self*Base(other).inverse()
    def __pow__(self,n):
        if not isinstance(n,int)or n<0:raise TypeError('nonnegative integer exponent required')
        ans=Exact(1);x=self
        while n:
            if n&1:ans=ans*x
            x=x*x;n//=2
        return ans
    def conj(self):return Exact({mask:(-c if mask&16 else c)for mask,c in self.d.items()})
    def abs2(self):return self*self.conj()
    def as_json(self):return {str(k):v.strings()for k,v in sorted(self.d.items())}
    def __repr__(self):return 'Exact('+repr(self.as_json())+')'

P,D,A,T,I=(Exact({1<<j:1})for j in range(5))

def anchor():
    p=(P+D)/2;q=(P-D)/2;X=4-p*p;Y=4-q*q
    B=A*Y/(s-2)
    u=P*(2-L)/(4*L);v=T*D*(s-2)/(4*M)
    omega=(-1+I*T)/2;kappa=(u+I*v)*omega**2
    x=[Exact(1),kappa*omega**2*(p-I*A)/2,kappa*(q-I*B)/2,
       Exact(1),kappa*omega**2*(p+I*A)/2,kappa*(q+I*B)/2]
    return dict(x=x,p=p,q=q,X=X,Y=Y,B=B,u=u,v=v,kappa=kappa,omega=omega)
