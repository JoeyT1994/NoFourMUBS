"""Exact Fourier expansion of the corner invariant R(theta) for E = [[1,1,1],[1,a,b],[1,c,d]], a = e^{i theta_1}, ...
R = sum_k c_k e^{i k.theta} with integer frequency vectors k and exact integer coefficients c_k (c_{-k} = conj c_k).
Writes rfourier.json: list of [k1,k2,k3,k4, Re c, Im c] (Re/Im as integers or 'p/q' strings)."""
import json, itertools
import sympy as sp
x = sp.symbols('x1:5'); xi = [sp.Symbol('y%d' % i) for i in range(1, 5)]   # y = 1/x
a, b, c, d = x; ab, bb, cb, db = xi
E = sp.Matrix([[1, 1, 1], [1, a, b], [1, c, d]]); Eb = sp.Matrix([[1, 1, 1], [1, ab, bb], [1, cb, db]])
G = 6 * sp.eye(3) - E * Eb.T           # G = 6I - E E^*, using conj(x) = 1/x
s, t, r = G[1, 0], G[2, 0], G[2, 1]
sb, tb, rb = [sp.expand(e.subs({**{x[i]: xi[i] for i in range(4)}, **{xi[i]: x[i] for i in range(4)}}, simultaneous=True)) for e in (s, t, r)]
X, Y, Z = sp.expand(s * sb), sp.expand(t * tb), sp.expand(r * rb)
p = X + Y + Z; J = sp.expand(s * r * tb + sb * rb * t); W = sp.expand(X * Y + X * Z + Y * Z - X * Y * Z)
g = 27 - 3 * p + J; eta = 9 - p + J; chi = sp.expand(W - (p - 9) * (p - 18) + (p - 15) * J)
R = sp.expand(4 * g * g * eta - chi * chi)
# monomials x^m y^n -> frequency m - n
coef = {}
for term in sp.Add.make_args(R):
    cf, mon = term.as_coeff_Mul(); pw = mon.as_powers_dict()
    k = tuple(int(pw.get(x[i], 0)) - int(pw.get(xi[i], 0)) for i in range(4))
    coef[k] = coef.get(k, 0) + cf
coef = {k: v for k, v in coef.items() if v != 0}
assert all(coef.get(tuple(-t for t in k), 0) == v for k, v in coef.items()), 'not real'
out = [[*k, str(sp.re(v)), str(sp.im(v))] for k, v in sorted(coef.items())]
json.dump(out, open('rfourier.json', 'w'))
print('terms', len(out), 'max |k|_1', max(sum(abs(t) for t in k[:4]) for k in out), 'sum|c|', float(sum(abs(v) for v in coef.values())))
