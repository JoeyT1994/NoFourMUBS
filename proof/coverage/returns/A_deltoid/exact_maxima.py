#!/usr/bin/env python3
"""Exact local-maxima/orbit certificate.  No floating point acceptance decisions.

Regenerates R as a Laurent polynomial from the definitions, checks any supplied
Fourier JSON, and works in Q[t]/(t^2+15) at exp(i alpha)=(1+t)/4.
This verifies 18 strict local maxima.  It does NOT prove global exhaustion.
"""
from collections import Counter
from fractions import Fraction as F
from itertools import permutations, product
from pathlib import Path
from math import factorial
import argparse
import json

if not __debug__:
    raise RuntimeError('Run without -O: exact acceptance assertions must be enabled.')

ZERO = (0, 0, 0, 0)

def clean(p):
    return {k: v for k, v in p.items() if v}

def con(c):
    return {ZERO: c} if c else {}

def add(*ps):
    out = Counter()
    for p in ps:
        for k, v in p.items():
            out[k] += v
    return clean(out)

def scale(p, c):
    return clean({k: c*v for k, v in p.items()})

def mul(p, q):
    out = Counter()
    for k, a in p.items():
        for l, b in q.items():
            out[tuple(x+y for x, y in zip(k, l))] += a*b
    return clean(out)

def conjugate(p):
    return {tuple(-x for x in k): v for k, v in p.items()}

def structural_polynomial():
    one = con(1)
    units = [tuple(int(i == j) for i in range(4)) for j in range(4)]
    a, b, c, d = [{e: 1} for e in units]
    s = scale(add(one, a, b), -1)
    t = scale(add(one, c, d), -1)
    r = scale(add(one, mul(c, conjugate(a)), mul(d, conjugate(b))), -1)
    X, Y, Z = [mul(v, conjugate(v)) for v in (s, t, r)]
    p = add(X, Y, Z)
    srbt = mul(mul(s, r), conjugate(t))
    J = add(srbt, conjugate(srbt))
    W = add(mul(X,Y), mul(X,Z), mul(Y,Z), scale(mul(mul(X,Y),Z), -1))
    g = add(con(27), scale(p, -3), J)
    eta = add(con(9), scale(p, -1), J)
    chi = add(W, scale(mul(add(p,con(-9)), add(p,con(-18))), -1),
              mul(add(p,con(-15)), J))
    R = add(scale(mul(mul(g,g),eta),4), scale(mul(chi,chi),-1))
    return R, dict(X=X,Y=Y,Z=Z,p=p,J=J,W=W,g=g,eta=eta,chi=chi)

def fadd(a,b):
    return a[0]+b[0], a[1]+b[1]

def fmul(a,b):
    return a[0]*b[0]-15*a[1]*b[1], a[0]*b[1]+a[1]*b[0]

def fscale(a,c):
    return a[0]*c, a[1]*c

def qpow(n):
    q = (F(1,4), F(1 if n >= 0 else -1,4))
    n = abs(n)
    z = (F(1),F(0))
    while n:
        if n & 1:
            z = fmul(z,q)
        q = fmul(q,q)
        n //= 2
    return z

def evaluate(p,w):
    out = F(0),F(0)
    exponents = {sum(k[i]*w[i] for i in range(4)) for k in p}
    powers = {n:qpow(n) for n in exponents}
    for k,c in p.items():
        out = fadd(out,fscale(powers[sum(k[i]*w[i] for i in range(4))],c))
    return out

def moment(p,w,indices):
    terms = {}
    for k,c in p.items():
        for i in indices:
            c *= k[i]
        if c:
            terms[k] = c
    return evaluate(terms,w)

def det(M):
    A = [list(map(F,r)) for r in M]
    z = F(1)
    for i in range(len(A)):
        pivot = next((j for j in range(i,len(A)) if A[j][i]),None)
        if pivot is None:
            return F(0)
        if pivot != i:
            A[i],A[pivot] = A[pivot],A[i]
            z = -z
        d = A[i][i]
        z *= d
        for j in range(i+1,len(A)):
            f = A[j][i]/d
            for k in range(i+1,len(A)):
                A[j][k] -= f*A[i][k]
            A[j][i] = F(0)
    return z

def inverse(M):
    n = len(M)
    A = [[F(x) for x in row]+[F(i == j) for j in range(n)] for i,row in enumerate(M)]
    for i in range(n):
        pivot = next(j for j in range(i,n) if A[j][i])
        A[i],A[pivot] = A[pivot],A[i]
        d = A[i][i]
        A[i] = [x/d for x in A[i]]
        for j in range(n):
            if j != i:
                d = A[j][i]
                A[j] = [x-d*y for x,y in zip(A[j],A[i])]
    return tuple(tuple(row[n:]) for row in A)

def certify_neighborhood(R,H,maps):
    """Taylor-bounds Hessian variation on the exact cube of radius 1/200."""
    from itertools import combinations_with_replacement
    w = (1,2,-1,-2)
    powers = {sum(k[i]*w[i] for i in range(4)):None for k in R}
    powers = {n:qpow(n) for n in powers}
    derivative_bounds = {}
    for order in range(3,7):
        for inds in combinations_with_replacement(range(4),order):
            sums = Counter()
            for k,c in R.items():
                for i in inds:
                    c *= k[i]
                sums[sum(k[i]*w[i] for i in range(4))] += c
            z = (F(0),F(0))
            for n,c in sums.items():
                z = fadd(z,fscale(powers[n],c))
            assert z[1-order%2] == 0
            # For odd order, multiplication by i turns t into -sqrt(15).
            # sqrt(15)<4 is used only as an exact rational upper bound.
            derivative_bounds[inds] = abs(z[0]) if order%2 == 0 else 4*abs(z[1])
    B = []
    for degree in range(1,5):
        rows = []
        for i in range(4):
            row = F(0)
            for j in range(4):
                for inds in combinations_with_replacement(range(4),degree):
                    fac = 1
                    for t in range(4):
                        fac *= factorial(inds.count(t))
                    row += derivative_bounds[tuple(sorted((i,j)+inds))]/fac
            rows.append(row)
        B.append(max(rows))
    B.append(max(F(sum(abs(c*k[i])*sum(abs(t) for t in k)**6
                          for k,c in R.items()),factorial(5)) for i in range(4)))
    expected = [F(4113747,512),F(1371531123,4096),F(470301957,1024),
                F(57479177961,16384),F(21471757176,5)]
    assert B == expected
    radius = F(1,200)
    perturbation = sum(b*radius**(m+1) for m,b in enumerate(B))
    assert perturbation < 49
    c = F(59049,2048)
    # Hessian eigenvalues are c*(-21+-sqrt(362)), 5*c*(-21+-sqrt(362)).
    # sqrt(362)<191/10 follows by squaring positive rationals.
    assert 362 < F(191,10)**2
    lambda_min_negative = c*F(19,10)
    assert perturbation < lambda_min_negative
    hessian_norm = 5*c*F(401,10)+perturbation
    value_variation = 2*radius**2*hessian_norm
    assert value_variation < F(1,3)
    assert F(1594323,4096)-value_variation > 388
    map_matrices = {M for _,M in maps}
    for _,M in maps:
        N = inverse(M)
        assert N in map_matrices
        assert max(sum(abs(x) for x in row) for row in N) <= 4
    print('PASS: strict concavity and R>388 on radius-1/200 cube at theta*.')
    print('Taylor Hessian bounds =',list(map(str,B)))
    print('Hessian perturbation bound =',str(perturbation),'< 49')
    print('PASS: each of 18 radius-1/800 orbit cubes contains exactly one critical point.')
    return dict(radius=radius,orbit_radius=radius/4,B=B,perturbation=perturbation)

def seed_maps():
    entries = [[ZERO,ZERO,ZERO],
               [ZERO,(1,0,0,0),(0,1,0,0)],
               [ZERO,(0,0,1,0),(0,0,0,1)]]
    out = []
    for pr,pc,tr,cj in product(permutations(range(3)),permutations(range(3)),(0,1),(0,1)):
        E = [[entries[pr[i]][pc[j]] for j in range(3)] for i in range(3)]
        if tr:
            E = list(map(list,zip(*E)))
        sg = -1 if cj else 1
        M = tuple(tuple(sg*(E[i][j][k]+E[0][0][k]-E[i][0][k]-E[0][j][k]) for k in range(4))
                  for i,j in ((1,1),(1,2),(2,1),(2,2)))
        out.append(((pr,pc,tr,cj),M))
    return out

def transformed_polynomial(p,M):
    out = Counter()
    for k,c in p.items():
        freq = tuple(sum(k[i]*M[i][j] for i in range(4)) for j in range(4))
        out[freq] += c
    return clean(out)

def run(fourier_path=None):
    R,parts = structural_polynomial()
    assert len(R) == 2083
    assert R == conjugate(R)
    if fourier_path is not None:
        supplied = json.loads(Path(fourier_path).read_text())
        assert all(F(row[5]) == 0 for row in supplied)
        assert R == {tuple(row[:4]): F(row[4]) for row in supplied}
    w = (1,2,-1,-2)
    value = evaluate(R,w)
    assert value == (F(1594323,4096),F(0)), value
    gradients = [moment(R,w,(i,)) for i in range(4)]
    assert all(z == (0,0) for z in gradients), gradients
    H = []
    for i in range(4):
        row = []
        for j in range(4):
            z = fscale(moment(R,w,(i,j)),-1)
            assert z[1] == 0
            row.append(z[0])
        H.append(row)
    target = [[-80,40,78,-39],[40,-46,-39,6],[78,-39,-80,40],[-39,6,40,-46]]
    assert H == [[F(59049,2048)*v for v in row] for row in target]
    minors = [det([row[:m] for row in H[:m]]) for m in range(1,5)]
    assert all((-1)**m*minors[m-1] > 0 for m in range(1,5)), minors
    maps = seed_maps()
    assert len(maps) == len({M for _,M in maps}) == 144
    for description,M in maps:
        assert abs(det(M)) == 1, description
        assert transformed_polynomial(R,M) == R, description
    orbit_counts = Counter(tuple(sum(row[i]*w[i] for i in range(4)) for row in M) for _,M in maps)
    assert len(orbit_counts) == 18
    assert set(orbit_counts.values()) == {8}
    orbit = sorted(orbit_counts)
    # Distinct integer vectors represent distinct torus points, checked in Q(sqrt(-15)).
    exact_orbit = [tuple(qpow(n) for n in v) for v in orbit]
    assert len(set(exact_orbit)) == 18
    for v in orbit:
        assert evaluate(R,v) == value
        assert all(moment(R,v,(i,)) == (0,0) for i in range(4))
    # All seed lifts of the candidate pair of deltoid traces.  Here
    # e=(ad,b,c)/rho, o=(bc,d,a)/rho; conversely
    # (a,b,c,d)=(e1/o2,o1/e3,o1/e2,e1/o3).
    preimages = set()
    for ep,op in (((2,-1,-1),(-2,1,1)),((-2,1,1),(2,-1,-1))):
        for e,o in product(set(permutations(ep)),set(permutations(op))):
            preimages.add((e[0]-o[1],o[0]-e[2],o[0]-e[1],e[0]-o[2]))
    assert preimages == set(orbit)
    print('PASS: exact structural polynomial, 144 invariant maps, 18 distinct strict local maxima.')
    print('R =',value[0])
    print('Hessian =', [[str(x) for x in row] for row in H])
    print('leading principal minors =', [str(x) for x in minors])
    print('structural values =', {name:tuple(map(str,evaluate(poly,w))) for name,poly in parts.items()})
    print('orbit exponent vectors =', orbit)
    print('PASS: the two conjugate candidate trace pairs have precisely these 18 seed lifts.')
    local = certify_neighborhood(R,H,maps)
    return dict(value=value[0],H=H,minors=minors,orbit=orbit,R=R,parts=parts,maps=maps,local=local)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--fourier',type=Path,default=None,
                        help='optional supplied Fourier JSON to compare to regenerated definitions')
    args = parser.parse_args()
    run(args.fourier)
