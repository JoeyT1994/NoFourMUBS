"""Exact 400-corner census along the extremal Fourier-family curve  H(z) = F6 o exp(i a (t1 - t2)),
z = e^{ia}  (first-order worst direction at F6, task2).  Entries: zeta^{jk} * z^{e_jk}, e in {-1,0,1}.
R_c = 4 (Im q(B_c))^2 = -(q - conj q)^2 for the same-row complementary block B_c; computed as exact
Laurent polynomials in z over Q(zeta6) with sympy.  Also the exact projector distance of H(z) to the
base point F6 (with optimal row phases 0 -- checked numerically in task4_fourier_scan): sin(a/2).
"""
import itertools
from collections import Counter
import sympy as sp

z = sp.symbols('z', nonzero=True)
zeta = sp.Rational(1, 2) + sp.sqrt(3) * sp.I / 2
TR = list(itertools.combinations(range(6), 3))
PE = list(itertools.permutations(range(3)))


def expo(j, k):
    if j in (1, 3, 5):
        if k in (1, 4): return 1
        if k in (2, 5): return -1
    return 0


def entry(j, k, conj=False):
    e = expo(j, k); r = (j * k) % 6
    return (zeta ** (-r) * z ** (-e)) if conj else (zeta ** r * z ** e)


def q_of(rows, cols, conj=False):
    B = sp.Matrix(3, 3, lambda i, j: entry(rows[i], cols[j], conj))
    perm = sum(sp.prod(B[i, p[i]] for i in range(3)) for p in PE)
    return perm * B.det() ** 2 / sp.prod(list(B))


def simp(e): return sp.factor(sp.expand(sp.nsimplify(sp.expand(e))), extension=sp.sqrt(3))


census = Counter(); examples = {}
for rows in TR:
    for cols in TR:
        comp = tuple(j for j in range(6) if j not in cols)
        Dq = sp.expand(q_of(rows, comp) - q_of(rows, comp, conj=True))
        R = sp.factor(sp.expand(-(Dq ** 2)), extension=sp.sqrt(3))
        census[R] += 1; examples.setdefault(R, (rows, cols))
print('distinct R(z) forms:', len(census))
a = sp.symbols('a', real=True)
for R, m in sorted(census.items(), key=lambda t: -t[1]):
    Ra = sp.simplify(sp.expand_trig(sp.re(sp.expand(R.subs(z, sp.exp(sp.I * a))).rewrite(sp.cos))))
    print(f'mult {m:3d}: R = {R}    = {sp.factor(sp.trigsimp(Ra))}   e.g. corner {examples[R]}')
