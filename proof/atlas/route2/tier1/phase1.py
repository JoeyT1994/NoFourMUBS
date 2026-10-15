"""Float prototype of Lemma T1 with the COUNTING coverage (MILESTONE1.md section 2): one region = a Record ball of
radius rho in the tangent coordinates eta.  Sampling-based (not rigorous): it estimates whether the certificate
would pass, and why not.

Steps: all 252 roots at the centre (HomotopyContinuation) -> continue each to N sample points (detoured segments, so
fold collisions are avoided) -> per root a chart (log, or the tau chart of its escape divisor D_S) and a quadratic
model m(eta) -> sampled Krawczyk/Kantorovich test with an affine preconditioner -> disjointness, torus / off-torus
classification -> fold clusters -> tubes -> orthogonality edges -> 6-clique search.
Usage: phase1.py rho nsamp id1 id2 ...   (prints one summary line per region, plus a JSON line)"""
import sys, time, json, itertools, math
import numpy as np, networkx as nx
from centres import load
from roots import hc_roots, frame, chart
from systems import LogChart, TauChart, track, newton

LOG = LogChart()
N3C = 0.5                  # assumed rigorous cubic chart residual n3 = N3C rho^3 (measured true residual 0.17 rho^3)

DEG = 2; CDEG = 1          # model degree, preconditioner degree
def monos(d):
    return [m for k in range(d + 1) for m in itertools.combinations_with_replacement(range(4), k)]
def quad_basis(E, d=None):
    d = DEG if d is None else d
    E = np.atleast_2d(E)
    return np.stack([np.prod(E[:, list(m)], axis=1) if m else np.ones(len(E)) for m in monos(d)], -1)

def fit(E, V, d=None):
    B = quad_basis(E, d); c, *_ = np.linalg.lstsq(B, V, rcond=None); return c

def evalm(c, E):
    d = {1: 0, 5: 1, 15: 2, 35: 3, 70: 4}[len(c)]
    return quad_basis(E, d) @ c

def dmax(a, b, logpart):
    """max-norm distance; coordinates in logpart are compared mod 2 pi in the imaginary part"""
    d = a - b
    d = np.where(logpart, abs(d.real) + 1j * 0, d)
    re = abs((a - b).real); im = abs(np.angle(np.exp(1j * (a - b).imag)))
    dl = np.maximum(re, im)
    dt = abs(a - b)
    return np.where(logpart, dl, dt).max(-1)

def kraw_root(ch, Hpure, Es, c, rng, n3):
    """Sampled Krawczyk/Kantorovich test for one root with model c on the samples Es (see MILESTONE1.md section 3)."""
    M = evalm(c, Es); Hs = [Hpure(e) for e in Es]
    Js = [ch.J(H, m) for H, m in zip(Hs, M)]
    try: Ci = np.array([np.linalg.inv(J) for J in Js])
    except np.linalg.LinAlgError: return dict(ok=False, why='singular')
    cC = fit(Es, Ci.reshape(len(Es), 25), CDEG); Cs = evalm(cC, Es).reshape(-1, 5, 5)
    eps = max(np.max(abs(C @ ch.G(H, m))) for C, H, m in zip(Cs, Hs, M))
    kap0 = max(np.abs(np.eye(5) - C @ J).sum(1).max() for C, J in zip(Cs, Js))
    Kl = 0.0; cnu = 0.0; cnuJ = 0.0
    for C, H, m in list(zip(Cs, Hs, M))[:6]:
        J0 = ch.J(H, m)
        for r in (0.03, 0.1):
            for _ in range(4):
                y = r * np.exp(2j * np.pi * rng.uniform(size=5))
                Kl = max(Kl, np.abs(C @ (ch.J(H, m + y) - J0)).sum(1).max() / r)
        for _ in range(4):
            nu = rng.normal(size=(6, 6)); nu *= 1e-5 / np.linalg.norm(nu); Hn = H * np.exp(1j * nu)
            cnu = max(cnu, np.max(abs(C @ (ch.G(Hn, m) - ch.G(H, m)))) / 1e-5)
            cnuJ = max(cnuJ, np.abs(C @ (ch.J(Hn, m) - J0)).sum(1).max() / 1e-5)
    eps_t = eps + cnu * n3; kap_t = kap0 + cnuJ * n3; Kl *= 1.5
    disc = (1 - kap_t) ** 2 - 4 * Kl * eps_t
    if kap_t >= 1 or disc < 0:
        return dict(ok=False, why='kappa' if kap_t >= 1 else 'disc', eps=eps_t, kap=kap_t, K=Kl)
    rmin = ((1 - kap_t) - math.sqrt(disc)) / (2 * Kl); rmax = ((1 - kap_t) + math.sqrt(disc)) / (2 * Kl)
    return dict(ok=True, eps=eps_t, kap=kap_t, K=Kl, r=rmin, rmax=rmax)

def analyse(i, rho, nsamp, seed=0, verbose=False, keep=False):
    t0 = time.time(); rng = np.random.default_rng(seed)
    phi, _, _ = load(); P = phi[i].reshape(6, 6); T = frame(P); H0 = np.exp(1j * P)
    U0 = hc_roots([H0], [i])[i]; n = len(U0)
    K = rng.normal(size=(6, 6)) + 1j * rng.normal(size=(6, 6))
    Hc = {}
    def Hpure(e):
        key = tuple(np.round(e, 15))
        if key not in Hc: Hc[key] = np.exp(1j * chart(P, T, e)[0])
        return Hc[key]
    # samples: half on the sphere, half inside; plus the centre
    E = [np.zeros(4)]
    for s in range(nsamp):
        e = rng.normal(size=4); e *= rho / np.linalg.norm(e) * (1 if s % 2 == 0 else rng.uniform() ** 0.25); E.append(e)
    E = np.array(E)
    # continuation (detour: H o exp(0.03 sin(pi t) K) avoids exact fold collisions on real segments)
    data = [[None] * len(E) for _ in range(n)]; fails = np.zeros(n, int)
    for a in range(n): data[a][0] = (LOG, U0[a])
    for s in range(1, len(E)):
        e = E[s]; nr = np.linalg.norm(e)
        def Hdet(x, e=e, nr=nr):
            t = np.linalg.norm(x) / nr if nr > 0 else 0.0
            return Hpure(x) * np.exp(0.03 * math.sin(math.pi * t) * K)
        for a in range(n):
            ch, v, ok = track(LOG, Hdet, U0[a], e)
            if ok: data[a][s] = (ch, v)
            else: fails[a] += 1
    # chart per root: the tau chart of its (most common) escape divisor if it ever escaped, else log
    charts = []
    for a in range(n):
        keys = [d[0].key for d in data[a] if d is not None and d[0].kind == 'tau']
        if keys:
            k = max(set(keys), key=keys.count); charts.append(TauChart(list(k[1])))
        else: charts.append(LOG)
    # values in the chosen chart, models
    models = []; merr = np.zeros(n); vals = []
    for a in range(n):
        ch = charts[a]; ref = ch.from_z(LOG.to_z(U0[a])) if ch.kind == 'tau' else U0[a]
        if ch.kind == 'tau':
            # centre value: re-solve in the tau chart
            ref, _ = newton(ch, H0, ref)
        V = np.full((len(E), 5), np.nan + 0j); V[0] = ref
        for s in range(1, len(E)):
            d = data[a][s]
            if d is None: continue
            c0, v = d
            if c0.key == ch.key: w = v
            else:
                z = c0.to_z(v) if c0.kind == 'log' or abs(v[0]) > 1e-300 else None
                if z is None: continue
                w = ch.from_z(z)
            # unwrap imaginary parts of log coordinates relative to the centre value
            lp = np.ones(5, bool) if ch.kind == 'log' else np.r_[False, np.ones(4, bool)]
            w = np.where(lp, w.real + 1j * (ref.imag + np.angle(np.exp(1j * (w.imag - ref.imag)))), w)
            V[s] = w
        vals.append(V)
        ok = ~np.isnan(V[:, 0])
        c = fit(E[ok], V[ok]); 
        if ch.kind == 'log' and np.max(abs(V[ok].real)) < 1e-8: c = c.imag * 1j           # torus root: exactly imaginary model
        models.append(c)
        merr[a] = np.max(abs(evalm(c, E[ok]) - V[ok]))
    # torus roots (at the centre)
    torus = np.array([charts[a].kind == 'log' and np.max(abs(U0[a].real)) < 1e-9 for a in range(n)])
    # sampled Krawczyk / Kantorovich test per root
    n3 = N3C * rho ** 3
    kraw = []
    for a in range(n):
        ok = ~np.isnan(vals[a][:, 0]); k = kraw_root(charts[a], Hpure, E[ok], models[a], rng, n3); k['fails'] = int(fails[a]); kraw.append(k)
    okk = np.array([k['ok'] for k in kraw])
    if verbose:
        for a in range(n):
            if not okk[a]:
                sp = np.ptp(np.concatenate([[0.0], U0[a].real]))
                print(f"  fail root {a}: chart {charts[a].key} spread0 {sp:.2f} merr {merr[a]:.4f} " + ' '.join(f"{k}={v:.3g}" for k, v in kraw[a].items() if k not in ('ok', 'why')) + f" why {kraw[a]['why']}", flush=True)
    # dense model sampling for disjointness, torus distance, edges
    Ed = rng.normal(size=(1500, 4)); Ed *= (rho * rng.uniform(size=(1500, 1)) ** 0.25) / np.linalg.norm(Ed, axis=1, keepdims=True)
    Ed = np.vstack([E, Ed])
    Md = [evalm(c, Ed) for c in models]
    r_of = np.array([k['r'] if k['ok'] else np.nan for k in kraw])
    # disjointness within the same chart
    overlap = []
    for key in set(ch.key for ch in charts):
        idx = [a for a in range(n) if charts[a].key == key and okk[a]]
        lp = np.ones(5, bool) if key[0] == 'log' else np.r_[False, np.ones(4, bool)]
        for x, y in itertools.combinations(idx, 2):
            d = dmax(Md[x], Md[y], lp).min()
            if d <= r_of[x] + r_of[y]: overlap.append((x, y, d))
    # off-torus roots must stay off the torus
    offbad = []
    for a in range(n):
        if torus[a] or not okk[a]: continue
        if charts[a].kind == 'log':
            td = np.max(abs(Md[a].real), axis=1).min()
            if td <= r_of[a]: offbad.append(a)
    # clusters: failed roots grouped with their nearest partner (at the centre, in the log chart)
    failed = [a for a in range(n) if not okk[a]] + sorted(set(a for x, y, d in overlap for a in (x, y))) + offbad
    failed = sorted(set(failed))
    clusters = []
    if failed:
        g = nx.Graph(); g.add_nodes_from(failed)
        for a in failed:
            # nearest root over the samples (log coordinates)
            best, bd = None, np.inf
            for b in range(n):
                if b == a or charts[b].key != charts[a].key: continue
                lp = np.ones(5, bool) if charts[a].kind == 'log' else np.r_[False, np.ones(4, bool)]
                d = dmax(Md[a], Md[b], lp).min()
                if d < bd: best, bd = b, d
            if best is not None and bd < 0.6: g.add_edge(a, best)
        clusters = [sorted(c) for c in nx.connected_components(g)]
    # cluster feasibility (assumed 2-root certificate): pair, radius of the pair about its midpoint model <= 0.3
    cl_info = []
    for cl in clusters:
        if len(cl) != 2 or charts[cl[0]].kind != 'log':
            cl_info.append(dict(members=cl, ok=False, why='size %d / chart %s' % (len(cl), charts[cl[0]].key[0]))); continue
        a, b = cl; mid = 0.5 * (Md[a] + Md[b]); rad = 0.5 * np.max(abs(Md[a] - Md[b])) + max(merr[a], merr[b])
        cl_info.append(dict(members=cl, ok=bool(rad <= 0.3), rad=float(rad), mid=mid, torus=bool(torus[a] or torus[b]
                            or np.max(abs(mid.real)) < 1e-6)))
    coverage_ok = all(c['ok'] for c in cl_info) and not any(len(c['members']) == 1 for c in cl_info)
    # T1 graph
    nodes = []
    for a in range(n):
        if torus[a] and okk[a] and not any(a in c['members'] for c in cl_info):
            nodes.append((f'r{a}', np.exp(1j * np.concatenate([np.zeros((len(Ed), 1)), Md[a].imag], 1)), r_of[a]))
    for c in cl_info:
        if c.get('torus'):
            nodes.append((f'c{c["members"]}', np.exp(1j * np.concatenate([np.zeros((len(Ed), 1)), c['mid'].imag], 1)), c['rad']))
    g = nx.Graph(); g.add_nodes_from(range(len(nodes))); margins = []
    for x, y in itertools.combinations(range(len(nodes)), 2):
        ip = np.abs(np.einsum('nj,nj->n', nodes[x][1].conj(), nodes[y][1])).min()
        lb = ip - 5 * (nodes[x][2] + nodes[y][2])
        margins.append(lb)
        if lb <= 0: g.add_edge(x, y)
    w = max((len(c) for c in nx.find_cliques(g)), default=1)
    ntau = sum(1 for ch in charts if ch.kind == 'tau')
    if verbose:
        tt = [a for a in range(n) if torus[a] and okk[a]]
        sw = np.array([np.max(abs(Md[a] - Md[a][0]).max(1)) for a in tt]); rm = np.array([kraw[a]['rmax'] for a in tt])
        print(f"  torus roots: rmax median {np.median(rm):.3f} min {rm.min():.3f}; sweep median {np.median(sw):.3f} max {sw.max():.3f}; rmax/sweep min {(rm/sw).min():.2f} median {np.median(rm/sw):.2f}", flush=True)
    res = dict(rec=i, rho=rho, roots=n, torus=int(torus.sum()), tau_chart=ntau, kraw_fail=int((~okk).sum()),
               fail_why={k: sum(1 for x in kraw if not x['ok'] and x['why'] == k) for k in ('kappa', 'disc', 'singular')},
               overlaps=len(overlap), offbad=len(offbad), clusters=[(c['members'], c['ok'], round(c.get('rad', -1), 3)) for c in cl_info],
               coverage=bool(coverage_ok), r_med=float(np.nanmedian(r_of[torus])), r_max=float(np.nanmax(r_of[torus])) if torus.any() else None,
               merr_med=float(np.median(merr)), merr_max=float(merr.max()), track_fail_roots=int((fails > 0).sum()),
               nodes=len(nodes), edges=g.number_of_edges(), clique=w, T1=bool(coverage_ok and w < 6), secs=round(time.time() - t0, 1))
    if keep: res['_state'] = dict(P=P, T=T, U0=U0, charts=charts, models=models, kraw=kraw, E=E, vals=vals, torus=torus, Hpure=Hpure)
    return res

if __name__ == '__main__':
    rho = float(sys.argv[1]); ns = int(sys.argv[2]); DEG = int(sys.argv[3]); CDEG = int(sys.argv[4])
    for i in sys.argv[5:]:
        r = analyse(int(i), rho, ns, verbose=True)
        print(json.dumps(r), flush=True)
