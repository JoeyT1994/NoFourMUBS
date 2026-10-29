#!/usr/bin/env python3
"""Certified per-column exclusion of a certifier pattern (EXPERIMENTAL; see COLUMN_PROOF.md when written).

  python column_cert.py SNAPSHOT.json [--depth D] [--margin M]

Setting. H ranges over the cell: H[a, c] = exp(i Q[a, c]) with |Q[a, c] - Q0[a, c]| <= hm[a, c] (from the normal-form
enclosure). A third basis K of the pattern has unit-modulus columns k_c = exp(i V_c) (times 1/sqrt6), V_c = v0_c + B t,
B the orthonormal 6x5 basis of the mean-zero subspace, and every zero lies in one of its colour's bins, a ball of radius
rho about a bin centre (the certifier's complete cover, inherited). Each column satisfies the five unbiasedness
equations g_i(t; H) = (|m_i|^2 - 6)/6 = 0, m_i = sum_a conj(H[a, i]) e^{i V_a}, i < 5 (the sixth follows for a
Hadamard H).

Bounds used (all for unit-modulus H; PROVED in COLUMN_PROOF.md):
  (L)  ||J_t(t) - J_t(s)|| <= 4 ||t - s||           (the bilinear Hessian bound; both parts are at most 2)
  (dm) |m_i(t; H) - m_i(t; H0)| <= mu_i := sum_a hm[a, i]
  (dg) |g_i(t; H) - g_i(t; H0)| <= (2 |m_i(t; H0)| mu_i + mu_i^2) / 6
  (dJ) |J_ij(t; H) - J_ij(t; H0)| <= (2/6) sum_a (mu_i + (|m_i(t; H0)| + mu_i) hm[a, i]) |B[a, j]|
  (K)  Kantorovich: if beta >= ||J_t(t0; H)^-1||, eta >= beta ||g(t0; H)||, and h = 4 beta eta <= 1/2, then g(.; H)
       has exactly one zero in the open ball B(t0, r_-), and it lies in the closed ball B(t0, r_+),
       r_(+/-) = (1 -/+ sqrt(1 - 2h)) / (4 beta).
  (X)  A ball B(c, p) holds no zero of g(.; H) if ||g(c; H)|| > ||J_t(c; H)|| p + 2 p^2.
  (O)  For unit vectors, | |<x, y>| - |<x', y'>| | <= ||x - x'|| + ||y - y'||, and ||k(t) - k(t')|| <= ||t - t'||/sqrt6.
Every float computation (values of size at most 36) is compared with an absolute margin (default 1e-9), far above
float64 rounding of these few-term sums.

The pattern has no zero for any H in the cell if, for some column pair (a, b), every certified solution enclosure of
colour a and of colour b gives |<k_a, k_b>| > 0 (by O), and every bin of both colours is covered by the uniqueness
balls and the exclusion test (so the enclosures hold every zero).
"""
import argparse, json, math, sys
import numpy as np

LIP = 4.0
MOTION = {}


def mid(s): return float(s.strip('[]').split('+/-')[0])


def rad(s): return float(s.strip('[]').split('+/-')[1]) if '+/-' in s else 0.0


def setup(s):
    m = s['model']
    Q0 = np.array([mid(x) for x in m['Q0']])
    r, tau = mid(m['r']) + rad(m['r']), mid(m['tau']) + rad(m['tau'])
    rn = lambda row: math.sqrt(sum((abs(mid(x)) + rad(x)) ** 2 for x in row))
    hm = np.array([rn(m['U'][i]) * r + rn(m['H2'][i]) * r * r / 2 + rn(m['X'][i]) * tau + rad(m['Q0'][i]) for i in range(36)])
    hm = (hm * (1 + 1e-12) + 1e-15).reshape(6, 6)                      # |Q[a,c] - Q0[a,c]| <= hm[a,c]
    q2 = np.array([rn(m['H2'][i]) * r * r / 2 + rn(m['X'][i]) * tau + rad(m['Q0'][i]) for i in range(36)])
    q2 = (q2 * (1 + 1e-12) + 1e-15).reshape(6, 6)                       # |Q - Q0 - U w| <= q2 (the non-linear part)
    U = np.array([[mid(x) for x in row] for row in m['U']]).reshape(6, 6, 4)
    Urad = np.array([[rad(x) for x in row] for row in m['U']]).reshape(6, 6, 4)
    H0 = np.exp(1j * Q0).reshape(6, 6)
    B = np.linalg.qr(np.eye(6)[:, :5] - np.eye(6)[:, 5, None])[0]
    MOTION.update(U=U, Urad=Urad, q2=q2, r=r)
    return H0, hm, B


def evaluate(T, v0, H0, hm, B):
    """At points T (n,5): g (n,5) and J (n,5,5) at H0, and the drift bounds dg (n,5) and dJ (n) (Frobenius)."""
    V = v0[None, :] + T @ B.T
    e = np.exp(1j * V)
    M = e @ H0.conj()                                                   # m_i = sum_a conj(H0[a,i]) e_a
    m5 = M[:, :5]; am = np.abs(m5)
    g = (am ** 2 - 6) / 6
    dV = 2 * np.real(np.conj(m5)[:, :, None] * 1j * (H0.conj().T[None, :5, :] * e[:, None, :])) / 6
    J = dV @ B
    # first-order drift with cancellation (PROVED in COLUMN_PROOF.md): conj(h(w)) - conj(h0) = conj(h0)(-i dQ + R),
    # |R| <= dQ^2/2, dQ = U w + (q2 part), |dQ| <= hm. So for any weights c_a,
    # |sum_a c_a (conj(h_a(w)) - conj(h0_a)) e_a| <= r ||sum_a c_a conj(h0_a) e_a U_a|| + sum_a |c_a| (q2_a + hm_a^2/2)
    #                                              + r sum_a |c_a| ||Urad_a||
    U, Urad, q2, r = MOTION['U'], MOTION['Urad'], MOTION['q2'], MOTION['r']
    he = H0.conj().T[None, :5, :] * e[:, None, :]                        # conj(h0_ai) e_a   (n,5,6)
    tail = q2[:, :5].T + hm[:, :5].T ** 2 / 2 + r * np.sqrt((Urad[:, :5, :] ** 2).sum(axis=2)).T  # (5,6) per (i,a)
    lin_m = np.sqrt((np.abs(np.einsum('nia,aij->nij', he, U[:, :5, :])) ** 2).sum(axis=2)) * r   # (n,5)
    mu = lin_m + tail.sum(axis=1)[None, :]                              # |dm_i| <= mu_i
    dg = (2 * am * mu + mu ** 2) / 6
    # n_ij = sum_a conj(h_ai) e_a B_aj ; J_ij = (2/6) Re(conj(m_i) i n_ij)
    nn = np.einsum('nia,aj->nij', he, B)                                 # (n,5,5)
    lin_n = np.sqrt((np.abs(np.einsum('nia,aj,aik->nijk', he, B, U[:, :5, :])) ** 2).sum(axis=3)) * r   # (n,5,5)
    nu = lin_n + np.einsum('ia,aj->ij', tail, np.abs(B))[None, :, :]   # |dn_ij| <= nu_ij
    dJ = (2 / 6) * (mu[:, :, None] * np.abs(nn) + (am[:, :, None] + mu[:, :, None]) * nu)
    dJF = np.sqrt((dJ ** 2).sum(axis=(1, 2)))
    return g, J, dg, dJF


def seeds(v0, bins, rho, H0, hm, B, rng):
    sols = []
    starts = np.concatenate([bins, bins + rng.uniform(-1, 1, bins.shape) * rho / math.sqrt(5)])
    for t in starts:
        for _ in range(50):
            g, J, _, _ = evaluate(t[None], v0, H0, hm, B)
            try:
                step = np.linalg.solve(J[0], g[0])
            except np.linalg.LinAlgError:
                break
            t = t - step
            if np.linalg.norm(step) < 1e-15: break
        g, _, _, _ = evaluate(t[None], v0, H0, hm, B)
        if np.linalg.norm(g[0]) < 1e-12 and not any(np.linalg.norm(t - u) < 1e-9 for u in sols):
            if np.min(np.linalg.norm(bins - t, axis=1)) <= rho + 0.2:     # near the colour's bins
                sols.append(t)
    return sols


def kantorovich(t0, v0, H0, hm, B, margin):
    g, J, dg, dJF = evaluate(t0[None], v0, H0, hm, B)
    sv = np.linalg.svd(J[0], compute_uv=False)
    smin = sv[-1] - margin - dJF[0]                                      # sigma_min(J(t0; H)) for every H in the cell
    if smin <= 0: return None
    beta = 1 / smin
    eta = beta * (np.linalg.norm(g[0]) + np.linalg.norm(dg[0]) + margin)
    h = LIP * beta * eta
    if h > 0.5 - 1e-6: return dict(t0=t0, h=h, ok=False)
    s = math.sqrt(1 - 2 * h)
    return dict(t0=t0, h=h, ok=True, r_plus=(1 - s) / (LIP * beta) * (1 + 1e-9) + margin,
                r_minus=(1 + s) / (LIP * beta) * (1 - 1e-9) - margin)


def exclude(v0, bins, rho, balls, H0, hm, B, margin, depth, cap=4_000_000):
    """True when every point of every bin lies in a uniqueness ball or in a cube shown free of zeros."""
    C = bins.copy(); hw = np.full(len(C), rho)                          # cubes [c - hw, c + hw]^5 contain the bins
    owner = np.arange(len(C))
    for d in range(depth + 1):
        if len(C) == 0: return True, d
        p = hw * math.sqrt(5)
        # drop cubes disjoint from their bin's ball
        far = np.linalg.norm(C - bins[owner], axis=1) - p > rho + margin
        inball = np.zeros(len(C), bool)
        for b in balls:
            inball |= np.linalg.norm(C - b['t0'], axis=1) + p < b['r_minus'] - margin
        g, J, dg, dJF = evaluate(C, v0, H0, hm, B)
        lhs = np.linalg.norm(g, axis=1) - np.linalg.norm(dg, axis=1) - margin
        rhs = (np.linalg.norm(J, ord=2, axis=(1, 2)) + dJF + margin) * p + 2 * p ** 2
        keep = ~(far | inball | (lhs > rhs))
        C, hw, owner = C[keep], hw[keep], owner[keep]
        if len(C) == 0: return True, d
        if d == depth or 32 * len(C) > cap: return False, d
        offs = np.array(np.meshgrid(*[[-1, 1]] * 5, indexing='ij')).reshape(5, -1).T  # 32 children
        C = (C[:, None, :] + offs[None, :, :] * (hw / 2)[:, None, None]).reshape(-1, 5)
        hw = np.repeat(hw / 2, 32); owner = np.repeat(owner, 32)
    return False, depth


def main():
    ap = argparse.ArgumentParser(); ap.add_argument('snapshot'); ap.add_argument('--depth', type=int, default=6)
    ap.add_argument('--margin', type=float, default=1e-9)
    ap.add_argument('--probe-scale-motion', type=float, default=1.0, help='TEST ONLY: scale H motion (not a certificate)')
    a = ap.parse_args()
    s = json.load(open(a.snapshot))
    H0, hm, B = setup(s)
    hm = hm * a.probe_scale_motion                                       # TEST ONLY: emulate a smaller cell
    MOTION['r'] *= a.probe_scale_motion; MOTION['q2'] = MOTION['q2'] * a.probe_scale_motion ** 2
    rho = mid(s['bin_radius']) + rad(s['bin_radius'])
    rng = np.random.default_rng(5)
    cols = []
    for k, col in enumerate(s['columns']):
        v0 = np.array([mid(x) for x in col['v0']])
        bins = np.array([B.T @ np.array([float.fromhex(x) for x in d]) for d in col['bin_deltas']])
        sl = seeds(v0, bins, rho, H0, hm, B, rng)
        ks = [kantorovich(t, v0, H0, hm, B, a.margin) for t in sl]
        good = all(x is not None and x['ok'] for x in ks)
        done, dd = exclude(v0, bins, rho, [x for x in ks if x and x['ok']], H0, hm, B, a.margin, a.depth) if good else (False, 0)
        cols.append(dict(v0=v0, balls=[x for x in ks if x and x['ok']], complete=bool(good and done)))
        print(' column %d: %d seeds, Kantorovich h %s, exclusion %s (depth %d)' % (k, len(sl),
              [round(x['h'], 3) if x else None for x in ks], 'complete' if done and good else 'INCOMPLETE', dd), flush=True)
    verdict = None
    for p in range(6):
        for q in range(p + 1, 6):
            A_, Bq = cols[p], cols[q]
            if not (A_['complete'] and Bq['complete']): continue
            if not A_['balls'] or not Bq['balls']:
                verdict = (p, q, 'a column has no zero'); break
            worst = min(abs(np.vdot(np.exp(1j * (A_['v0'] + B @ x['t0'])), np.exp(1j * (Bq['v0'] + B @ y['t0'])))) / 6
                        - (x['r_plus'] + y['r_plus']) / math.sqrt(6) - a.margin
                        for x in A_['balls'] for y in Bq['balls'])
            if worst > 0: verdict = (p, q, 'never orthogonal, slack %.4f' % worst); break
        if verdict: break
    print(json.dumps(dict(snapshot=s['subatlas'], sub=s['sub'], pattern=s['pattern'], excluded=verdict is not None,
                          by=verdict, probe_scale_motion=a.probe_scale_motion,
                          certificate=a.probe_scale_motion == 1.0)))


if __name__ == '__main__': main()
