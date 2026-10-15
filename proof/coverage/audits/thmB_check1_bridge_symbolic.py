"""Theorem B audit, check 1: the product bridge (PRM.md 6.1) by independent exact algebra (sympy).

Independent of return G's verify_bridge.py: the companion polynomials A, B are re-transcribed here directly
from ClassificationPaper/source/supp_body.tex, eq:supp-A-explicit / eq:supp-B-explicit, and every identity is
checked by sympy expansion.  Sharp (#) swaps s<->S, t<->T, r<->Q (Q = r#) and z -> 1/z.

Checks
 (a) c6 = P1 * conj(P0)            (so return G's f6 is the paper's c_{6})
 (b) c0 = c6#,  c5 = -2 s c6,  c1 = -2 S c0
 (c) c3 = -(1+X)(2L + delta*chi)   (so U_h = (2L+delta chi)/c6)
 (d) (2L+delta chi)^2 - 4 c6 c6# = -delta^2 R        (6.4)
 (e) the same discriminant identity in FREE symbols g, chi, eta, c0, c1 after |P_j|^2 = g^2+c_j chi+c_j^2 eta
 (f) f6 * Q_u(u(z)) = (1+X) g delta^2 (g z^2 - chi z + g eta), u(z) = (L + g delta z)/f6  (free symbols)
 (g) u(z) = lambda_0/lambda_1 with lambda_j conj(P_j) = g + c_j zbar, modulo z zbar = eta, g(z+zbar) = chi
 (h) plus/minus: with z_v = z_h the slope relation has sign +, with z_v = conj(z_h) sign -  (6.3)
"""
import sympy as sp

s, S, t, T, r, Q, z = sp.symbols('s S t T r Q z')
SH = {s: S, S: s, t: T, T: t, r: Q, Q: r, z: 1 / z}


def sharp(e):
    return sp.expand(e.xreplace(SH))


X, Y, Z = s * S, t * T, r * Q
p = X + Y + Z
J = s * r * T + S * Q * t
g = 27 - 3 * p + J
eta = 9 - p + J
chi = X * Y + X * Z + Y * Z - X * Y * Z - (p - 9) * (p - 18) + (p - 15) * J
R = 4 * g ** 2 * eta - chi ** 2
delta = Z - Y
c0, c1 = 9 - Z, 9 - Y
P0 = r * s ** 2 + Q * t ** 2 + (3 - Z) * s * t
P1 = t * S ** 2 + r ** 2 * T + (3 - Y) * r * S
L = g ** 2 + c0 * c1 * eta + c0 * chi

# --- paper's companion polynomials, transcribed from the .tex (Q=r#, S=s#, T=t#) ---
A = z * (r * Q - t * T) * (-s * S * z + 2 * s + 2 * S * z ** 2 - 3 * z)
b0 = -Q ** 2 * t + Q * s * t * T - 3 * Q * s - s ** 2 * T
b1 = (r * Q ** 2 - r * Q * s * T + Q ** 2 * S * t - Q * s * S * t * T + 3 * Q * s * S - Q * t * T
      + s ** 2 * S * T + s * t * T ** 2)
b2 = (-r * Q ** 2 * S + r * Q * s * S * T + r * Q * T - r * s * T ** 2 - Q * s * S ** 2 + Q * S * t * T
      - 3 * s * S * T - t * T ** 2)
b3 = -r * Q * S * T + r * T ** 2 + Q * S ** 2 + 3 * S * T
B = b0 + b1 * z + b2 * z ** 2 + b3 * z ** 3

Phi = sp.expand(z ** 3 * (sp.expand(A * sharp(A)) - sp.expand(B * sharp(B))))
Phi = sp.Poly(Phi, z)
assert Phi.degree() == 6
c = {k: sp.expand(Phi.coeff_monomial(z ** k)) for k in range(7)}
assert sp.expand(Phi.as_expr() - sum(c[k] * z ** k for k in range(7))) == 0  # no negative powers

# paper's printed c6 (eq:supp-c6-explicit), as a transcription cross-check
c6_paper = -(r ** 2 * T - r * S * t * T + 3 * r * S + S ** 2 * t) * (r * Q * S * T - r * T ** 2 - Q * S ** 2 - 3 * S * T)

res = {}
res['(a) c6 = P1 conj(P0)'] = sp.expand(c[6] - P1 * sharp(P0))
res['(a2) c6 = printed c6'] = sp.expand(c[6] - c6_paper)
res['(b) c0 = c6#'] = sp.expand(c[0] - sharp(c[6]))
res['(b2) c5 = -2 s c6'] = sp.expand(c[5] + 2 * s * c[6])
res['(b3) c1 = -2 S c0'] = sp.expand(c[1] + 2 * S * c[0])
num = sp.expand(2 * L + delta * chi)
res['(c) c3 = -(1+X)(2L+delta chi)'] = sp.expand(c[3] + (1 + X) * num)
res['(c2) L, num real (sharp-fixed)'] = sp.expand(sharp(L) - L) + sp.expand(sharp(num) - num)
res['(d) disc bridge'] = sp.expand(num ** 2 - 4 * c[6] * c[0] + delta ** 2 * R)
res['P0 norm'] = sp.expand(P0 * sharp(P0) - (g ** 2 + c0 * chi + c0 ** 2 * eta))
res['P1 norm'] = sp.expand(P1 * sharp(P1) - (g ** 2 + c1 * chi + c1 ** 2 * eta))

# (e)-(h): free symbols
gg, ch, et, k0, k1, zz, zb = sp.symbols('g chi eta c0 c1 z zbar')
dd = k1 - k0
LL = gg ** 2 + k0 * k1 * et + k0 * ch
N0 = gg ** 2 + k0 * ch + k0 ** 2 * et
N1 = gg ** 2 + k1 * ch + k1 ** 2 * et
RR = 4 * gg ** 2 * et - ch ** 2
res['(e) free disc identity'] = sp.expand((2 * LL + dd * ch) ** 2 - 4 * N0 * N1 + dd ** 2 * RR)
# (f) with |f6|^2 = N0 N1, Q_u(u)/(1+X) = f6 u^2 - (2L+d chi) u + conj(f6); multiply by f6, u = (L+g d z)/f6
#     f6*Q_u(u)/(1+X) = (L+gdz)^2 - (2L+d chi)(L+gdz) + N0 N1
lhs = sp.expand((LL + gg * dd * zz) ** 2 - (2 * LL + dd * ch) * (LL + gg * dd * zz) + N0 * N1)
rhs = sp.expand(gg * dd ** 2 * (gg * zz ** 2 - ch * zz + gg * et))
res['(f) quadratic cofactor'] = sp.expand(lhs - rhs)
# (g) lambda0/lambda1 = (g + c0 zbar) conj(P1) / ((g + c1 zbar) conj(P0)); claim = (L + g d z)/(P1 conj(P0)).
#     Cross-multiplied: (g + c0 zbar) N1 - (L + g d z)(g + c1 zbar) = 0 mod zbar = chi/g - z, g z^2 - chi z + g eta
expr = sp.expand(gg * ((gg + k0 * zb) * N1 - (LL + gg * dd * zz) * (gg + k1 * zb)))
expr = sp.expand(expr.subs(zb, ch / gg - zz) * gg)
rem = sp.rem(sp.Poly(expr, zz), sp.Poly(gg * zz ** 2 - ch * zz + gg * et, zz))
res['(g) u(z) = lambda0/lambda1'] = sp.expand(rem.as_expr())
# (h): 2u - U = (g d / f6)(2z - chi/g); zbar - chi/(2g) = -(z - chi/(2g)) since z+zbar = chi/g
res['(h) conj flips 2z - chi/g'] = sp.expand((2 * (ch / gg - zz) - ch / gg) + (2 * zz - ch / gg))

bad = {k: v for k, v in res.items() if v != 0}
for k, v in res.items():
    print(f"{k:40s} {'OK' if v == 0 else 'FAIL'}")
print('Phi terms per coefficient:', {k: len(sp.Add.make_args(c[k])) for k in range(7)})
assert not bad, bad
print('ALL BRIDGE IDENTITIES HOLD EXACTLY')
