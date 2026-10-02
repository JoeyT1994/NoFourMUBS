"""Small exact arithmetic layer for Q(sqrt(3), i); no floating point is used.

A value (a,b,c,d) means a+b*sqrt(3)+i*(c+d*sqrt(3)).
Laurent polynomials are dictionaries from integer exponent tuples to Q3i.
"""
from dataclasses import dataclass
from fractions import Fraction as F
from math import isqrt
from typing import Iterable

@dataclass(frozen=True)
class Q3i:
    a: F = F(0)
    b: F = F(0)
    c: F = F(0)
    d: F = F(0)

    def __post_init__(self):
        for name in ('a','b','c','d'):
            object.__setattr__(self, name, F(getattr(self, name)))

    @staticmethod
    def coerce(x):
        return x if isinstance(x, Q3i) else Q3i(F(x))

    def __add__(self, x):
        x=self.coerce(x)
        return Q3i(self.a+x.a,self.b+x.b,self.c+x.c,self.d+x.d)
    __radd__=__add__

    def __neg__(self):
        return Q3i(-self.a,-self.b,-self.c,-self.d)
    def __sub__(self,x):
        return self+-self.coerce(x)
    def __rsub__(self,x):
        return self.coerce(x)+-self
    def __mul__(self,x):
        x=self.coerce(x)
        return Q3i(self.a*x.a+3*self.b*x.b-self.c*x.c-3*self.d*x.d,
                   self.a*x.b+self.b*x.a-self.c*x.d-self.d*x.c,
                   self.a*x.c+3*self.b*x.d+self.c*x.a+3*self.d*x.b,
                   self.a*x.d+self.b*x.c+self.c*x.b+self.d*x.a)
    __rmul__=__mul__
    def conj(self):
        return Q3i(self.a,self.b,-self.c,-self.d)
    def inverse(self):
        # z^-1=bar(z)/(z*bar(z)), followed by rationalizing Q(sqrt(3)).
        n=self*self.conj()
        assert n.c==n.d==0
        den=n.a*n.a-3*n.b*n.b
        if den==0: raise ZeroDivisionError('zero algebraic denominator')
        return self.conj()*Q3i(n.a/den,-n.b/den)
    def __truediv__(self,x):
        if isinstance(x,Q3i):return self*x.inverse()
        return self*F(1,F(x))
    def __pow__(self,n):
        if not isinstance(n,int):raise TypeError('integer exponent required')
        if n<0:return self.inverse()**(-n)
        ans=Q3i(1);t=self
        while n:
            if n&1:ans=ans*t
            t=t*t;n//=2
        return ans
    def __bool__(self):return bool(self.a or self.b or self.c or self.d)
    def as_strings(self):return [str(t) for t in (self.a,self.b,self.c,self.d)]

ZERO=Q3i();ONE=Q3i(1);I=Q3i(c=1)
Z12=Q3i(b=F(1,2),c=F(1,2))
ROOTS12=[Z12**j for j in range(12)]
assert Z12**12==ONE


def root3_interval(digits=60):
    den=10**digits;n=isqrt(3*den*den)
    assert n*n<3*den*den<(n+1)*(n+1)
    return F(n,den),F(n+1,den)


def real_interval(a,b,root_interval):
    lo,hi=root_interval
    return (a+b*lo,a+b*hi) if b>=0 else (a+b*hi,a+b*lo)


def abs_upper(z,root_interval):
    """Rational upper bound |z| <= |Re z|+|Im z|."""
    a,b=real_interval(z.a,z.b,root_interval)
    c,d=real_interval(z.c,z.d,root_interval)
    return max(abs(a),abs(b))+max(abs(c),abs(d))


def add_term(poly,exponent,value):
    if not value:return
    exponent=tuple(exponent)
    new=poly.get(exponent,ZERO)+value
    if new:poly[exponent]=new
    elif exponent in poly:del poly[exponent]


def poly_add(a,b,sign=1):
    out=dict(a)
    for k,v in b.items():add_term(out,k,v*sign)
    return out


def poly_mul(a,b):
    out={}
    for k,v in a.items():
        for l,w in b.items():
            add_term(out,tuple(x+y for x,y in zip(k,l)),v*w)
    return out


def poly_conj(p):
    return {tuple(-x for x in k):v.conj() for k,v in p.items()}


def matrix_from_exponents(exponents,modulus):
    if 12%modulus:raise ValueError('root order must divide 12')
    return [[ROOTS12[(12//modulus*x)%12] for x in row] for row in exponents]


def dagger(A):return [[A[i][j].conj() for i in range(len(A))]for j in range(len(A[0]))]

def matmul(A,B):
    if len(A[0])!=len(B):raise ValueError('matrix dimensions do not match')
    return [[sum((a*b for a,b in zip(row,col)),ZERO)for col in zip(*B)]for row in A]


def det3(A):
    return (A[0][0]*(A[1][1]*A[2][2]-A[1][2]*A[2][1])
           -A[0][1]*(A[1][0]*A[2][2]-A[1][2]*A[2][0])
           +A[0][2]*(A[1][0]*A[2][1]-A[1][1]*A[2][0]))


def perm3(A):
    from itertools import permutations
    return sum((A[0][p[0]]*A[1][p[1]]*A[2][p[2]] for p in permutations(range(3))),ZERO)


def invariant_data(E):
    """The current reconstruction's invariant definitions, not old guards."""
    EE=matmul(E,dagger(E))
    G=[[(Q3i(6) if i==j else ZERO)-EE[i][j]for j in range(3)]for i in range(3)]
    s,t,r=G[1][0],G[2][0],G[2][1]
    X,Y,Z=s*s.conj(),t*t.conj(),r*r.conj()
    p=X+Y+Z;zz=s*r*t.conj();J=zz+zz.conj()
    W=X*Y+X*Z+Y*Z-X*Y*Z
    g=27-3*p+J;eta=9-p+J
    chi=W-(p-9)*(p-18)+(p-15)*J
    R=4*g*g*eta-chi*chi
    assert g==det3(G)
    return dict(g=g,eta=eta,chi=chi,R=R)


def input_forms(C):
    """The nine reference quadratic observation residuals on the 5-torus."""
    H=matrix_from_exponents(C['reference_H_exponents_mod6'],6)
    K=matrix_from_exponents(C['reference_K_exponents_mod12'],12)
    E=[(0,)*5]+[tuple(int(i==j)for i in range(5))for j in range(5)]
    forms=[]
    for a in C['multipliers']:
        A=H if a['basis']=='H' else K;j=a['column'];f={}
        # |<A[:,j]/sqrt(6), (1,z)>|^2 - 1. Diagonal terms cancel.
        for r in range(6):
            for s in range(6):
                if r==s:continue
                exp=tuple(v-u for u,v in zip(E[r],E[s]))
                add_term(f,exp,A[r][j]*A[s][j].conj()/6)
        assert poly_conj(f)==f
        forms.append(f)
    return H,K,forms


def multiplier_polynomials(C):
    den=C['scale'];polys=[]
    for a in C['multipliers']:
        p={}
        for t in a['terms']:
            e=tuple(t['exponent']);c=t['cos'];s=t['sin']
            if not any(e):
                assert s==0;add_term(p,e,Q3i(F(c,den)))
            else:
                add_term(p,e,Q3i(F(c,2*den),c=F(-s,2*den)))
                add_term(p,tuple(-x for x in e),Q3i(F(c,2*den),c=F(s,2*den)))
        assert poly_conj(p)==p
        polys.append(p)
    return polys


def sos_polynomial(C):
    """Expand the supplied factors exactly; positivity is by construction."""
    mons=[tuple(m)for m in C['sos_monomials']]
    A=C['sos_factor_real_integers'];B=C['sos_factor_imag_integers']
    if len(A)!=len(B) or any(len(r)!=len(mons)for r in A+B):
        raise ValueError('malformed SOS factors')
    sums={}
    for k,m in enumerate(mons):
        for l,n in enumerate(mons):
            real=sum(a[k]*a[l]+b[k]*b[l]for a,b in zip(A,B))
            imag=sum(a[k]*b[l]-b[k]*a[l]for a,b in zip(A,B))
            e=tuple(y-x for x,y in zip(m,n))
            old=sums.get(e,(0,0));sums[e]=(old[0]+real,old[1]+imag)
    den=C['scale']**2
    p={e:Q3i(F(a,den),c=F(b,den))for e,(a,b) in sums.items()if a or b}
    assert poly_conj(p)==p
    return p


def certificate_polynomial(C):
    H,K,forms=input_forms(C);hs=multiplier_polynomials(C)
    sos=sos_polynomial(C);P={}
    for h,f in zip(hs,forms):P=poly_add(P,poly_mul(h,f))
    P=poly_add(P,sos,-1)
    assert poly_conj(P)==P
    return H,K,forms,hs,sos,P
