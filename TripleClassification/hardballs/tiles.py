"""Weak-plane tiles for one reference completion (PROOFS.md, T1-T3; UNREVIEWED).

Moving coordinates as in P1: y = y* + Ks z_s + Kw z_w + V u, with [Ks Kw] = ET and V = ET Lam. Every zero of every
pattern carried by the reference has |z_s| <= S and |z_w| <= W (stage 1 / E1). The weak disc |z_w| <= W is covered
by square tiles. For a tile (disc |z_w - c| <= h):

  bound     T1: the strong bootstrap of the annulus return (LOCAL_TILE_PROOF.md section 2-3): |z_s - s0| <= d;
  EXCLUDED  T2: a full-residual separating functional nu F > 0 on the tile (LOCAL_TILE_PROOF.md section 4);
  CLASSIFIED T3: the native moving contraction (N6, or P2) on K = y_c + V u + e with |e| <= |Ks| d + |Kw| h.

`bound` and `exclude` follow annulus_work/check_annulus.py (Context.tile), using its vendored modules scalar.py and
strong_core.py unchanged. Floats propose s0, nu and flattenings; every acceptance is an Arb strict inequality.
"""
import math
import numpy as np
from flint import arb, arb_mat
import witness as W
import moving as MV
import scalar as SCAL
import strong_core as CORE


def numerical(q, y):
    """F, F_H, F_K in floats (proposals only), as check_annulus.numerical."""
    h = np.exp(1j * q.reshape(6, 6)); k = np.exp(1j * y.reshape(6, 6)); hk = h.conj().T @ k; g = k.conj().T @ k
    f = np.r_[[g[a, b].real for a, b in W.PAIRS], [g[a, b].imag for a, b in W.PAIRS], (np.abs(hk) ** 2 / 6 - 1).ravel()]
    jh = np.zeros((66, 36)); jk = np.zeros((66, 36))
    for j, (a, b) in enumerate(W.PAIRS):
        z = k[:, a].conj() * k[:, b]
        jk[j, 6 * np.arange(6) + a] = z.imag; jk[j, 6 * np.arange(6) + b] = -z.imag
        jk[15 + j, 6 * np.arange(6) + a] = -z.real; jk[15 + j, 6 * np.arange(6) + b] = z.real
    for a in range(6):
        for b in range(6):
            v = (hk[a, b].conj() * h[:, a].conj() * k[:, b]).imag / 3
            jh[30 + 6 * a + b, 6 * np.arange(6) + a] = v; jk[30 + 6 * a + b, 6 * np.arange(6) + b] = -v
    return f, jh, jk


def shifted_coeff(ex, cs, cw):
    """LOCAL_TILE_PROOF.md (6): strong-block polynomial coefficients at a shifted point."""
    cf = {}
    for (n, k), v in ex['coef'][0].items():
        i, j = n - k, k
        for a in range(i + 1):
            for b in range(j + 1):
                if a + b >= 2: cf[a, b] = cf.get((a, b), arb(0)) + v * math.comb(i, a) * math.comb(j, b) * cs ** (i - a) * cw ** (j - b)
    return cf


def shifted_tail(ex, cs, cw, ds, dw):
    """LOCAL_TILE_PROOF.md (7)."""
    vals = []
    for l in range(180):
        c = ex['ns'][l] * cs + ex['nw'][l] * cw; e = ex['ns'][l] * ds + ex['nw'][l] * dw
        vals.append(sum((c ** (9 - k) * e ** k / (math.factorial(9 - k) * math.factorial(k)) for k in range(2, 10)), arb(0)))
    return W.C.norm([sum((ex['amp'][i][l] * vals[l] for l in range(180)), arb(0)) for i in range(28)])


class Reference:
    def __init__(self, shared, R, wcap):
        ex = shared['centre']; self.shared, self.ex, self.model = shared, ex, shared['model']
        self.q, self.y, self.B = shared['q'], shared['y'], shared['B']
        ET = W.E * shared['T']; self.Ks, self.Kw = W.sub(ET, range(36), range(28)), W.sub(ET, range(36), range(28, 30))
        self.Bs = W.sub(self.B, range(28), range(66)); self.V = ex['ET_Lam']; self.r = W.up(self.model['r'])
        self.D, self.eH = ex['D'], ex['eH']
        self.bn, self.kn, self.wn, self.vn = (W.spectral(m) for m in (self.Bs, self.Ks, self.Kw, self.V))
        self.ls, self.lw = ex['lam_a']
        self.S, self.W = W.up(R + self.ls * self.r), W.up(wcap + self.lw * self.r)
        self.f = dict(q=W.Z.mid_np(self.q)[:, 0], y=W.Z.mid_np(self.y)[:, 0], Ks=W.Z.mid_np(self.Ks), Kw=W.Z.mid_np(self.Kw),
                      Bs=W.Z.mid_np(self.Bs), U=W.Z.mid_np(self.model['U']), V=W.Z.mid_np(self.V))

    def centre(self, c):
        """s0: a numerical solve of the strong equations at weak position c (proposal)."""
        f, s = self.f, np.zeros(28)
        for _ in range(12):
            F, _, jk = numerical(f['q'], f['y'] + f['Ks'] @ s + f['Kw'] @ c)
            step = np.linalg.solve(f['Bs'] @ jk @ f['Ks'], f['Bs'] @ F); s -= step
            if np.linalg.norm(step) < 1e-13: break
        return s

    def bound(self, c, h):
        """T1: every zero with |z_w - c| <= h has |z_s - s0| <= d (check_annulus Context.tile, bootstrap part)."""
        c = np.asarray(c, float); s0 = self.centre(c)          # h: an Arb upper bound of the tile's disc radius
        cs, cw = W.C.norm([arb(float(v)) for v in s0]), W.C.norm([arb(float(v)) for v in c])
        y = self.y + self.Ks * W.Z.mat(s0[:, None]) + self.Kw * W.Z.mat(c[:, None])
        F, JH, JK = SCAL.point(self.q, y)
        bsF, bsH, bsK = self.Bs * F, self.Bs * JH, self.Bs * JK
        ju = bsH * self.model['U'] + bsK * self.V; kpar = self.vn * self.r + self.wn * h
        forcing = W.C.norm(bsF.entries()) + W.spectral(ju) * self.r + W.spectral(bsK * self.Kw) * h + W.spectral(bsH) * self.eH
        forcing += self.bn * (arb(6).sqrt() * self.D ** 2 + 2 * self.D * kpar)
        beta = W.spectral(bsK * self.Ks - W.Z.eye(28)) + 2 * self.bn * self.D * self.kn
        coeff = shifted_coeff(self.ex, cs, cw); ds0, dw = self.ls * self.r, h + self.lw * self.r

        def poly(d):
            ds = d + ds0
            return sum((v * ds ** a * dw ** b for (a, b), v in coeff.items()), arb(0)) + shifted_tail(self.ex, cs, cw, ds, dw)

        def iterate(p, d):
            for _ in range(24):
                new = W.up(forcing + beta * d + p(d))
                if not new < d: break
                d = new
            return d
        initial = W.up(self.S + cs); d = iterate(poly, initial)
        if not d < arb('.04') and h < arb('.05'):    # the pure-strong rescue of LOCAL_TILE_PROOF.md (9); big tiles split
            core = CORE.build(self.q, y, self.Ks, self.Bs)

            def poly2(d):
                ds = d + ds0; cross = arb(0)
                for (a, b), v in coeff.items():
                    if b: cross += v * ds ** a * dw ** b
                    else: cross += v * sum((math.comb(a, j) * d ** j * ds0 ** (a - j) for j in range(a)), arb(0))
                return CORE.poly(core, d) + cross + 2 * shifted_tail(self.ex, cs, cw, ds, dw)
            d = iterate(poly2, initial)
        return dict(c=c, h=h, s0=s0, y=y, d=d, F=(F, JH, JK))

    def exclude(self, t):
        """T2: a separating functional proposed in floats, accepted iff its Arb lower bound is positive."""
        F, JH, JK = t['F']; h, d = t['h'], t['d']
        f = W.Z.mid_np(F)[:, 0]; js = W.Z.mid_np(JK * self.Ks); ju = W.Z.mid_np(JH * self.model['U'] + JK * self.V)
        P = np.eye(66) - js @ np.linalg.pinv(js); fp, ap = P @ f, P @ ju
        uu = np.linalg.lstsq(ap, -fp, rcond=None)[0]; rr = float(self.r)
        if np.linalg.norm(uu) > rr: uu *= rr / np.linalg.norm(uu)
        for nu in (fp, fp + ap @ uu):
            n = np.linalg.norm(nu)
            if n < 1e-14: continue
            an = W.Z.mat((nu / n)[None, :])
            out = SCAL.separator(self.q, t['y'], an, self.model['U'], self.V, self.Ks, self.Kw, self.r, d, h, self.eH, point_data=t['F'])
            if out['lower'] > 0: return True
        return False

    def classify(self, t):
        """T3: native moving contraction on K = y_c + V u + e, |e| <= |Ks| d + |Kw| h (each column at most that)."""
        eps = W.up(self.kn * t['d'] + self.wn * t['h'])
        if not eps < arb('0.03'): return None
        yy = W.Z.mid_np(t['y'])[:, 0].reshape(6, 6)               # proposal for the native centre (any v0 is valid)
        exact = t['y'] - W.Z.mat(yy.reshape(36, 1)); eps = W.up(eps + W.C.norm(exact.entries()))
        prepared = {c: dict(model=self.model, v0=W.arb_mat([[arb(yy[a, c])] for a in range(6)]),
                            T=W.arb_mat([[self.V[6 * a + c, j] for j in range(4)] for a in range(6)])) for c in range(6)}
        row = MV.classify(self.model, prepared, {c: dict(epsilon=eps) for c in range(6)}, list(range(6)), k_total=eps)
        return row if row['status'] == 'CERTIFIED' else None

    def cover(self, hmin=0.004, hcls=0.012, budget=4000):
        """Quadtree of square tiles over |z_w| <= W. Returns (counts, per-tile log)."""
        a0 = float(self.W.upper()); stack, log = [((0.0, 0.0), a0)], []      # a0 >= W; squares are exact dyadic
        while stack:
            (cx, cy), a = stack.pop(); h = W.up(arb(a) * arb(2).sqrt())       # the disc |z_w - c| <= h holds the square
            if (arb(cx) ** 2 + arb(cy) ** 2).sqrt() - h > self.W: log.append(('outside', (cx, cy), a)); continue
            if len(log) % 200 == 0 and len(log) != getattr(self, '_shown', -1): self._shown = len(log); print('  tiles', len(log), {k: sum(1 for e in log if e[0] == k) for k in ('EXCLUDED', 'CLASSIFIED', 'OPEN')}, flush=True)
            t = self.bound((cx, cy), h)
            if self.exclude(t): log.append(('EXCLUDED', (cx, cy), a)); continue
            if h < hcls:
                row = self.classify(t)
                if row: log.append(('CLASSIFIED', (cx, cy), a, row['q'][:12])); continue
            if h < hmin or len(log) > budget: log.append(('OPEN', (cx, cy), a)); continue
            stack += [((cx + sx * a / 2, cy + sy * a / 2), a / 2) for sx in (-1, 1) for sy in (-1, 1)]
        counts = {}
        for e in log: counts[e[0]] = counts.get(e[0], 0) + 1
        return counts, log


def recentred(ref, c, h):
    """T2 at a shifted reference: exclude every zero with |z_w - c| <= h using its own y_c = y* + Kw c (binary64), B
    re-proposed at y_c and its own Lam'. Coordinates relative to it: y = y_c + ET z'' + ET Lam' u, so
    z'' = z + (Lam - Lam') u - Ti (y_c - y* - Kw c) - (0, c); the strong and weak radii below bound z'' exactly."""
    p, model = ref.shared['prop'], ref.model; e = W.Z.mid_np(W.E)
    yc = p['y'] + e @ p['T'] @ np.r_[np.zeros(28), c]
    jac = np.array([(W.residual(ref.f['q'], yc + d) - W.residual(ref.f['q'], yc - d)) / 2e-7 for d in np.eye(36) * 1e-7]).T
    new = W.prepare(model, dict(y=yc, T=p['T'], B=np.linalg.pinv(jac @ e @ p['T'])))
    sub = Reference(new, ref.S, ref.W)                       # radii are overridden below
    dL = ref.ex['Lam'] - new['centre']['Lam']; Ti = ref.shared['Ti']
    # the rounding of y_c, in coordinates (column means are absorbed by the column-phase convention, PROOFS.md P1)
    delta = Ti * W.E.transpose() * (new['y'] - ref.y - ref.Kw * W.Z.mat(np.array(c)[:, None]))
    ds = W.up(W.spectral(W.sub(dL, range(28), range(4))) * ref.r + W.C.norm([delta[i, 0] for i in range(28)]))
    dw = W.up(W.spectral(W.sub(dL, range(28, 30), range(4))) * ref.r + W.C.norm([delta[i, 0] for i in range(28, 30)]))
    sub.S, sub.W = W.up(ref.S + ds), W.up(h + dw)
    t = sub.bound((0.0, 0.0), sub.W)
    return sub.exclude(t), float(t['d'].upper())

