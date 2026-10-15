"""Check 5: pole strata of CRITICAL_STRIP_CLASSIFICATION section 4, recomputed independently.
For each half (sign) and each admissible K in {Kmin,K0,Kplus,Kminus}, list positive real k with
f(alpha)=0, alpha = 9 + g/z, and the value of K there."""
import sympy as sp

k, K, T = sp.symbols('k K T')
h = 1 + k * k
q = 4 / h; p = 9 - q; J = 8 * k / h ** 2; W = q * (q * q - 8 * q + 18) / 2
f = T ** 3 - p * T ** 2 + (W + K) * T - K
bounds = dict(Kmin=J * J / 4, K0=4 * (9 * k * k + 1) / h ** 3,
              Kplus=(27 * k ** 6 + 9 * k ** 4 + 17 * k * k + 3 + 8 * k * h) / h ** 3,
              Kminus=(27 * k ** 6 + 9 * k ** 4 + 17 * k * k + 3 - 8 * k * h) / h ** 3)
for sign in (1, -1):
    z = -2 * (1 + sign * k) / h
    g = 3 * q + sign * J
    alpha = 9 + g / z
    for name, B in bounds.items():
        num = sp.numer(sp.together(f.subs({T: alpha, K: B})))
        roots = set()
        for fac, mult in sp.factor_list(sp.expand(num), k)[1]:
            for iv in sp.Poly(fac, k).intervals(eps=sp.Rational(1, 10 ** 12)):
                (lo, hi), m = iv
                if hi > 0 and lo >= 0:
                    roots.add(round(float((lo + hi) / 2), 9))
        roots = sorted(roots)
        if sign == -1:
            roots = [r for r in roots if abs(r - 1) > 1e-9]  # z_-=0 at k=1: not a pole
        print(f'sign {sign:+d} {name:6s}: positive roots k = {roots}  K there = '
              f'{[round(float(B.subs(k, r)), 6) for r in roots]}')
