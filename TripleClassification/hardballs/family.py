"""P3: a near-symmetric centre for a cell, from the two-parameter family (PROOFS.md, P3).

Floats only. The output is a proposal: an H point u_f of the cell (the slab projection of the cell centre onto the
family seed surface n = 0, tail return PROOF_correlation_slabs.md) and the family completion K_f there, in the
native presentation of Proof C (refs/22: row and column orders RO, CO, seed map theta = (b+e-f, b-c+e, b+c-2pi,
2b-c)). Nothing here is relied on for soundness: `recentre` re-expands the cell's normal form exactly about u_f
(Arb), and every acceptance is made by the reviewed N6 / P1 / P2 bounds.
"""
import numpy as np
from flint import arb, arb_mat
import witness as W

RO, CO = [0, 2, 3, 4, 5, 1], [1, 0, 2, 3, 5, 4]
RI, CI = np.argsort(RO), np.argsort(CO)
OM = np.exp(2j * np.pi / 3)


def project(theta):
    """Pi: keep b, c (from theta_3, theta_4) and move (e, f) to gamma(e, f) = -gamma(b, c) by Newton (floats)."""
    b = (theta[2] + theta[3] + 2 * np.pi) / 3; c = (2 * theta[2] - theta[3] + 4 * np.pi) / 3
    e = theta[1] - b + c; f = b + e - theta[0]
    g = lambda x, y: np.exp(1j * x) + np.exp(1j * (y - x)) + np.exp(-1j * y)
    n0 = abs(g(b, c) + g(e, f))
    for _ in range(60):
        z = g(b, c) + g(e, f)
        d1 = 1j * (np.exp(1j * e) - np.exp(1j * (f - e))); d2 = 1j * (np.exp(1j * (f - e)) - np.exp(-1j * f))
        step = np.linalg.solve([[d1.real, d2.real], [d1.imag, d2.imag]], [z.real, z.imag]); e, f = e - step[0], f - step[1]
    return (b, c, e, f), n0


def triple(b, c, e, f):
    """The two-circulant family triple (S, K_S) of refs/22 (5), (9), as phase matrices in native row/column order."""
    A, B = [0, b, c], [0, e, f]; v = np.zeros((6, 6))
    for a in range(3):
        for j in range(3):
            v[a, j] = A[(j - a) % 3]; v[a, j + 3] = B[(j - a) % 3]
            v[a + 3, j] = -B[(a - j) % 3]; v[a + 3, j + 3] = np.pi - A[(a - j) % 3]
    lam = np.array([1 + np.exp(1j * b) * OM ** q + np.exp(1j * c) * OM ** (2 * q) for q in range(3)])
    mu = np.array([1 + np.exp(1j * e) * OM ** q + np.exp(1j * f) * OM ** (2 * q) for q in range(3)])
    z = 1j * np.conj(lam * mu) / np.abs(lam * mu); F3 = np.array([[OM ** (j * k) for k in range(3)] for j in range(3)])
    K = np.block([[F3, F3], [F3 @ np.diag(z), -F3 @ np.diag(z)]])
    return v[RI][:, CI], np.angle(K)[RI]


def poly(model, u):
    """The polynomial part Q0 + Uu + H2(u x u)/2 of the normal form, in floats."""
    Q0, U, H2 = (W.Z.mid_np(model[k]) for k in ('Q0', 'U', 'H2'))
    return Q0[:, 0] + U @ u + 0.5 * H2 @ np.kron(u, u)


def reference(model, record, uc=None):
    """Proposal: (u_f, K_f phases (36,), |n| at the cell centre, |u_f|). u_f is the chart coordinate of the
    projected family seed; K_f is the family completion carried into the gauge of the cell's H at u_f."""
    t0 = np.array([float.fromhex(x) for x in record['theta0']]); M = np.array([float.fromhex(x) for x in record['Mth']]).reshape(4, 4)
    uc = np.zeros(4) if uc is None else np.asarray(uc, float)
    (b, c, e, f), n0 = project(t0 + M @ uc)
    th = np.array([b + e - f, b - c + e, b + c - 2 * np.pi, 2 * b - c])
    th += 2 * np.pi * np.round((t0 + M @ uc - th) / (2 * np.pi))
    uf = np.linalg.solve(M, th - t0)
    S, KS = triple(b, c, e, f); q = poly(model, uf).reshape(6, 6)
    alpha = q[:, 0] - S[:, 0]                              # the row gauge of H at u_f relative to S (refs/22 (10))
    K = KS + alpha[:, None]
    return dict(uf=uf, y=K.ravel(), n=float(n0), uf_norm=float(np.linalg.norm(uf)), params=[b, c, e, f])


def recentre(model, uf):
    """The cell's normal form re-expanded exactly about u_f (an exact dyadic point), PROOFS.md P3 (a):
    q(u) = Q0' + U'(u - u_f) + H2((u - u_f) x (u - u_f))/2 + X xi with Q0' = Q0 + U u_f + H2(u_f x u_f)/2,
    U' = U + (H2 (u_f x I) + H2 (I x u_f))/2, |u - u_f| <= r + |u_f| =: r'. X, xi and tau are unchanged."""
    u = [arb(float(x)) for x in uf]; Q0, U, H2 = model['Q0'], model['U'], model['H2']
    Qn = arb_mat([[Q0[i, 0] + sum((U[i, k] * u[k] for k in range(4)), arb(0))
                   + sum((H2[i, 4 * j + k] * u[j] * u[k] for j in range(4) for k in range(4)), arb(0)) / 2] for i in range(36)])
    Un = arb_mat([[U[i, k] + sum(((H2[i, 4 * j + k] + H2[i, 4 * k + j]) * u[j] for j in range(4)), arb(0)) / 2
                   for k in range(4)] for i in range(36)])
    out = dict(model); out.update(Q0=Qn, U=Un, r=W.up(model['r'] + W.C.norm(u)))
    return out
