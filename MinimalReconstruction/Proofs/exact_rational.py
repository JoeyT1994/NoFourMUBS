"""Exact rational-function arithmetic over Q(a,b,c,d), using FLINT.

Extracted from the exploratory implementation for independent proof replay.
There is no floating-point arithmetic or sampling in this helper.
"""
from flint import fmpq_mpoly_ctx

CTX=fmpq_mpoly_ctx.get(['a','b','c','d'])
ZERO=CTX.constant(0);ONE=CTX.constant(1)


class F:
    def __init__(self,n=0,d=1,reduce=True):
        if isinstance(n,F): self.n,self.d=n.n,n.d;return
        self.n=n if hasattr(n,'terms') else CTX.constant(n)
        self.d=d if hasattr(d,'terms') else CTX.constant(d)
        assert self.d
        if not self.n:self.d=ONE;return
        if reduce:
            g=self.n.gcd(self.d)
            self.n=self.n/g;self.d=self.d/g
        lead=self.d.leading_coefficient()
        self.n=self.n/lead;self.d=self.d/lead
    def __add__(a,b):
        b=F(b)
        if not a.n:return b
        if not b.n:return a
        g=a.d.gcd(b.d);ad=a.d/g;bd=b.d/g
        n=a.n*bd+b.n*ad
        h=n.gcd(g)
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
    def star(a):
        if not a.n:return a
        def reverse(p):
            deg=p.degrees()
            return CTX.from_dict({tuple(d-e for d,e in zip(deg,ex)):co for ex,co in p.terms()}),CTX.from_dict({deg:1})
        nn,nm=reverse(a.n);dd,dm=reverse(a.d)
        return F(nn*dm,dd*nm)
    def record(a):return dict(numerator=str(a.n),denominator=str(a.d),numerator_terms=len(a.n),denominator_terms=len(a.d))


def tr(M):return [list(x) for x in zip(*M)]
def adj(M):return [[x.star() for x in row] for row in tr(M)]
def mul(A,B):return [[sum(x*y for x,y in zip(row,col)) for col in tr(B)] for row in A]
def common_sum(values):
    """Clear a single common denominator before the final cancellation."""
    den=ONE
    for v in values:den=den*(v.d/den.gcd(v.d))
    num=sum((v.n*(den/v.d) for v in values),ZERO)
    return F(num,den)

