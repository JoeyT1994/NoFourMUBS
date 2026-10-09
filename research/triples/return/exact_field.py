"""Exact arithmetic in Q(sqrt(2),sqrt(3),sqrt(5),i), standard library only.

The mask b0+2*b1+4*b2+8*b3 represents
sqrt(2)^b0 sqrt(3)^b1 sqrt(5)^b2 i^b3.
Every coefficient is a Fraction.  No numerical tolerance is used.
"""
from fractions import Fraction


class E:
    __slots__ = ('c',)
    squares = (2,3,5,-1)

    def __init__(self,x=0):
        if isinstance(x,E):
            self.c=x.c
        elif isinstance(x,(tuple,list)):
            if len(x)!=16:
                raise ValueError('16 coefficients required')
            self.c=tuple(Fraction(v) for v in x)
        else:
            self.c=(Fraction(x),)+(Fraction(0),)*15

    @classmethod
    def root(cls,j):
        cs=[0]*16
        cs[1<<j]=1
        return cls(cs)

    def __add__(self,other):
        o=E(other)
        return E(tuple(a+b for a,b in zip(self.c,o.c)))

    __radd__=__add__

    def __neg__(self):
        return E(tuple(-a for a in self.c))

    def __sub__(self,other):
        return self+-E(other)

    def __rsub__(self,other):
        return E(other)+-self

    def __mul__(self,other):
        o=E(other)
        ans=[Fraction(0)]*16
        for a,ca in enumerate(self.c):
            if not ca:
                continue
            for b,cb in enumerate(o.c):
                if not cb:
                    continue
                cc=ca*cb
                shared=a&b
                for j,d in enumerate(self.squares):
                    if shared&(1<<j):
                        cc*=d
                ans[a^b]+=cc
        return E(ans)

    __rmul__=__mul__

    def __truediv__(self,other):
        if not isinstance(other,(int,Fraction)):
            raise TypeError('Only rational division is supported')
        return E(tuple(a/other for a in self.c))

    def __pow__(self,n):
        if not isinstance(n,int) or n<0:
            raise ValueError('Nonnegative integer powers only')
        ans=E(1)
        for unused in range(n):
            ans=ans*self
        return ans

    def conjugate(self):
        return E(tuple(-c if mask&8 else c for mask,c in enumerate(self.c)))

    def __eq__(self,other):
        try:
            return self.c==E(other).c
        except (ValueError,TypeError):
            return False

    def __hash__(self):
        return hash(self.c)

    def __repr__(self):
        return 'E('+repr(self.c)+')'


def matrix_mul(A,B):
    if len(A[0])!=len(B):
        raise ValueError('matrix dimension mismatch')
    return [[sum((A[r][j]*B[j][c] for j in range(len(B))),E(0))
             for c in range(len(B[0]))] for r in range(len(A))]


def adjoint(A):
    return [[E(A[c][r]).conjugate() for c in range(len(A))]
            for r in range(len(A[0]))]


def abs2(z):
    return E(z)*E(z).conjugate()
