#!/usr/bin/env python3
"""Generate NoFourMUBs/PRM/CoverageStripMomentData.lean (the corner-square Laurent expansion).

Untrusted: Lean re-checks everything (the expansion by the Kronecker identity checker, the regrouping
into moments by `ring`).

For a unit side (1; x; y) (columns a, b, c) with signature T = -perm * det^2 / (x_a x_b x_c y_a y_b y_c)
(= `Side.TS`), the corner square -(T - conj T)^2 = 4 (Im T)^2 is a Laurent polynomial in the six
column entries.  We list its 817 terms c * x_a^i0 y_a^j0 * x_b^i1 y_b^j1 * x_c^i2 y_c^j2 (`gTerms`),
and the regrouped whole-strip moment polynomial (`momentPoly`): summing over all ordered column
triples of a six-column strip turns each term into M(i0,j0) M(i1,j1) M(i2,j2) with
M(i,j) = sum_a x_a^i y_a^j; the six orthogonality moments M(+-1,0), M(0,+-1), M(1,-1), M(-1,1)
vanish and M(0,0) = 6.  This reproduces the 66-monomial table of
MinimalConstruction/Proofs/critical_moment_core.py (`squared_corner_moment_coefficients`), which is
cross-checked below.

  python3 lean/generators/strip/moments.py
"""
import collections
import itertools
import sys
from fractions import Fraction
from pathlib import Path

import sympy as sp

ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT / 'NoFourMUBs/PRM/CoverageStripMomentData.lean'
PAPER = ROOT.parent / 'MinimalConstruction/Proofs'

xa, xb, xc, ya, yb, yc = V = sp.symbols('xa xb xc ya yb yc')
ZEROS = {(1, 0), (-1, 0), (0, 1), (0, -1), (1, -1), (-1, 1)}


def expansion():
    E = sp.Matrix([[1, 1, 1], [xa, xb, xc], [ya, yb, yc]])
    per = sum(sp.prod(E[i, p[i]] for i in range(3)) for p in itertools.permutations(range(3)))
    uv = xa * xb * xc * ya * yb * yc
    T = -per * E.det() ** 2 / uv
    Tb = T.xreplace({w: 1 / w for w in V})
    G = sp.expand(-(T - Tb) ** 2)
    P = sp.Poly(sp.expand(G * uv ** 4), *V)
    terms = []
    for m, c in P.terms():
        e = [k - 4 for k in m]  # exponents of xa xb xc ya yb yc
        terms.append((int(c), e[0], e[3], e[1], e[4], e[2], e[5]))
    terms.sort()
    return terms


def regroup(terms):
    acc = collections.defaultdict(Fraction)
    for c, i0, j0, i1, j1, i2, j2 in terms:
        pts = [(i0, j0), (i1, j1), (i2, j2)]
        if any(p in ZEROS for p in pts):
            continue
        coeff = Fraction(c) * 6 ** pts.count((0, 0)) / 6  # S = (1/6) sum over ordered triples
        key = tuple(sorted(p for p in pts if p != (0, 0)))
        acc[key] += coeff
    return {k: v for k, v in acc.items() if v}


def check_paper(table):
    sys.path.insert(0, str(PAPER))
    try:
        import critical_moment_core as core
    except Exception as exc:  # pragma: no cover
        print('paper table not available:', exc)
        return
    paper = {k: Fraction(str(v)) for k, v in core.squared_corner_moment_coefficients().items()}
    assert paper == table, 'moment table differs from the paper'
    print('PASS: regrouped table equals critical_moment_core.squared_corner_moment_coefficients')


def lean_int(z):
    return f'({z})' if z < 0 else str(z)


def lean_q(q):
    if q.denominator == 1:
        return lean_int(q.numerator)
    return f'({q.numerator} / {q.denominator})'


def ordered_sum_lemma():
    """Sum over ordered column triples = 6 x sum over the 20 sorted triples, for a symmetric f
    vanishing on repeated indices; the proof is an explicit telescoping linear combination."""
    inst = []
    for a, b, c in itertools.product(range(6), repeat=3):
        if a == b:
            inst.append(f'z1 {a} {c}')
        elif b == c:
            inst.append(f'z2 {a} {b}')
        elif a == c:
            inst += [f's2 {a} {b} {a}', f'z1 {a} {b}']
        else:
            t = [a, b, c]
            while t != sorted(t):  # bubble sort by adjacent swaps
                if t[0] > t[1]:
                    inst.append(f's1 {t[0]} {t[1]} {t[2]}')
                    t = [t[1], t[0], t[2]]
                else:
                    inst.append(f's2 {t[0]} {t[1]} {t[2]}')
                    t = [t[0], t[2], t[1]]
    sorted3 = list(itertools.combinations(range(6), 3))
    rhs = ' + '.join(f'f {a} {b} {c}' for a, b, c in sorted3)
    lines = ['/-- The sum over ordered column triples is six times the sum over the twenty sorted ones,',
             'for a symmetric function vanishing on repeated indices. -/',
             'theorem ordered_sum {R : Type*} [CommRing R] (f : Fin 6 → Fin 6 → Fin 6 → R)',
             '    (s1 : ∀ a b c, f a b c = f b a c) (s2 : ∀ a b c, f a b c = f a c b)',
             '    (z1 : ∀ a c, f a a c = 0) (z2 : ∀ a b, f a b b = 0) :',
             f'    ∑ a, ∑ b, ∑ c, f a b c = 6 * ({rhs}) := by',
             '  simp only [Fin.sum_univ_six]',
             '  linear_combination ' + ' + '.join(f'({i})' for i in inst)]
    return lines


def main():
    terms = expansion()
    table = regroup(terms)
    print(len(terms), 'terms;', len(table), 'moment monomials')
    check_paper(table)
    out = ['import Mathlib', '',
           '/-! # Corner-square Laurent expansion and the 66-monomial moment polynomial',
           '',
           'Generated by `lean/generators/strip/moments.py`; nothing here is trusted (see',
           '`CoverageStripMoments`). -/', '',
           'namespace NoFourMUBs.PRM.Coverage.StripMoments', '',
           '/-- A Laurent term `c · x_a^i0 y_a^j0 · x_b^i1 y_b^j1 · x_c^i2 y_c^j2`. -/',
           'structure LT where',
           '  c : ℤ', '  i0 : ℤ', '  j0 : ℤ', '  i1 : ℤ', '  j1 : ℤ', '  i2 : ℤ', '  j2 : ℤ', '',
           '/-- The 817 terms of the corner square `−(T − T̄)²`. -/',
           'def gTerms : List LT := [']
    body = [f'  ⟨{lean_int(t[0])}, {", ".join(lean_int(e) for e in t[1:])}⟩' for t in terms]
    out.append(',\n'.join(body) + ']')
    out.append('')
    out.append('/-- The whole-strip square sum as a polynomial in the moments `M (i, j)` (66 monomials, after')
    out.append('the orthogonality moments vanish and `M (0, 0) = 6`). -/')
    out.append('def momentPoly (M : ℤ × ℤ → ℂ) : ℂ :=')
    parts = []
    for key in sorted(table):
        fac = ' * '.join(f'M ({lean_int(i)}, {lean_int(j)})' for i, j in key)
        parts.append(f'{lean_q(table[key])} * {fac}' if key else lean_q(table[key]))
    out.append('  ' + ' +\n  '.join(parts))
    out.append('')
    out += ordered_sum_lemma()
    out.append('')
    out.append('end NoFourMUBs.PRM.Coverage.StripMoments')
    OUT.write_text('\n'.join(out) + '\n')
    print('wrote', OUT)


if __name__ == '__main__':
    main()
