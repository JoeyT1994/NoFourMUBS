"""Exact multiquadratic arithmetic and small helpers for the ThreeRowGram verifiers.

Q is rational arithmetic in Q(i,sqrt2,sqrt3,sqrt7,sqrt221) with basis the 32 signed
radical monomials (bit k of a key selects the k-th radical in RAD). Analytic
conjugation flips only i. Copied from the archive's verify_hx_nonbinary.py;
carrier() is the explicit H8 of EqualityBranches.md, (7).
"""
import itertools as it
from fractions import Fraction as F

RAD=(-1,2,3,7,221)
class Q:
    def __init__(self,value=0):
        self.c=({k:F(v) for k,v in value.items() if v} if isinstance(value,dict)
                else dict(value.c) if isinstance(value,Q) else {0:F(value)} if value else {})
    def __add__(self,b):
        b=Q(b);d=dict(self.c)
        for k,v in b.c.items():d[k]=d.get(k,F(0))+v
        return Q(d)
    __radd__=__add__
    def __neg__(self):return Q({k:-v for k,v in self.c.items()})
    def __sub__(self,b):return self+-Q(b)
    def __rsub__(self,b):return Q(b)+-self
    def __mul__(self,b):
        b=Q(b);d={}
        for k,v in self.c.items():
            for l,w in b.c.items():
                value=v*w
                for bit,r in enumerate(RAD):
                    if k&l&(1<<bit):value*=r
                d[k^l]=d.get(k^l,F(0))+value
        return Q(d)
    __rmul__=__mul__
    def inv(self):
        assert self.c
        top=max(self.c)
        if top==0:return Q(1/self.c[0])
        bit=top.bit_length()-1;mask=1<<bit
        a=Q({k:v for k,v in self.c.items() if not k&mask})
        b=Q({k^mask:v for k,v in self.c.items() if k&mask})
        return (a-b*Q({mask:1}))*(a*a-RAD[bit]*b*b).inv()
    def __truediv__(self,b):return self*Q(b).inv()
    def __rtruediv__(self,b):return Q(b)*self.inv()
    def __pow__(self,n):
        if n<0:return self.inv()**(-n)
        out=Q(1);base=self
        while n:
            if n&1:out=out*base
            base=base*base;n//=2
        return out
    def __eq__(self,b):return self.c==Q(b).c
    def bar(self):return Q({k:(-v if k&1 else v) for k,v in self.c.items()})
    def rational(self):
        assert all(k==0 for k in self.c)
        return self.c.get(0,F(0))
    def __repr__(self):return repr({k:str(v) for k,v in self.c.items()})

def eye(n):return [[Q(i==j) for j in range(n)] for i in range(n)]
def star(A):return [[x.bar() for x in row] for row in zip(*A)]
def mul(A,B):return [[sum((a*b for a,b in zip(row,col)),Q()) for col in zip(*B)] for row in A]
def scale(A,c):return [[x*c for x in row] for row in A]
def sub(A,B):return [[a-b for a,b in zip(ra,rb)] for ra,rb in zip(A,B)]
def diag(v):return [[Q(v[i]) if i==j else Q() for j in range(len(v))] for i in range(len(v))]
def trace(A):return sum((A[i][i] for i in range(len(A))),Q())
def rank(A):
    A=[row[:] for row in A];r=0;cols=[]
    for j in range(len(A[0])):
        pivot=next((i for i in range(r,len(A)) if A[i][j]!=0),None)
        if pivot is None:continue
        A[r],A[pivot]=A[pivot],A[r];inv=A[r][j].inv()
        A[r]=[x*inv for x in A[r]]
        for i in range(r+1,len(A)):
            c=A[i][j]
            if c!=0:A[i]=[a-c*b for a,b in zip(A[i],A[r])]
        cols.append(j);r+=1
    return r,cols
def physical(A):
    n=len(A)
    assert all(x*x.bar()==1 for row in A for x in row)
    assert mul(star(A),A)==scale(eye(n),n)



def det3(M):
    return (M[0][0]*(M[1][1]*M[2][2]-M[1][2]*M[2][1])
           -M[0][1]*(M[1][0]*M[2][2]-M[1][2]*M[2][0])
           +M[0][2]*(M[1][0]*M[2][1]-M[1][1]*M[2][0]))


def abs2(q):
    return q*q.bar()


def carrier():
    """H8 of EqualityBranches.md, equation (7); q=(1+i)/sqrt(2)."""
    i=Q({1:1});t=Q({2:F(1,2),3:F(1,2)});tb=t.bar();o=Q(1)
    return [[o]*6,
            [-i,tb,-tb,i,t,-t],
            [-t,i,t,-tb,-i,tb],
            [o,-o,i,o,-o,-i],
            [o,tb,t,-o,-t,-tb],
            [o,-tb,-i,i,tb,-o]]


def moment(H,rows):
    """S(X)=sum_{j!=k}|G_jk|^4 for the three rows X of H, G=X*X."""
    X=[H[r] for r in rows];G=mul(star(X),X)
    return sum(((G[j][k]*G[j][k].bar())**2
                for j in range(6) for k in range(6) if j!=k),Q())
