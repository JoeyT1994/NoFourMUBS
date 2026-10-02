#!/usr/bin/env python3
"""Exact certificates for RESULTS.md. Requires Python 3.10+ and SymPy.

No floating-point arithmetic, interval guesses, numerical rank decisions, or
external input files are used. Regenerates the Laurent determinants, matrices,
left inverses, nonlinear coefficient bounds and all 400 corner classifications.
Analytic capacity and compactness arguments are in RESULTS.md, not certified
by finite sampling. Writes certificate.json and verification_receipt.json.
"""
from __future__ import annotations

import itertools as it
import json
from collections import Counter, defaultdict
from fractions import Fraction
from pathlib import Path
import sympy as sp

HERE = Path(__file__).resolve().parent
PAIRS = list(it.product(range(1, 6), repeat=2))
PI = {p: i for i, p in enumerate(PAIRS)}
TRIPLES = list(it.combinations(range(6), 3))
CORNERS = list(it.product(TRIPLES, repeat=2))
ROOTS = ((1, 0), (0, 1), (-1, 1), (-1, 0), (0, -1), (1, -1))
REPS = ((4, 5, 0, 3), (0, 2, 3, 0), (0, 2, 3, 2),
        (1, 2, 2, 4), (2, 4, 4, 2), (0, 0, 2, 4))
CHECKS: list[str] = []


def passed(message: str) -> None:
    CHECKS.append(message)
    print('PASS: ' + message, flush=True)


def parity(seq: list[int]) -> int:
    return (-1) ** sum(seq[i] > seq[j]
                      for i in range(6) for j in range(i + 1, 6))


def sine_determinant_terms() -> dict[tuple[int, ...], int]:
    """q = sum sign sin(dx)sin(dy)sin(dz); 8q = i sum c exp(i e.phi)."""
    out: dict[tuple[int, ...], int] = defaultdict(int)
    for i, j in it.permutations(range(3), 2):
        a, b = [k for k in range(3) if k != i]
        c, d = [k for k in range(3) if k != j]
        sg = parity([2*a, 2*b, 2*c+1, 2*d+1, 2*i, 2*j+1])
        aa, bb, cc = [0]*6, [0]*6, [0]*6
        aa[b] += 1; aa[a] -= 1
        bb[3+d] += 1; bb[3+c] -= 1
        cc[3+i] += 1; cc[i] -= 1
        cc[3+j] -= 1; cc[j] += 1
        for signs in it.product((-1, 1), repeat=3):
            ex = tuple(signs[0]*aa[k] + signs[1]*bb[k] + signs[2]*cc[k]
                       for k in range(6))
            out[ex] += sg*signs[0]*signs[1]*signs[2]
    return {e: int(c) for e, c in out.items() if c}


def universal_square(terms: dict[tuple[int, ...], int]) -> None:
    a,b,c,d = seeds = sp.symbols('a b c d', nonzero=True)
    def conj(e):
        return sp.sympify(e).subs({x: 1/x for x in seeds}, simultaneous=True)
    s,t,r = -(1+a+b), -(1+c+d), -(1+c/a+d/b)
    X,Y,Z = [sp.expand(x*conj(x)) for x in (s,t,r)]
    p = X+Y+Z
    J = sp.expand(s*r*conj(t)+conj(s*r)*t)
    W = X*Y+X*Z+Y*Z-X*Y*Z
    g,eta = 27-3*p-J, 9-p-J
    chi = W-(p-9)*(p-18)-(p-15)*J
    Rdual = sp.expand(4*g*g*eta-chi*chi)
    cols = []
    for x,y in zip((sp.Integer(1),a,b),(sp.Integer(1),c,d)):
        z = y/x
        cols += [sp.Matrix([x,-1/x,0,0,-z,1/z]),
                 sp.Matrix([0,0,y,-1/y,z,-1/z])]
    determinant = sp.expand(sp.det(sp.Matrix.hstack(*cols)))
    raw = sp.expand(sum(co*a**e[1]*b**e[2]*c**e[4]*d**e[5]
                        for e, co in terms.items()))
    # The overall sign is immaterial; this also checks the sine normalization.
    assert sp.expand(raw**2-determinant**2) == 0
    assert sp.expand(Rdual+determinant**2) == 0
    assert sp.expand(conj(determinant)+determinant) == 0
    assert len(terms) == 48
    passed('48-term sine expansion and universal Laurent square Rdual = -(det L)^2')


def build_corner_differentials(terms):
    rows, expansions = [], []
    for rr, cc in CORNERS:
        ds = defaultdict(int)
        for ex, co in terms.items():
            mm = [[0]*6 for _ in range(6)]
            for j, col in enumerate(cc):
                mm[rr[1]][col] += ex[j]
                mm[rr[2]][col] += ex[j+3]
                mm[rr[0]][col] -= ex[j]+ex[j+3]
            ell = tuple(mm[i][j] for i,j in PAIRS)
            ph = sum(mm[i][j]*i*j for i in range(6) for j in range(6)) % 6
            ds[(ell, ph)] += co
        ds = {key: int(co) for key,co in ds.items() if co}
        g0, g1, val = [0]*25, [0]*25, [0,0]
        for (ell, ph), co in ds.items():
            aa,bb = ROOTS[ph]
            val[0] += co*aa; val[1] += co*bb
            for k in range(25):
                g0[k] -= co*aa*ell[k]
                g1[k] -= co*bb*ell[k]
        assert val == [0,0] and not any(g1)
        rows.append(g0); expansions.append(ds)
    return sp.Matrix(rows), expansions


def linear_orthogonality():
    rows = []
    for a,b in it.combinations(range(6),2):
        L0,L1 = [0]*25,[0]*25
        for j in range(6):
            c0,c1 = ROOTS[((a-b)*j) % 6]
            for r,sg in ((a,1),(b,-1)):
                if (r,j) in PI:
                    k = PI[(r,j)]
                    L0[k] += sg*c0; L1[k] += sg*c1
        rows += [L0,L1]
    return sp.Matrix(rows)


def orbit(seed):
    E = [[0,0,0],[0,seed[0],seed[1]],[0,seed[2],seed[3]]]
    out = set()
    for rp,cp,tr in it.product(it.permutations(range(3)),
                               it.permutations(range(3)),(False,True)):
        X = [[(E[rp[i]][cp[j]]-E[rp[i]][cp[0]]-E[rp[0]][cp[j]]
                +E[rp[0]][cp[0]]) % 6 for j in range(3)] for i in range(3)]
        if tr: X = [list(x) for x in zip(*X)]
        out.add(tuple(X[i][j] for i,j in it.product((1,2),repeat=2)))
    return out


def main() -> None:
    # Exact rational checks in the analytic block-conditioning proof.
    assert Fraction(1,32)/20 == Fraction(1,640)
    assert Fraction(6**6,640) == Fraction(729,10)
    assert Fraction(729,10)/27 == Fraction(27,10)
    assert Fraction(4761575,65536) < Fraction(729,10)
    passed('capacity-product and spectral-gap constants, including sigma_min > 1/2')

    terms = sine_determinant_terms()
    universal_square(terms)
    A, expansions = build_corner_differentials(terms)
    assert A.shape == (400,25)
    B = (A.T*A).inv()*A.T
    assert B*A == sp.eye(25)
    bnorm = max(sum(abs(v) for v in B.row(i)) for i in range(25))
    assert bnorm == sp.Rational(2630,10593) < sp.Rational(1,4)
    D = int(sp.ilcm(*[v.q for v in B]))
    Bi = [[int(x) for x in B.row(i)*D] for i in range(25)]
    assert D == 207453312
    passed('rank A = 25, BA = I25, ||B||_infinity = 2630/10593 < 1/4')

    # Fourier coefficients of Bf. Their numerators below have denominator 2D.
    # For f=i sum c*zeta^ph*exp(i ell.u), its real form is
    # -sqrt(3)*c*b*cos(ell.u)/2 - c*(2a+b)*sin(ell.u)/2.
    # Use arbitrary precision Python integers for every accumulation.
    coeff = {}
    for j, ds in enumerate(expansions):
        for (ell,ph),co in ds.items():
            aa,bb = ROOTS[ph]
            if ell not in coeff: coeff[ell] = [[0]*25,[0]*25]
            P,Q = coeff[ell]
            for i in range(25):
                P[i] += co*(2*aa+bb)*Bi[i][j]
                Q[i] += co*bb*Bi[i][j]
    H = [[[0]*25 for _ in range(25)] for _ in range(25)]
    w3,w4 = [0]*25,[0]*25
    for ell,(P,Q) in coeff.items():
        weight = sum(abs(x) for x in ell)
        support = [(k,x) for k,x in enumerate(ell) if x]
        for i in range(25):
            w3[i] += abs(P[i])*weight**3
            w4[i] += abs(Q[i])*weight**4
            if Q[i]:
                for k,x in support:
                    for l,y in support: H[i][k][l] += Q[i]*x*y
    hsum = max(sum(abs(x) for row in mat for x in row) for mat in H)
    C2 = Fraction(7*hsum,16*D)  # sqrt(3) < 7/4
    C3 = Fraction(max(w3),12*D)
    C4 = Fraction(7*max(w4),192*D)
    assert C2 == Fraction(161665,28248) < 6
    assert C3 == Fraction(4827593,10593) < 456
    assert C4 == Fraction(761942741,1525392) < 500
    assert 6*Fraction(1,40)+456*Fraction(1,40)**2+500*Fraction(1,40)**3 < Fraction(1,2)
    lip = max(sum(abs(co)*sum(abs(x) for x in ell)
                  for (ell,ph),co in ds.items()) for ds in expansions)
    assert lip == 432
    passed('exact nonlinear inverse bound 6r^2+456r^3+500r^4; radius 1/40; direct Lipschitz 432')

    L = linear_orthogonality()
    N = sp.Matrix.hstack(*L.nullspace())
    assert N.shape == (25,4) and L*N == sp.zeros(30,4)
    assert (A*N).rank() == 4
    row_indices = tuple((L.T).rref()[1])
    Ls = L[list(row_indices),:]
    C = Ls.T*(Ls*Ls.T).inv()
    assert Ls*C == sp.eye(21)
    assert L*(sp.eye(25)-C*Ls) == sp.zeros(30,25)
    passed('linearized Hadamard rank 21, tangent dimension 4, signed invariants injective on tangents')

    orbits = [orbit(rep) for rep in REPS]
    AN = A*N
    classes, stationary, records = [], [], []
    count = Counter()
    for k,(rr,cc) in enumerate(CORNERS):
        complement = tuple(j for j in range(6) if j not in cc)
        seed = tuple((r-rr[0])*(c-complement[0]) % 6
                     for r,c in it.product(rr[1:],complement[1:]))
        matching = [j for j,o in enumerate(orbits) if seed in o]
        assert len(matching) == 1
        cls = matching[0]
        zero = all(x == 0 for x in AN.row(k))
        classes.append(cls); stationary.append(zero)
        count[(cls,zero)] += 1
        records.append({'rows':rr, 'signed_function_columns':cc,
                        'R_corner_columns':complement,
                        'class':cls+1,'stationary':zero})
    expected = {(0,False):144,(1,True):72,(2,True):72,
                (3,False):36,(4,True):28,(5,True):48}
    assert dict(count) == expected
    sidx = [i for i,z in enumerate(stationary) if z]
    AC = A[sidx,:]*C
    acnorm = max(sum(abs(v) for v in AC.row(i)) for i in range(len(sidx)))
    assert acnorm == 40
    krest = max(Fraction(sum(abs(co)*sum(abs(x) for x in ell)**2
                            for (ell,ph),co in expansions[i].items()),2) for i in sidx)
    assert krest == 2016
    assert 12*acnorm+krest == 2496
    assert 2496*Fraction(1,1250) < 2
    passed('all 400 corner classes: 220 stationary / 180 active; stationary bound 2496r^2')
    passed('positive-R maximal corners in 0 < r <= 1/1250 have only classes 1 or 4')

    # Seed tangent ranks are supplied as a diagnostic, not an integrability claim.
    rank_counts = Counter()
    for k,(rr,cc) in enumerate(CORNERS):
        complement = tuple(j for j in range(6) if j not in cc)
        T = sp.zeros(4,25)
        for z,(r,c) in enumerate(it.product(rr[1:],complement[1:])):
            for ij,sg in (((r,c),1),((r,complement[0]),-1),
                          ((rr[0],c),-1),((rr[0],complement[0]),1)):
                if ij in PI: T[z,PI[ij]] += sg
        rank_counts[(classes[k]+1,(T*N).rank())] += 1
    assert rank_counts[(1,3)] == 144 and rank_counts[(4,3)] == 36
    passed('both surviving classes have seed-projection tangent rank 3, not 4')

    cd = int(sp.ilcm(*[v.q for v in C]))
    certificate = {
        'coordinate_order':PAIRS,
        'A':[[int(x) for x in A.row(i)] for i in range(400)],
        'B_denominator':D, 'B_numerator':Bi,
        'B_norm':str(bnorm),
        'L':[[int(x) for x in L.row(i)] for i in range(30)],
        'N':[[int(x) for x in N.row(i)] for i in range(25)],
        'independent_L_rows':row_indices,
        'C_denominator':cd,
        'C_numerator':[[int(x*cd) for x in C.row(i)] for i in range(25)],
        'corner_records':records,
        'representatives_in_pi_over_3':REPS,
        'nonlinear_coefficients_using_sqrt3_less_than_7_over_4':[str(C2),str(C3),str(C4)],
        'stationary_linear_remainder_norm':str(acnorm),
        'stationary_direct_quadratic_bound':str(krest),
        'seed_tangent_rank_counts':{str(k):v for k,v in sorted(rank_counts.items())},
        'square_identity':'R(E)=f(complementary-column-block)^2 on physical Hadamards',
    }
    (HERE/'certificate.json').write_text(json.dumps(certificate,indent=2)+'\n')
    (HERE/'verification_receipt.json').write_text(json.dumps({
        'status':'PASS','checks':CHECKS,
        'arithmetic':'arbitrary-precision integers and exact rationals',
        'scope':'Finite algebraic checks only; analytic proofs are in RESULTS.md.',
        'no_four_MUBs_proved':False,
    },indent=2)+'\n')
    print('ALL EXACT CHECKS PASSED', flush=True)


if __name__ == '__main__':
    main()
