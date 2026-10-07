"""Route C feasibility (numerical only): random Hadamards, maximal corner, unbiased vectors of (I,H), clique margins."""
import numpy as np, itertools, sys, json
from scipy.optimize import least_squares
sys.path.insert(0, '/Users/jtindall/Files/NoFourMUBS/ProvenResults/ActiveShoulderClosure_v2')
from discovery_numeric import inv
rng = np.random.default_rng(int(sys.argv[1]) if len(sys.argv) > 1 else 0)
def hres(x):
    H = np.ones((6, 6), complex); H[1:, 1:] = np.exp(1j * x.reshape(5, 5))
    G = H @ H.conj().T - 6 * np.eye(6); iu = np.triu_indices(6, 1)
    return np.concatenate([G[iu].real, G[iu].imag])
def random_hadamard():
    while True:
        r = least_squares(hres, rng.uniform(-np.pi, np.pi, 25), xtol=1e-15, ftol=1e-15, gtol=1e-15, max_nfev=5000)
        if np.abs(r.fun).max() < 1e-11:
            H = np.ones((6, 6), complex); H[1:, 1:] = np.exp(1j * r.x.reshape(5, 5)); return H
def dephase(M): M = M / M[:, :1]; return M / M[:1, :]
def max_corner(H):
    best = None
    for rows in itertools.combinations(range(6), 3):
        for cols in itertools.combinations(range(6), 3):
            Rv = inv(dephase(H[np.ix_(rows, cols)]))[-1]
            if best is None or Rv > best[0]: best = (Rv, rows, cols)
    return best
def unbiased(U, starts=600):
    def f(phi):
        z = np.concatenate([[1], np.exp(1j * phi)]) / np.sqrt(6)
        return np.abs(U.conj().T @ z) ** 2 - 1 / 6
    sols = []
    for _ in range(starts):
        r = least_squares(f, rng.uniform(-np.pi, np.pi, 5), xtol=1e-15, ftol=1e-15, gtol=1e-15, max_nfev=2000)
        if np.abs(r.fun).max() < 1e-12:
            z = np.concatenate([[1], np.exp(1j * r.x)]) / np.sqrt(6)
            if all(np.abs(z - w).max() > 1e-7 for w in sols): sols.append(z)
    return sols
out = []
for k in range(int(sys.argv[2]) if len(sys.argv) > 2 else 20):
    H = random_hadamard(); Rv, rows, cols = max_corner(H)
    # bring the maximal corner to the top-left (rows/cols first, others after), dephase: our D0 chart point
    rr = list(rows) + [i for i in range(6) if i not in rows]; cc = list(cols) + [j for j in range(6) if j not in cols]
    Hc = dephase(H[np.ix_(rr, cc)]); th = np.angle(Hc[1:3, 1:3]).reshape(-1)
    U = Hc / np.sqrt(6); V = unbiased(U)
    G = np.abs(np.array([[np.vdot(a, b) for b in V] for a in V])) if V else np.zeros((0, 0))
    off = G[~np.eye(len(V), dtype=bool)] if len(V) > 1 else np.array([1.0])
    orth = [(i, j) for i in range(len(V)) for j in range(i) if G[i, j] < 1e-6]
    # largest orthogonal clique (exact search on the numerically orthogonal graph)
    adj = {i: set() for i in range(len(V))}
    for i, j in orth: adj[i].add(j); adj[j].add(i)
    def clique(c, cand):
        best = len(c)
        for v in list(cand):
            best = max(best, clique(c + [v], cand & adj[v])); cand = cand - {v}
        return best
    w = clique([], set(range(len(V)))) if V else 0
    out.append(dict(R=float(Rv), theta=[float(x) for x in th], n_unbiased=len(V), min_abs_inner=float(off.min()),
                    n_orth_pairs=len(orth), max_orth_clique=w))
    print(json.dumps(out[-1]), flush=True)
