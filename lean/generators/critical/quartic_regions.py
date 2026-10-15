#!/usr/bin/env python3
"""Write lean/NoFourMUBs/PRM/CoverageQuartic{Low01,Low1Inf,High013,High131,High1Inf}.lean.

Untrusted: it only emits data (Bernstein-coefficient factorizations and root-free covers) that the
Lean kernel re-checks (`Circ.validR` for the region identity, `RootFree.facOK` for the factors).

For each region (k-range, K = L + (R - L) t) it computes the five Bernstein coefficients
B_i(k) of 12 H^4 Q(k, (l + (r - l) t)/H), H = (1 + k^2)^4, factors them over Q, normalizes every
factor to be positive on the k-range, and finds a Bernstein cover (bisection) of each factor.
"""
import json
from fractions import Fraction as Fr
from math import comb, gcd
from pathlib import Path

import sympy as sp

ROOT = Path(__file__).resolve().parents[3]
OUT = ROOT / 'lean/NoFourMUBs/PRM'


# ---- the exact piece test of RootFree.lean (mirrored) ----
def compT(p, alpha, beta, D):
    G, s = [], 1
    for a in reversed(p):
        new = [0] * (len(G) + 1)
        for i, g in enumerate(G):
            new[i] += alpha * g
            new[i + 1] += beta * g
        s *= D
        new[0] += a * s
        G = new
    return G


def bern(G):
    m = len(G) - 1
    P = [0] * (m + 1)
    for i, g in enumerate(G):
        mm = m - i
        for j in range(mm + 1):
            P[i + j] += g * comb(mm, j)
    return P


def piece_ok(p, a, b, D):
    P = bern(compT(p, a, b - a, D))
    return a < b and all(x >= 0 for x in P) and any(x > 0 for x in P)


def val_pos(p, b, D):
    return compT(p, b, 0, D)[0] > 0


def cover(p, lo, hi, depth=40):
    """Cuts (Fractions) lo = c0 < ... < cm = hi with every piece passing the test."""
    def rec(a, b, d):
        D = a.denominator * b.denominator // gcd(a.denominator, b.denominator)
        if piece_ok(p, int(a * D), int(b * D), D):
            return [a, b]
        assert d < depth, 'cover too deep'
        m = (a + b) / 2
        return rec(a, m, d + 1) + rec(m, b, d + 1)[1:]
    cuts = rec(lo, hi, 0)
    D = 1
    for c in cuts:
        D = D * c.denominator // gcd(D, c.denominator)
    ints = [int(c * D) for c in cuts]
    for i in range(len(ints) - 1):
        assert piece_ok(p, ints[i], ints[i + 1], D)
    for c in ints[1:-1]:
        assert val_pos(p, c, D)
    return D, ints


def lean_list(xs):
    return '[' + ', '.join(str(x) for x in xs) + ']'


def main():
    data = json.loads((ROOT / 'MinimalConstruction/Proofs/critical_quartic.json').read_text())
    k, K = sp.symbols('c d')
    Q = sp.expand(sp.sympify(data['factors'][0][0].replace('^', '**')))
    h = 1 + k ** 2
    qn = [Q.coeff(K, n) if n > 0 else Q.subs(K, 0) for n in range(5)]
    ends = {'lMin': 16 * k ** 2, 'l0': 4 * (9 * k ** 2 + 1) * h,
            'lP': (27 * k ** 6 + 9 * k ** 4 + 17 * k ** 2 + 3 + 8 * k * h) * h,
            'lN': (27 * k ** 6 + 9 * k ** 4 + 17 * k ** 2 + 3 - 8 * k * h) * h}
    kap = 3 * k ** 3 + k ** 2 + k - 1
    # name, L, R, reg (lo, hi, d) or None for (1, oo), whether the kappa cubic may be even/nonzero
    regions = [('Low01', 'lMin', 'lN', (0, 1, 1), True),
               ('Low1Inf', 'lMin', 'l0', None, False),
               ('High013', 'lP', 'l0', (0, 1, 3), False),
               ('High131', 'l0', 'lP', (1, 3, 3), False),
               ('High1Inf', 'lN', 'lP', None, False)]
    for name, a, b, reg, allow_kap in regions:
        l, r = sp.expand(ends[a]), sp.expand(ends[b])
        Pj = [sp.expand(sum(qn[n] * comb(n, j) * l ** (n - j) * (r - l) ** j * h ** (16 - 4 * n)
                            for n in range(j, 5))) for j in range(5)]
        B = [sp.expand(12 * sum(sp.Rational(comb(i, j), comb(4, j)) * Pj[j] for j in range(i + 1)))
             for i in range(5)]
        bs = []
        for i, Bi in enumerate(B):
            c, fl = sp.factor_list(Bi, k)
            c = int(c)
            facs = []
            for f, e in fl:
                co = [int(x) for x in sp.Poly(f, k).all_coeffs()[::-1]]
                if allow_kap and sp.expand(f - kap) == 0:
                    assert e % 2 == 0
                    facs.append(f'⟨{lean_list(co)}, {e}, .evenNZ⟩')
                    continue
                x0 = Fr(reg[0] + reg[1], 2 * reg[2]) if reg else Fr(2)
                if sum(cc * x0 ** j for j, cc in enumerate(co)) < 0:
                    co = [-x for x in co]
                    c *= (-1) ** e
                if reg:
                    D, cuts = cover(co, Fr(reg[0], reg[2]), Fr(reg[1], reg[2]))
                else:
                    D, cuts = cover(co[::-1], Fr(0), Fr(1))
                facs.append(f'⟨{lean_list(co)}, {e}, .cover {D} {cuts[0]} {lean_list(cuts[1:])}⟩')
            assert c < 0, (name, i, c)
            bs.append(f'({c}, [\n      ' + ',\n      '.join(facs) + '])')
        regL = f'.fin {reg[0]} {reg[1]} {reg[2]}' if reg else '.inf'
        dname = 'd' + name
        fields = '\n'.join(f'  b{i} := {bs[i]}' for i in range(5))
        text = f'''import NoFourMUBs.PRM.CoverageQuarticCore

/-!
# Critical scalar classification: Bernstein certificate for the region `{name}`

Generated by `lean/generators/critical/quartic_regions.py` (untrusted; the kernel re-checks the
region identity with `Circ.validR` and every factor with `RootFree.facOK`).
-/

noncomputable section

namespace NoFourMUBs.PRM.Coverage.Quartic

open NoFourMUBs.Kronecker NoFourMUBs.RootFree

/-- Bernstein data for `K ∈ [{a}/H, {b}/H]`. -/
def {dname} : RData where
  l := {a}
  r := {b}
{fields}

theorem {dname}_circ : (regionCirc {dname}).validR 0 = true := by decide +kernel

theorem {dname}_ok : dataOK ({regL}) {dname} = true := by decide +kernel

theorem {dname}_even : usesEvenD {dname} = {'true' if allow_kap else 'false'} := by decide +kernel

end NoFourMUBs.PRM.Coverage.Quartic
'''
        (OUT / f'CoverageQuartic{name}.lean').write_text(text)
        print('wrote', name)


if __name__ == '__main__':
    main()
