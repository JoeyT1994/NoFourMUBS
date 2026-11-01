"""Exact Q(omega) and two-variable Laurent arithmetic, omega^2+omega+1=0.

This module uses Python integers and fractions only. No floating point is
used anywhere in the proof certificates.
"""
from __future__ import annotations
from dataclasses import dataclass
from fractions import Fraction as Q
from itertools import permutations
from typing import Iterable

@dataclass(frozen=True)
class E:
    a: Q = Q(0)
    b: Q = Q(0)
    def __post_init__(self):
        object.__setattr__(self, 'a', Q(self.a))
        object.__setattr__(self, 'b', Q(self.b))
    @staticmethod
    def coerce(x): return x if isinstance(x,E) else E(x)
    def __add__(self, other):
        o=E.coerce(other);return E(self.a+o.a,self.b+o.b)
    __radd__=__add__
    def __neg__(self):return E(-self.a,-self.b)
    def __sub__(self,o):return self+-E.coerce(o)
    def __rsub__(self,o):return E.coerce(o)+-self
    def __mul__(self,other):
        o=E.coerce(other)
        return E(self.a*o.a-self.b*o.b,self.a*o.b+self.b*o.a-self.b*o.b)
    __rmul__=__mul__
    def star(self):return E(self.a-self.b,-self.b)
    def norm(self):return self.a*self.a-self.a*self.b+self.b*self.b
    def inv(self):
        n=self.norm()
        if not n:raise ZeroDivisionError('zero Eisenstein number')
        s=self.star();return E(s.a/n,s.b/n)
    def __truediv__(self,o):return self*E.coerce(o).inv()
    def __rtruediv__(self,o):return E.coerce(o)*self.inv()
    def __pow__(self,k):
        if k<0:return self.inv()**(-k)
        ans=E(1);base=self
        while k:
            if k&1:ans=ans*base
            base=base*base;k>>=1
        return ans
    def __bool__(self):return bool(self.a or self.b)
    def data(self):return [str(self.a),str(self.b)]

ONE=E(1);ZERO=E(0);OMEGA=E(0,1)
CUBES=tuple(OMEGA**k for k in range(3))

class L:
    """A finite Laurent polynomial in two unit phases over Q(omega)."""
    __slots__=('p',)
    def __init__(self,p=0):
        if isinstance(p,L):self.p=p.p.copy()
        elif isinstance(p,dict):self.p={k:E.coerce(v) for k,v in p.items() if v}
        else:
            e=E.coerce(p);self.p={(0,0):e} if e else {}
    def __add__(self,o):
        o=L(o);ans=self.p.copy()
        for k,v in o.p.items():
            ans[k]=ans.get(k,ZERO)+v
            if not ans[k]:del ans[k]
        return L(ans)
    __radd__=__add__
    def __neg__(self):return L({k:-v for k,v in self.p.items()})
    def __sub__(self,o):return self+-L(o)
    def __rsub__(self,o):return L(o)+-self
    def __mul__(self,o):
        o=L(o);ans={}
        for (a,b),v in self.p.items():
            for (c,d),w in o.p.items():
                k=(a+c,b+d);ans[k]=ans.get(k,ZERO)+v*w
        return L(ans)
    __rmul__=__mul__
    def __pow__(self,n):
        if n<0:return self.monomial_inverse()**(-n)
        ans=L(1);base=self
        while n:
            if n&1:ans=ans*base
            base=base*base;n>>=1
        return ans
    def star(self):return L({(-a,-b):c.star() for (a,b),c in self.p.items()})
    def monomial_inverse(self):
        if len(self.p)!=1:raise ValueError('only a nonzero monomial can be inverted')
        ((a,b),c),=self.p.items();return L({(-a,-b):c.inv()})
    def __bool__(self):return bool(self.p)
    def __eq__(self,o):return self.p==L(o).p
    def data(self):return [[a,b,*c.data()] for (a,b),c in sorted(self.p.items())]
    def evaluate(self,u,v):return sum((c*u**a*v**b for (a,b),c in self.p.items()),ZERO)

PERMS3=tuple(permutations(range(3)))

def sign(p):return (-1)**sum(p[i]>p[j] for i in range(len(p)) for j in range(i+1,len(p)))
def prod(xs):
    out=1
    for x in xs:out=out*x
    return out

def transpose(A):return [list(row) for row in zip(*A)]
def adjoint(A):return [[x.star() for x in row] for row in transpose(A)]
def multiply(A,B):return [[sum((x*y for x,y in zip(row,col)),0) for col in transpose(B)] for row in A]
def extract(A,rs,cs):return [[A[i][j] for j in cs] for i in rs]
def det3(A):return sum((sign(p)*prod(A[i][p[i]] for i in range(3)) for p in PERMS3),0)
def per3(A):return sum((prod(A[i][p[i]] for i in range(3)) for p in PERMS3),0)
def psi(A):
    product=prod(x for row in A for x in row)
    inverse=product.monomial_inverse() if isinstance(product,L) else product.inv()
    return per3(A)*det3(A)**2*inverse

def hadamard(A):
    n=len(A)
    return all(x.norm()==1 for row in A for x in row) and multiply(A,adjoint(A))==[[E(n if i==j else 0) for j in range(n)] for i in range(n)]

def f3():return [[OMEGA**(i*j) for j in range(3)] for i in range(3)]
def normal_form(p,q,r,s):
    F=f3();v=[ONE,p,q];w=[ONE,r,s]
    B=[[v[i]*F[i][j] for j in range(3)] for i in range(3)]
    C=[[F[i][j]*w[j] for j in range(3)] for i in range(3)]
    D=[[(-x)/3 for x in row] for row in multiply(multiply(C,adjoint(F)),B)]
    H=[F[i]+B[i] for i in range(3)]+[C[i]+D[i] for i in range(3)]
    return H

TAO_EXP=[[0,0,0,0,0,0],[0,0,1,1,2,2],[0,1,0,2,2,1],
         [0,1,2,0,1,2],[0,2,2,1,0,1],[0,2,1,2,1,0]]
TAO=[[CUBES[k] for k in row] for row in TAO_EXP]
