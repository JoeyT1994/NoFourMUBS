"""Theorem B audit, check 4: degenerate strata (PRM.md 6.1 last paragraph, 6.3 block identity, 6.4).

 (a) Ramification omega_n = 0 with delta_h != 0: located by bisection along random seed segments; there
     R = 0 (to working precision), u_+ = u_- = U_h/2, and both affine prescriptions give m = U_v/2.  The
     forced block of the coincident lift is also evaluated (PRM makes no claim there; [CT] says flat).
 (b) delta_h = 0 with R > 0: located by bisection; omega_n = 0 there although the corner is strict.
     So "omega_n = 0 => R = 0" genuinely needs the delta guard (the return states it only on the guarded locus).
 (c) The plus residual sum (|D_ij|^2-1)^2 tends to 0 as omega_n -> 0^-: there is no uniform positive lower
     bound (PRM claims none).
 (d) The block identity I + E* G^{-1} E = 6 (6I - E*E)^{-1} used in 6.3, on random corners.
"""
import numpy as np
from audit_common import rand_phase
from thmB_check2_reconstruction import product_data, side_from_u, assemble, I3

rng = np.random.default_rng(99)


def corner(th):
    a, b, c, d = np.exp(1j * np.asarray(th))
    return np.array([[1, 1, 1], [1, a, b], [1, c, d]])


def data(th):
    E = corner(th)
    return E, product_data(6 * I3 - E @ E.conj().T), product_data(6 * I3 - E.T @ E.conj())


def bisect(f, t0, t1, n=200):
    f0 = f(t0)
    for _ in range(n):
        tm = (t0 + t1) / 2
        fm = f(tm)
        if np.sign(fm) == np.sign(f0):
            t0, f0 = tm, fm
        else:
            t1 = tm
    return (t0 + t1) / 2


def pairings(E, h, v):
    us = np.roots([1, -h['U'], h['V']])
    ms = np.roots([1, -v['U'], v['V']])
    kappa = v['delta'] * h['c'][6] / (h['delta'] * v['c'][6])
    out = []
    for u in us:
        B, _ = side_from_u(h, u)
        mm = (v['U'] - kappa * (2 * u - h['U'])) / 2
        for m in ms:
            Ct, _ = side_from_u(v, m)
            H, D = assemble(E, B, Ct.T)
            out.append((u, m, abs(m - mm) < 1e-6 * (1 + abs(m)), ((np.abs(D) ** 2 - 1) ** 2).sum()))
    return out


# (a) + (c)
found = 0
print('(a) ramification points omega_n = 0 (delta_h, delta_v, c6 bounded away from 0)')
while found < 5:
    th0, th1 = rng.uniform(0, 2 * np.pi, 4), rng.uniform(0, 2 * np.pi, 4)
    seg = lambda s_: th0 + s_ * (th1 - th0)
    om = lambda s_: data(seg(s_))[1]['omega']
    if np.sign(om(0)) == np.sign(om(1)):
        continue
    s_star = bisect(om, 0.0, 1.0)
    E, h, v = data(seg(s_star))
    if min(abs(h['delta']), abs(v['delta']), abs(h['c'][6]), abs(v['c'][6])) < 0.05:
        continue
    found += 1
    us = np.roots([1, -h['U'], h['V']])
    ms = np.roots([1, -v['U'], v['V']])
    kappa = v['delta'] * h['c'][6] / (h['delta'] * v['c'][6])
    u = h['U'] / 2
    m_minus = (v['U'] - kappa * (2 * u - h['U'])) / 2
    m_plus = (v['U'] + kappa * (2 * u - h['U'])) / 2
    B, _ = side_from_u(h, u)
    Ct, _ = side_from_u(v, v['U'] / 2)
    H, D = assemble(E, B, Ct.T)
    print(f'   omega_n={h["omega"]:+.1e}  R={h["R"]:+.1e} (R/g^3={h["R"]/h["g"]**3:+.1e})  |u+-u-|={abs(us[0]-us[1]):.1e}'
          f'  |m+-m-|={abs(ms[0]-ms[1]):.1e}  |m_minus-m_plus|={abs(m_minus-m_plus):.1e}'
          f'  coincident-lift flatness defect={np.abs(np.abs(D)-1).max():.1e}')
    assert abs(h['R']) / h['g'] ** 3 < 1e-6
    # (c) approach from the omega_n<0 side
    side_neg = 0.0 if om(0) < 0 else 1.0
    rows = []
    for eps in (1e-1, 1e-2, 1e-3, 1e-4):
        s_ = s_star + eps * (side_neg - s_star)
        E2, h2, v2 = data(seg(s_))
        plus = [res for (_, _, isminus, res) in pairings(E2, h2, v2) if not isminus]
        minus = [res for (_, _, isminus, res) in pairings(E2, h2, v2) if isminus]
        rows.append((h2['omega'], min(plus), max(minus)))
    print('      approach: ' + '; '.join(f'omega_n={o:+.1e}: min plus resid {p_:.1e}, minus resid {m_:.0e}'
                                       for o, p_, m_ in rows))

# (b) delta_h = 0 with R > 0
print('(b) delta_h = 0 points with R > 0')
found = 0
while found < 3:
    th0, th1 = rng.uniform(0, 2 * np.pi, 4), rng.uniform(0, 2 * np.pi, 4)
    seg = lambda s_: th0 + s_ * (th1 - th0)
    de = lambda s_: data(seg(s_))[1]['delta']
    if np.sign(de(0)) == np.sign(de(1)):
        continue
    s_star = bisect(de, 0.0, 1.0)
    E, h, v = data(seg(s_star))
    if h['R'] <= 1 or abs(h['c'][6]) < 0.05:
        continue
    found += 1
    print(f'   delta_h={h["delta"]:+.1e}  R={h["R"]:.3e}  omega_n={h["omega"]:+.1e}  |c6|={abs(h["c"][6]):.2f}')
    assert abs(h['omega']) < 1e-8 and h['R'] > 1

# (d) block identity
err = 0
for _ in range(200):
    E = corner(rng.uniform(0, 2 * np.pi, 4))
    G = 6 * I3 - E @ E.conj().T
    M = 6 * I3 - E.conj().T @ E
    if min(abs(np.linalg.det(G)), abs(np.linalg.det(M))) < 1e-2:
        continue
    Mi = 6 * np.linalg.inv(M)
    err = max(err, np.abs(I3 + E.conj().T @ np.linalg.solve(G, E) - Mi).max() / np.abs(Mi).max())
print(f'(d) I + E* G^-1 E = 6(6I-E*E)^-1 : max relative error {err:.1e} (|det| >= 1e-2)')
assert err < 1e-9
print('CHECK 4 PASSED')
