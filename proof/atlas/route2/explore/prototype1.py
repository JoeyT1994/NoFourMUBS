"""Milestone 1 prototype (floating point): a tier-1 region around a Record centre.
(1) coverage bins with a cubic chart residual; (2) branches at the centre; (3) quadratic Taylor models;
(4) assignment of every surviving bin to a branch (within its uniqueness radius along the sweep);
(5) tube radii; (6) edge bounds and the 6-clique check."""
import sys, math, time, itertools
from pathlib import Path
ATLAS = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ATLAS))
import numpy as np, networkx as nx
import stagec as SC
from flint import arb_mat
from record import opnorm_upper
from ballrecord import BallRecord
from brlib import frame, Hof, newton, cert
from unbiased import solve, residual, jac
from taylor2 import quad_fit, model, branch_at

i = int(sys.argv[1]); R = float(sys.argv[2]); rec = cert.recs[i]
P = rec['phi'].reshape(6, 6); T = frame(P); H0 = np.exp(1j * P)
B = BallRecord(rec['phi'].reshape(36), Tint=rec.get('Tint'))
tcol = max(opnorm_upper(arb_mat([[B.rec.Tb[6 * j + c, k] for k in range(4)] for j in range(6)])) for c in range(6))
rH = B.ginv_half * R; n3 = 0.17 * R ** 3
rcol = min(R, tcol * rH + n3); rF = min(R, math.sqrt(B.lam_max) * rH + n3)
t0 = time.time()
U, M = SC.bins(P / SC.TWO_PI, rcol / SC.TWO_PI, levels=(12, 24, 48), cap=3_000_000,
               tang=(B.rec.Tbn, rH / SC.TWO_PI, n3 / SC.TWO_PI), rF=rF / SC.TWO_PI)
print(f'record {i}, R {R}: coverage bins {len(U)} at M={M} ({time.time()-t0:.1f}s)', flush=True)

phis0 = solve(H0.conj().T, starts=3000, seed=1); n = len(phis0)
fits = [quad_fit(lambda e, p=p: branch_at(P, T, e, p)) for p in phis0]
# uniqueness radius per branch: 1 / (beta K2), beta = |J^+|, K2 = Lipschitz constant of J near the branch
def lipJ(p, Hs, h=0.05, k=12, rng=np.random.default_rng(0)):
    J0 = jac(p, Hs); return max(np.linalg.norm(jac(p + d, Hs) - J0, 2) / np.linalg.norm(d)
                                for d in (h * rng.normal(size=(k, 5))))
ru = []
for p in phis0:
    Jx = jac(p, H0.conj().T); beta = 1 / np.linalg.svd(Jx, compute_uv=False)[-1]
    ru.append(1 / (beta * lipJ(p, H0.conj().T)))
# sweep samples of each branch model over the ball
rng = np.random.default_rng(2)
etas = [np.zeros(4)] + [rng.normal(size=4) for _ in range(300)]
etas = [e * (R * rng.uniform() ** 0.25 / np.linalg.norm(e)) if np.linalg.norm(e) > 0 else e for e in etas]
sweep = np.array([[model(*f, e) for e in etas] for f in fits])            # n x m x 5 (radians)
Ur = 2 * np.pi * U                                                         # bin midpoints, radians
half = np.pi / M * math.sqrt(5)                                            # bin half-diagonal (radians)
assigned = np.zeros(len(Ur), bool); owner = np.full(len(Ur), -1)
for a in range(n):
    d = np.angle(np.exp(1j * (Ur[:, None, :] - sweep[a][None, :, :])))
    dist = np.linalg.norm(d, axis=2).min(axis=1) + half
    hit = dist <= ru[a]
    owner[hit & ~assigned] = a; assigned |= hit
print(f'branches {n}; uniqueness radius median {np.median(ru):.3f} min {min(ru):.3f}; '
      f'bins assigned {assigned.sum()}/{len(U)}', flush=True)
# tube radii: sampled deviation of the true branch from its quadratic model (rigorous version: Kantorovich)
s = np.zeros(n)
for e in etas[1:40]:
    for a, (f, p) in enumerate(zip(fits, phis0)):
        q = p.copy()
        for k in range(1, 5): q = branch_at(P, T, e * k / 4, q)
        s[a] = max(s[a], np.linalg.norm(np.angle(np.exp(1j * (q - model(*f, e))))))
s = 2 * s + 2 * n3                                                         # safety factor; chart residual
# edges: min over the sampled ball of |<x_a, x_b>| from the models, against the tube margin
X = np.exp(1j * np.concatenate([np.zeros((n, len(etas), 1)), sweep], axis=2))  # n x m x 6
G = np.abs(np.einsum('amj,bmj->abm', X.conj(), X)).min(axis=2)
g = nx.Graph(); g.add_nodes_from(range(n))
g.add_edges_from((a, b) for a in range(n) for b in range(a + 1, n) if G[a, b] <= 2 * math.sqrt(6) * (s[a] + s[b]) + 0.02)
w = max(len(c) for c in nx.find_cliques(g))
print(f'tube radius median {np.median(s):.4f} max {s.max():.4f}; possible-orthogonal edges {g.number_of_edges()}, '
      f'max clique {w} -> {"TIER-1 PASS" if w < 6 else "fails"} ({time.time()-t0:.0f}s total)', flush=True)

# refine the unassigned bins and re-assign
def refine(Ub, Mb, M2):
    f = M2 // Mb; off = (np.arange(f) + 0.5) / M2 - 0.5 / Mb
    O = np.stack(np.meshgrid(*([off] * 5), indexing='ij'), -1).reshape(-1, 5)
    K = SC.opnorm_bound(P / SC.TWO_PI); eP = SC.cis_centre(P / SC.TWO_PI); out = []
    for i0 in range(0, len(Ub), 2048):
        Uc = (Ub[i0:i0 + 2048, None, :] + O[None, :, :]).reshape(-1, 5)
        Uc = Uc[SC.single_tests(Uc, P / SC.TWO_PI, rcol / SC.TWO_PI, M2, K, eP, rF / SC.TWO_PI)]
        if len(Uc):
            Uc = Uc[SC.tangent_tests(Uc, P / SC.TWO_PI, rcol / SC.TWO_PI, M2, K, eP, rF / SC.TWO_PI,
                                     B.rec.Tbn, rH / SC.TWO_PI, n3 / SC.TWO_PI)]
        out.append(Uc)
    return np.concatenate(out) if out else np.zeros((0, 5))

def assign(Ub, Mb):
    Urb = 2 * np.pi * Ub; hb = np.pi / Mb * math.sqrt(5); ok = np.zeros(len(Ub), bool)
    for a in range(n):
        d = np.angle(np.exp(1j * (Urb[:, None, :] - sweep[a][None, :, :])))
        ok |= np.linalg.norm(d, axis=2).min(axis=1) + hb <= ru[a]
    return ok

rest, Mc = U[~assigned], M
for M2 in (96,):
    rest = refine(rest, Mc, M2); Mc = M2
    ok = assign(rest, Mc)
    print(f'level {M2}: unassigned bins refined to {len(rest)}, of which assigned {ok.sum()}, still open {(~ok).sum()}', flush=True)
    rest = rest[~ok]
    if not len(rest): break
