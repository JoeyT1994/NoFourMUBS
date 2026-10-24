"""First-order Taylor models over a box z in prod_j [-h_j, h_j] (4 variables), for the seed-ellipsoid remainder.

A TM matrix is (C, G, Rho): every entry is  C + sum_j G_j z_j + e  with |e| <= Rho  for every z in the box.
Products keep the linear parts exactly and push the quadratic terms into Rho, so there is no wrapping in the linear
term.  Prototype: centres and coefficients are binary64; every Rho is inflated by REL and ABS to absorb rounding,
which is plausible but not a proof (a certified version would carry the same algebra in Arb).
"""
import numpy as np

REL, ABS = 1e-9, 1e-14


class TM:
    def __init__(self, C, G, Rho, h):
        self.C = np.asarray(C, complex); self.G = np.asarray(G, complex); self.Rho = np.asarray(Rho, float); self.h = h

    def L(self):
        """Bound on |sum_j G_j z_j| over the box, entrywise."""
        return (np.abs(self.G) * self.h).sum(-1)

    def bound(self):
        return np.abs(self.C) + self.L() + self.Rho

    # ------------------------------------------------------------------ arithmetic
    def __add__(self, o):
        if isinstance(o, TM): return TM(self.C + o.C, self.G + o.G, (self.Rho + o.Rho) * (1 + REL) + ABS, self.h)
        return TM(self.C + o, self.G, self.Rho, self.h)

    def __neg__(self): return TM(-self.C, -self.G, self.Rho, self.h)
    def __sub__(self, o): return self + (-o if isinstance(o, TM) else -np.asarray(o))

    def scale(self, a):
        a = np.asarray(a)
        return TM(a * self.C, a[..., None] * self.G if a.ndim else a * self.G, np.abs(a) * self.Rho * (1 + REL) + ABS, self.h)

    def conj(self): return TM(self.C.conj(), self.G.conj(), self.Rho, self.h)
    def T(self): return TM(self.C.T, np.transpose(self.G, (1, 0, 2)), self.Rho.T, self.h)
    def H(self): return self.conj().T()

    def __matmul__(self, o):
        if not isinstance(o, TM):                      # point matrix on the right
            o = np.asarray(o, complex)
            return TM(self.C @ o, np.einsum('ijl,jk->ikl', self.G, o), (self.Rho @ np.abs(o)) * (1 + REL) + ABS, self.h)
        C = self.C @ o.C
        G = np.einsum('ij,jkl->ikl', self.C, o.G) + np.einsum('ijl,jk->ikl', self.G, o.C)
        xa = self.L() + self.Rho; xb = o.L() + o.Rho
        Rho = np.abs(self.C) @ o.Rho + self.Rho @ np.abs(o.C) + xa @ xb
        return TM(C, G, Rho * (1 + REL) + ABS, self.h)

    def rmatmul_point(self, A):
        A = np.asarray(A, complex)
        return TM(A @ self.C, np.einsum('ij,jkl->ikl', A, self.G), (np.abs(A) @ self.Rho) * (1 + REL) + ABS, self.h)

    def mul(self, o):
        """Entrywise product."""
        C = self.C * o.C; G = self.C[..., None] * o.G + o.C[..., None] * self.G
        Rho = np.abs(self.C) * o.Rho + np.abs(o.C) * self.Rho + (self.L() + self.Rho) * (o.L() + o.Rho)
        return TM(C, G, Rho * (1 + REL) + ABS, self.h)


def const(C, h):
    C = np.asarray(C, complex); return TM(C, np.zeros(C.shape + (4,), complex), np.zeros(C.shape), h)


def linear(c, g, h):
    """Real/complex vector c + g z (g: n x 4)."""
    c = np.asarray(c, complex); return TM(c, np.asarray(g, complex), np.zeros(c.shape), h)


def exp_i(phi):
    """e^{i phi} for a real TM phi: e^{ic}(1 + i(g z + e) + R), |R| <= (L + rho)^2 / 2."""
    e = np.exp(1j * phi.C.real)
    x = phi.L() + phi.Rho
    return TM(e, 1j * e[..., None] * phi.G, (phi.Rho + 0.5 * x * x) * (1 + REL) + ABS, phi.h)


def inv3(Gm):
    """Inverse of a 3 x 3 TM matrix near its centre.  With A = C^-1 and X = A (G - C) (no constant part),
    G^-1 = A - X A + X^2 (I + X)^-1 A,  ||X^2 (I+X)^-1 A|| <= q^2 ||A|| / (1 - q),  q = ||X||_inf."""
    A = np.linalg.inv(Gm.C)
    d = TM(np.zeros_like(Gm.C), Gm.G, Gm.Rho, Gm.h)
    X = d.rmatmul_point(A)
    q = X.bound().sum(1).max()
    if q >= 1: return None
    nA = np.abs(A).sum(1).max()
    tail = q * q * nA / (1 - q)
    lin = X @ A                                        # X A (linear part plus its own remainder)
    return TM(A - lin.C, -lin.G, (lin.Rho + tail) * (1 + REL) + ABS, Gm.h)


def arg_near(D, P):
    """arg of a complex TM with |C| > its variation, unwrapped to the branch nearest P (entrywise):
    arg(c(1+u)) = arg c + Im u + Im R,  u = (g z + e)/c,  |Im R| <= |u|^2 / (2 (1 - |u|)) + (part of e)."""
    c = D.C; absc = np.abs(c)
    ub = (D.L() + D.Rho) / absc
    if np.any(ub >= 0.5): return None
    a = np.angle(c); a = a + 2 * np.pi * np.round((P - a) / (2 * np.pi))
    G = (D.G / c[..., None]).imag
    Rho = D.Rho / absc + ub * ub / (2 * (1 - ub))
    return TM(a, G, Rho * (1 + REL) + ABS, D.h)


def entry(t, idx):
    return TM(t.C[idx], t.G[idx], t.Rho[idx], t.h)


def assemble(entries, shape, h):
    """Matrix TM from a row-major list of scalar TMs (or numbers)."""
    C = np.zeros(shape, complex); G = np.zeros(shape + (4,), complex); R = np.zeros(shape)
    for k, e in enumerate(entries):
        idx = np.unravel_index(k, shape)
        if isinstance(e, TM): C[idx], G[idx], R[idx] = e.C, e.G, e.Rho
        else: C[idx] = e
    return TM(C, G, R, h)


def re(t): return TM(t.C.real.astype(complex), t.G.real.astype(complex), t.Rho, t.h)
def im(t): return TM(t.C.imag.astype(complex), t.G.imag.astype(complex), t.Rho, t.h)
