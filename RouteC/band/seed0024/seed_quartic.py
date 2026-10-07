"""Exact Taylor structure of R at the (0,0,2,4)-class corner seeds theta* = +-(0, 0, 2pi/3, -2pi/3).

R(E(theta)) is an integer Laurent polynomial  R = sum_m c_m a^m1 b^m2 c^m3 d^m4  in the unit phases
(a,b,c,d) = e^{i theta} (conj = inverse on the circle); here it has 2083 terms.  At theta* + h:
    R = sum_m c_m w^(m3-m4) e^{i m.h},   w = e^{2 pi i/3},
    T_k(h) = sum_m c_m w^(m3-m4) (i m.h)^k / k!      (exact, coefficients in Q(w)).
Verified exactly:  T_0 = T_1 = T_2 = T_3 = 0  and
    T_4(h) = -1296 q(h)^2,   q = -2w^2 - wx + 2wy + 2wz + 2xz - yz - 2z^2   (h = (x, y, z, w)).
So R <= 0 to fourth order, but on the cone q = 0 the sixth-order term is positive (R ~ +c t^6, measured
c ~ 1e-11..1e-10 at t = 1e-2), i.e. R > 0 on a thin cusp around q = 0 arbitrarily close to theta*.
At theta* itself E has two equal rows, g = det(6I - E E^dagger) = 0 in every frame, and the completions
form a continuum through F6.  Consequence: the seed-adjacent boxes cannot be excluded by R < 0, and the
corner chart (D = -C W B / g, or D = -(C^dagger)^{-1} E^dagger B) is degenerate there.  Their closure
uses the F6 tube via the averaging lemma: sup_box R(E) <= 1.6e-8, so a completion with E maximal has
every corner R below that and lies in the 1/30 tube (simplerproof/, Step 2).
Usage: python3 seed_quartic.py
"""
import sys, json, itertools, math
from fractions import Fraction as F
from collections import defaultdict

# ---- integer Laurent polynomials in (a,b,c,d): dict exponent-tuple -> int
def mul(P, Q):
    out = defaultdict(int)
    for e1, c1 in P.items():
        for e2, c2 in Q.items():
            out[tuple(x + y for x, y in zip(e1, e2))] += c1 * c2
    return {e: c for e, c in out.items() if c}
def add(*Ps):
    out = defaultdict(int)
    for P in Ps:
        for e, c in P.items():
            out[e] += c
    return {e: c for e, c in out.items() if c}
def scal(k, P): return {e: k * c for e, c in P.items()}
def conj(P): return {tuple(-x for x in e): c for e, c in P.items()}     # integer coefficients are real
ONE = {(0, 0, 0, 0): 1}
def var(i): e = [0] * 4; e[i] = 1; return {tuple(e): 1}
a, b, c, d = (var(i) for i in range(4))
E = [[ONE, ONE, ONE], [ONE, a, b], [ONE, c, d]]
def gram(i, j):   # (E E^dagger)_{ij}
    return add(*[mul(E[i][k], conj(E[j][k])) for k in range(3)])
# G = 6I - E E^dagger; s = G21, t = G31, r = G32
s = scal(-1, gram(1, 0)); t = scal(-1, gram(2, 0)); r = scal(-1, gram(2, 1))
X = mul(s, conj(s)); Y = mul(t, conj(t)); Z = mul(r, conj(r))
p = add(X, Y, Z); srt = mul(mul(s, r), conj(t)); J = add(srt, conj(srt))
W = add(mul(X, Y), mul(X, Z), mul(Y, Z), scal(-1, mul(mul(X, Y), Z)))
C = lambda k: {(0, 0, 0, 0): k}
g = add(C(27), scal(-3, p), J); eta = add(C(9), scal(-1, p), J)
chi = add(W, scal(-1, mul(add(p, C(-9)), add(p, C(-18)))), mul(add(p, C(-15)), J))
R = add(scal(4, mul(mul(g, g), eta)), scal(-1, mul(chi, chi)))

# ---- Taylor coefficients at theta* in Q(w) = Q + Q w, w^2 = -1 - w.  Represent x + y w as (x, y).
def wpow(n):
    n %= 3
    return [(1, 0), (0, 1), (-1, -1)][n]
# T_k(h) = sum_m c_m w^(m3-m4) i^k (m.h)^k / k!; collect as polynomial in h with coefficients x + y w
def taylor(k):
    out = defaultdict(lambda: [F(0), F(0)])
    for m, cm in R.items():
        wx, wy = wpow(m[2] - m[3])
        # expand (m.h)^k
        for combo in itertools.combinations_with_replacement(range(4), k):
            mono = tuple(combo.count(v) for v in range(4))
            mult = math.factorial(k)
            for v in range(4):
                mult //= math.factorial(mono[v])
            coef = F(cm * mult * math.prod(m[v] ** mono[v] for v in range(4)), math.factorial(k))
            out[mono][0] += coef * wx; out[mono][1] += coef * wy
    return {mono: v for mono, v in out.items() if v[0] or v[1]}, k % 4   # overall factor i^k
# i^k (x + y w) is real for all h only if ...: we just check the vanishing / rationality claims exactly
for k in range(4):
    Tk, _ = taylor(k)
    assert not Tk, 'T_%d does not vanish' % k
T4, ik = taylor(4)
assert ik == 0
# real part of x + y w is x - y/2, imaginary part y sqrt(3)/2: need y = 0 for T4 to be rational
assert all(v[1] == 0 for v in T4.values()), 'T_4 not rational'
Q4 = {mono: v[0] for mono, v in T4.items()}
C5 = sum(F(abs(cm)) * F(sum(abs(x) for x in m)) ** 5 for m, cm in R.items()) / 120

if __name__ == '__main__':
    import sympy as sp
    x, y, z, w = sp.symbols('x y z w')
    P = sum(cf * x**m[0] * y**m[1] * z**m[2] * w**m[3] for m, cf in Q4.items())
    q = -2*w**2 - w*x + 2*w*y + 2*w*z + 2*x*z - y*z - 2*z**2
    assert sp.expand(P + 1296 * q**2) == 0
    print('R terms %d; T0..T3 = 0; T4 = -1296 q^2 with q = %s  (exact)' % (len(R), q))
