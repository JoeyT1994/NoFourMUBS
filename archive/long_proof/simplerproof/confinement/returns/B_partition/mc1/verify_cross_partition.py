#!/usr/bin/env python3
"""Standalone exact verifier for a cross-partition active-pattern obstruction.
All arithmetic is integer/rational; only the Python standard library is used.
Laurent coefficients are in Z[w]/(w^2-w+1), w=exp(i*pi/3).
"""
from collections import Counter, defaultdict
from fractions import Fraction
from itertools import combinations

ROOT6=((1,0),(0,1),(-1,1),(-1,0),(0,-1),(1,-1))
TRIPLES=tuple(combinations(range(6),3))

def clean(p): return {e:c for e,c in p.items() if c!=(0,0)}
def add(*polys):
    out={}
    for p in polys:
        for e,(a,b) in p.items():
            c,d=out.get(e,(0,0));out[e]=(a+c,b+d)
    return clean(out)
def scale(n,p): return clean({e:(n*a,n*b) for e,(a,b) in p.items()})
def sub(p,q): return add(p,scale(-1,q))
def mul(p,q):
    out={}
    for e,(a,b) in p.items():
        for f,(c,d) in q.items():
            g,h=out.get(e+f,(0,0))
            out[e+f]=(g+a*c-b*d,h+a*d+b*c+b*d)
    return clean(out)
def square(p): return mul(p,p)
def conj(p): return {-e:(a+b,-b) for e,(a,b) in p.items()}
def normsq(p): return mul(p,conj(p))
def const(n): return {0:(n,0)} if n else {}
def entry(i,j):
    phase=(i%2)*(0,1,-1)[j%3]
    return {phase:ROOT6[(i*j)%6]}
def comp(t): return tuple(i for i in range(6) if i not in t)
def R_defining(rows,cols):
    A=[[entry(i,j) for j in cols] for i in rows]
    s=scale(-1,add(*(mul(A[1][j],conj(A[0][j])) for j in range(3))))
    t=scale(-1,add(*(mul(A[2][j],conj(A[0][j])) for j in range(3))))
    r=scale(-1,add(*(mul(A[2][j],conj(A[1][j])) for j in range(3))))
    X,Y,Z=normsq(s),normsq(t),normsq(r)
    p=add(X,Y,Z)
    cycle=mul(mul(s,r),conj(t));J=add(cycle,conj(cycle))
    W=sub(add(mul(X,Y),mul(X,Z),mul(Y,Z)),mul(mul(X,Y),Z))
    g=add(const(27),scale(-3,p),J)
    eta=add(const(9),scale(-1,p),J)
    chi=add(W,scale(-1,mul(sub(p,const(9)),sub(p,const(18)))),
            mul(sub(p,const(15)),J))
    return sub(scale(4,mul(square(g),eta)),square(chi))

for i in range(6):
    for k in range(6):
        gram=add(*(mul(entry(i,j),conj(entry(k,j))) for j in range(6)))
        assert gram==const(6 if i==k else 0)
print('PASS the arc consists of Hadamard matrices identically in its phase')
maximum={6:(-36,0),0:(72,0),-6:(-36,0)}
active=[]
for rows in TRIPLES:
    for cols in TRIPLES:
        invariant=R_defining(rows,cols)
        assert invariant in ({},maximum)
        if invariant:active.append((rows,cols))
assert len(active)==72
parts=Counter((tuple(sorted((r,comp(r)))),tuple(sorted((c,comp(c)))))
              for r,c in active)
assert len(parts)==18 and set(parts.values())=={4}
A=((0,1,2),(0,1,2))
assert A in active
examples={
    (3,1):((0,1,2),(0,4,5)),
    (3,2):((0,1,2),(1,2,3)),
    (1,1):((0,3,4),(0,4,5)),
    (1,2):((0,3,4),(1,2,3)),
}
for overlap,B in examples.items():
    assert B in active
    assert overlap==(len(set(A[0])&set(B[0])),len(set(A[1])&set(B[1])))

# Pair patterns modulo simultaneous diagonal complementation and transpose.
def orbit_pair(r,c): return frozenset(((r,c),(3-r,3-c),(c,r),(3-c,3-r)))
classes={orbit_pair(r,c) for r in range(4) for c in range(4)}
assert len(classes)==6
remaining=classes-{orbit_pair(3,3),orbit_pair(3,0)}
assert remaining=={orbit_pair(*p) for p in examples}

# Uniform target-region bound: sin(3a)^2 <= (3a)^2 for0<a<=1/10.
assert 144*(3*Fraction(1,10))**2==Fraction(324,25)<26
print('PASS every defining R polynomial on H(a,-a) is0 or144 sin^2(3a)')
print('PASS72 active corners across18 partitions, all4 blocks active in each')
print('PASS all4 noncomplementary overlap types occur simultaneously')
print('PASS the whole arc0<a<=1/10 has0<M<26')
print('CROSS-PARTITION COMBINATORIAL OBSTRUCTION PASS')
