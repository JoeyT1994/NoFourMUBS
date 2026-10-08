"""Reproduce the numerical facts quoted in PROMPT.md (float; a few seconds)."""
import math, sys
import numpy as np
import common as C
import hadamard_tools as T
import mpmath as mp
from chart_model import Model

rng = np.random.default_rng(1)
ok = True

# 1. square identity R(A) = 4 (Im q(B))^2 against the defining formula, on random Hadamards
err = 0.0
for _ in range(5):
    phi = C.random_hadamard(rng)
    H = C.Hmat(phi)
    err = max(err, np.abs(C.R_all(H) - C.R_all_direct(H)).max())
print('identity max error', err); ok &= err < 1e-8

# 2. extremal curve
for u in (0.3, 0.451, 0.55):
    a = u / math.sqrt(6); H = T.extremal_curve(a)
    print('curve ||u||=%.3f  M=%.3f  144sin^2(3a)=%.3f  u_norm=%.4f  d_F=%.4f' % (u, T.M(H), 144 * math.sin(3 * a) ** 2, T.u_norm(H), T.d_F(H)))
    ok &= abs(T.M(H) - 144 * math.sin(3 * a) ** 2) < 1e-8

# 3. F6 and Tao-free random samples: M and ||u||
print('M(F6) =', T.M(C.F6))
for _ in range(5):
    H = C.Hmat(C.random_hadamard(rng))
    print('random: M=%.2f  ||u||=%.3f' % (T.M(H), T.u_norm(H)))

# 4. corner chart: a seed (a,b,c,d) with R>0 gives an explicit Hadamard whose top-left corner is E(seed)
mp.mp.dps = 30
seed = [mp.exp(1j * x) for x in (2.0, -1.0, 0.7, 2.6)]
try:
    m = Model(seed, 1); Hm = m.hadamard()
    Hn = np.array([[complex(Hm[i, j]) for j in range(6)] for i in range(6)])
    print('chart: R(seed)=%.4f  ||HH*-6I||=%.1e  M=%.3f' % (float(m.R), np.abs(Hn @ Hn.conj().T - 6 * np.eye(6)).max(), T.M(Hn)))
except ValueError as e:
    print('chart seed outside R>0:', e)

print('SELFTEST', 'PASS' if ok else 'FAIL'); sys.exit(0 if ok else 1)
