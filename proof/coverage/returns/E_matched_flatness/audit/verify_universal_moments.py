"""Universal side moment and symmetric-square identities over Laurent Z rings.
Dependency-free symbolic verification, independent of FLINT rational helper.
Negative exponents implement conjugation of unimodular variables.
"""
import sys
if not __debug__:
    raise RuntimeError('Exact verification requires assertions; do not use python -O')
from itertools import permutations
import json,time

class LP:
    n=6
    def __init__(self,x=0):
        if isinstance(x,LP):self.c=x.c
        elif isinstance(x,dict):self.c={k:v for k,v in x.items() if v}
        else:self.c={} if not x else {(0,)*self.n:x}
    def __add__(a,b):
        b=LP(b);c=dict(a.c)
        for k,v in b.c.items():c[k]=c.get(k,0)+v
        return LP(c)
    __radd__=__add__
    def __neg__(a):return LP({k:-v for k,v in a.c.items()})
    def __sub__(a,b):return a+-LP(b)
    def __rsub__(a,b):return LP(b)+-a
    def __mul__(a,b):
        b=LP(b);c={}
        for k,v in a.c.items():
            for l,w in b.c.items():
                m=tuple(x+y for x,y in zip(k,l));c[m]=c.get(m,0)+v*w
        return LP(c)
    __rmul__=__mul__
    def __pow__(a,k):
        assert k>=0;r=LP(1)
        for _ in range(k):r=r*a
        return r
    def star(a):return LP({tuple(-x for x in k):v for k,v in a.c.items()})
    def __eq__(a,b):return a.c==LP(b).c
    @classmethod
    def gen(cls,i):return LP({tuple(int(j==i) for j in range(cls.n)):1})

def product(vs):
    r=LP(1)
    for v in vs:r=r*v
    return r

def run():
    started=time.perf_counter();LP.n=6
    x=[LP.gen(i) for i in range(3)];y=[LP.gen(i+3) for i in range(3)]
    A=[[LP(1)]*3,x,y]
    s=sum(x);t=sum(y);r=sum(y[j]*x[j].star() for j in range(3))
    S,T,R=s.star(),t.star(),r.star()
    u,v=product(x),product(y)
    pi=sum(product(A[i][p[i]] for i in range(3)) for p in permutations(range(3)))
    pairs=[(0,0),(0,1),(0,2),(1,1),(1,2),(2,2)]
    exps=[(0,0),(1,0),(0,1),(2,0),(1,1),(0,2)]
    m={(0,0):LP(3),(1,0):s,(0,1):t,(1,-1):R,
       (2,0):s*s-2*u*S,(0,2):t*t-2*v*T,(1,1):s*t-pi,
       (2,-1):s*R-u*pi.star(),(-1,2):t*r-v*pi.star(),
       (2,-2):R*R-2*u*v.star()*r}
    m.update({(-i,-j):p.star() for (i,j),p in list(m.items())})
    square=[[A[a][j]*A[b][j] for j in range(3)] for a,b in pairs]
    for i in range(6):
        for j in range(6):
            actual=sum(square[i][k]*square[j][k].star() for k in range(3))
            assert actual==m[tuple(exps[i][q]-exps[j][q] for q in range(2))],('fourth moment',i,j)
    Q1=[[S,S*S-2*s*u.star(),S*T-pi.star()],
        [LP(3),S,T],[r,S*r-u.star()*pi,S]]
    Q2=[[T,S*T-pi.star(),T*T-2*t*v.star()],
        [R,T,T*R-v.star()*pi],[LP(3),S,T]]
    for p,Q in enumerate((Q1,Q2),start=1):
        for a in range(3):
            for c in range(3):
                actual=sum(A[p][j].star()*A[a][j]*A[c][j].star() for j in range(3))
                assert actual==Q[a][c],('third moment',p,a,c)
    # Multiplicity verification uses completely independent polynomial variables.
    LP.n=15
    ca=[LP.gen(i) for i in range(3)];bb=[LP.gen(i+3) for i in range(3)]
    K=[[LP.gen(6+3*i+j) for j in range(3)] for i in range(3)]
    D=sum(ca[a]*K[a][b]*bb[b] for a in range(3) for b in range(3))
    square_D=LP(0)
    for rp in pairs:
        for cp in pairs:
            coeff=sum(K[a][c]*K[b][d] for a,b in set((rp,rp[::-1])) for c,d in set((cp,cp[::-1])))
            square_D+=ca[rp[0]]*ca[rp[1]]*coeff*bb[cp[0]]*bb[cp[1]]
    assert D*D==square_D
    return {'status':'PASS_EXACT_UNIVERSAL_MOMENTS','arithmetic':'Sparse Laurent polynomials over Z; no floating point or random evaluations','fourth_moment_entries':36,'third_moment_entries':18,'symmetric_square_identity':True,'wall_seconds':time.perf_counter()-started}
if __name__=='__main__':print(json.dumps(run(),indent=2))
