"""Check 1: universal phase-block identities and strip sum rules (floating point)."""
import numpy as np
from scipy.optimize import least_squares
from audit_common import *

rng = np.random.default_rng(15102026)

# (a) |Psi|^2 = g^2 eta, 2 Re Psi = -chi, R = 4 (Im Psi)^2, g=|det|^2, eta=|perm|^2 for the block's own Gram
worst = 0
for trial in range(2000):
    A = rand_phase((3, 3), rng)
    if trial % 4 == 0:  # singular: two equal columns
        A[:, 2] = A[:, 1]
    if trial % 4 == 1:  # singular: proportional rows
        A[2] = A[1] * np.exp(1j * rng.random())
    inv = gram_invariants(A @ A.conj().T)
    P = psi(A)
    errs = [abs(abs(P) ** 2 - inv['g'] ** 2 * inv['eta']), abs(2 * P.real + inv['chi']),
            abs(inv['R'] - 4 * P.imag ** 2), abs(inv['g'] - abs(np.linalg.det(A)) ** 2),
            abs(inv['eta'] - abs(perm3(A)) ** 2)]
    worst = max(worst, max(errs))
print('universal identities incl. singular blocks, max err', worst)

# (b) R(E) via the complementary Gram equals 4 Im Psi(B)^2 on Hadamard strips; sum rules
def random_strip():
    while True:
        sol = least_squares(lambda th: orth_residual(strip_from_angles(th)), 2 * np.pi * rng.random(10),
                            xtol=1e-15, ftol=1e-15, gtol=1e-15)
        if np.max(np.abs(sol.fun)) < 1e-12:
            T = strip_from_angles(sol.x)
            # random row and column phases to avoid normalized form
            return (rand_phase((3, 1), rng) * T) * rand_phase((1, 6), rng)

for n in range(5):
    T = random_strip()
    assert np.allclose(T @ T.conj().T, 6 * np.eye(3))
    ps = [corner_p(T, C) for C in TRIPLES]
    Js = [corner_R(T, C)['J'] for C in TRIPLES]
    anchored = [corner_p(T, C) for C in TRIPLES if 0 in C]
    # R of corner C (from complementary Gram) vs 4 Im Psi(complement)^2
    e = max(abs(corner_R(T, C)['R'] - 4 * psi(T[:, [j for j in range(6) if j not in C]]).imag ** 2)
            for C in TRIPLES)
    # complementary corners: same p, opposite J
    e2 = max(abs(corner_R(T, C)['p'] - corner_R(T, tuple(j for j in range(6) if j not in C))['p'])
             + abs(corner_R(T, C)['J'] + corner_R(T, tuple(j for j in range(6) if j not in C))['J'])
             for C in TRIPLES)
    print(f'strip {n}: sum p(20)={sum(ps):.12f} sum p(10 anchored)={sum(anchored):.12f} '
          f'sum J={sum(Js):.2e} R-vs-ImPsi err={e:.1e} compl err={e2:.1e}')
