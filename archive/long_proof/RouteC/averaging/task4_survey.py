"""Task 4 (numerical survey, NOT rigorous).  min over Hadamards of M(H) = max_c R_c(H) as a function
of the distance to the F6 orbit.

Samples (each projected to the Hadamard variety by Gauss-Newton, residual < 1e-13):
  rand    : random-start least squares (as RouteC/mcorner.py)
  nearF6  : F6 + r*gaussian, r log-uniform in [1e-3, 1]
  tao     : Tao's S6 + r*gaussian, r log-uniform in [1e-3, 1]
  F3fam   : [[F3, F3 D1],[D2 F3, -D2 F3 D1]] (an exact F3 corner, D1,D2 random diagonal phases) and
            perturbations of it (r log-uniform [1e-3, 0.5])
  fourier : F6^(2)(a,b) = F6 o exp(i(a t1 + b t2)) and its transpose, (a,b) uniform, and perturbations
  descent : projected soft-max descent of M on the variety from random/targeted starts; every
            recorded iterate is a sample (this traces the lower envelope M(d) down toward F6)
For every sample: M, S, mean R, gauge-reduced phase distance d (2-norm over 36 entries, LS gauge,
min over the 7200-element dephased F6 orbit), dinf (max entry of that residual) and d_F
(projector distance of the ClusterTube definition, numerically minimised over row phases).
Output: results_task4_samples.npz and printed lower-envelope tables.
"""
import os, sys, time
import numpy as np
from multiprocessing import Pool
from common import (F6, Hmat, hres, hjac, project, random_hadamard, R_all, dist_F6, dF, phases_of, dephase)

here = os.path.dirname(os.path.abspath(__file__))
x_F6 = np.angle(F6[1:, 1:]).reshape(-1)
w3 = np.exp(2j * np.pi / 3)
S6 = np.array([[1, 1, 1, 1, 1, 1], [1, 1, w3, w3, w3 ** 2, w3 ** 2], [1, w3, 1, w3 ** 2, w3 ** 2, w3],
               [1, w3, w3 ** 2, 1, w3, w3 ** 2], [1, w3 ** 2, w3 ** 2, w3, 1, w3], [1, w3 ** 2, w3, w3 ** 2, w3, 1]])
assert np.abs(S6 @ S6.conj().T - 6 * np.eye(6)).max() < 1e-12
x_S6 = phases_of(S6)
F3 = w3 ** np.outer(np.arange(3), np.arange(3))


def tpat(a, b):
    M = np.zeros((6, 6))
    for j in (1, 3, 5): M[j, [1, 4]] = a; M[j, [2, 5]] = b
    return M


def measure(x, tag):
    H = Hmat(x); R = R_all(H); d2, dinf, _ = dist_F6(H)
    return (tag, R.max(), R.sum(), d2[0], dinf[0], dF(H))


def lognorm(rng, lo, hi): return np.exp(rng.uniform(np.log(lo), np.log(hi)))


def make(job):
    kind, seed = job
    rng = np.random.default_rng(seed)
    if kind == 'rand':
        x = random_hadamard(rng)
    elif kind == 'nearF6':
        x, ok = project(x_F6 + lognorm(rng, 1e-3, 1) * rng.normal(size=25)); x = x if ok else None
    elif kind == 'tao':
        x, ok = project(x_S6 + lognorm(rng, 1e-3, 1) * rng.normal(size=25)); x = x if ok else None
    elif kind == 'F3fam':
        D1 = np.diag(np.exp(1j * rng.uniform(-np.pi, np.pi, 3))); D2 = np.diag(np.exp(1j * rng.uniform(-np.pi, np.pi, 3)))
        H = np.block([[F3, F3 @ D1], [D2 @ F3, -D2 @ F3 @ D1]])
        x = phases_of(H)
        if rng.uniform() < 0.5:
            x, ok = project(x + lognorm(rng, 1e-3, 0.5) * rng.normal(size=25)); x = x if ok else None
    elif kind == 'fourier':
        P = tpat(*rng.uniform(-np.pi, np.pi, 2)); P = P if rng.uniform() < 0.5 else P.T
        x = phases_of(F6 * np.exp(1j * P))
        if rng.uniform() < 0.5:
            x, ok = project(x + lognorm(rng, 1e-3, 0.5) * rng.normal(size=25)); x = x if ok else None
    if x is None or np.abs(hres(x)).max() > 1e-10: return None
    return measure(x, kind)


# ------------------------------------------------------------------ descent of max-corner R on V
def grad_fd(fun, x, h=1e-6):
    return np.array([(fun(x + h * e) - fun(x - h * e)) / (2 * h) for e in np.eye(len(x))])


def descent(job):
    kind, seed = job
    rng = np.random.default_rng(seed)
    if kind == 'd_rand':
        x = random_hadamard(rng)
    elif kind == 'd_F3':
        D1 = np.diag(np.exp(1j * rng.uniform(-np.pi, np.pi, 3))); D2 = np.diag(np.exp(1j * rng.uniform(-np.pi, np.pi, 3)))
        x, ok = project(phases_of(np.block([[F3, F3 @ D1], [D2 @ F3, -D2 @ F3 @ D1]])) + 0.05 * rng.normal(size=25))
    elif kind == 'd_four':
        P = tpat(*rng.uniform(-np.pi, np.pi, 2)); P = P if rng.uniform() < 0.5 else P.T
        x, ok = project(phases_of(F6 * np.exp(1j * P)) + 0.05 * rng.normal(size=25))
    elif kind == 'd_nearF6':
        x, ok = project(x_F6 + lognorm(rng, 0.1, 1.0) * rng.normal(size=25) / 5)
    if x is None or np.abs(hres(x)).max() > 1e-10: return []
    out = []; step = 0.02
    for it in range(400):
        R = R_all(Hmat(x)); M = R.max()
        if it % 4 == 0: out.append(measure(x, kind))
        if M < 1e-4: break
        beta = 30.0 / M
        soft = lambda y: np.log(np.exp(beta * (R_all(Hmat(y)) - M)).sum()) / beta + M
        g = grad_fd(soft, x)
        _, s, vt = np.linalg.svd(hjac(x)); Tn = vt[(s > 1e-8 * s[0]).sum():].T
        gT = Tn @ (Tn.T @ g); gT /= max(np.linalg.norm(gT), 1e-300)
        f0 = soft(x)
        while step > 1e-7:
            y, ok = project(x - step * gT)
            if ok and R_all(Hmat(y)).max() < M: x = y; step *= 1.3; break
            step /= 2
        else:
            break
    out.append(measure(x, kind))
    return out


def envelope(data, col_dist, grid):
    tags, M = data['tag'], data['M']
    rows = []
    for rho in grid:
        sel = data[col_dist] >= rho
        if sel.sum() == 0: continue
        k = np.argmin(np.where(sel, M, np.inf))
        rows.append((rho, M[k], tags[k], data['dF'][k], data['d'][k], data['dinf'][k], sel.sum()))
    return rows


if __name__ == '__main__':
    n = int(sys.argv[1]) if len(sys.argv) > 1 else 1000
    jobs = ([('rand', i) for i in range(4 * n)] + [('nearF6', 10 ** 6 + i) for i in range(2 * n)] + [('tao', 2 * 10 ** 6 + i) for i in range(n // 2)]
            + [('F3fam', 3 * 10 ** 6 + i) for i in range(2 * n)] + [('fourier', 4 * 10 ** 6 + i) for i in range(2 * n)])
    djobs = ([('d_rand', 5 * 10 ** 6 + i) for i in range(n // 10)] + [('d_F3', 6 * 10 ** 6 + i) for i in range(n // 20)]
             + [('d_four', 7 * 10 ** 6 + i) for i in range(n // 20)] + [('d_nearF6', 8 * 10 ** 6 + i) for i in range(n // 10)])
    t0 = time.time(); res = []
    with Pool(10) as p:
        for r in p.imap_unordered(make, jobs, chunksize=8):
            if r is not None: res.append(r)
        print('static samples', len(res), 'time %.0fs' % (time.time() - t0), flush=True)
        for out in p.imap_unordered(descent, djobs, chunksize=1):
            res.extend(out)
    print('total samples', len(res), 'time %.0fs' % (time.time() - t0), flush=True)
    dt = np.dtype([('tag', 'U10'), ('M', float), ('S', float), ('d', float), ('dinf', float), ('dF', float)])
    data = np.array(res, dtype=dt)
    np.savez(os.path.join(here, 'results_task4_samples.npz'), data=data)
    for col, grid in (('dF', [0.005, 0.01, 0.02, 1 / 30, 0.05, 0.075, 0.1, 0.15, 0.2, 0.25, 0.3]),
                      ('d', [0.01, 0.03, 0.0816, 0.1, 0.2, 0.3, 0.5, 0.75, 1.0])):
        print(f'\nlower envelope: min M over samples with {col} >= rho')
        print('rho      minM       tag        dF       d       dinf    #samples')
        for row in envelope(data, col, grid):
            print('%-8.4f %-10.4f %-10s %-8.4f %-7.4f %-7.4f %d' % row)
    for tag in np.unique(data['tag']):
        s = data[data['tag'] == tag]
        print('%-9s n=%-6d M in [%.4g, %.4g]  mean R in [%.4g, %.4g]  dF in [%.4f, %.4f]' %
              (tag, len(s), s['M'].min(), s['M'].max(), s['S'].min() / 400, s['S'].max() / 400, s['dF'].min(), s['dF'].max()))
