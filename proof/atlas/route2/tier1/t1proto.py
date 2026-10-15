"""End-to-end FLOAT prototype of Lemma T1 with counting coverage (MILESTONE1.md sections 1-4).  Sampled, not rigorous.

Region = {||eta|| <= rho} around a Record centre (eta: tangent coordinates, H(eta) = project(P + T eta)).
  1. all 252 roots at the centre (HomotopyContinuation.jl, cached);
  2. per root, sampled Krawczyk with a polynomial centre m(eta) and preconditioner C(eta) on the whole region
     (degree DEG0/CDEG0); roots that fail are retried on the 16 sub-cubes of their cube (degree DEG1/CDEG1),
     recursively up to depth MAXD -- each root has its own subdivision;
  3. disjointness of the inclusion boxes (same chart, sampled), off-torus roots certified off the torus;
  4. torus roots -> tubes (inclusion radius), orthogonality edges |<x_a, x_b>| > 5 (r_a + r_b) (sampled in eta),
     6-clique search.
Unresolved roots are reported with their class (near-torus pair = fold collision, or far).
Usage: t1proto.py rho id1 id2 ...   -> one JSON line per region."""
import sys, time, json, itertools, math
import numpy as np, networkx as nx
from centres import load
from roots import hc_roots, frame, chart
from systems import LogChart, TauChart, track, newton
from phase1 import quad_basis, fit, evalm

LOG = LogChart()
N3C = 0.5
DEG0, CDEG0, NS0 = 3, 2, 64
DEG1, CDEG1, NS1 = 2, 1, 28
MAXD = 3

def lp_of(ch): return np.ones(5, bool) if ch.kind == 'log' else np.r_[False, np.ones(4, bool)]

def unwrap(ch, w, ref):
    lp = lp_of(ch); return np.where(lp, w.real + 1j * (ref.imag + np.angle(np.exp(1j * (w.imag - ref.imag)))), w)

def to_chart(c0, v, ch):
    if c0.key == ch.key: return v
    return ch.from_z(c0.to_z(v))

def kraw(ch, Hs, M, rng, n3, cdeg, Es):
    Js = [ch.J(H, m) for H, m in zip(Hs, M)]
    try: Ci = np.array([np.linalg.inv(J) for J in Js])
    except np.linalg.LinAlgError: return dict(ok=False, why='singular')
    if not np.all(np.isfinite(Ci)): return dict(ok=False, why='singular')
    cC = fit(Es, Ci.reshape(len(Es), 25), cdeg); Cs = evalm(cC, Es).reshape(-1, 5, 5)
    eps = max(np.max(abs(C @ ch.G(H, m))) for C, H, m in zip(Cs, Hs, M))
    kap0 = max(np.abs(np.eye(5) - C @ J).sum(1).max() for C, J in zip(Cs, Js))
    Kl = 0.0; cnu = 0.0; cnuJ = 0.0
    for C, H, m in list(zip(Cs, Hs, M))[:4]:
        J0 = ch.J(H, m)
        for r in (0.02, 0.06):
            for _ in range(3):
                y = r * np.exp(2j * np.pi * rng.uniform(size=5))
                Kl = max(Kl, np.abs(C @ (ch.J(H, m + y) - J0)).sum(1).max() / r)
        for _ in range(3):
            nu = rng.normal(size=(6, 6)); nu *= 1e-5 / np.linalg.norm(nu); Hn = H * np.exp(1j * nu)
            cnu = max(cnu, np.max(abs(C @ (ch.G(Hn, m) - ch.G(H, m)))) / 1e-5)
            cnuJ = max(cnuJ, np.abs(C @ (ch.J(Hn, m) - J0)).sum(1).max() / 1e-5)
    eps_t = eps + cnu * n3; kap_t = kap0 + cnuJ * n3; Kl *= 1.5
    disc = (1 - kap_t) ** 2 - 4 * Kl * eps_t
    if kap_t >= 1 or disc < 0: return dict(ok=False, why='kappa' if kap_t >= 1 else 'disc', kap=kap_t)
    return dict(ok=True, r=((1 - kap_t) - math.sqrt(disc)) / (2 * Kl), rmax=((1 - kap_t) + math.sqrt(disc)) / (2 * Kl))

def run(i, rho, seed=0, log=None):
    t0 = time.time(); rng = np.random.default_rng(seed)
    phi, _, _ = load(); P = phi[i].reshape(6, 6); T = frame(P); H0 = np.exp(1j * P)
    U0 = hc_roots([H0], [i])[i]; n = len(U0); n3 = N3C * rho ** 3
    Hc = {}
    def Hp(e):
        k = tuple(np.round(e, 14))
        if k not in Hc:
            if len(Hc) > 20000: Hc.clear()
            Hc[k] = np.exp(1j * chart(P, T, e)[0])
        return Hc[k]
    def seg(e0, e1): return lambda x: Hp(e0 + x)          # x runs from 0 to e1 - e0
    def follow(ch, v, e0, e1):
        c2, w, ok = track(ch, seg(e0, e1), v, e1 - e0)
        return c2, w, ok
    # state per root: chart (chosen at first escape), centre value
    roots = [dict(ch=LOG, v=U0[a]) for a in range(n)]
    tests = 0; cert = [[] for _ in range(n)]           # list of (cube centre, half width, model coeffs, r, rmax)
    unresolved = [[] for _ in range(n)]
    # cube queue: (centre, half width, depth, roots, their (chart, value) at the centre)
    queue = [(np.zeros(4), rho, 0, list(range(n)), [(LOG, U0[a]) for a in range(n)])]
    while queue:
        c, h, d, idx, starts = queue.pop()
        # cube must meet the ball
        if np.linalg.norm(np.maximum(abs(c) - h, 0)) > rho: continue
        ns = NS0 if d == 0 else NS1; deg = DEG0 if d == 0 else DEG1; cdeg = CDEG0 if d == 0 else CDEG1
        X = rng.uniform(-1, 1, size=(ns, 4)); X[: 8] = np.vstack([np.eye(4), -np.eye(4)])
        Es = np.vstack([np.zeros(4), X * h])                 # relative to c
        if d == 0:                                           # whole region: use the ball, not the cube
            Es = np.vstack([np.zeros(4)] + [x / np.linalg.norm(x) * rho * (1 if j % 2 else rng.uniform() ** 0.25) for j, x in enumerate(rng.normal(size=(ns, 4)))])
        Hs = [Hp(c + e) for e in Es]
        fail_here = []
        for a, (ch0, v0) in zip(idx, starts):
            # track to samples
            V = []; chs = []; okall = True
            for e in Es:
                if not e.any(): chs.append(ch0); V.append(v0); continue
                c2, w, ok = follow(ch0, v0, c, c + e)
                if not ok: okall = False; break
                chs.append(c2); V.append(w)
            tests += 1
            if not okall:
                fail_here.append((a, ch0, v0, 'track')); continue
            # chart: tau chart if any sample escaped, else ch0
            taus = [x for x in chs if x.kind == 'tau']
            ch = taus[0] if taus else ch0
            try:
                W = np.array([to_chart(c2, w, ch) for c2, w in zip(chs, V)])
            except Exception:
                fail_here.append((a, ch0, v0, 'chart')); continue
            ref = to_chart(ch0, v0, ch) if ch.key != ch0.key else v0
            if ch.key != ch0.key: ref, _ = newton(ch, Hs[0], ref)
            W = unwrap(ch, W, ref); W[0] = ref
            if not np.all(np.isfinite(W)): fail_here.append((a, ch0, v0, 'chart')); continue
            cm = fit(Es, W, deg)
            if ch.kind == 'log' and np.max(abs(W.real)) < 1e-8: cm = 1j * cm.imag
            k = kraw(ch, Hs, evalm(cm, Es), rng, n3, cdeg, Es)
            if k['ok']:
                cert[a].append(dict(c=c, h=h, ch=ch, cm=cm, r=k['r'], rmax=k['rmax'], d=d))
            else:
                fail_here.append((a, ch0, v0, k['why']))
        if fail_here:
            if d >= MAXD:
                for a, ch0, v0, why in fail_here: unresolved[a].append((c, h, why))
                continue
            for s in itertools.product((-1, 1), repeat=4):
                c1 = c + np.array(s) * h / 2
                if np.linalg.norm(np.maximum(abs(c1) - h / 2, 0)) > rho: continue
                st = []; ids = []
                for a, ch0, v0, why in fail_here:
                    c2, w, ok = follow(ch0, v0, c, c1)
                    if ok: st.append((c2, w)); ids.append(a)
                    else: unresolved[a].append((c1, h / 2, 'track-centre'))
                if ids: queue.append((c1, h / 2, d + 1, ids, st))
    # classification
    tor = np.array([np.max(abs(U0[a].real)) < 1e-9 for a in range(n)])
    unres = [a for a in range(n) if unresolved[a]]
    near = [a for a in unres if np.max(abs(U0[a].real)) < 0.5]
    ncube = [len(cert[a]) + len(unresolved[a]) for a in range(n)]
    # disjointness (sampled on a common grid) and off-torus
    Ed = rng.normal(size=(600, 4)); Ed *= (rho * rng.uniform(size=(600, 1)) ** 0.25) / np.linalg.norm(Ed, axis=1, keepdims=True)
    def piece(a, e):
        for q in cert[a]:
            if np.all(abs(e - q['c']) <= q['h'] + 1e-15): return q
        return None
    vals = {}; overl = 0; offbad = 0
    for a in range(n):
        if unresolved[a]: continue
        rows = []
        for e in Ed:
            q = piece(a, e)
            if q is None: continue
            rows.append((q['ch'].key, evalm(q['cm'], (e - q['c'])[None])[0], q['r'], e))
        vals[a] = rows
        if not tor[a]:
            for key, m, r, e in rows:
                if key[0] == 'log' and np.max(abs(m.real)) <= r: offbad += 1; break
                if key[0] == 'tau' and abs(abs(m[0]) - 1) <= r and np.max(abs(m[1:].real)) <= r: offbad += 1; break
    # disjointness among torus + near-torus log-chart roots (the only ones that come close)
    cand = [a for a in vals if all(k[0] == 'log' for k, *_ in vals[a]) and np.max(abs(U0[a].real)) < 1.0]
    for x, y in itertools.combinations(cand, 2):
        for (k1, m1, r1, e1), (k2, m2, r2, e2) in zip(vals[x][:200], vals[y][:200]):
            d = np.max(np.maximum(abs((m1 - m2).real), abs(np.angle(np.exp(1j * (m1 - m2).imag)))))
            if d <= r1 + r2: overl += 1; break
    # T1 graph on torus roots
    tr = [a for a in range(n) if tor[a] and not unresolved[a]]
    Eg = Ed[:300]
    X = {}; R = {}
    for a in tr:
        M = []
        for e in Eg:
            q = piece(a, e); M.append(evalm(q['cm'], (e - q['c'])[None])[0].imag)
        X[a] = np.exp(1j * np.concatenate([np.zeros((len(Eg), 1)), np.array(M)], 1)); R[a] = max(q['r'] for q in cert[a])
    g = nx.Graph(); g.add_nodes_from(tr); minlb = []
    for x, y in itertools.combinations(tr, 2):
        ip = np.abs(np.einsum('nj,nj->n', X[x].conj(), X[y])).min(); lb = ip - 5 * (R[x] + R[y])
        if lb <= 0: g.add_edge(x, y)
    w = max((len(cq) for cq in nx.find_cliques(g)), default=0)
    # unresolved torus roots: pessimistically connect them to everything
    for a in [a for a in range(n) if tor[a] and unresolved[a]]:
        g.add_node(a); g.add_edges_from((a, b) for b in list(g.nodes) if b != a)
    w2 = max((len(cq) for cq in nx.find_cliques(g)), default=0)
    out = dict(rec=i, rho=rho, roots=n, torus=int(tor.sum()), tests=tests, cubes_per_root_max=max(ncube),
               depth_hist={dd: sum(1 for a in range(n) for q in cert[a] if q['d'] == dd) for dd in range(MAXD + 1)},
               unresolved=len(unres), unresolved_torus=int(sum(tor[a] for a in unres)), unresolved_near=len(near),
               unresolved_why=sorted(set(w_ for a in unres for (_, _, w_) in unresolved[a])),
               overlaps=overl, offbad=offbad, tube_med=float(np.median([R[a] for a in tr])) if tr else None,
               tube_max=float(max(R.values())) if tr else None, edges=g.number_of_edges(), clique=w, clique_pess=w2,
               coverage=bool(not unres and not overl and not offbad), T1=bool(not unres and not overl and not offbad and w < 6),
               T1_if_folds_ok=bool(len(unres) == len(near) and w2 < 6), secs=round(time.time() - t0, 1))
    return out

if __name__ == '__main__':
    rho = float(sys.argv[1])
    for a in sys.argv[2:]:
        print(json.dumps(run(int(a), rho)), flush=True)
