#!/usr/bin/env python3
"""Standalone exact certificate for L_tot <= 6 D_sym.

No pickle inputs, external tables, third-party packages, or numeric tolerances.
The proof uses three explicit seven-row orthogonality contractions. All
moment expansions and reductions are regenerated over rational numbers.
Definitions and normalization proofs are in MIXING_SOS.md.
"""
from fractions import Fraction as Q
from functools import lru_cache
from itertools import permutations
import json


def transpose(A):
    return tuple(zip(*A)) if A else ()


def negative(A):
    return tuple(tuple(-x for x in row) for row in A)


def plus(a,b):
    return tuple(x+y for x,y in zip(a,b))


def neg(a):
    return tuple(-x for x in a)


def order(a):
    return sum(x for x in a if x>0)


def clean(A):
    A=tuple(row for row in A if any(row))
    if not A:return ()
    keep=tuple(j for j in range(len(A[0])) if any(row[j] for row in A))
    return tuple(tuple(row[j] for j in keep) for row in A)


@lru_cache(None)
def canonical(A):
    A=clean(A)
    if not A:return ()
    candidates=[]
    for B in (A,negative(A),transpose(A),negative(transpose(A))):
        if len(B)<len(B[0]):continue
        for p in permutations(range(len(B[0]))):
            candidates.append(tuple(sorted(tuple(row[j] for j in p) for row in B)))
    return min(candidates)


def add(out,poly,coefficient=1):
    for A,x in poly.items():
        y=out.get(A,Q(0))+coefficient*x
        if y:out[A]=y
        elif A in out:del out[A]


def linear(*terms):
    out={}
    for c,poly in terms:add(out,poly,c)
    return out


def merge_contraction(B,i):
    """Sum the collision terms obtained by removing degree-one row i."""
    a=B[i]
    C=B[:i]+B[i+1:]
    out={}
    for j,b in enumerate(C):
        merged=C[:j]+(plus(a,b),)+C[j+1:]
        add(out,evaluate(canonical(merged)))
    return out


@lru_cache(None)
def evaluate(A):
    """Reduce a normalized distinct-row/distinct-column graph moment."""
    for B in (A,transpose(A)):
        assert len(B)<=6
        assert not any(map(sum,B))
    for B in (A,transpose(A)):
        for i,a in enumerate(B):
            if order(a)==1:
                # (7-r) M_A + sum_collision M_merged = 0.
                return {K:-x/Q(7-len(B)) for K,x in merge_contraction(B,i).items()}
    return {A:Q(1)}


@lru_cache(None)
def partitions(n):
    """Equality partitions, represented by first-use block labels."""
    if not n:return ((),)
    return tuple(p+(j,) for p in partitions(n-1)
                 for j in range(max(p,default=-1)+2))


def falling(n,k):
    result=1
    for j in range(k):result*=n-j
    return result


def unrestricted(A):
    """Real transpose-symmetrized sum over unrestricted row/column indices."""
    if not A:return {():Q(1)}
    out={}
    for ri in partitions(len(A)):
        nr=1+max(ri)
        for ci in partitions(len(A[0])):
            nc=1+max(ci)
            B=[[0]*nc for _ in range(nr)]
            for i,row in enumerate(A):
                for j,x in enumerate(row):B[ri[i]][ci[j]]+=x
            add(out,evaluate(canonical(tuple(map(tuple,B)))),
                falling(6,nr)*falling(6,nc))
    return out


def averaged_product(*charges):
    """Expectation over row permutations of a product of column means g(a)."""
    A=clean(transpose(charges))
    if not A:return {():Q(1)}
    n=len(A[0])
    out={}
    for p in partitions(n):
        k=1+max(p)
        B=tuple(tuple(sum(x for block,x in zip(p,row) if block==j)
                      for j in range(k)) for row in A)
        add(out,evaluate(canonical(B)),Q(falling(6,k),6**n))
    return out


def covariance(a,b):
    return linear(
        (1,averaged_product(a,neg(b),plus(b,neg(a)))),
        (-1,averaged_product(a,neg(a),b,neg(b))))


def outer(a,b):
    return tuple(tuple(x*y for y in b) for x in a)


SOURCES=(
    ((-1,1),(-1,1),(-1,1),(-1,1),(1,-1),(1,-1),(2,-2)),
    ((-1,0,1),(0,-1,1),(0,1,-1),(0,1,-1),(1,0,-1),(1,0,-1),(-1,-1,2)),
    ((-1,0,0,1),(-1,0,0,1),(0,0,1,-1),(0,1,-1,0),
     (0,1,-1,0),(1,-1,0,0),(1,-1,1,-1)),
)
COEFFICIENTS=(Q(25,3),Q(200,3),Q(100))


def main():
    a=(0,0,0,0,-2,2)
    a_prime=(0,0,0,-2,0,2)
    b=(0,0,-2,0,1,1)
    b_prime=(0,0,0,-2,1,1)
    D=linear((36,{():Q(1)}),
             (-Q(1,1296),unrestricted(outer((2,-1,-1),(1,1,-1,-1)))))
    L=linear((216,{():Q(1)}),
             (-Q(1,1296),unrestricted(outer((1,1,-1,-1),(1,1,-1,-1)))))
    rhs=linear(
        (30,covariance(a_prime,a_prime)),(30,covariance(a,a)),
        (-60,covariance(a_prime,a)),
        (90,covariance(b,b)),(90,covariance(b_prime,b_prime)),
        (180,covariance(b,b_prime)),(135,covariance(a,a)))
    residual=linear((6,D),(-1,L),(-1,rhs))
    initial_terms=len(residual)
    contraction_sum={}
    for A,c in zip(SOURCES,COEFFICIENTS):
        assert len(A)==7 and order(A[0])==1
        assert not any(map(sum,A)) and not any(map(sum,transpose(A)))
        add(contraction_sum,merge_contraction(A,0),c)
    add(residual,contraction_sum,-1)
    assert not residual, residual
    assert all(c>0 for c in (30,90,135))
    print(json.dumps({
        'status':'PASS',
        'arithmetic':'Python integers and exact rational fractions',
        'external_tables_or_data':False,
        'identity':'6 D_sym - L_tot = 30 E|F_a_prime-F_a|^2 + 90 E|F_b+F_b_prime|^2 +135 E|F_a|^2',
        'residual_terms_before_three_contractions':initial_terms,
        'seven_row_contractions':3,
        'contraction_coefficients':[str(c) for c in COEFFICIENTS],
        'final_residual_terms':len(residual),
        'global_conclusion':'L_tot <= 6 D_sym',
        'companion_conclusion':'S >= 600 D_sym implies S >= 100 L_tot',
    },indent=2))


if __name__=='__main__':main()
