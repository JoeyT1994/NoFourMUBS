"""Exact ambient 9-phase gradients of 2 Im q on the affine Fourier family."""
from collections import Counter
from itertools import product
from explore_exact import (PERMS,SIGNS,H,TRIPLES,ZERO,ONE,add,mul,scale,
                           conj,prod,signature,canonical_sign)

def q_terms():
    terms={}
    for a,b,c in product(range(6),repeat=3):
        e=[-1]*9
        for p in (PERMS[a],PERMS[b],PERMS[c]):
            for i,j in enumerate(p): e[3*i+j]+=1
        e=tuple(e)
        terms[e]=terms.get(e,0)+SIGNS[b]*SIGNS[c]
    return {e:c for e,c in terms.items() if c}

QTERMS=q_terms()

def ambient_gradient(E):
    es=[e for row in E for e in row]
    gs=[ZERO for _ in range(9)]
    powers=[{-1:conj(e),0:ONE,1:e,2:mul(e,e)} for e in es]
    for ell,c in QTERMS.items():
        q=prod(powers[i][p] for i,p in enumerate(ell))
        pair=add(q,conj(q))
        for i,p in enumerate(ell):
            if p: gs[i]=add(gs[i],scale(pair,c*p))
    return gs

def squared_norm(gs):
    ans=ZERO
    for g in gs: ans=add(ans,mul(g,g))
    return ans

def norm_types():
    counts=Counter()
    representatives={}
    for rows in TRIPLES:
        for cols in TRIPLES:
            E=[[H[i][j] for j in cols] for i in rows]
            sig=signature(squared_norm(ambient_gradient(E)))
            counts[sig]+=1
            representatives.setdefault(sig,(rows,cols))
    return counts,representatives

if __name__=='__main__':
    print('q terms:',len(QTERMS))
    counts,reps=norm_types()
    print('gradient norm polynomial types:',len(counts))
    for sig,count in sorted(counts.items(),key=lambda t:(len(t[0]),t[0])):
        # A crude absolute-coefficient bound in the canonical zeta basis.
        bound=sum(abs(c) for e,c in sig)
        print('count',count,'rep',reps[sig],'l1bound',bound,'poly',sig)
