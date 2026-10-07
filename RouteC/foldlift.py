"""FoldLift prototype: exclude a seed box near the symmetric R=0 curve from D0 by a fold root certificate.

Unknowns x in R^21: phases of the dephased H outside the first row/column and the 2x2 corner block.
Equations F(x, theta) = 0: real and imaginary parts of (H H^*)_{pq}, p<q (30 real equations).
Near the curve the completion is a fold: J = dF/dx has one near-zero singular value with right vector v.
Tube: x = x0 + s v + V' w,  s in S, w in W (V' = remaining right singular vectors).
Reduced system Phi(w; theta, s) = U'^T F(x0 + s v + V' w, theta) (20 x 20), certified by a parametric Krawczyk
step for every (theta, s) in Theta x S_k.  Then over the whole tube, a competing corner has R > R(E).
"""
import json, sys, itertools, math
import numpy as np
from scipy.optimize import least_squares
from flint import arb, acb, ctx
ctx.prec = 128
FREE = [(i, j) for i in range(1, 6) for j in range(1, 6) if not (i < 3 and j < 3)]
PAIRS = [(p, q) for p in range(6) for q in range(p + 1, 6)]
ROWS3 = list(itertools.combinations(range(6), 3))

# ---------------- floating point helpers ----------------
def Hf(x, th):
    H = np.ones((6, 6), complex); H[1:3, 1:3] = np.exp(1j * np.asarray(th).reshape(2, 2))
    for k, (i, j) in enumerate(FREE): H[i, j] = np.exp(1j * x[k])
    return H
def Ff(x, th):
    G = Hf(x, th) @ Hf(x, th).conj().T
    return np.array([G[p, q].real for p, q in PAIRS] + [G[p, q].imag for p, q in PAIRS])
def Jf(x, th):
    H = Hf(x, th); J = np.zeros((30, 21))
    for r, (p, q) in enumerate(PAIRS):
        for m, (i, j) in enumerate(FREE):
            d = 0j
            if i == p: d += 1j * H[p, j] * np.conj(H[q, j])
            if i == q: d += -1j * H[p, j] * np.conj(H[q, j])
            J[r, m], J[r + 15, m] = d.real, d.imag
    return J
def Rf(M):
    M = M / M[:, :1]; M = M / M[:1, :]
    G = 6 * np.eye(3) - M @ M.conj().T; s, t, r = G[1, 0], G[2, 0], G[2, 1]
    X, Y, Z = abs(s) ** 2, abs(t) ** 2, abs(r) ** 2; p = X + Y + Z; J = 2 * (s * r * np.conj(t)).real
    g = 27 - 3 * p + J; eta = 9 - p + J; chi = X * Y + X * Z + Y * Z - X * Y * Z - (p - 9) * (p - 18) + (p - 15) * J
    return 4 * g * g * eta - chi * chi

# ---------------- interval helpers ----------------
def ball(c, r): return arb(c, r)
def eix(a): return acb(arb(0), a).exp()     # exp(i a) for arb a
def Hi(x, th):
    H = [[acb(1) for _ in range(6)] for _ in range(6)]
    H[1][1], H[1][2], H[2][1], H[2][2] = eix(th[0]), eix(th[1]), eix(th[2]), eix(th[3])
    for k, (i, j) in enumerate(FREE): H[i][j] = eix(x[k])
    return H
def Fi(x, th):
    H = Hi(x, th); out_r, out_i = [], []
    for p, q in PAIRS:
        g = sum((H[p][k] * H[q][k].conjugate() for k in range(6)), acb(0)); out_r.append(g.real); out_i.append(g.imag)
    return out_r + out_i
def Ji(x, th):
    H = Hi(x, th); J = [[arb(0)] * 21 for _ in range(30)]
    I = acb(0, 1)
    for r, (p, q) in enumerate(PAIRS):
        for m, (i, j) in enumerate(FREE):
            d = acb(0)
            if i == p: d += I * H[p][j] * H[q][j].conjugate()
            if i == q: d -= I * H[p][j] * H[q][j].conjugate()
            J[r][m], J[r + 15][m] = d.real, d.imag
    return J
def Ri(M):
    M = [[M[a][b] / M[a][0] for b in range(3)] for a in range(3)]
    M = [[M[a][b] / M[0][b] for b in range(3)] for a in range(3)]
    def G(a, b): return (6 if a == b else 0) - sum((M[a][k] * M[b][k].conjugate() for k in range(3)), acb(0))
    s, t, r = G(1, 0), G(2, 0), G(2, 1)
    X, Y, Z = s.abs_lower() ** 2 if False else (s * s.conjugate()).real, (t * t.conjugate()).real, (r * r.conjugate()).real
    p = X + Y + Z; Jv = 2 * (s * r * t.conjugate()).real
    g = 27 - 3 * p + Jv; eta = 9 - p + Jv; chi = X * Y + X * Z + Y * Z - X * Y * Z - (p - 9) * (p - 18) + (p - 15) * Jv
    return 4 * g * g * eta - chi * chi
def matvec(A, v): return [sum((A[i][k] * v[k] for k in range(len(v))), arb(0)) for i in range(len(A))]
def fl(A): return np.array([[float(a.mid()) for a in row] for row in A])

# ---------------- numerical reference ----------------
def complete(th, x0=None, starts=200, seed=0):
    rng = np.random.default_rng(seed)
    for k in range(starts):
        st = x0 + 1e-3 * rng.normal(size=21) if (x0 is not None and k < 20) else rng.uniform(-np.pi, np.pi, 21)
        r = least_squares(lambda x: Ff(x, th), st, xtol=1e-15, ftol=1e-15, gtol=1e-15, max_nfev=3000, method='lm')
        if np.abs(r.fun).max() < 1e-11: return r.x
    return None

def wrap(d): return (d + np.pi) % (2 * np.pi) - np.pi

def certify_box(row, th_curve, out=print, nsub=8, wrad=None):
    c = [float(eval(x.replace('/', '/1/'.replace('1/', '')))) for x in []]  # placeholder (unused)
    from fractions import Fraction as Q
    cen = [Q(x) for x in row['centers']]; rad = [Q(x) for x in row['radii']]
    thc = np.array([float(x) for x in cen])
    Theta = [arb(float(a), float(r) * (1 + 1e-12) + 1e-30) for a, r in zip(cen, rad)]
    # fold reference at the curve point
    x0 = complete(np.array(th_curve))
    if x0 is None: return dict(ok=False, reason='no_reference_completion')
    J0 = Jf(x0, th_curve); U, S, Vt = np.linalg.svd(J0)
    v, Vp, Up = Vt[20], Vt[:20].T, U[:, :20]
    out('fold reference: smallest singular values', S[-3:])
    # s-range of the two sheets over sampled seeds of the box
    rng = np.random.default_rng(1); svals = []
    for _ in range(40):
        th = thc + np.array([float(r) for r in rad]) * rng.uniform(-1, 1, 4)
        for sgn in (+1, -1):
            xs = least_squares(lambda x: Ff(x, th), x0 + sgn * 1e-3 * v, xtol=1e-15, ftol=1e-15, gtol=1e-15, max_nfev=3000, method='lm')
            if np.abs(xs.fun).max() < 1e-11: svals.append(float(v @ wrap(xs.x - x0)))
    smax = 1.5 * max(abs(np.array(svals))) if svals else 1e-3
    out('sampled sheet s-values: min %.3e max %.3e -> S = [-%.3e, %.3e]' % (min(svals), max(svals), smax, smax))
    # parametric Krawczyk on Theta x S_k with W centred at the numerical root of the reduced system at (thc, s_k)
    edges = np.linspace(-smax, smax, nsub + 1); tube = []
    for k in range(nsub):
        s_lo, s_hi = edges[k], edges[k + 1]; s_mid = 0.5 * (s_lo + s_hi)
        # numerical centre w~ at (thc, s_mid)
        def red(w): return Up.T @ Ff(x0 + s_mid * v + Vp @ w, thc)
        wt = least_squares(red, np.zeros(20), xtol=1e-15, ftol=1e-15, gtol=1e-15, method='lm').x
        Cm = np.linalg.inv(Up.T @ Jf(x0 + s_mid * v + Vp @ wt, thc) @ Vp)
        S_k = arb(float(s_mid), float(s_hi - s_mid) * (1 + 1e-9))
        rW = wrad if wrad else 1e-4
        ok = False
        for it in range(30):
            W = [arb(float(a), rW) for a in wt]
            xw = [arb(float(x0[m])) + S_k * float(v[m]) + sum((arb(float(Vp[m, n])) * W[n] for n in range(20)), arb(0)) for m in range(21)]
            xt = [arb(float(x0[m])) + S_k * float(v[m]) + sum((arb(float(Vp[m, n])) * float(wt[n]) for n in range(20)), arb(0)) for m in range(21)]
            Fx = Fi(xt, Theta); Phi = [sum((arb(float(Up[r, a])) * Fx[r] for r in range(30)), arb(0)) for a in range(20)]
            Jw = Ji(xw, Theta)
            JV = [[sum((Jw[r][m] * float(Vp[m, b]) for m in range(21)), arb(0)) for b in range(20)] for r in range(30)]
            DPhi = [[sum((arb(float(Up[r, a])) * JV[r][b] for r in range(30)), arb(0)) for b in range(20)] for a in range(20)]
            CPhi = [sum((arb(float(Cm[a, b])) * Phi[b] for b in range(20)), arb(0)) for a in range(20)]
            Mx = [[(1 if a == b else 0) - sum((arb(float(Cm[a, c])) * DPhi[c][b] for c in range(20)), arb(0)) for b in range(20)] for a in range(20)]
            dW = [W[b] - float(wt[b]) for b in range(20)]
            K = [float(wt[a]) - CPhi[a] + sum((Mx[a][b] * dW[b] for b in range(20)), arb(0)) for a in range(20)]
            inside = all(abs(float(K[a].mid()) - float(wt[a])) + float(K[a].rad()) < rW for a in range(20))
            if inside:
                ok = True; break
            need = max(abs(float(K[a].mid()) - float(wt[a])) + float(K[a].rad()) for a in range(20))
            if need > 10 * rW and it > 3: break
            rW = max(rW * 2, 1.1 * need)
        if not ok:
            return dict(ok=False, reason='krawczyk_failed', piece=k, rW=rW)
        tube.append((S_k, wt, rW, K, xw))
        out('piece %d s=[%.2e,%.2e] Krawczyk OK with |W|=%.2e' % (k, s_lo, s_hi, rW))
    # maximality: competing corner over each tube piece vs R(E) upper bound on Theta
    E = [[acb(1)] * 3 for _ in range(3)]; E[1][1], E[1][2], E[2][1], E[2][2] = eix(Theta[0]), eix(Theta[1]), eix(Theta[2]), eix(Theta[3])
    RE = Ri(E); RE_hi = float(RE.mid()) + float(RE.rad())
    Hn = Hf(x0, th_curve)
    cand = sorted(((Rf(Hn[np.ix_(a, b)]), a, b) for a in ROWS3 for b in ROWS3), reverse=True)[:6]
    worst = []
    for S_k, wt, rW, K, xw in tube:
        xK = [arb(float(x0[m])) + S_k * float(v[m]) + sum((arb(float(Vp[m, n])) * K[n] for n in range(20)), arb(0)) for m in range(21)]
        H = Hi(xK, Theta); best = -1e9
        for _, a, b in cand:
            Rc = Ri([[H[i][j] for j in b] for i in a]); lo = float(Rc.mid()) - float(Rc.rad())
            best = max(best, lo)
        worst.append(best)
    out('R(E) upper bound on Theta: %.4g ; competing-corner lower bounds per piece: %s' % (RE_hi, ['%.4g' % w for w in worst]))
    ok = min(worst) > RE_hi
    return dict(ok=ok, reason='fold_tube_non_maximal' if ok else 'maximality_not_shown', RE_hi=RE_hi, competing_lo=min(worst), smax=smax)

if __name__ == '__main__':
    pts = {p['id']: p for p in json.load(open('stuck_points.json'))}
    rows = [json.loads(l) for l in open('hard_boxes.jsonl')]
    for row in rows[:int(sys.argv[1]) if len(sys.argv) > 1 else 1]:
        print('== box', row['id'])
        print(certify_box(row, np.array(pts[row['id']]['theta'])))
