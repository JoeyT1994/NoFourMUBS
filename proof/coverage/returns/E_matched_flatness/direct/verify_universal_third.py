"""Independent exact Laurent-polynomial check of third-moment formulas.

No FLINT, SymPy, seed reconstruction, or matched-flatness result is used.
"""
import json
import resource
import time
from itertools import permutations


class P:
    n=30
    def __init__(self,terms=0):
        if isinstance(terms,P): self.t=terms.t;return
        self.t=({(0,)*self.n:terms} if terms else {}) if isinstance(terms,int) else {e:c for e,c in terms.items() if c}
    @classmethod
    def v(cls,i,power=1):
        e=[0]*cls.n;e[i]=power;return cls({tuple(e):1})
    def __add__(a,b):
        b=P(b);r=dict(a.t)
        for e,c in b.t.items():r[e]=r.get(e,0)+c
        return P(r)
    __radd__=__add__
    def __neg__(a):return P({e:-c for e,c in a.t.items()})
    def __sub__(a,b):return a+-P(b)
    def __rsub__(a,b):return P(b)+-a
    def __mul__(a,b):
        b=P(b);r={}
        for e,c in a.t.items():
            for f,d in b.t.items():
                g=tuple(x+y for x,y in zip(e,f));r[g]=r.get(g,0)+c*d
        return P(r)
    __rmul__=__mul__
    def __pow__(a,n):
        assert n>=0
        out=P(1)
        while n:
            if n&1:out=out*a
            a=a*a;n//=2
        return out
    def star(a):
        # Twelve torus variables, nine independent K variables, their 9 stars.
        return P({tuple([-u for u in e[:12]]+list(e[21:30])+list(e[12:21])):c for e,c in a.t.items()})
    def zero(a):return not a.t


def main():
    started=time.process_time();checks=0
    def check(a,b):
        nonlocal checks
        assert (a-b).zero(),'nonzero Laurent identity';checks+=1
    one=P(1)
    B=[[one]*3,[P.v(j) for j in range(3)],[P.v(3+j) for j in range(3)]]
    V=[[one]*3,[P.v(6+j) for j in range(3)],[P.v(9+j) for j in range(3)]]
    K=[[P.v(12+3*a+b) for b in range(3)] for a in range(3)]

    def tensors(B):
        x,y=B[1],B[2]
        s=sum(x,P());t=sum(y,P());r=sum((y[j]*x[j].star() for j in range(3)),P())
        S,T,Q=s.star(),t.star(),r.star()
        U=x[0]*x[1]*x[2];V=y[0]*y[1]*y[2]
        pi=sum((B[0][p[0]]*B[1][p[1]]*B[2][p[2]] for p in permutations(range(3))),P())
        q1=[[S,S*S-2*s*U.star(),S*T-pi.star()],[P(3),S,T],[r,S*r-U.star()*pi,S]]
        q2=[[T,S*T-pi.star(),T*T-2*t*V.star()],[Q,T,T*Q-V.star()*pi],[P(3),S,T]]
        for p,q in enumerate((q1,q2),1):
            for a in range(3):
                for b in range(3):
                    direct=sum((B[a][j]*B[b][j].star()*B[p][j].star() for j in range(3)),P())
                    check(q[a][b],direct)
        return [q1,q2]

    Qh=tensors(B);Qv=tensors(V)
    D=[[sum((V[a][i]*K[a][b]*B[b][j] for a in range(3) for b in range(3)),P()) for j in range(3)] for i in range(3)]
    defects=[[d*d.star()-1 for d in row] for row in D]
    for p in range(2):
        for q in range(2):
            direct=sum((V[p+1][i].star()*B[q+1][j].star()*defects[i][j] for i in range(3) for j in range(3)),P())
            tensor=sum((K[a][b]*K[c][d].star()*Qv[p][a][c]*Qh[q][b][d] for a in range(3) for b in range(3) for c in range(3) for d in range(3)),P())
            tensor-=sum((V[p+1][i].star() for i in range(3)),P())*sum((B[q+1][j].star() for j in range(3)),P())
            check(direct,tensor)
    print(json.dumps(dict(status='PASS_UNIVERSAL_THIRD_MOMENTS_AND_WEIGHTED_DEFECT_CONTRACTION',exact_laurent_identities=checks,cpu_seconds=time.process_time()-started,peak_rss_kib=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss),indent=2))


if __name__=='__main__':
    if not __debug__:raise SystemExit('Refusing optimized Python: exact acceptance assertions must be enabled.')
    main()
