#!/usr/bin/env python3
"""Exact Tao Hadamard checks over Z[omega], omega^2+omega+1=0.

Regenerates all400 signatures and1296 raw mixed moments. No numerical
arithmetic, precomputed invariant values, external input, or dependencies.
"""
from fractions import Fraction as Q
from itertools import combinations, permutations, product
from collections import Counter
import json

ZERO=(0,0)
ONE=(1,0)
POWERS=(ONE,(0,1),(-1,-1))
EXP=(
    (0,0,0,0,0,0),
    (0,0,1,1,2,2),
    (0,1,0,2,2,1),
    (0,1,2,0,1,2),
    (0,2,2,1,0,1),
    (0,2,1,2,1,0),
)

def add(*values):
    return (sum(a for a,b in values),sum(b for a,b in values))

def scale(value,k):
    return (k*value[0],k*value[1])

def mul(*values):
    a,b=ONE
    for c,d in values:a,b=a*c-b*d,a*d+b*c-b*d
    return a,b

def conj(value):
    a,b=value
    return a-b,-b

def norm2(value):
    a,b=value
    return a*a-a*b+b*b

def values(H):
    triples=list(combinations(range(6),3))
    ps=list(permutations(range(3)))
    signs=[(-1)**sum(p[i]>p[j] for i in range(3) for j in range(i+1,3)) for p in ps]
    hist=Counter()
    for rows,cols in product(triples,repeat=2):
        X=[[H[i][j] for j in cols] for i in rows]
        terms=[mul(*(X[i][p[i]] for i in range(3))) for p in ps]
        permanent=add(*terms)
        determinant=add(*(scale(t,s) for t,s in zip(terms,signs)))
        total_product=mul(*(X[i][j] for i,j in product(range(3),repeat=2)))
        psi=mul(permanent,determinant,determinant,conj(total_product))
        # Im(a+b omega)=b sqrt(3)/2, hence 4(Im psi)^2=3b^2.
        R=3*psi[1]**2
        hist[R]+=1
    all_fourth=0
    square_fourth=0
    for i,j,k,r in product(range(6),repeat=4):
        raw=add(*(mul(H[i][a],H[j][a],conj(H[k][a]),conj(H[r][a])) for a in range(6)))
        n4=norm2(raw)**2
        all_fourth+=n4
        if i==j:square_fourth+=n4
    return sum(R*n for R,n in hist.items()),Q(216)-Q(all_fourth,1296),Q(36)-Q(square_fourth,1296),hist

def main():
    H=[[POWERS[e] for e in row] for row in EXP]
    # Equivalence to the pentagon representative in the Fourier-vanishing theorem.
    pentagon=tuple(tuple(0 if i==0 or j==0 or i==j else
                        1 if (i-j)%5 in (1,4) else 2
                        for j in range(6)) for i in range(6))
    p=(0,1,2,5,4,3)
    assert all(EXP[p[i]][p[j]]==pentagon[i][j] for i,j in product(range(6),repeat=2))
    for i,j in product(range(6),repeat=2):
        assert norm2(H[i][j])==1
        gram=add(*(mul(H[i][a],conj(H[j][a])) for a in range(6)))
        assert gram==((6,0) if i==j else ZERO)
    assert H==list(map(list,zip(*H)))
    S,L,D,hist=values(H)
    # The explicit transpose symmetry gives D_sym=D_row.
    assert S==87480
    assert L==Q(225,2)
    assert D==Q(45,2)
    assert hist=={0:40,243:360}
    assert S==3888*D
    assert L==5*D
    assert S>=600*D
    assert S>=100*L
    print(json.dumps({
        'status':'PASS','arithmetic':'exact integers in Z[omega] and rational fractions',
        'matrix':'explicit symmetric Tao Hadamard',
        'simultaneous_permutation_to_pentagon':[0,1,2,5,4,3],
        'corner_discriminants_regenerated':400,
        'mixed_moments_regenerated':1296,
        'discriminant_histogram':dict(sorted(hist.items())),
        'S':S,'L_tot':str(L),'D_row':str(D),'D_sym':str(D),
        'S_over_D_sym':3888,'L_over_D_sym':5,
        'S_ge_600D_sym':True,'S_ge_100L_tot':True,
    },indent=2))

if __name__=='__main__':main()
