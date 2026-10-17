#!/usr/bin/env python3
"""Finite arithmetic in DEGREE_AND_REDUCTION.md; no algebraic-geometry oracle.

The proof that the ten equations form a zero-dimensional complete intersection
is a written mathematical argument using the explicitly stated boundary input.
This replay verifies its exact degree calculation and every finite example.
"""
import json
from fractions import Fraction as F
from itertools import combinations
from math import comb, factorial
from pathlib import Path
from exact_q3 import Q3, I, SQRT3, OMEGA, adjoint, multiply, submatrix, determinant, is_hadamard, fourier


def polynomial_mul(p, q):
    out = [F(0)]*(len(p)+len(q)-1)
    for i, x in enumerate(p):
        for j, y in enumerate(q):
            out[i+j] += x*y
    return out


def shifted_binomial_square(shift):
    p = [F(1)]
    for j in range(1, 6):
        p = polynomial_mul(p, [F(j-shift), F(1)])
    p = [x/factorial(5) for x in p]
    return polynomial_mul(p, p)


def degree_identity():
    # The identity is checked coefficient by coefficient in Q[k], not on a grid.
    out = [F(0)]*11
    for j in range(11):
        p = shifted_binomial_square(j)
        for i, x in enumerate(p):
            out[i] += (-1)**j*comb(10, j)*x
    assert out == [F(252)] + [F(0)]*10
    assert factorial(10)//factorial(5)**2 == comb(10, 5) == 252
    return [str(x) for x in out]


def zero_minors(h, size):
    indices = list(combinations(range(6), size))
    return [[list(a), list(b)] for a in indices for b in indices
            if not determinant(submatrix(h, a, b))]


def verify_corner_identity(h):
    triples = list(combinations(range(6), 3))
    for rows in triples:
        for cols in triples:
            e = submatrix(h, rows, cols)
            ee = multiply(e, adjoint(e))
            g = [[Q3(6 if i == j else 0)-ee[i][j] for j in range(3)] for i in range(3)]
            side = submatrix(h, rows, [j for j in range(6) if j not in cols])
            assert determinant(g) == determinant(side).abs2()


def saturation_pairs(h):
    def one(a):
        return [list(pair) for pair in combinations(range(6), 2)
                if sum(((a[pair[0]][j]*a[pair[1]][j].conj())**2
                        for j in range(6)), Q3()).abs2() == 36]
    return {"rows": one(h), "columns": one([list(col) for col in zip(*h)])}


def main():
    if not __debug__:
        raise SystemExit("Run without -O: assertions are certificate checks.")
    assert OMEGA**3 == 1 and OMEGA != 1 and 1+OMEGA+OMEGA**2 == 0
    d = [[1,1,1,1,1,1],[1,-1,I,-I,-I,I],[1,I,-1,I,-I,-I],
         [1,-I,I,-1,I,-I],[1,-I,-I,I,-1,I],[1,I,-I,-I,I,-1]]
    d = [[Q3(x) for x in row] for row in d]
    exponents = [[0,0,0,0,0,0],[0,0,1,1,2,2],[0,1,0,2,2,1],
                 [0,1,2,0,1,2],[0,2,2,1,0,1],[0,2,1,2,1,0]]
    tao = [[OMEGA**x for x in row] for row in exponents]
    n = fourier(I, 1)
    examples = {}
    for label, h, expected2, expected3 in [("Dita",d,30,0),("Tao",tao,45,0),("N(i,1)",n,24,24)]:
        assert is_hadamard(h)
        z2, z3 = zero_minors(h, 2), zero_minors(h, 3)
        assert len(z2) == expected2 and len(z3) == expected3
        verify_corner_identity(h)
        examples[label] = {"Z2":len(z2), "Z3":len(z3), "zero_2_minors":z2,
                           "zero_3_minors":z3, "saturation_pairs":saturation_pairs(h),
                           "affine_length_by_theorem":252-2*len(z2) if not z3 else None}
    rows = (0,1,3)
    norms = [determinant(submatrix(n, rows, cols)).abs2()
             for cols in combinations(range(6),3)]
    assert all(norms)
    product = Q3(1)
    for x in norms:
        product *= x
    assert product == 6**8*12**12
    assert all(x in (Q3(6),Q3(12),12-6*SQRT3,12+6*SQRT3) for x in norms)
    receipt = {"status":"CERTIFIED finite arithmetic; see written proof for universal claims",
               "hilbert_polynomial_coefficients":degree_identity(),
               "uniform_affine_length_range":[252-2*45,252],
               "max_unordered_companion_bases":comb(252,5)//6,
               "examples":examples,
               "fixed_strip_counterexample":{"rows":list(rows),"squared_determinants":[x.serial() for x in norms],
                                              "product":str(product.c[0]),"global_singular_minors":24}}
    destination = Path(__file__).with_name("DEGREE_RECEIPT.json")
    encoded = json.dumps(receipt, indent=2, sort_keys=True)+"\n"
    if destination.exists():
        assert destination.read_text() == encoded, "Receipt mismatch"
    else:
        destination.write_text(encoded)
    print("PASS: polynomial degree 252; Dita (Z2,Z3)=(30,0); Tao=(45,0); N(i,1)=(24,24).")
    print("PASS: all 1,200 corner identities; twenty-minor fixed-strip counterexample.")
    print("PASS: affine lengths 192 and 162; bound on unordered companion bases 1,356,228,300.")


if __name__ == "__main__":
    main()
