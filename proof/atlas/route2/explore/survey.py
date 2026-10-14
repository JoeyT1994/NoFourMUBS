import sys, numpy as np, networkx as nx
from brlib import frame, Hof, newton, cert
from unbiased import solve
def maxclique(mins, n, t):
    g = nx.Graph(); g.add_nodes_from(range(n))
    g.add_edges_from((a, b) for a in range(n) for b in range(a+1, n) if mins[a, b] < t)
    return max(len(c) for c in nx.find_cliques(g))
rng = np.random.default_rng(int(sys.argv[1]))
for _ in range(int(sys.argv[2])):
    idx = int(rng.integers(len(cert.recs)))
    P = cert.recs[idx]['phi'].reshape(6, 6); T = frame(P); H0 = np.exp(1j * P)
    phis0 = solve(H0.conj().T, starts=2500, seed=1); n = len(phis0)
    row = [idx, n]
    for rho in [0.08, 0.16, 0.3, 0.5]:
        mins = np.full((n, n), np.inf); fails = 0
        for _ in range(25):
            d = rng.normal(size=4); d *= rho * rng.uniform() ** 0.25 / np.linalg.norm(d)
            phis = [p.copy() for p in phis0]; bad = False
            for k in range(1, 7):
                H, ok = Hof(P, T, d * k / 6)
                if not ok: bad = True; break
                for a in range(n):
                    phis[a], res = newton(phis[a], H.conj().T)
                    if res > 1e-8: bad = True
            if bad: fails += 1; continue
            X = np.array([np.exp(1j*np.concatenate([[0.0], p])) for p in phis])
            mins = np.minimum(mins, np.abs(X.conj() @ X.T))
        row += [rho, fails, maxclique(mins, n, 0.1), maxclique(mins, n, 0.2)]
    print(row, flush=True)
