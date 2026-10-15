import time, pickle
import common
from flint import fmpq_mpoly_ctx, fmpq
import gen_nonzero as G
from common import frac_data
t0 = time.time()
R4 = fmpq_mpoly_ctx.get(['X', 'Y', 'k', 'K'])
X, Y, k, K = R4.gens()
h = 1 + k * k
hp = h * h * (9 * h - 4)          # h^3 p
hW = 2 * (16 - 32 * h + 18 * h * h)  # h^3 W
fy = h ** 3 * (Y * Y + X * Y + X * X + K) - hp * (X + Y) + hW   # h^3 * (f(Y)-f(X))/(Y-X)
fx = h ** 3 * (X ** 3 + K * X - K) - hp * X * X + hW * X          # h^3 f(X)


def red(P):
    """NF of P modulo (fy, fx); returns (Q, e) with P ≡ Q / h^e, deg_Y Q ≤ 1, deg_X Q ≤ 2."""
    e = 0
    while P != 0 and P.degrees()[1] >= 2:
        d = P.degrees()[1]
        top = R4.from_dict({ex: c for ex, c in P.to_dict().items() if ex[1] == d})
        lead = R4.from_dict({(ex[0], ex[1] - 2, ex[2], ex[3]): c for ex, c in top.to_dict().items()})
        P = P * h ** 3 - lead * fy
        e += 3
    while P != 0 and P.degrees()[0] >= 3:
        d = P.degrees()[0]
        top = R4.from_dict({ex: c for ex, c in P.to_dict().items() if ex[0] == d})
        lead = R4.from_dict({(ex[0] - 3, ex[1], ex[2], ex[3]): c for ex, c in top.to_dict().items()})
        P = P * h ** 3 - lead * fx
        e += 3
    while e > 0 and P != 0:
        q, r = divmod(P, h)
        if r != 0: break
        P = q; e -= 1
    return P, e


def lift(D):  # dict (eX,eY,ek) -> R4 poly
    return R4.from_dict({(a, b, c, 0): fmpq(v) for (a, b, c), v in D.items()})


TAB = [X, Y, h, R4.constant(2)] + [R4.from_dict({(ex[0], ex[1], ex[2], 0): c for ex, c in f.to_dict().items()}) for f in G.TABLE[4:]]
lA, lB = TAB[4:7], TAB[7:10]
NA, eA = red(lA[0] * lA[1] * lA[2])
NB, eB = red(lB[0] * lB[1] * lB[2])
print('N_A', NA.degrees(), len(NA), eA, 'N_B', NB.degrees(), len(NB), eB, time.time() - t0, flush=True)
Xi, eXi = red(h ** 3 * (X * X) - hp * X + hW + h ** 3 * K)  # K * h^3 / X
print('Xinv', Xi.degrees(), eXi)
cof = {4: lA[1] * lA[2], 5: lA[0] * lA[2], 6: lA[0] * lA[1], 7: lB[1] * lB[2], 8: lB[0] * lB[2], 9: lB[0] * lB[1]}
Xinv = h ** 3 * X * X - hp * X + hW + h ** 3 * K   # = h^3 K / X  (mod f)
Yinv = h ** 3 * Y * Y - hp * Y + hW + h ** 3 * K


def nf_frac(x):
    D, e = frac_data(x, G.TABLE)
    P = lift(D)
    for i, ei in enumerate(e):
        for _ in range(ei):
            if i == 0: P = P * Xinv
            elif i == 1: P = P * Yinv
            elif i >= 4: P = P * cof[i]
        P, _e = red(P)
    return P, e


for p in [(1, 1), (2, 2), (4, -2), (-2, -2), (3, -3)]:
    for comp in (G.m[p].a, G.m[p].b):
        P, e = nf_frac(comp)
        print(p, len(P), P.degrees(), e, time.time() - t0, flush=True)
