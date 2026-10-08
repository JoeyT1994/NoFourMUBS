"""A Record at an arbitrary centre: every order-6 Hadamard H ~ H0 o e^{iu} (u horizontal, u = v + n, v in the tangent
space T at H0, n in its horizontal complement N, ||u|| <= rho') is enclosed cell by cell, and each cell gets the
per-reference Stage-C certificate (../widetube/reference.py).

Generalises ../widetube/cells.py from the centre F6 to a rational-phase centre H0 (not necessarily exactly Hadamard).
 * Phi(x) = the 30 real coordinates of the off-diagonal entries of (H0 o e^{ix})(H0 o e^{ix})^*, x in R^36.
 * J = Phi'(0) (Arb, exact inputs).  T = numerical null space of J on the horizontal space, rounded to rationals and
   re-projected; P_N = P_hor - Tb (Tb^T Tb)^{-1} Tb^T exactly.  K ~ P_N (J P_N)^+ (floats, used as exact numbers).
 * Fixed-point map on N: T_v(n) = n - K Phi(v + n).  Every Hadamard with u = v + n is a fixed point.
   Its n-derivative is P_N - K Phi'(x) P_N; with the base-independent bound ||Phi''(x)[w, w']|| <= 2 sqrt3 ||w|| ||w'||
   for horizontal w, w' (Cauchy-Schwarz on row differences; sum_{i<j} ||w_i - w_j||^2 = 6 ||w||^2 for horizontal w),
       ||P_N - K Phi'(x) P_N|| <= q0 + ||K|| 2 sqrt3 ||x - x_c||,   q0 = ||P_N - K Phi'(x_c) P_N|| (interval).
 * Cells: as in cells.py (mean-value in v, self-consistent enclosure radius e).
Usage:  python3 record.py CENTRE.json RHO H0 [maxcells]     (pilot: random cells of the ellipsoid)
        python3 record.py run CENTRE.json RHO H0 WORKER NWORKERS OUTDIR
CENTRE.json: {"phi": [36 phases, row-major, dephased]}.
"""
import itertools, json, math, os, sys, time
from fractions import Fraction as Fr
import numpy as np
import sympy as sp
from flint import arb, arb_mat, ctx
ctx.prec = 80
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(HERE, '..', 'widetube'))
import reference as REF

PAIRS = list(itertools.combinations(range(6), 2))
L2_PHI = 2 * math.sqrt(3) * (1 + 1e-12)           # base-independent second-derivative bound


def upper(x): return float(abs(x).upper())


def opnorm_upper(M):
    r, c = M.nrows(), M.ncols()
    A = arb_mat([[arb(float(M[i, j].mid())) for j in range(c)] for i in range(r)])
    rad = math.sqrt(sum(float(M[i, j].rad()) ** 2 for i in range(r) for j in range(c)))
    B = A.transpose() * A
    rowmax = max(sum(abs(B[i, j]).upper() for j in range(c)) for i in range(c))
    return float(arb(rowmax).sqrt().upper()) + rad * 1.000001


class Record:
    def __init__(self, phi):
        phi = np.asarray(phi, float).reshape(36)
        self.phi = phi
        self.ph_arb = [arb(float(t)) for t in phi]                       # exact float phases
        self.H0n = np.exp(1j * phi.reshape(6, 6))
        # Jacobian J (30 x 36): d/dx_ic of e^{i(phi_ic - phi_jc + x_ic - x_jc)} at x = 0 is i a, a = H0_ic conj(H0_jc)
        Jr = [[arb(0)] * 36 for _ in range(30)]
        for p, (i, j) in enumerate(PAIRS):
            for c in range(6):
                ang = self.ph_arb[6 * i + c] - self.ph_arb[6 * j + c]
                ca, sa = ang.cos(), ang.sin()
                for who, sg in ((i, 1), (j, -1)):
                    Jr[p][6 * who + c] += sg * (-sa); Jr[15 + p][6 * who + c] += sg * ca
        self.J = arb_mat(Jr)
        Jn = np.array([[float(self.J[r, c].mid()) for c in range(36)] for r in range(30)])
        # horizontal projector (exact) and a numerical orthonormal horizontal basis
        Ph = [[(1 if a == b else 0) - (Fr(1, 6) if a // 6 == b // 6 else 0) - (Fr(1, 6) if a % 6 == b % 6 else 0) + Fr(1, 36)
               for b in range(36)] for a in range(36)]
        Phn = np.array(Ph, float); w, V = np.linalg.eigh(Phn); Hb = V[:, w > 0.5]          # 36 x 25
        s, Vt = np.linalg.svd(Jn @ Hb)[1:]
        self.sigma = s
        rank = int((s > 1e-6).sum())
        Tn = Hb @ Vt[rank:].T                                               # 36 x (25 - rank)
        self.dimT = Tn.shape[1]
        # rational tangent basis, exactly horizontal
        TB = []
        for k in range(self.dimT):
            col = [Fr(round(float(x) * 2 ** 30), 2 ** 30) for x in Tn[:, k]]
            col = [sum(Ph[a][b] * col[b] for b in range(36)) for a in range(36)]
            TB.append(col)
        self.TB = TB
        self.Tbn = np.array([[float(TB[k][e]) for k in range(self.dimT)] for e in range(36)])
        self.Tb = arb_mat([[arb(TB[k][e].numerator) / TB[k][e].denominator for k in range(self.dimT)] for e in range(36)])
        GT = sp.Matrix([[sum(TB[a][e] * TB[b][e] for e in range(36)) for b in range(self.dimT)] for a in range(self.dimT)])
        self.GT = GT
        TBm = sp.Matrix([[TB[k][e] for k in range(self.dimT)] for e in range(36)])
        PT = TBm * GT.inv() * TBm.T if self.dimT else sp.zeros(36, 36)
        PNr = sp.Matrix(Ph) - PT
        self.PN = arb_mat([[arb(int(sp.fraction(PNr[a, b])[0])) / int(sp.fraction(PNr[a, b])[1]) for b in range(36)] for a in range(36)])
        self.PNn = np.array(PNr.evalf(), float)
        # K ~ P_N (J P_N)^+  (36 x 30), floats taken as exact
        Kn = self.PNn @ np.linalg.pinv(Jn @ self.PNn, rcond=1e-8)
        self.Kn = Kn
        self.K = arb_mat([[arb(float(Kn[r, c])) for c in range(30)] for r in range(36)])
        self.Knorm = opnorm_upper(self.K)
        self.L2 = self.Knorm * L2_PHI
        lam = np.linalg.eigvalsh(np.array(GT, float)) if self.dimT else np.array([1.0])
        self.sqrt_lmax = math.sqrt(lam.max()) * 1.000001
        self.colT = [math.sqrt(sum(float(TB[k][6 * i + c]) ** 2 for i in range(6) for k in range(self.dimT))) * 1.0000001 for c in range(6)]

    # ---------------------------------------------------------------- Phi
    def Phi_n(self, x):
        H = self.H0n * np.exp(1j * np.asarray(x).reshape(6, 6)); G = H @ H.conj().T
        return np.r_[[G[i, j].real for i, j in PAIRS], [G[i, j].imag for i, j in PAIRS]]

    def Phi_arb(self, x):
        re, im = [], []
        for i, j in PAIRS:
            sr = arb(0); si = arb(0)
            for c in range(6):
                ang = self.ph_arb[6 * i + c] - self.ph_arb[6 * j + c] + x[6 * i + c] - x[6 * j + c]
                sr += ang.cos(); si += ang.sin()
            re.append(sr); im.append(si)
        return re + im

    def Phiprime_box(self, X):
        M = [[arb(0)] * 36 for _ in range(30)]
        for p, (i, j) in enumerate(PAIRS):
            for c in range(6):
                ang = self.ph_arb[6 * i + c] - self.ph_arb[6 * j + c] + X[6 * i + c] - X[6 * j + c]
                dre = -ang.sin(); dim = ang.cos()
                for who, sg in ((i, 1), (j, -1)):
                    M[p][6 * who + c] += sg * dre; M[15 + p][6 * who + c] += sg * dim
        return arb_mat(M)

    def fixed_point(self, v, iters=200):
        n = np.zeros(36)
        for _ in range(iters):
            nn = n - self.Kn @ self.Phi_n(v + n)
            if np.abs(nn - n).max() < 1e-15: n = nn; break
            n = nn
        return n

    # ---------------------------------------------------------------- one cell
    def cell(self, yc, h, rho, run_ref=True, work=None):
        d = self.dimT
        vc = self.Tbn @ yc; nh = self.fixed_point(vc); xc = vc + nh
        xa = [arb(float(t)) for t in xc]
        Ph = self.Phi_arb(xa)
        KPhi = self.K * arb_mat([[t] for t in Ph])
        res = math.sqrt(sum(upper(KPhi[e, 0]) ** 2 for e in range(36)))        # ||T_vc(nh) - nh||
        dy = [arb(0, h) for _ in range(d)]
        dv = self.Tb * arb_mat([[t] for t in dy])
        X = [xa[e] + dv[e, 0] for e in range(36)]
        var = opnorm_upper(self.K * (self.Phiprime_box(X) * self.Tb)) * 2 * h * math.sqrt(d) / 2 * 2 / 2  # ||Delta y||_2 <= h sqrt(d)
        var = opnorm_upper(self.K * (self.Phiprime_box(X) * self.Tb)) * h * math.sqrt(d)
        I36 = arb_mat(36, 36)
        q0 = opnorm_upper(self.PN - self.K * self.Phiprime_box(xa) * self.PN)
        r_v = self.sqrt_lmax * h * math.sqrt(d)
        bq = 1 - q0 - self.L2 * r_v; cq = res + var
        disc = bq * bq - 4 * self.L2 * cq
        if not (bq > 0 and disc > 0):
            return dict(ok=False, reason='enclosure', q0=q0, res=res, var=var)
        e = (bq - math.sqrt(disc)) / (2 * self.L2) * (1 + 1e-9) + 1e-15
        qloc = q0 + self.L2 * (e + r_v)
        if not (qloc < 1 and cq <= (1 - qloc) * e):
            return dict(ok=False, reason='enclosure', q0=q0)
        normxc = float(np.linalg.norm(xc))
        out = dict(yc=[float(t) for t in yc], h=h, res=res, var=var, q0=q0, qloc=qloc, e=e, normx=normxc)
        # uniqueness ball: contraction on {||x|| <= rho'} with rho' = max(rho, normxc + r_v + e)
        rho_p = max(rho, normxc + r_v + e)
        qglob = opnorm_upper(self.PN - self.K * self.J * self.PN) + self.L2 * rho_p
        out['qglob'] = qglob
        if qglob >= 1:
            out.update(ok=False, reason='no contraction'); return out
        colv = [self.colT[c] * h * math.sqrt(d) for c in range(6)]
        Kref = self.H0n * np.exp(1j * xc.reshape(6, 6))
        rnd = math.sqrt(6) * math.pi / REF.L
        delta = (max(colv) + e + rnd) / math.sqrt(6) * 1.000001
        out['delta'] = delta
        taus = [t for t in (Fr(1, 24), Fr(1, 20), Fr(1, 16), Fr(1, 12), Fr(1, 10), Fr(1, 8), Fr(3, 20), Fr(1, 6)) if 6 * delta <= float(t)]
        if not taus:
            out.update(ok=False, reason='delta'); return out
        if not run_ref:
            out['ok'] = True; return out
        psi, Kt = REF.table_reference(Kref)
        cen = REF.rays(Kt, starts=4000, want=10 ** 9)
        out['rays'] = len(cen)
        for tau in taus[:2]:
            rep = REF.certify(Kref, tau, tau * Fr(14, 15), work, centres=cen)
            if rep.get('ok'): break
        out.update(ok=bool(rep.get('ok')), ref={k: v for k, v in rep.items() if k in ('ok', 'reason', 'nodes', 'rays', 'tau')})
        if not rep.get('ok'): out['reason'] = 'reference'
        return out

    def meets_ellipsoid(self, yc, h, rho):
        Ga = [[arb(int(sp.fraction(self.GT[a, b])[0])) / int(sp.fraction(self.GT[a, b])[1]) for b in range(self.dimT)] for a in range(self.dimT)]
        Y = [arb(float(yc[k]), h) for k in range(self.dimT)]
        return sum(Ga[a][b] * Y[a] * Y[b] for a in range(self.dimT) for b in range(self.dimT)).lower() <= rho * rho * (1 + 1e-12)


if __name__ == '__main__':
    centre = json.load(open(sys.argv[1])); rho = float(sys.argv[2]); h0 = float(sys.argv[3])
    R = Record(centre['phi'])
    print('dimT', R.dimT, 'sigma (smallest 6)', np.round(np.sort(R.sigma)[:6], 4), '||K|| <=', round(R.Knorm, 4),
          'q(P_N - K J P_N) =', round(opnorm_upper(R.PN - R.K * R.J * R.PN), 6), 'contraction radius ~', round((1 - opnorm_upper(R.PN - R.K * R.J * R.PN)) / R.L2, 3), flush=True)
    rng = np.random.default_rng(0); W = os.path.join(HERE, 'work')
    G = np.array(R.GT, float)
    for k in range(int(sys.argv[4]) if len(sys.argv) > 4 else 3):
        y = rng.normal(size=R.dimT); y /= math.sqrt(y @ G @ y); y *= rho * rng.uniform(0.2, 1.0)
        t0 = time.time(); out = R.cell(y, h0, rho, run_ref=True, work=W)
        print({kk: (round(vv, 5) if isinstance(vv, float) else vv) for kk, vv in out.items() if kk not in ('yc',)}, '%.1fs' % (time.time() - t0), flush=True)
