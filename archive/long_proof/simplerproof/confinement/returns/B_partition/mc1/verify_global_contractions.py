#!/usr/bin/env python3
"""Exact graph-algebra replay of the global sum-of-squares contraction formula.

A balanced integer matrix E represents the full index contraction
  T(E)=Re sum_{rows,columns} prod H[row_i,col_j]**E[i,j].
Indices in this definition may coincide. Conjugation is exponent negation.
The two contraction rules are row/column orthogonality and free zero vertices.
All arithmetic in this replay is integer arithmetic. See GLOBAL_IDENTITIES.md.
"""
from collections import Counter
from functools import lru_cache
from itertools import permutations,product

PERMS=list(permutations(range(3)))
SIGNS=[1,-1,-1,1,1,-1]
monomials=[]
for p in PERMS:
    e=[0]*9
    for i,j in enumerate(p):e[3*i+j]=1
    monomials.append(e)
q=Counter()
for a,b,c in product(range(6),repeat=3):
    e=tuple(monomials[a][i]+monomials[b][i]+monomials[c][i]-1 for i in range(9))
    q[e]+=SIGNS[b]*SIGNS[c]
q={e:c for e,c in q.items() if c}
anti=Counter(q)
for e,c in q.items():anti[tuple(-z for z in e)]-=c
anti={e:c for e,c in anti.items() if c}
R=Counter()
for e,a in anti.items():
    for f,b in anti.items():R[tuple(x+y for x,y in zip(e,f))]-=a*b
R={e:c for e,c in R.items() if c}
assert len(q)==55 and len(anti)==48 and len(R)==817

@lru_cache(None)
def canonical(E):
    """Row/column permutations and conjugation preserve Re T(E)."""
    if not E or not E[0]:return ()
    candidates=[]
    for A in (E,):
        for rp in permutations(range(len(A))):
            for cp in permutations(range(len(A[0]))):
                B=tuple(tuple(A[i][j] for j in cp) for i in rp)
                candidates.extend((B,tuple(tuple(-z for z in row) for row in B)))
    return min(candidates)

orbits=Counter()
for e,c in R.items():
    E=tuple(tuple(e[3*i:3*i+3]) for i in range(3))
    assert all(sum(row)==0 for row in E)
    assert all(sum(col)==0 for col in zip(*E))
    orbits[canonical(E)]+=c
assert len(orbits)==25

# Partition-lattice Mobius inversion converts distinct labels to unrestricted labels.
PARTITIONS=[(((0,),(1,),(2,)),1),
            (((0,1),(2,)),-1),(((0,2),(1,)),-1),(((1,2),(0,)),-1),
            (((0,1,2),),2)]

def reduce_contraction(E):
    E=[list(row) for row in E]
    m=len(E);n=len(E[0]);factor=1
    while True:
        if m==0:return factor*6**n,()
        if n==0:return factor*6**m,()
        changed=False
        for i in range(m):
            if not any(E[i]):
                E.pop(i);m-=1;factor*=6;changed=True;break
        if changed:continue
        for j in range(n):
            if not any(E[i][j] for i in range(m)):
                for row in E:row.pop(j)
                n-=1;factor*=6;changed=True;break
        if changed:continue
        # Sum a row label: sum_r H[r,j] conj(H[r,k])=6 delta(j,k).
        for i in range(m):
            nz=[j for j,z in enumerate(E[i]) if z]
            if len(nz)==2 and sorted(E[i][j] for j in nz)==[-1,1]:
                j,k=nz;E.pop(i);m-=1
                for row in E:row[j]+=row[k];row.pop(k)
                n-=1;factor*=6;changed=True;break
        if changed:continue
        # The corresponding rule for a column label.
        for j in range(n):
            nz=[i for i in range(m) if E[i][j]]
            if len(nz)==2 and sorted(E[i][j] for i in nz)==[-1,1]:
                i,k=nz
                for row in E:row.pop(j)
                n-=1
                E[i]=[a+b for a,b in zip(E[i],E[k])]
                E.pop(k);m-=1;factor*=6;changed=True;break
        if changed:continue
        return factor,canonical(tuple(tuple(row) for row in E))

out=Counter()
for E,c in orbits.items():
    for pr,mur in PARTITIONS:
        for pc,muc in PARTITIONS:
            A=tuple(tuple(sum(E[i][j] for i in rb for j in cb) for cb in pc) for rb in pr)
            factor,B=reduce_contraction(A)
            out[B]+=c*mur*muc*factor
out={E:c for E,c in out.items() if c}
expected={
    ():2052864,
    ((-3,3),(3,-3)):1296,
    ((-2,2),(2,-2)):-4320,
    ((-4,2,2),(2,-4,2),(2,2,-4)):-12,
    ((-4,2,2),(2,-3,1),(2,1,-3)):72,
    ((-4,2,2),(2,-2,0),(2,0,-2)):36,
    ((-4,2,2),(2,-1,-1),(2,-1,-1)):-72,
    ((-3,0,3),(0,2,-2),(3,-2,-1)):-144,
    ((-3,0,3),(0,3,-3),(3,-3,0)):24,
    ((-3,1,2),(1,-2,1),(2,1,-3)):-72,
    ((-2,0,2),(0,2,-2),(2,-2,0)):72,
    ((-2,1,1),(1,-2,1),(1,1,-2)):-24,
}
assert out==expected,(out,expected)
print('PASS 55 q monomials, 48 signed monomials, 817 square monomials')
print('PASS 25 symmetry orbits reduce to the 12 stated contractions')
print('GLOBAL CONTRACTIONS PASS')
