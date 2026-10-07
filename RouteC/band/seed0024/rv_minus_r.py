"""Exact Taylor structure of F = R_vee(E) - R(E) at the (0,0,2,4)-class seed theta* = (0,0,2pi/3,-2pi/3).
R_vee is R with J -> -J (off-diagonals of 6I - EE^dagger negated); for every physical completion H = [[E,B],[C,D]],
R(B) = R_vee(E) (row orthogonality), so F > 0 at theta means E is not a maximal corner of any completion."""
import sys, json, itertools, math
from fractions import Fraction as F_
from collections import defaultdict
exec(open('seed_quartic.py').read().split('# ---- Taylor coefficients')[0].split('"""', 2)[2])   # Laurent algebra + R
Jm = scal(-1, J)
gv = add(C(27), scal(-3, p), Jm); etav = add(C(9), scal(-1, p), Jm)
chiv = add(W, scal(-1, mul(add(p, C(-9)), add(p, C(-18)))), mul(add(p, C(-15)), Jm))
Rv = add(scal(4, mul(mul(gv, gv), etav)), scal(-1, mul(chiv, chiv)))
Fp = add(Rv, scal(-1, R))
def wpow(n): return [(1, 0), (0, 1), (-1, -1)][n % 3]
def taylor(P, k):
    out = defaultdict(lambda: [F_(0), F_(0)])
    for m, cm in P.items():
        wx, wy = wpow(m[2] - m[3])
        for combo in itertools.combinations_with_replacement(range(4), k):
            mono = tuple(combo.count(v) for v in range(4))
            mult = math.factorial(k)
            for v in range(4): mult //= math.factorial(mono[v])
            coef = F_(cm * mult * math.prod(m[v] ** mono[v] for v in range(4)), math.factorial(k))
            out[mono][0] += coef * wx; out[mono][1] += coef * wy
    return {mono: v for mono, v in out.items() if v[0] or v[1]}
if __name__ == '__main__':
    import sympy as sp
    x, y, z, w = sp.symbols('x y z w'); om = sp.Rational(-1, 2) + sp.sqrt(3) / 2 * sp.I
    print('F terms', len(Fp))
    for k in range(0, 6):
        T = taylor(Fp, k)
        expr = sp.expand(sum((sp.I ** k) * (a + b * om) * x**m[0] * y**m[1] * z**m[2] * w**m[3] for m, (a, b) in T.items()))
        print(k, sp.factor(sp.nsimplify(sp.simplify(expr))) if expr != 0 else 0)
