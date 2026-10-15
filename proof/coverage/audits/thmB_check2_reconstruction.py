"""Theorem B audit, check 2: run the classification paper's quadratic-cubic reconstruction numerically and test
Theorem B (PRM.md 0.1, 6.1, 6.3) on actual Hadamard matrices.  Floating point (numpy), single process, small.

Part 1 (random seeds).  For random seeds E(a,b,c,d) on the torus:
  * the sextic Phi = z^3 (A A# - B B#) is formed numerically from the paper's companion polynomials;
  * U_h = -c3/((1+X)c6), V_h = c0/c6, omega_n = |U_h|^2-4, and omega_n == -delta^2 R/|c6|^2 (6.4);
  * if omega_n < 0: both product roots u, both vertical roots m are lifted to actual sides B, C (cubic roots,
    y = -A(x)/B(x)); all four pairings (u, m) are assembled, D = -C E* G_h^{-1} B;
  * checks: H H* = 6I for every pairing; sum_j |D_ij|^2 = 3; the minus prescription
    m = (U_v - kappa(2u-U_h))/2 is a vertical root, its pairing is flat and its signatures are conjugate;
    the plus pairing is NOT flat and its signatures are equal; u = (L + g delta z)/c6 with z = -Psi(B)/g.
Part 2 (all 400 positional corners of actual matrices).  On Fourier-family matrices F(p,q), their transposes,
  and on matrices reconstructed in part 1 (generic, non-Fourier), every positional corner is dephased; where the
  corner is guarded with omega_n < 0 the ACTUAL vertical product m must satisfy the minus prescription.
"""
import itertools
import numpy as np
from audit_common import psi, W3, rand_phase

rng = np.random.default_rng(20261015)
I3 = np.eye(3)


def gram_data(G):
    s, t, r = G[1, 0], G[2, 0], G[2, 1]
    X, Y, Z = abs(s) ** 2, abs(t) ** 2, abs(r) ** 2
    p = X + Y + Z
    J = 2 * (s * r * np.conj(t)).real
    g = 27 - 3 * p + J
    eta = 9 - p + J
    chi = X * Y + X * Z + Y * Z - X * Y * Z - (p - 9) * (p - 18) + (p - 15) * J
    R = 4 * g * g * eta - chi * chi
    return dict(s=s, t=t, r=r, X=X, Y=Y, Z=Z, g=g, eta=eta, chi=chi, R=R)


def companion(d):
    """Coefficient arrays (ascending powers of z) of the paper's A and B (supp eq. A/B-explicit)."""
    s, t, r = d['s'], d['t'], d['r']
    S, T, Q = np.conj(s), np.conj(t), np.conj(r)
    delta = d['Z'] - d['Y']
    a = delta * np.array([0, 2 * s, -s * S - 3, 2 * S])
    b0 = -Q ** 2 * t + Q * s * t * T - 3 * Q * s - s ** 2 * T
    b1 = (r * Q ** 2 - r * Q * s * T + Q ** 2 * S * t - Q * s * S * t * T + 3 * Q * s * S - Q * t * T
          + s ** 2 * S * T + s * t * T ** 2)
    b2 = (-r * Q ** 2 * S + r * Q * s * S * T + r * Q * T - r * s * T ** 2 - Q * s * S ** 2 + Q * S * t * T
          - 3 * s * S * T - t * T ** 2)
    b3 = -r * Q * S * T + r * T ** 2 + Q * S ** 2 + 3 * S * T
    return a, np.array([b0, b1, b2, b3]), delta


def product_data(G):
    d = gram_data(G)
    a, b, delta = companion(d)
    c = np.convolve(a, np.conj(a)[::-1]) - np.convolve(b, np.conj(b)[::-1])  # z^0..z^6
    X = d['X']
    U = -c[3] / ((1 + X) * c[6])
    V = c[0] / c[6]
    d.update(a=a, b=b, delta=delta, c=c, U=U, V=V, omega=abs(U) ** 2 - 4)
    d['L'] = d['g'] ** 2 + (9 - d['Z']) * (9 - d['Y']) * d['eta'] + (9 - d['Z']) * d['chi']
    return d


def side_from_u(d, u):
    """Roots x of x^3 - s x^2 + u s# x - u, y = -A(x)/B(x); returns side (1;x;y) and guard values."""
    s = d['s']
    x = np.roots([1, -s, u * np.conj(s), -u])
    Ax = np.polyval(d['a'][::-1], x)
    Bx = np.polyval(d['b'][::-1], x)
    y = -Ax / Bx
    disc = abs(np.prod([x[i] - x[j] for i in range(3) for j in range(i + 1, 3)])) ** 2
    return np.vstack([np.ones(3), x, y]), dict(disc=disc, minB=np.abs(Bx).min())


def assemble(E, B, C):
    Gh = 6 * I3 - E @ E.conj().T
    D = -C @ E.conj().T @ np.linalg.solve(Gh, B)
    return np.block([[E, B], [C, D]]), D


def theta(A, g):
    return -psi(A) / g


def main():
    stats = dict(seeds=0, omega_neg=0, omega_pos=0, max_bridge=0, max_HH=0, max_rowsum=0, max_minus_flat=0,
                 min_plus_resid=np.inf, max_u_affine=0, max_minus_root=0, max_sig_minus=0, max_sig_plus=0,
                 min_R_when_neg=np.inf, sign_violations=0, min_guard=np.inf, max_side=0)
    generic_H = []
    for it in range(400):
        a, b, c_, d_ = rand_phase(4, rng)
        E = np.array([[1, 1, 1], [1, a, b], [1, c_, d_]])
        h = product_data(6 * I3 - E @ E.conj().T)
        v = product_data(6 * I3 - E.T @ E.conj())
        stats['seeds'] += 1
        for dd in (h, v):
            if abs(dd['delta']) > 1e-6 and abs(dd['c'][6]) > 1e-6:
                br = dd['omega'] + dd['delta'] ** 2 * dd['R'] / abs(dd['c'][6]) ** 2
                stats['max_bridge'] = max(stats['max_bridge'], abs(br) / (1 + abs(dd['omega'])))
        assert abs(h['g'] - v['g']) < 1e-8 and abs(h['chi'] - v['chi']) < 1e-6 and abs(h['eta'] - v['eta']) < 1e-8
        if h['omega'] >= 0:
            stats['omega_pos'] += 1
            if h['R'] > 1e-6:
                stats['sign_violations'] += 1
            continue
        stats['omega_neg'] += 1
        stats['min_R_when_neg'] = min(stats['min_R_when_neg'], h['R'])
        g, chi = h['g'], h['chi']
        kappa = v['delta'] * h['c'][6] / (h['delta'] * v['c'][6])
        us = np.roots([1, -h['U'], h['V']])
        ms = np.roots([1, -v['U'], v['V']])
        sides_v = []
        for m in ms:
            Ct, gv = side_from_u(v, m)
            sides_v.append((m, Ct.T, gv))
        for u in us:
            B, gh = side_from_u(h, u)
            stats['max_side'] = max(stats['max_side'], np.abs(B @ B.conj().T - (6 * I3 - E @ E.conj().T)).max(),
                                    np.abs(np.abs(B) - 1).max())
            z = theta(B, g)
            stats['max_u_affine'] = max(stats['max_u_affine'], abs(u - (h['L'] + g * h['delta'] * z) / h['c'][6]))
            m_minus = (v['U'] - kappa * (2 * u - h['U'])) / 2
            k_minus = int(np.argmin(np.abs(ms - m_minus)))
            stats['max_minus_root'] = max(stats['max_minus_root'], abs(ms[k_minus] - m_minus))
            for k, (m, C, gv) in enumerate(sides_v):
                stats['max_side'] = max(stats['max_side'], np.abs(C.conj().T @ C - (6 * I3 - E.conj().T @ E)).max())
                stats['min_guard'] = min(stats['min_guard'], gh['disc'], gh['minB'], gv['disc'], gv['minB'])
                H, D = assemble(E, B, C)
                stats['max_HH'] = max(stats['max_HH'], np.abs(H @ H.conj().T - 6 * np.eye(6)).max())
                stats['max_rowsum'] = max(stats['max_rowsum'], np.abs((np.abs(D) ** 2).sum(1) - 3).max())
                zv = theta(C, g)
                resid = ((np.abs(D) ** 2 - 1) ** 2).sum()
                if k == k_minus:
                    stats['max_minus_flat'] = max(stats['max_minus_flat'], np.abs(np.abs(D) - 1).max())
                    stats['max_sig_minus'] = max(stats['max_sig_minus'], abs(zv - np.conj(z)))
                    if len(generic_H) < 12:
                        generic_H.append(H)
                else:
                    stats['min_plus_resid'] = min(stats['min_plus_resid'], resid)
                    stats['max_sig_plus'] = max(stats['max_sig_plus'], abs(zv - z))
    print('PART 1 (random seeds)')
    for k, val in stats.items():
        print(f'  {k:18s} {val:.3e}' if isinstance(val, float) else f'  {k:18s} {val}')
    assert stats['sign_violations'] == 0 and stats['max_bridge'] < 1e-8
    assert stats['max_HH'] < 1e-8 and stats['max_rowsum'] < 1e-8 and stats['max_minus_flat'] < 1e-8
    assert stats['max_u_affine'] < 1e-8 and stats['max_minus_root'] < 1e-8
    assert stats['max_sig_minus'] < 1e-8 and stats['max_sig_plus'] < 1e-8 and stats['min_plus_resid'] > 1e-6


    # ---------------- Part 2: all 400 positional corners of actual Hadamard matrices ----------------
    F = np.array([[W3 ** (i * j) for j in range(3)] for i in range(3)])


    def fourier_family(pp, qq):
        v = np.array([1, pp, qq])
        return np.block([[F, np.diag(v) @ F], [F, -np.diag(v) @ F]])  # F3 (x) F2 type, (5.6)-shape


    def fourier_family2(pp, qq):
        w = np.array([1, pp, qq])
        Dw = np.diag(w)
        return np.block([[F, F], [F @ Dw, -F @ Dw]])


    def dephase(H):
        H = H / H[0:1, :]
        return H / H[:, 0:1]


    def corners(H):
        for I in itertools.combinations(range(6), 3):
            for Jc in itertools.combinations(range(6), 3):
                rows = list(I) + [i for i in range(6) if i not in I]
                cols = list(Jc) + [j for j in range(6) if j not in Jc]
                yield dephase(H[np.ix_(rows, cols)])


    def test_matrix(H, tag):
        assert np.abs(H @ H.conj().T - 6 * np.eye(6)).max() < 1e-8, tag
        n_guarded = n_strict = n_minus = 0
        worst = 0
        for K in corners(H):
            E, B, C = K[:3, :3], K[:3, 3:], K[3:, :3]
            if abs(np.linalg.det(B)) < 1e-6 or abs(np.linalg.det(C)) < 1e-6 or abs(np.linalg.det(E)) < 1e-6:
                continue
            h = product_data(6 * I3 - E @ E.conj().T)
            v = product_data(6 * I3 - E.T @ E.conj())
            if min(abs(h['delta']), abs(v['delta']), abs(h['c'][6]), abs(v['c'][6])) < 1e-6:
                continue
            x, pv = B[1], C[:, 1]
            dx = min(abs(x[i] - x[j]) for i, j in [(0, 1), (0, 2), (1, 2)])
            dp = min(abs(pv[i] - pv[j]) for i, j in [(0, 1), (0, 2), (1, 2)])
            Bh = np.polyval(h['b'][::-1], x)
            Bv = np.polyval(v['b'][::-1], pv)
            if min(dx, dp, np.abs(Bh).min(), np.abs(Bv).min()) < 1e-6:
                continue
            n_guarded += 1
            if h['omega'] >= -1e-9:
                continue
            n_strict += 1
            u, m = np.prod(x), np.prod(pv)
            kappa = v['delta'] * h['c'][6] / (h['delta'] * v['c'][6])
            err = abs(2 * m - v['U'] + kappa * (2 * u - h['U']))
            worst = max(worst, err)
            n_minus += err < 1e-7
        print(f'  {tag:28s} guarded corners {n_guarded:3d}, with omega_n<0 {n_strict:3d}, '
              f'minus holds {n_minus:3d}, worst |2m-U_v+kappa(2u-U_h)| {worst:.1e}')
        assert n_minus == n_strict
        return n_guarded, n_strict


    print('PART 2 (all 400 positional corners, actual matrices)')
    tot = [0, 0]
    for it in range(3):
        pp, qq = rand_phase(2, rng)
        for tag, H in [('Fourier F(p,q)', fourier_family(pp, qq)), ('Fourier F(p,q)^T', fourier_family(pp, qq).T),
                       ('Fourier family 2', fourier_family2(pp, qq)), ('Fourier family 2 ^T', fourier_family2(pp, qq).T)]:
            a_, b_ = test_matrix(H, tag)
            tot[0] += a_
            tot[1] += b_
    for k, H in enumerate(generic_H):
        a_, b_ = test_matrix(H, f'reconstructed generic #{k}')
        a2, b2 = test_matrix(H.T.conj(), f'  its adjoint')
        tot[0] += a_ + a2
        tot[1] += b_ + b2
    print('totals: guarded corners', tot[0], ' guarded with omega_n<0 (all satisfy minus):', tot[1])
    print('CHECK 2 PASSED')


if __name__ == '__main__':
    main()
