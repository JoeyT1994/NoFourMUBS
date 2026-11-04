#!/usr/bin/env python3
"""Reproduce the certificates hard-coded in NoFourMUBs/PRM/Coverage*.lean.

Untrusted: every datum below is re-checked by Lean (kernel `decide`, `ring`, `linear_combination`).
This script only records where the data came from.  Needs sympy and numpy.

  python3 lean/generators/coverage/certificates.py [--census]

1. `CoverageFourierLocus`: the four corner targets `okI_0/3/5/9`
   (rows `tri 1`, columns `tri 0, 3, 5, 9` of `fourierCore ω x y`).  `--census` also prints the
   imaginary parts of all 400 corners (144 nonzero, four products up to sign); it takes a few minutes.
2. `CoverageFourierLocus`: the permutation witnesses `qX`, `qY`, `pA`, `pB` (all phases trivial).
3. `CoverageBlock.tao_sig`: the cofactor of `ω² + ω + 1` in `sig(rightBlock taoMatrix) = −9 + 9ω`.
4. `CoverageSingular.orient_gram`: the two cofactors.
5. `CoverageGeometric`: the text of `esym2 … esym5`.
"""
import cmath
import itertools
import sys

import numpy as np
import sympy as sp

TRI = list(itertools.combinations(range(6), 3))  # = `tri` of FourierMatch (lexicographic)


def core(om, x, y):
    """`coreF ω x y` in `Fin 6` indexing: [[F, F], [F D, −F D]], D = diag(1, x, y)."""
    D = [1, x, y]
    M = [[None] * 6 for _ in range(6)]
    for u in range(6):
        for v in range(6):
            a = om ** ((u % 3) * (v % 3))
            b = a * D[v % 3] if u >= 3 else a
            M[u][v] = -b if (u >= 3 and v >= 3) else b
    return M


def sig(B, conj):
    """`sideSignature B = −perm B · (det B)² · ∏ conj(B i j)`."""
    B = sp.Matrix(B)
    perm = sum(B[0, p[0]] * B[1, p[1]] * B[2, p[2]] for p in itertools.permutations(range(3)))
    prod = sp.prod([conj(B[i, j]) for i in range(3) for j in range(3)])
    return sp.expand(-perm * B.det() ** 2 * prod)


def locus(census):
    x, y = sp.symbols('x y')
    w = sp.Rational(-1, 2) + sp.sqrt(3) / 2 * sp.I

    def conj(e):
        return sp.conjugate(e).subs({sp.conjugate(x): 1 / x, sp.conjugate(y): 1 / y})

    K = core(w, x, y)
    pairs = [(k, l) for k in range(20) for l in range(20)] if census else [(1, 0), (1, 3), (1, 5), (1, 9)]
    for k, l in pairs:
        B = [[K[i][j] for j in TRI[l]] for i in TRI[k]]
        s = sig(B, conj)
        d = sp.factor(sp.simplify(s - conj(s)))
        if d != 0:
            print(f'  sig - conj sig at (tri {k}, tri {l}) = {d}')


def witnesses():
    w = cmath.exp(2j * cmath.pi / 3)

    def aff(om):
        TL = [[1, 1, 1], [1, -1, 1], [1, 1, om]]
        TR = [[1, 1, 1], [-1, 1, -1], [om, om ** 2, om ** 2]]
        BL = [[1, -1, om], [1, 1, om ** 2], [1, -1, om ** 2]]
        BR = [[-om, om ** 2, -om ** 2], [om ** 2, om, om], [-om ** 2, om, -om]]
        return np.block([[np.array(TL), np.array(TR)], [np.array(BL), np.array(BR)]]).astype(complex)

    perms = list(itertools.permutations(range(6)))
    P = np.array(perms)

    def find(H, K):  # K[i, j] = r_i H[s i, t j] c_j
        for s in perms:
            Ht = H[list(s), :][:, P].transpose(1, 0, 2)
            M = K[None, :, :] / Ht
            R = M * M[:, 0:1, 0:1] - M[:, :, 0:1] * M[:, 0:1, :]
            ok = np.where(np.abs(R).max(axis=(1, 2)) < 1e-9)[0]
            if len(ok):
                return s, perms[ok[0]]

    C = lambda a, b: np.array(core(w, a, b), dtype=complex)
    print('  K(1,-1) -> K(1,1)', find(C(1, -1), C(1, 1)), '(qY)')
    print('  K(-1,1) -> K(1,1)', find(C(-1, 1), C(1, 1)), '(qX)')
    print('  K(1,1) -> A_w   ', find(C(1, 1), aff(w)), '(pA, pA)')
    print('  K(1,1) -> A_w2  ', find(C(1, 1), aff(w * w)), '(pA, pB)')


def cofactors():
    e = sp.Symbol('e')
    B = sp.Matrix([[1, 1, 1], [e, e ** 2, e ** 2], [e ** 2, e ** 2, e]])
    S = sp.Matrix([[1, 1, 1], [e ** 2, e ** 4, e ** 4], [e ** 4, e ** 4, e ** 2]])  # conj ω = ω²
    perm = sum(B[0, p[0]] * B[1, p[1]] * B[2, p[2]] for p in itertools.permutations(range(3)))
    P = sp.expand(-perm * B.det() ** 2 * sp.prod(list(S)))
    for name, f in [('tao_sig', P - (-9 + 9 * e)), ('orient_gram (eq)', e ** 3 + e ** 6 - 2),
                    ('orient_gram (ne)', 1 + e ** 5 + e ** 10)]:
        q, r = sp.div(sp.Poly(f, e), sp.Poly(e ** 2 + e + 1, e))
        assert r.is_zero
        print(f'  {name}: cofactor of (ω²+ω+1) = {q.as_expr()}')


def esym():
    u = [f'u {i}' for i in range(6)]
    for k in (2, 3, 4, 5):
        print(f'  esym{k} := ' + ' + '.join(' * '.join(c) for c in itertools.combinations(u, k)))


if __name__ == '__main__':
    print('1. Fourier corner identities'); locus('--census' in sys.argv)
    print('2. Equivalence witnesses (row perm, column perm)'); witnesses()
    print('3-4. Cofactors'); cofactors()
    print('5. Elementary symmetric functions'); esym()
