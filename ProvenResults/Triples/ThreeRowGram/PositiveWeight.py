#!/usr/bin/env python3
"""Independent exact re-check of PositiveWeightEquality.md (supplied proof).

Run with cwd = this folder:  python3 PositiveWeight.py
Exits nonzero on failure; nothing is read or written.

This is NOT the supplied author's verifier (which was never provided) and not
the archive reviewer's check.py. It re-derives:
  A. the cubic moment table of Section 3 from the pointwise relations (4), using
     the Laurent coordinates a1=U, a2=V, a3=alpha/(UV), b_i=t_i/a_i, and the
     degree<=2 moments (5), plus the kernel relation multiplied by every
     quadratic monomial;
  B. det G=-p^2 d, the first-trace identities (13)-(15), the square-trace
     identities (18)-(19) after substituting (16), and the eliminations (21),
     (23), (24), as identities in Q(t1,t2,lambda,kappa) (with t3=1-t1-t2);
  C. an exact physical control: the H8 equality block (all weights 1/3), where
     the actual six-column moments give every h_ij, kappa, and F_i=F~_i=0.
"""
import itertools as it
import json
import sympy as sp
from sympy.polys.matrices import DomainMatrix
from exact_q import Q, carrier, mul, star

if not __debug__:
    raise SystemExit('Assertions must remain enabled')

# ------------------------------------------------------------------ A
x, y, lam, kap = sp.symbols('x y lambda kappa')
t = [x, y, 1-x-y]
p = sp.expand(t[0]*t[1]*t[2])
U, V, al = sp.symbols('U V alpha')
lau = {('a', 0): U, ('a', 1): V, ('a', 2): al/(U*V),
       ('b', 0): t[0]/U, ('b', 1): t[1]/V, ('b', 2): t[2]*U*V/al}
feats = [('a', 0), ('a', 1), ('a', 2), ('b', 0), ('b', 1), ('b', 2)]
hsym = {(i, j): sp.Symbol(f'h{i}{j}') for i in range(3) for j in range(3) if i != j}

# (4): pointwise relations hold identically in the Laurent coordinates.
for i in range(3):
    assert sp.cancel(lau['a', i]*lau['b', i]-t[i]) == 0
for i, j in it.permutations(range(3), 2):
    k = 3-i-j
    assert sp.cancel(lau['a', i]*lau['a', j]-al/t[k]*lau['b', k]) == 0
    assert sp.cancel(lau['b', i]*lau['b', j]-p/(al*t[k])*lau['a', k]) == 0


def E2(m):
    """Moments of degree <= 2 from (5); m is a sorted tuple of features."""
    if len(m) == 0:
        return sp.Integer(1)
    if len(m) == 1:
        return sp.Integer(0)
    (u, i), (v, j) = m
    if u == v:
        return -t[i]**2 if i == j else sp.Integer(0)
    return t[i] if i == j else -t[i]*t[j]


def table(m):
    """Section 3 table: alpha * E(cubic monomial), as printed in the proof."""
    aa = sorted(i for c, i in m if c == 'a')
    bb = sorted(i for c, i in m if c == 'b')
    if len(aa) == 3 or len(bb) == 3:
        ids, z = (aa, lam) if aa else (bb, p)
        if len(set(ids)) == 3:
            return z
        if len(set(ids)) == 2:
            i = max(set(ids), key=ids.count)
            return -z*t[i]
        i = ids[0]
        if aa:
            return 2*lam*t[i]-sum(hsym[i, j] for j in range(3) if j != i)
        return p*(3*t[i]-1)-2*lam*t[i]+sum(hsym[j, i] for j in range(3) if j != i)
    if len(aa) == 2:
        if aa[0] == aa[1]:
            i, j = aa[0], bb[0]
            return sp.Integer(0) if i == j else hsym[i, j]
        return -lam*t[bb[0]] if bb[0] not in aa else sp.Integer(0)
    if bb[0] == bb[1]:
        i, j = aa[0], bb[0]
        return sp.Integer(0) if i == j else lam*t[j]+p*t[i]-hsym[i, j]
    return -p*t[aa[0]] if aa[0] not in bb else sp.Integer(0)


def alpha_reduce(e):
    """Replace alpha^2 by lambda; the result must be alpha-free."""
    e = sp.expand(sp.cancel(e))
    num, den = sp.fraction(sp.together(e))
    num = sp.Poly(sp.expand(num), al)
    den = sp.Poly(sp.expand(den), al)
    assert den.degree() == 0
    out = 0
    for (k,), c in num.terms():
        assert k % 2 == 0, 'odd power of alpha left'
        out += c*lam**(k//2)
    return sp.expand(out/den.as_expr())


cubics = list(it.combinations_with_replacement(feats, 3))
lower = [()]+[(f,) for f in feats]+list(it.combinations_with_replacement(feats, 2))
reduced_by_product = 0
for m in cubics:
    mono = sp.Mul(*[lau[f] for f in m])
    hits = []
    for q in lower:
        ratio = sp.cancel(mono/sp.Mul(*[lau[f] for f in q]))
        if not (ratio.has(U) or ratio.has(V)):
            hits.append((q, ratio))
    if hits:
        for q, ratio in hits:
            assert sp.expand(alpha_reduce(al*ratio*E2(q))-table(m)) == 0, (m, q)
        reduced_by_product += 1
# Kernel relation sum_k (a_k+b_k)=0 times every quadratic monomial q: its
# alpha-scaled expectation must vanish identically in the h's.
kernel_checks = 0
for q in it.combinations_with_replacement(feats, 2):
    total = sum(table(tuple(sorted(q+(f,)))) for f in feats)
    assert sp.expand(total) == 0, q
    kernel_checks += 1
# The h-dependent entries are exactly those not reducible by products.
irreducible = [m for m in cubics
               if not any(not (sp.cancel(sp.Mul(*[lau[f] for f in m])/sp.Mul(*[lau[f] for f in q])).has(U)
                               or sp.cancel(sp.Mul(*[lau[f] for f in m])/sp.Mul(*[lau[f] for f in q])).has(V))
                          for q in lower)]
assert all(table(m).free_symbols & set(hsym.values()) for m in irreducible)
assert len(cubics) == 56 and reduced_by_product+len(irreducible) == 56
# The h's are exactly the product-free cubic moments a_i^2 b_j (definition (12)).
for (i, j), h in hsym.items():
    assert table(tuple(sorted((('a', i), ('a', i), ('b', j))))) == h

# ------------------------------------------------------------------ B
Kf = sp.QQ.frac_field(x, y, lam, kap, *hsym.values())
X, Y, LAM, KAP = [Kf.from_sympy(s) for s in (x, y, lam, kap)]
H = {k: Kf.from_sympy(v) for k, v in hsym.items()}
T3 = [X, Y, Kf.one-X-Y]
P = T3[0]*T3[1]*T3[2]
Dd = Kf.one-2*P
basis = feats[:5]


def kf(e):
    return Kf.from_sympy(sp.expand(e))


Gm = DomainMatrix([[kf(E2(tuple(sorted((u, v))))) for v in basis] for u in basis], (5, 5), Kf)
assert Gm.det() == -P*P*Dd
Gi = Gm.inv()


def Nmat(f):
    if f == ('b', 2):
        mats = [Nmat(g) for g in basis]
        out = mats[0]
        for M in mats[1:]:
            out = out+M
        return -out
    Tm = DomainMatrix([[kf(table(tuple(sorted((f, u, v))))) for v in basis] for u in basis], (5, 5), Kf)
    return Gi*Tm


def trace(M):
    return sum((M[i, i].element for i in range(M.shape[0])), Kf.zero)


w = [T3[i]*(2-T3[i]) for i in range(3)]
Nf = {f: Nmat(f) for f in feats}
for (c, i), N in Nf.items():
    j, k = [m for m in range(3) if m != i]
    Ri = LAM*(1-T3[i]+2*P)-P*T3[i]*(1+T3[i]**2)
    Ci = 2*LAM*(T3[i]+P)+P*(T3[j]*T3[k]*(3-T3[i])-1+T3[i])
    Hrow = sum((w[3-i-m]*H[i, m] for m in range(3) if m != i), Kf.zero)
    Hcol = sum((w[3-i-m]*H[m, i] for m in range(3) if m != i), Kf.zero)
    assert Dd*trace(N) == (Hrow-Ri if c == 'a' else Ci-Hcol), ('first trace', c, i)
# Particular solution (15) has the required row and column sums, and (16) solves all (10).
eps = {(0, 1, 2): 1, (1, 2, 0): 1, (2, 0, 1): 1, (0, 2, 1): -1, (2, 1, 0): -1, (1, 0, 2): -1}
sol = {}
for (i, j) in hsym:
    k = 3-i-j
    H0 = LAM*(T3[j]+P)+P*T3[i]*(T3[k]*(1+T3[i])-1)
    sol[i, j] = (H0+eps[i, j, k]*KAP)/w[k]
KfS = sp.QQ.frac_field(x, y, lam, kap)
Xs, Ys, Ls, Ks = [KfS.from_sympy(s) for s in (x, y, lam, kap)]
T3s = [Xs, Ys, KfS.one-Xs-Ys]
Ps = T3s[0]*T3s[1]*T3s[2]
ds = KfS.one-2*Ps
subs = {hsym[k]: Kf.to_sympy(v) for k, v in sol.items()}
Gs = DomainMatrix([[KfS.from_sympy(sp.expand(E2(tuple(sorted((u, v)))))) for v in basis] for u in basis], (5, 5), KfS)
Gsi = Gs.inv()


def Ns(f):
    if f == ('b', 2):
        mats = [Ns(g) for g in basis]
        out = mats[0]
        for M in mats[1:]:
            out = out+M
        return -out
    Tm = DomainMatrix([[KfS.from_sympy(sp.expand(table(tuple(sorted((f, u, v)))).subs(subs)))
                        for v in basis] for u in basis], (5, 5), KfS)
    return Gsi*Tm


ws = [T3s[i]*(2-T3s[i]) for i in range(3)]
Fa, Fb = [], []
for i in range(3):
    j, k = [m for m in range(3) if m != i]
    Fi = -Ks*Ks/ds+(T3s[i]**2-1-T3s[j]*T3s[k])*Ls*Ls+2*T3s[i]*Ps*(1+T3s[i]+T3s[j]*T3s[k])*Ls+T3s[i]**2*Ps*Ps
    Fti = -Ks*Ks/ds+T3s[i]**2*Ls*Ls+2*T3s[i]*Ps*(1+T3s[i]+T3s[j]*T3s[k])*Ls+(T3s[i]**2-1-T3s[j]*T3s[k])*Ps*Ps
    Fa.append(Fi)
    Fb.append(Fti)
    for c, F in (('a', Fi), ('b', Fti)):
        N = Ns((c, i))
        assert trace(N) == KfS.zero
        sq = trace(N*N)
        assert sq+4*Ls*T3s[i]**2 == 2*F/(ws[j]*ws[k]), ('square trace', c, i)
# (21), (23), (24)
Dl = Ls*Ls-Ps*Ps
for i in range(3):
    j, k = [m for m in range(3) if m != i]
    assert Fa[i]-Fb[i] == -(1+T3s[j]*T3s[k])*Dl
for i, j in it.combinations(range(3), 2):
    k = 3-i-j
    Eij = Fa[i]-Fa[j]
    assert Eij == (T3s[i]-T3s[j])*Dl+(T3s[i]-T3s[j])*Ps*(2-T3s[k])*(2*Ls+Ps)
    assert ((2*Ls-Ps)*(Eij-(T3s[i]-T3s[j])*Dl)-4*(T3s[i]-T3s[j])*Ps*(2-T3s[k])*Dl
            == 3*(T3s[i]-T3s[j])*Ps**3*(2-T3s[k]))

# ------------------------------------------------------------------ C
H8 = carrier()
f = [[H8[r][c]*H8[s][c].bar() for c in range(6)] for r, s in [(0, 1), (1, 2), (2, 0)]]
r3 = Q({4: 1})                                  # sqrt(3); zeta=(1,1,1)/sqrt(3) (EqualityBranches.py)
a = [[x_/r3 for x_ in row] for row in f]
b = [[x_.bar() for x_ in row] for row in a]
for c in range(6):
    assert sum((a[i][c]+b[i][c] for i in range(3)), Q()) == 0          # kernel relation (2)
alpha = a[0][0]*a[1][0]*a[2][0]
assert all(a[0][c]*a[1][c]*a[2][c] == alpha for c in range(6))
tt = sp.Rational(1, 3)
pp = tt**3
assert alpha*alpha.bar() == pp and alpha*alpha == pp                       # lambda = p here
Ex = lambda vals: sum(vals, Q())/6
ref = {('a', i): a[i] for i in range(3)} | {('b', i): b[i] for i in range(3)}
for m in it.combinations_with_replacement(feats, 2):
    val = Ex([ref[m[0]][c]*ref[m[1]][c] for c in range(6)])
    assert val == Q(sp.Rational(E2(tuple(sorted(m))).subs({x: tt, y: tt})))
hact = {(i, j): alpha*Ex([a[i][c]**2*b[j][c] for c in range(6)]) for (i, j) in hsym}
def evalQ(expr):
    """Evaluate a table entry (rational in x,y,lambda; linear in the h's) in Q."""
    e = sp.expand(expr.subs({x: tt, y: tt, lam: pp}))
    poly = sp.Poly(e, *hsym.values())
    out = Q()
    for mon, coeff in poly.terms():
        term = Q(sp.Rational(coeff).p)/sp.Rational(coeff).q
        for s_, e_ in zip(hsym.values(), mon):
            if e_:
                assert e_ == 1
                term = term*hact[next(k for k, v in hsym.items() if v == s_)]
        out = out+term
    return out


for m in cubics:
    val = alpha*Ex([ref[m[0]][c]*ref[m[1]][c]*ref[m[2]][c] for c in range(6)])
    assert val == evalQ(table(m)), m
fr = lambda r: Q(sp.Rational(r).p)/sp.Rational(r).q
ww = fr(tt*(2-tt))
H0 = fr(pp*(tt+pp)+pp*tt*(tt*(1+tt)-1))         # (15) at equal weights, lambda=p
kappa = ww*hact[0, 1]-H0
for (i, j), v in hact.items():
    k = 3-i-j
    assert v == (H0+eps[i, j, k]*kappa)/ww
Fvals = []
for i in range(3):
    rest_a = fr((tt**2-1-tt*tt)*pp*pp+2*tt*pp*(1+tt+tt*tt)*pp+tt**2*pp*pp)
    rest_b = fr(tt**2*pp*pp+2*tt*pp*(1+tt+tt*tt)*pp+(tt**2-1-tt*tt)*pp*pp)
    Fi = rest_a-kappa*kappa/fr(1-2*pp)
    Fti = rest_b-kappa*kappa/fr(1-2*pp)
    assert Fi == 0 and Fti == 0
    Fvals.append(repr(Fi))

print(json.dumps({'status': 'PASS',
                  'A_cubic_table': {'cubic_monomials': 56, 'reduced_by_pointwise_products': reduced_by_product,
                                    'h_dependent': len(irreducible), 'kernel_relation_checks': kernel_checks},
                  'B_identities': ['detG=-p^2 d', 'first traces (13)', 'solution (16)',
                                   'square traces (19) for all six features', '(21)', '(23)', '(24)'],
                  'C_H8_control': {'weights': '1/3', 'lambda': str(pp), 'kappa': str(kappa),
                                   'actual_moments_match_table': 56,
                                   'F_values': Fvals}}, indent=1))
print('PASS positive-weight sharp equality: independent table derivation, trace identities, elimination, H8 control')
