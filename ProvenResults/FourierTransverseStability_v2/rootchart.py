"""Exact 24-term Laurent-sine expansion of the signed side determinant."""
from interval import *
from corner import TERMS
from collections import defaultdict

def q_terms():
    out=defaultdict(Q)
    def phase(terms):
        z=np.zeros(36,dtype=int)
        for i,j,vv in terms:z[6*i+j]+=vv
        return z
    for i,j,a,b,cc,d,sgn in TERMS:
        A=phase([(1,3+b,1),(1,3+a,-1)])
        B=phase([(2,3+d,1),(2,3+cc,-1)])
        C=phase([(2,3+i,1),(1,3+i,-1),(2,3+j,-1),(1,3+j,1)])
        for Z,s in [(A+B-C,1),(A-B+C,1),(-A+B+C,1),(A+B+C,-1)]:
            nz=np.flatnonzero(Z)
            if len(nz)==0:continue
            fac=1 if Z[nz[0]]>0 else -1;Z=Z*fac
            out[tuple(map(int,Z))]+=Q(sgn*s*fac,4)
    return [(np.array(k,dtype=int),w) for k,w in sorted(out.items()) if w]
QTERMS=q_terms()

