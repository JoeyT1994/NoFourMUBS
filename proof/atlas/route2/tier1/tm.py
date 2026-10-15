"""Complex Taylor models in 4 real variables zeta over a domain (a ball ||zeta||_2 <= rho or a cube |zeta_i| <= h).

A TM is (c, e): c[..., M] complex coefficients of the monomials of degree <= D (MONO order), e[...] >= 0 a radius:
the function lies in {sum_m c_m zeta^m + z : |z| <= e} for every zeta in the domain.  Arithmetic truncates at degree D
and moves the truncated terms into e using a bound of |zeta^m| over the domain.  Floating point here (the Arb
version is the same with outward rounding); the bounds are exact formulas, nothing is sampled.
"""
import itertools, math
import numpy as np

NV = 4

U = 2.0 ** -53

class Space:
    def __init__(self, D, kind, size, rig=False):
        """kind 'ball' (size = rho) or 'cube' (size = h).  rig=True: every operation also adds a bound for its own
        binary64 rounding error to the radius (standard model |fl(x o y) - x o y| <= u |x o y|, complex products
        <= 3u relative, k-term sums <= (k-1) u sum|terms| (1 + small)); see MILESTONE1.md section 6."""
        self.D = D; self.kind = kind; self.size = size; self.rig = rig
        self.mono = [m for k in range(D + 1) for m in itertools.product(range(k + 1), repeat=NV) if sum(m) == k]
        self.idx = {m: i for i, m in enumerate(self.mono)}; self.M = len(self.mono)
        self.deg = np.array([sum(m) for m in self.mono])
        self.bnd = np.array([self.mbound(m) for m in self.mono]) * (1 + 1e-13)
        # Bombieri weights: for p_k homogeneous of degree k, |p_k(x)| <= sqrt(sum_{|m|=k} m!/k! |c_m|^2) ||x||^k
        # (Cauchy-Schwarz with the symmetric coefficient tensor); ||x|| <= rho (ball) or 2h (cube in 4D)
        self.bw = np.array([math.prod(math.factorial(a) for a in m) / math.factorial(sum(m)) for m in self.mono])
        R = size if kind == 'ball' else 2 * size
        self.degmask = np.array([[1.0 if sum(m) == k else 0.0 for m in self.mono] for k in range(D + 1)])   # (D+1) x M
        self.Rk = np.array([R ** k for k in range(D + 1)]) * (1 + 1e-13)
        I, J, K, I2, J2, B2 = [], [], [], [], [], []
        for a, ma in enumerate(self.mono):
            for b, mb in enumerate(self.mono):
                mc = tuple(x + y for x, y in zip(ma, mb))
                if sum(mc) <= D: I.append(a); J.append(b); K.append(self.idx[mc])
                else: I2.append(a); J2.append(b); B2.append(self.mbound(mc))
        self.I, self.J = np.array(I), np.array(J)
        S = np.zeros((len(I), self.M)); S[np.arange(len(I)), K] = 1; self.S = S
        self.I2, self.J2, self.B2 = np.array(I2, int), np.array(J2, int), np.array(B2)
        # linear coordinate functions
        self.lin = [self.idx[tuple(1 if j == k else 0 for j in range(NV))] for k in range(NV)]

    def mbound(self, m):
        k = sum(m)
        if k == 0: return 1.0
        if self.kind == 'cube': return self.size ** k
        return self.size ** k * math.prod((mi / k) ** (mi / 2) for mi in m if mi)

    # --- constructors
    def const(self, z, shape=None):
        z = np.asarray(z, complex); c = np.zeros(z.shape + (self.M,), complex); c[..., 0] = z
        return c, np.zeros(z.shape)
    def var(self, k):
        c = np.zeros(self.M, complex); c[self.lin[k]] = 1; return c, np.zeros(())

    # --- arithmetic on (c, e) pairs, broadcasting over leading axes
    def bomb(self, c):
        """sum_k Bombieri bound of the degree-k part (polynomial part only)"""
        return np.sqrt((np.abs(c) ** 2 * self.bw) @ self.degmask.T) @ self.Rk
    def bombvec(self, c, axis):
        """bound of the 2-norm over `axis` of a vector of TMs (polynomial part), degree by degree"""
        per = (np.abs(c) ** 2 * self.bw) @ self.degmask.T          # ..., D+1
        return np.sqrt(per.sum(axis=axis)) @ self.Rk
    def absb(self, t):
        c, e = t; r = np.minimum(np.abs(c) @ self.bnd, self.bomb(c)) + e
        return r * (1 + 4 * (self.M + 2) * U) if self.rig else r
    def _pb(self, c): return np.abs(c) @ self.bnd                # polynomial-part bound (no radius)
    def add(self, s, t):
        c = s[0] + t[0]; e = s[1] + t[1]
        if self.rig: e = (e + 2 * U * (self._pb(s[0]) + self._pb(t[0]))) * (1 + 4 * U)
        return c, e
    def sub(self, s, t):
        c = s[0] - t[0]; e = s[1] + t[1]
        if self.rig: e = (e + 2 * U * (self._pb(s[0]) + self._pb(t[0]))) * (1 + 4 * U)
        return c, e
    def scal(self, z, t):
        z = np.asarray(z); c = z[..., None] * t[0]; e = np.abs(z) * t[1]
        if self.rig: e = (e + 3 * U * np.abs(z) * self._pb(t[0])) * (1 + 4 * U)
        return c, e
    def sumax(self, t, axes):
        """sum of TMs over array axes (of the leading shape), with the rounding of the k-term sums"""
        c, e = t; axes = tuple(axes)
        cs = c.sum(axis=tuple(a if a >= 0 else a - 1 for a in axes)); es = e.sum(axis=axes)
        if self.rig:
            k = int(np.prod([e.shape[a] for a in axes]))
            es = (es + 2 * k * U * (np.abs(c) @ self.bnd).sum(axis=axes)) * (1 + 4 * k * U)
        return cs, es
    def mul(self, s, t):
        (a, ea), (b, eb) = s, t
        prod = a[..., self.I] * b[..., self.J]
        c = prod @ self.S
        over = (np.abs(a[..., self.I2]) * np.abs(b[..., self.J2])) @ self.B2 if len(self.I2) else 0.0
        Ba = np.abs(a) @ self.bnd; Bb = np.abs(b) @ self.bnd
        e = over + Ba * eb + Bb * ea + ea * eb
        if self.rig:   # products (3u each) and the sums into each coefficient (<= M terms); |zeta^(m+m')| <= bnd_m bnd_m'
            e = (e + (self.M + 6) * U * Ba * Bb * 1.01) * (1 + 8 * self.M * U)
        return c, e
    def conj(self, t): return np.conj(t[0]), t[1]
    def sum(self, t, axis): return t[0].sum(axis=axis if axis >= 0 else axis - 1), t[1].sum(axis=axis)
    def take(self, t, idx, axis=0):
        return np.take(t[0], idx, axis=axis), np.take(t[1], idx, axis=axis)
    def expi(self, t, order=None):
        """exp(i t) for a real-valued TM t (coefficients real), via exp(i t0) * sum_{k<=D} (i u)^k / k! + remainder,
        u = t - t0.  |remainder| <= B^{K+1}/(K+1)! with B >= |u| on the domain (and |e^{iy}| = 1 for real y; for the
        radius part of t use |e^{i(y+w)} - e^{iy}| <= |w| for real w)."""
        c, e = t; t0 = c[..., 0].real
        u = (c - np.concatenate([c[..., :1], np.zeros_like(c[..., 1:])], -1), np.zeros_like(e))
        K = order or self.D
        acc = self.const(np.ones(t0.shape)); term = self.const(np.ones(t0.shape))
        for k in range(1, K + 1):
            term = self.scal(1j / k * np.ones(t0.shape), self.mul(term, u)); acc = self.add(acc, term)
        B = self.absb(u)
        rem = B ** (K + 1) / math.factorial(K + 1)
        if not self.rig:
            res = self.scal(np.exp(1j * t0), (acc[0], acc[1] + rem))
            return res[0], res[1] + e            # e: real perturbation of the argument
        # rigorous: the float series coefficients 1/k carry relative error <= u each (k steps: <= k u), so the
        # computed truncated series differs from the exact one by <= sum_k k u B^k/k! <= u B e^B; remainder inflated;
        # e^{i t0} from Arb (120 bits), rounded: |error| <= sqrt2 u.
        from flint import arb, ctx
        old = ctx.prec; ctx.prec = 120
        z = np.array([complex(float(arb(float(t)).cos()), float(arb(float(t)).sin())) for t in t0.reshape(-1)]).reshape(t0.shape)
        ctx.prec = old
        rem = (rem + U * B * np.exp(B)) * (1 + 1e-12)
        res = self.scal(z, (acc[0], acc[1] + rem))
        Bacc = self.absb(acc)
        return res[0], (res[1] + 2 * U * Bacc + e) * (1 + 4 * U)

    def evalpoly(self, c, Z):
        """evaluate coefficient arrays c[..., M] at points Z (n, 4) -> (..., n)"""
        Z = np.atleast_2d(Z)
        P = np.stack([np.prod(Z ** np.array(m), axis=1) for m in self.mono], -1)     # n x M
        return c @ P.T
