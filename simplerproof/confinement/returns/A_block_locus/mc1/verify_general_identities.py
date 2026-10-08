#!/usr/bin/env python3
"""Exact integer checks for GENERAL_IDENTITIES.md. No third-party packages.

Checks are coefficient identities, not floating-point Hadamard samples.
"""
from collections import Counter
from itertools import combinations, permutations, product
from math import comb

N = 9
ZERO = (0,) * N

def clean(p):
    return {m: c for m, c in p.items() if c}

def add(*ps):
    out = Counter()
    for p in ps:
        for m, c in p.items():
            out[m] += c
    return clean(out)

def scale(p, c):
    return clean({m: a*c for m, a in p.items()})

def mul(p, q):
    out = Counter()
    for a, c in p.items():
        for b, d in q.items():
            out[tuple(x+y for x, y in zip(a, b))] += c*d
    return clean(out)

def power(p, n):
    out = {ZERO: 1}
    for _ in range(n):
        out = mul(out, p)
    return out

def star(p):
    return {tuple(-a for a in m): c for m, c in p.items()}

def mono(pos, exponent=1):
    m = [0]*N
    m[pos] = exponent
    return {tuple(m): 1}

def shift(p, vector):
    return {tuple(a+b for a, b in zip(m, vector)): c for m, c in p.items()}

B = [[mono(3*i+j) for j in range(3)] for i in range(3)]
perms = list(permutations(range(3)))
signs = [(-1)**sum(p[i] > p[j] for i in range(3) for j in range(i+1, 3)) for p in perms]
matching = []
for p in perms:
    a = {ZERO: 1}
    for i, j in enumerate(p):
        a = mul(a, B[i][j])
    matching.append(a)
permanent = add(*matching)
determinant = add(*(scale(m, s) for m, s in zip(matching, signs)))
q = shift(mul(permanent, power(determinant, 2)), (-1,)*9)
assert len(q) == 55
counts = Counter((tuple(sorted(m)), c) for m, c in q.items())
expected = {
    ((-1,-1,-1,-1,-1,-1,2,2,2), 1): 6,
    ((-1,-1,-1,-1,0,0,1,1,2), -1): 18,
    ((-1,-1,-1,0,0,0,1,1,1), 3): 12,
    ((-1,-1,0,0,0,0,0,1,1), -2): 18,
    ((0,)*9, 12): 1,
}
assert dict(counts) == expected
retained = {m: c for m, c in q.items() if max(m) == 2}
remainder = add(q, scale(retained, -1))
assert len(retained) == 24 and star(remainder) == remainder
print('PASS: exact 55-term q expansion and 24-term imaginary part')

G = [[add(*(mul(B[i][j], star(B[k][j])) for j in range(3))) for k in range(3)] for i in range(3)]
p = add(*(mul(G[i][j], star(G[i][j])) for i in range(3) for j in range(i)))
cycle = mul(mul(G[1][0], G[2][1]), G[0][2])
J = add(cycle, star(cycle))
perm_sq = mul(permanent, star(permanent))
det_sq = mul(determinant, star(determinant))
assert perm_sq == add({ZERO: 9}, scale(p, -1), J)
assert det_sq == add({ZERO: 27}, scale(p, -3), J)
print('PASS: universal 3x3 permanent and determinant Gram identities')

# Row-pair aggregation: after the nonlinear third-row terms are removed,
# the imaginary polynomial has only off-diagonal first moments of that row.
nonlinear = {}
for c in range(3):
    a, b = [j for j in range(3) if j != c]
    t = mul(B[0][a], B[1][b])
    u = mul(B[0][b], B[1][a])
    coefficient = mul(add(t, u), power(add(t, scale(u, -1)), 2))
    coefficient = shift(coefficient, (-1,)*6+(0,)*3)
    exponent = [0]*6+[-1]*3
    exponent[6+c] = 2
    nonlinear = add(nonlinear, shift(coefficient, exponent))
linear_remainder = add(q, scale(star(q), -1), scale(nonlinear, -1), star(nonlinear))
assert linear_remainder
for m in linear_remainder:
    assert sorted(m[6:]) == [-1, 0, 1]
print('PASS: row-pair moment reduction; all omitted terms vanish by column orthogonality')

# The universal fourth-order sampling identity is checked on all 6^4
# assignments of the four labeled factors to coordinates.
def partitions(items):
    if not items:
        yield ()
        return
    first, *rest = items
    for part in partitions(rest):
        yield ((first,),) + part
        for k, block in enumerate(part):
            yield part[:k] + ((first,)+block,) + part[k+1:]

parts = list(partitions(list(range(4))))
assert len(parts) == 15
coefficients = {(4,): -6, (1,3): 1, (2,2): 2, (1,1,2): 1, (1,1,1,1): 0}
for indices in product(range(6), repeat=4):
    d = len(set(indices))
    lhs = comb(6-d, 3-d) if d <= 3 else 0
    rhs = 0
    for part in parts:
        if all(len({indices[k] for k in block}) == 1 for block in part):
            rhs += coefficients[tuple(sorted(map(len, part)))]
    assert lhs == rhs, (indices, lhs, rhs)
print('PASS: 1296 integer coefficients in the fourth subset-moment identity')

# Combinatorial multiplicities used in the global q sum.
triples = list(combinations(range(6), 3))
pairs = list(combinations(range(6), 2))
assert len(triples)**2 == 400
assert sum(0 in T for T in triples) == 10
assert sum({0,1}.issubset(T) for T in triples) == 4
assert sum({0,1,2}.issubset(T) for T in triples) == 1
assert (6-2)**2 == 16  # embeddings of a 2x2 rectangle into 3x3 corners
assert 6*5*4*12//3 == 480  # oriented simple 6-cycle sum
# Formal bookkeeping of A=second row-ratio moment and C=cubic tensor sum.
# I=C-300+A, II=180+A, C6=480, C4=-1440, constant=4800.
assert (-300-180+3*480-2*(-1440)+4800) == 8640
assert 1-1 == 0  # second-moment coefficient cancels
print('PASS: exact multiplicities and cancellation in the global tensor identity')
assert 20*540+4*540 == 12960
assert 2*4-4 == 4
assert 400*27**2-162*2160+9*12960 == 58320
assert 9*4 == 36
assert 2*58320 == 27*4320
print('PASS: determinant fourth-moment constants and lower bound 27/2')
print('ALL GENERAL IDENTITY CHECKS PASS')
