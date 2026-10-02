"""Quartet certifier for a SEED cell of the reconstruction H_+(a,b,c,d), using
correlated first-order ray motion.

At the centre theta0 (4 seed angles) compute every common ray z_i and its exact
velocity dz_i/dtheta_m (implicit differentiation of f_j(phi,theta)=|<z,h_j(theta)>|^2-1/6).
Every overlap g_ab = <z_a,z_b> then has gradient d g_ab/dtheta_m, and over the cell
|theta - theta0|_inf <= rho,
     |g_ab(theta) - g_ab(theta0)| <= rho * sum_m |d g_ab/dtheta_m| + (2nd order, estimated).
The quartet search (candidate V, then rays unbiased to all of V, then a 6-clique) is
run with these pair-specific tolerances.  Output: largest rho certified.  (First-order;
a rigorous version bounds the remainder with interval second derivatives.)
"""
import numpy as np, sys, time
sys.path.insert(0, str(__import__('pathlib').Path(__file__).resolve().parents[2] / 'MinimalConstruction' / 'Implementation'))
import mpmath as mp
from model import Model
from scipy.optimize import least_squares
rng = np.random.default_rng(7)
def rays(U, starts=2500):
    def res(p):
        z = np.concatenate([[1], np.exp(1j * p)]) / np.sqrt(6)
        return (abs(U.conj().T @ z) ** 2 - 1 / 6)[:5]
    found = []
    for s_ in range(starts):
        r = least_squares(res, rng.uniform(0, 2 * np.pi, 5), xtol=1e-15, ftol=1e-15, gtol=1e-15)
        if np.abs(r.fun).max() < 1e-12:
            z = np.concatenate([[1], np.exp(1j * r.x)]) / np.sqrt(6)
            if all(abs(abs(np.vdot(z, w)) - 1) > 1e-8 for w in found): found.append(z)
    return found
def cliques6(adj_bits, cand_bits, limit):
    out = []
    def rec(cur, cand):
        if len(out) >= limit: return
        if len(cur) == 6: out.append(tuple(cur)); return
        c = cand
        while c:
            v = (c & -c).bit_length() - 1
            c &= c - 1
            rec(cur + [v], c & adj_bits[v])
    rec([], cand_bits)
    return out
mp.mp.dps = 30

def H_of(th):
    return np.array(Model([mp.exp(1j * mp.mpf(float(t))) for t in th]).hadamard().tolist(), dtype=complex) / np.sqrt(6)

def f(phi, U):
    z = np.concatenate([[1], np.exp(1j * phi)]) / np.sqrt(6)
    return np.abs(U.conj().T @ z)[:5] ** 2 - 1 / 6

def ray_velocities(th, R, h=1e-6):
    U0 = H_of(th); dU = [(H_of(th + h * e) - H_of(th - h * e)) / (2 * h) for e in np.eye(4)]
    vel = []
    for z in R:
        phi = np.angle(z[1:] / z[0])
        Jp = np.array([(f(phi + 1e-7 * e, U0) - f(phi - 1e-7 * e, U0)) / 2e-7 for e in np.eye(5)]).T
        vs = []
        for m in range(4):
            ft = (f(phi, U0 + 1e-7 * dU[m]) - f(phi, U0 - 1e-7 * dU[m])) / 2e-7
            dphi = -np.linalg.solve(Jp, ft)
            zz = np.concatenate([[1], np.exp(1j * phi)]) / np.sqrt(6)
            vs.append(np.concatenate([[0], 1j * np.exp(1j * phi) * dphi]) / np.sqrt(6))
        vel.append(np.array(vs))
    return U0, np.array(vel)                      # vel[i, m, :] = dz_i/dtheta_m

def certify_cell(R, vel, rho, limit=2_000_000):
    k = len(R)
    Z = np.array([z / z[0] * abs(z[0]) for z in R])
    G = Z.conj() @ Z.T                            # g_ab
    dG = np.einsum('ami,bi->mab', vel.conj(), Z) + np.einsum('ai,bmi->mab', Z.conj(), vel)   # d g_ab / d theta_m
    # |d|g_ab|| <= |d g_ab|
    tol = rho * np.abs(dG).sum(0) + 2e-9
    A = np.abs(G)
    orth = A <= tol; np.fill_diagonal(orth, False)
    unb = np.abs(A - 1 / np.sqrt(6)) <= tol
    adj = [sum(1 << int(j) for j in np.nonzero(orth[i])[0]) for i in range(k)]
    ub = [sum(1 << int(j) for j in np.nonzero(unb[i])[0]) for i in range(k)]
    Vs = cliques6(adj, (1 << k) - 1, limit)
    if len(Vs) >= limit: return len(Vs), None
    surv = 0
    for V in Vs:
        c = (1 << k) - 1
        for v in V: c &= ub[v]
        if bin(c).count('1') >= 6 and cliques6(adj, c, 1): surv += 1
    return len(Vs), surv

if __name__ == '__main__':
    for spec in sys.argv[1:]:
        th = np.array([float(x) for x in spec.split(',')])
        U0 = H_of(th); R = rays(U0, 2500)
        U0, vel = ray_velocities(th, R)
        L = np.abs(vel).sum(axis=(1, 2)).max()
        out = []
        for rho in (1e-3, 3e-3, 1e-2, 2e-2, 3e-2, 5e-2):
            nb, sv = certify_cell(R, vel, rho); out.append((rho, nb, sv))
            if sv is None or sv > 0: break
        ok = [r for r, nb, sv in out if sv == 0]
        print(f"seeds {spec}: rays {len(R)}, max ray speed {L:.1f}; (rho, candidate V, surviving) {out}; "
              f"largest certified seed radius {max(ok) if ok else None}", flush=True)
