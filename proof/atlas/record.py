"""The tangent frame of a Record centre (exact data for ballrecord.py).

For a real 6x6 phase matrix P (stored binary64 values are exact rationals), Phi(x) is the vector of 30 real coordinates
of the off-diagonal entries of (H o e^{ix})(H o e^{ix})^*, H = e^{iP}, x in R^36.
  * J = Phi'(0), enclosed in Arb from the exact phases;
  * T: a horizontal tangent frame, rational (units 2^-30) and projected exactly onto the horizontal space, either the
    stored integer frame Tint (platform-independent certificates) or the numerical null space of J;
  * G = T^T T (exact) and the exact orthogonal projector P_N onto the horizontal complement N of span T.
Any frame is valid for the lemmas: a bad frame can only make a certificate fail, never pass wrongly.
"""
import itertools, math
from fractions import Fraction as Fr
import numpy as np
import sympy as sp
from flint import arb, arb_mat, ctx
ctx.prec = 80

PAIRS = list(itertools.combinations(range(6), 2))


def opnorm_upper(M):
    r, c = M.nrows(), M.ncols()
    A = arb_mat([[arb(float(M[i, j].mid())) for j in range(c)] for i in range(r)])
    rad = math.sqrt(sum(float(M[i, j].rad()) ** 2 for i in range(r) for j in range(c)))
    B = A.transpose() * A
    rowmax = max(sum(abs(B[i, j]).upper() for j in range(c)) for i in range(c))
    return float(arb(rowmax).sqrt().upper()) + rad * 1.000001


class Record:
    def __init__(self, phi, Tint=None):
        """Tint: optional stored frame (36 x k integers, units 2^-30) -- makes the Record platform-independent.
        Any frame is valid for the lemmas; it is projected exactly onto the horizontal space below."""
        phi = np.asarray(phi, float).reshape(36)
        self.phi = phi
        self.ph_arb = [arb(float(t)) for t in phi]                       # exact float phases
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
        rank = int((s > 1e-6).sum())
        Tn = Hb @ Vt[rank:].T                                               # 36 x (25 - rank)
        self.dimT = Tn.shape[1]
        # rational tangent basis, exactly horizontal
        if Tint is not None:
            Tint = np.asarray(Tint, dtype=np.int64).reshape(36, -1)
            self.dimT = Tint.shape[1]
        else:
            Tint = np.array([[round(float(x) * 2 ** 30) for x in Tn[:, k]] for k in range(self.dimT)], dtype=np.int64).T.reshape(36, self.dimT)
        self.Tint = Tint
        TB = []
        for k in range(self.dimT):
            col = [Fr(int(Tint[e, k]), 2 ** 30) for e in range(36)]
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

    def Phi_arb(self, x):
        re, im = [], []
        for i, j in PAIRS:
            sr = arb(0); si = arb(0)
            for c in range(6):
                ang = self.ph_arb[6 * i + c] - self.ph_arb[6 * j + c] + x[6 * i + c] - x[6 * j + c]
                sr += ang.cos(); si += ang.sin()
            re.append(sr); im.append(si)
        return re + im
