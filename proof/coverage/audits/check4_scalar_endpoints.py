"""Check 4: scalar facts of the classification, the endpoint exclusions, and the final arithmetic."""
import json
import numpy as np
import sympy as sp
import mpmath as mp
from audit_common import *

k, K, T, t = sp.symbols('k K T t', real=True)
h = 1 + k * k
q = 4 / h; p = 9 - q; J = 8 * k / h ** 2; W = q * (q * q - 8 * q + 18) / 2
# corner reduction parametrization satisfies both critical equations
R = lambda p_, J_, W_: 4 * (27 - 3 * p_ + J_) ** 2 * (9 - p_ + J_) - (W_ - (p_ - 9) * (p_ - 18) + (p_ - 15) * J_) ** 2
print('R(p,+J,W), R(p,-J,W) on curve:', sp.simplify(R(p, J, W)), sp.simplify(R(p, -J, W)))
f = T ** 3 - p * T ** 2 + (W + K) * T - K
Km = J * J / 4; K0 = 4 * (9 * k * k + 1) / h ** 3
Kp = (27 * k ** 6 + 9 * k ** 4 + 17 * k * k + 3 + 8 * k * h) / h ** 3
Kn = (27 * k ** 6 + 9 * k ** 4 + 17 * k * k + 3 - 8 * k * h) / h ** 3
print('disc identity:', sp.simplify(sp.discriminant(f, T) + 4 * (K - K0) * (K - Kp) * (K - Kn)) == 0)
print('Kminus-Kmin:', sp.simplify(Kn - Km - (3 * k * k - 2 * k + 3) * (3 * k ** 3 + k * k + k - 1) ** 2 / h ** 4) == 0)
# p* and the cubic P
P = lambda x: x ** 3 - 17 * x ** 2 + 107 * x - 243
print('(1+k^2)^3 P(p*) identity:',
      sp.expand(h ** 3 * P(9 - 4 / h) - 8 * (3 * k ** 3 - k * k + k + 1) * (3 * k ** 3 + k * k + k - 1)).equals(0)
      or sp.simplify(h ** 3 * P(9 - 4 / h) - 8 * (3 * k ** 3 - k * k + k + 1) * (3 * k ** 3 + k * k + k - 1)) == 0)
kap = [r for r in sp.Poly(3 * k ** 3 + k * k + k - 1, k).nroots() if abs(sp.im(r)) < 1e-30 and sp.re(r) > 0]
ps = 9 - 4 / (1 + kap[0] ** 2)
print('kappa', kap, 'p*', ps, 'in (17/3,29/5):', sp.Rational(17, 3) < ps < sp.Rational(29, 5))
print('mod-5 residues of F(108,n):', [int((108 ** 3 - 17 * 108 ** 2 * n + 107 * 108 * n * n - 243 * n ** 3) % 5)
                                       for n in range(5)])
# ten-corner bin count, brute force over (a fives, b interval values, zeros rest)
bad = [(a, b) for a in range(11) for b in range(11 - a)
       if (b == 0 and 5 * a == 54) or (b > 0 and 5 * a + sp.Rational(17, 3) * b < 54 < 5 * a + sp.Rational(29, 5) * b)]
print('ten-corner admissible (a,b) with sum 54 reachable:', bad)
bad20 = [(a, b) for a in range(21) for b in range(21 - a) if b > 0 and 5 * a + b * ps == 108]
print('twenty-corner with p* exactly:', bad20)

# Q sign scan on the physical K region (numerical sanity, not proof)
data = json.load(open(str(__import__('pathlib').Path(__file__).resolve().parents[3] / 'MinimalConstruction' / 'Proofs' / 'critical_quartic.json')))
c, d = sp.symbols('c d')
Qe = sp.sympify(data['factors'][0][0].replace('^', '**'))
mp.mp.dps = 40
Qf = sp.lambdify((c, d), Qe, 'mpmath')
num = sp.lambdify(k, [Km, K0, Kp, Kn], 'mpmath')
maxrel = -1; arg = None
for kv in list(np.logspace(-2.5, 1.5, 260)) + [float(kap[0])]:
    kv = mp.mpf(kv)
    km, ko, kp, kn = num(kv)
    roots = sorted([ko, kp, kn])
    for lo, hi in ((km, roots[0]), (roots[1], roots[2])):
        for s in np.linspace(0, 1, 13):
            KK = lo + (hi - lo) * s
            v = Qf(kv, KK)
            scale = abs(Qf(kv, KK + 1)) + abs(Qf(kv, KK + 2)) + 1e-300
            rel = v / scale
            if rel > maxrel:
                maxrel, arg = rel, (float(kv), float(KK), float(v))
print('max of Q/scale on physical region (should be <=0, ~0 only at kappa,K=Kmin):', float(maxrel), arg)

# P7 endpoint strip and S formula (3)
rng = np.random.default_rng(1)
err = 0
for _ in range(20):
    u = np.exp(2j * np.pi * rng.random())
    x = np.array([1, u, -u, -1, -1j, 1j]); y = np.array([1, 1j * u, -1j * u, 1j, -1, -1j])
    Tm = np.vstack([np.ones(6), x, y])
    assert np.allclose(Tm @ Tm.conj().T, 6 * np.eye(3))
    S = sum(4 * psi(Tm[:, list(C)]).imag ** 2 for C in TRIPLES)
    err = max(err, abs(S - (1024 + 256 * np.sin(2 * np.angle(u)))))
    G = Tm[:, :3] @ Tm[:, :3].conj().T
    inv = gram_invariants(G)
    assert abs(inv['J'] - 2) < 1e-12 and abs(inv['X'] - 1) < 1e-12 and abs(inv['Z'] - 5) < 1e-12
print('P7 strip S formula max err', err)

# Equicorrelation endpoint: E0 invariants and the D formula (3)
a = (-4 + 3j) / 5
E0 = np.array([[1, 1, 1], [1, 1, a], [1, 1 / a, 1]])
inv = gram_invariants(E0 @ E0.conj().T)
print('E0: X,Y,Z,J,g,eta,chi =', [round(inv[s_], 6) for s_ in ('X', 'Y', 'Z', 'J', 'g', 'eta', 'chi')],
      'z=chi/2g', inv['chi'] / (2 * inv['g']), 'R', inv['R'], 'Theta(E0)', -psi(E0) / inv['g'])
cc, xx, yy = sp.symbols('cc xx yy')
M = sp.Matrix([[1, 1, 1], [1, 1, xx], [1, cc, yy]])
per = sum(sp.prod([M[i, s_[i]] for i in range(3)]) for s_ in __import__('itertools').permutations(range(3)))
Ps = per * M.det() ** 2 / sp.prod(list(M))
D = Ps - Ps.subs({cc: 1 / cc, xx: 1 / xx, yy: 1 / yy}, simultaneous=True)
claim = (cc - 1) ** 2 * (cc + 1) * (xx - 1) ** 2 * (xx + 1) * (cc * xx - yy ** 2) / (cc ** 2 * xx ** 2 * yy)
print('equicorrelation (3) D formula:', sp.simplify(D - claim) == 0, ' with D vs -claim:', sp.simplify(D + claim) == 0)
