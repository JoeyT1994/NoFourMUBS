"""Sampled (non-rigorous) tier-1 screen: largest clique of the possibly-orthogonal graph of the torus roots over a
Record ball of radius rho, with the no-5-clique criterion (returns/B Lemma 4.1).  Roots: HomotopyContinuation at the
centre (all 252; torus ones kept), continued to 64 sample points.  Edge if min_samples |<x_a, x_b>| <= tol.
This is an UPPER bound on the pass rate of the certificate (sampling, no tube allowance beyond tol).
Usage: t1_screen.py nrec seed rho1,rho2,... tol1,tol2,...   -> JSON lines"""
import sys, json, time, numpy as np, networkx as nx
from centres import load
from roots import hc_roots, frame, chart, newton
phi, R, _ = load()
n = int(sys.argv[1]); seed = int(sys.argv[2]); rhos = [float(x) for x in sys.argv[3].split(',')]; tols = [float(x) for x in sys.argv[4].split(',')]
rng = np.random.default_rng(seed); ids = sorted(rng.choice(len(phi), n, replace=False).tolist())
Hs = [np.exp(1j * phi[i].reshape(6, 6)) for i in ids]
roots = hc_roots(Hs, ids)
for i, H0 in zip(ids, Hs):
    t0 = time.time(); P = phi[i].reshape(6, 6); T = frame(P)
    U = roots[i]; tor = U[np.max(abs(U.real), axis=1) < 1e-9].imag
    X0 = np.exp(1j * np.concatenate([np.zeros((len(tor), 1)), tor], 1))
    out = dict(rec=i, torus=len(tor), R=float(R[i]))
    G0 = np.abs(X0.conj() @ X0.T); np.fill_diagonal(G0, np.inf)
    for rho in rhos:
        mins = G0.copy(); fails = 0
        for s in range(64):
            e = rng.normal(size=4); e *= rho / np.linalg.norm(e) * (1 if s % 2 == 0 else rng.uniform() ** 0.25)
            ph = tor.copy(); bad = False
            for k in range(1, 9):
                X, ok = chart(P, T, e * k / 8); H = np.exp(1j * X)
                for a in range(len(ph)):
                    u, res = newton(H, 1j * ph[a])
                    if res > 1e-9 or np.max(abs(u.real)) > 1e-7 or np.max(abs(u.imag - ph[a])) > 0.3: bad = True; break
                    ph[a] = u.imag
                if bad: break
            if bad: fails += 1; continue
            X1 = np.exp(1j * np.concatenate([np.zeros((len(ph), 1)), ph], 1))
            mins = np.minimum(mins, np.abs(X1.conj() @ X1.T))
        cl = []
        for tol in tols:
            g = nx.Graph(); g.add_nodes_from(range(len(tor)))
            g.add_edges_from((a, b) for a in range(len(tor)) for b in range(a + 1, len(tor)) if mins[a, b] <= tol)
            cl.append(max(len(c) for c in nx.find_cliques(g)))
        out[f'rho{rho}'] = dict(fails=fails, clique=cl, minpair=float(mins.min()))
    out['secs'] = round(time.time() - t0, 1)
    print(json.dumps(out), flush=True)
