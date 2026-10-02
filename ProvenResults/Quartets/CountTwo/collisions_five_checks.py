"""Independent referee checks: M4 collision machinery and the five-value branch.

Covers
  * rectangular_closure/supplied/M4_COLLISIONS.md          (grouped interpolation, N=N'=0, (10)-(13))
  * m4_collision_exclusion/PROOF.md                         (independent coefficients, deflation, (4),
                                                              d=1 / d=2 trace arguments, common form)
  * SIMPLE_CHARACTER_SYMPLECTIC_RIGIDITY.md Section 2       (three-involution criterion)
  * five_value_exclusion/PROOF.md                           (two-Kraus lemma, mean conic, (3)-(6),
                                                              D0 invertibility, u_0=0 step)

Self-contained: numpy + sympy + stdlib, no archive reads.  calculate() returns a JSON-serialisable
dict and raises CheckFailure on any failure.  Nothing here is a physical MUB triangle: the
end-to-end families are abstract orthogonal-unitary families satisfying the operator hypotheses
(tr(R_i^* R_j) = 6 delta - 1 - conj(l_i) l_j, irreducible), used to test the lemma chain.
"""
import itertools
import json
import time

import numpy as np
import sympy as sp


class CheckFailure(Exception):
    pass


def require(cond, msg):
    if not bool(cond):
        raise CheckFailure(msg)


def _is_zero(e):
    e = sp.expand(e)
    if e == 0:
        return True
    if sp.simplify(e) == 0:
        return True
    return sp.simplify(sp.expand(e.rewrite(sp.exp))) == 0


def szero(expr, msg):
    if isinstance(expr, sp.MatrixBase):
        ok = all(_is_zero(e) for e in expr)
    else:
        ok = _is_zero(expr)
    require(ok, msg)


I4 = np.eye(4)
JST = np.array([[0, 1, 0, 0], [-1, 0, 0, 0], [0, 0, 0, 1], [0, 0, -1, 0]], complex)
ALT_PAIRS = list(itertools.combinations(range(4), 2))


def H(X):
    return X.conj().T


def nrm(X):
    return float(np.linalg.norm(X))


def ip(X, Y):
    return complex(np.trace(H(X) @ Y))


def alt(v):
    X = np.zeros((4, 4), complex)
    for k, (i, j) in enumerate(ALT_PAIRS):
        X[i, j] = v[k]
        X[j, i] = -v[k]
    return X


def uexp_herm(h):
    w, V = np.linalg.eigh(h)
    return V @ np.diag(np.exp(1j * w)) @ H(V)


def herm16(v):
    X = np.zeros((4, 4), complex)
    iu = np.triu_indices(4, 1)
    X[np.diag_indices(4)] = v[:4]
    X[iu] = v[4:10] + 1j * v[10:16]
    return X + np.triu(X, 1).conj().T


def rand_unitary(rng, n=4):
    Z = rng.normal(size=(n, n)) + 1j * rng.normal(size=(n, n))
    Q, R = np.linalg.qr(Z)
    return Q @ np.diag(np.diag(R) / abs(np.diag(R)))


def rand_balanced_involution(rng):
    W = rand_unitary(rng)
    return W @ np.diag([1, 1, -1, -1]).astype(complex) @ H(W)


def gauss_newton(res, v, iters=100, tol=1e-14):
    for _ in range(iters):
        r = res(v)
        if np.linalg.norm(r) < tol:
            break
        Jm = np.zeros((len(r), len(v)))
        eps = 1e-7
        for k in range(len(v)):
            e = np.zeros(len(v))
            e[k] = eps
            Jm[:, k] = (res(v + e) - res(v - e)) / (2 * eps)
        v = v - np.linalg.lstsq(Jm, r, rcond=None)[0]
    return v, float(np.linalg.norm(res(v)))


def commutant_small_svs(R):
    Ms = [H(R[0]) @ R[i] for i in range(1, len(R))]
    A = np.vstack([np.kron(I4, M) - np.kron(M.T, I4) for M in Ms])
    s = np.linalg.svd(A, compute_uv=False)
    return s[-2], s[-1]            # s[-1] is the scalar direction


# ----------------------------------------------------------------------------------------------
# Part 1: exact (sympy) identities
# ----------------------------------------------------------------------------------------------

def sym_hermitian(prefix, n=4):
    M = sp.zeros(n, n)
    for i in range(n):
        M[i, i] = sp.Symbol(f'{prefix}d{i}', real=True)
    for i, j in itertools.combinations(range(n), 2):
        x, y = sp.symbols(f'{prefix}r{i}{j} {prefix}i{i}{j}', real=True)
        M[i, j] = x + sp.I * y
        M[j, i] = x - sp.I * y
    return M


def exact_checks():
    out = {}
    # (a) collision patterns: p pairs, s singletons, d=m-3; 2d=s, d+p=3.
    pats = []
    for m in (3, 4, 5):
        p, s, d = 6 - m, 2 * m - 6, m - 3
        require(2 * p + s == 6 and p + s == m and 2 * d == s and d + p == 3, 'pattern count')
        pats.append({'m': m, 'pairs': p, 'singletons': s, 'd': d})
    out['patterns'] = pats
    # multiplicity <= 2: |n a + rest| with rest of 6-n unit phases; n=3 needs rest=-3a, forcing all -a.
    # (checked as: |sum of k unit phases| = k iff all equal, triangle equality) -- no computation.

    # (b) square-root normalisations: Re z/z=(1+conj l)/2, Im z/z=(1-conj l)/(2i), l=z^2, |z|=1,
    #     and tr(U_i^*U_j) = 6 delta - 2 Re(z_i conj z_j).
    f, g = sp.symbols('phi psi', real=True)
    z, w = sp.exp(sp.I * f), sp.exp(sp.I * g)
    szero(sp.cos(f) / z - (1 + sp.conjugate(z ** 2)) / 2, 'Re z/z')
    szero(sp.sin(f) / z - (1 - sp.conjugate(z ** 2)) / (2 * sp.I), 'Im z/z')
    lhs = (-1 - sp.conjugate(z ** 2) * w ** 2) / (sp.conjugate(z) * w)
    szero(sp.expand_complex(lhs + 2 * sp.cos(f - g)), 'normalised off-diagonal Gram is -2Re(z_i conj z_j)')

    # (c) grouped interpolation: top two coefficients are relations (2); nodes give k_a F_a.
    t = sp.Symbol('t')
    for m in (3, 4, 5):
        n = [2] * (6 - m) + [1] * (2 * m - 6)
        ta = sp.symbols(f't0:{m}', real=True)
        ca = sp.symbols(f'c0:{m}', real=True)
        Fs = sp.symbols(f'F0:{m}')              # linear placeholders (commuting is harmless: M is linear in F)
        # impose (2): sum n c F = 0, sum n c t F = 0 (s_a = c_a t_a) by solving for F0, F1
        sol = sp.solve([sum(n[a] * ca[a] * Fs[a] for a in range(m)),
                        sum(n[a] * ca[a] * ta[a] * Fs[a] for a in range(m))], [Fs[0], Fs[1]], dict=True)[0]
        M = sum(n[a] * ca[a] * Fs[a] * sp.prod([t - ta[b] for b in range(m) if b != a]) for a in range(m))
        Mp = sp.Poly(sp.expand(M.subs(sol)), t)
        require(Mp.degree() <= m - 3, f'degree M <= m-3 at m={m}')
        fpoly = sp.prod([t - ta[b] for b in range(m)])
        for a in range(m):
            node = sp.simplify(M.subs(t, ta[a]) - n[a] * ca[a] * sp.diff(fpoly, t).subs(t, ta[a]) * Fs[a])
            require(node == 0, 'M(t_a)=n_a c_a f\'(t_a) F_a')
    out['interpolation_degree'] = 'deg M <= m-3 and M(t_a)=k_a F_a for m=3,4,5 (symbolic)'

    # (d) pair traces (4) from tr(U+^*U-)=tau: tr F^*F=(8+2Re tau)/4, tr D^*D=(8-2Re tau)/4, tr F^*D = i Im(tau)/2 ...
    tr_, ti_ = sp.symbols('taur taui', real=True)
    tau = tr_ + sp.I * ti_
    trFF = (4 + 4 + tau + sp.conjugate(tau)) / 4
    trDD = (4 + 4 - tau - sp.conjugate(tau)) / 4
    trFD = (4 - tau + sp.conjugate(tau) - 4) / 4
    require([sp.simplify(e.subs({tr_: -2, ti_: 0})) for e in (trFF, trDD, trFD)] == [1, 3, 0], 'pair traces (4)')

    # (e) Section 4 spectrum and (12)-(13), exact over Q(i, sqrt3).
    W = sp.diag(sp.I, sp.I, -sp.I, -sp.I)
    X = -sp.eye(4) / 2 - sp.sqrt(3) * W / 2
    om = sp.Rational(-1, 2) + sp.sqrt(3) * sp.I / 2
    ev = [sp.nsimplify(sp.expand(X[i, i])) for i in range(4)]
    require(sorted(map(str, ev)) == sorted(map(str, [sp.expand(sp.conjugate(om))] * 2 + [sp.expand(om)] * 2)),
            'relative spectrum omega, omega^2 twice')
    G = sp.diag(1, 1, *[X[i, i] for i in range(4)])
    szero(G ** 3 - sp.eye(6), 'G^3=I')
    Pm = sp.diag(1, 1, 0, 0, 0, 0)
    szero(sp.eye(6) + G + G ** 2 - 3 * Pm, 'I+G+G^2=3P_match')
    szero(2 * sp.eye(6) - G - G.H - 3 * (sp.eye(6) - Pm), '(S_r-S_s)^*(S_r-S_s)=3(I-P)')

    # (f) d=1 and d=2 trace identities with generic Hermitian H1,H2 (A diagonal WLOG).
    Ad = sp.diag(1, 1, -1, -1)
    H1, H2 = sym_hermitian('a'), sym_hermitian('b')
    x, y, t1, t2, al, be, yy, zz = sp.symbols('x y t1 t2 al be yy zz', real=True)
    F = lambda v: (v - x) * sp.eye(4) + sp.I * y * Ad
    cross = F(t1).H * F(t2)
    szero(cross - (((t1 - x) * (t2 - x) + y ** 2) * sp.eye(4) + sp.I * y * (t1 - t2) * Ad), 'F(t1)^*F(t2) formula')
    e1 = sp.im(sp.expand((H1 * cross * H2).trace()))
    e2 = y * (t1 - t2) * sp.re(sp.expand((H1 * Ad * H2).trace()))
    szero(sp.expand(e1 - e2), 'd=1 imaginary-part identity')
    szero(sp.expand(sp.re((H1 * Ad * H2).trace()) - sp.re((Ad * H1 * H2).trace())), 'Re tr cyclic/reversal')
    e3 = sp.re(sp.expand(((al * sp.eye(4) + sp.I * yy * Ad) * (be * sp.eye(4) + sp.I * zz * H1) * H2).trace()))
    e4 = al * be * H2.trace() - yy * zz * sp.re(sp.expand((Ad * H1 * H2).trace()))
    szero(sp.expand(e3 - e4), 'd=2 real-part identity (tr H real, tr(AH),tr(BH) real)')
    out['trace_identities'] = 'd=1 and d=2 identities symbolic in generic Hermitian H1,H2'

    # (g) Theta-odd Hermitian X (XJ+JX^T=0): X J X^T = -X^2 J; F J F^T = ((t-x)^2+y^2)J if X^2=I;
    #     (I +- i sqrt3 X) J (..)^T = 4J.
    Xg = sym_hermitian('h')
    Js = sp.Matrix(JST.real.astype(int))
    cons = list(Xg * Js + Js * Xg.T)
    unknowns = sorted(Xg.free_symbols, key=str)
    eqs = []
    for c in cons:
        c = sp.expand(c)
        eqs += [sp.re(c), sp.im(c)]
    sol = sp.solve(eqs, unknowns, dict=True)[0]
    Xo = Xg.subs(sol)
    require(len(Xo.free_symbols) == 10, 'Theta-odd Hermitian space has real dimension 10')
    szero(Xo * Js * Xo.T + Xo * Xo * Js, 'X J X^T = -X^2 J for Theta-odd X')
    tt = sp.Symbol('tt', real=True)
    FF = (tt - x) * sp.eye(4) + sp.I * y * Xo
    szero(FF * Js * FF.T - ((tt - x) ** 2 * Js + y ** 2 * Xo * Xo * Js), 'F J F^T identity (then X^2=I)')
    GG = sp.eye(4) + sp.I * sp.sqrt(3) * Xo
    szero(GG * Js * GG.T - (Js + 3 * Xo * Xo * Js), '(I+i sqrt3 X)J(..)^T identity (then =4J)')

    # (h) three-involution criterion: the real form V, JJ*=|x|^2 I, and Pf(L_D)=-tr(D^3)/3.
    def E(a, b):
        M = sp.zeros(4, 4)
        M[a, b], M[b, a] = 1, -1
        return M
    Vb = [E(0, 1) + E(2, 3), sp.I * (E(0, 1) - E(2, 3)), E(0, 2) - E(1, 3),
          sp.I * (E(0, 2) + E(1, 3)), E(0, 3) + E(1, 2), sp.I * (E(0, 3) - E(1, 2))]
    xs = sp.symbols('x0:6', real=True)
    Jv = sum((xs[k] * Vb[k] for k in range(6)), sp.zeros(4, 4))
    szero(Jv + Jv.T, 'V is alternating')
    szero(Jv * Jv.H - sum(v ** 2 for v in xs) * sp.eye(4), 'JJ^*=|x|^2 I on V')
    ds = sp.symbols('d1:4', real=True)
    Dd = sp.diag(ds[0], ds[1], ds[2], -ds[0] - ds[1] - ds[2])
    # real matrix of L_D on V (orthonormal up to factor 4 in Re tr(X^* Y))
    L = sp.zeros(6, 6)
    for j in range(6):
        img = sp.I * (Dd * Vb[j] + Vb[j] * Dd.T)
        for i in range(6):
            L[i, j] = sp.simplify(sp.re(sp.expand((Vb[i].H * img).trace())) / 4)
    szero(L + L.T, 'L_D skew on V')
    pf = sp.expand(L[0, 1] * L[2, 3] * L[4, 5])      # block diagonal for diagonal D
    szero(L - sp.diag(*[sp.Matrix([[0, L[0, 1]], [-L[0, 1], 0]]), sp.Matrix([[0, L[2, 3]], [-L[2, 3], 0]]),
                        sp.Matrix([[0, L[4, 5]], [-L[4, 5], 0]])]), 'L_D block diagonal for diagonal D')
    szero(pf ** 2 - sp.expand((Dd ** 3).trace() / 3) ** 2, 'Pf(L_D)=+-tr(D^3)/3')
    szero(sp.expand((ds[0] + ds[1]) * (ds[0] + ds[2]) * (ds[1] + ds[2]) + (Dd ** 3).trace() / 3),
          '(d1+d2)(d1+d3)(d2+d3) = -tr D^3/3')
    Lb = L.subs({ds[0]: 1, ds[1]: 1, ds[2]: -1})
    require(Lb.rank() == 2, 'L_A has rank two for balanced A')

    # (i) conics: Veronese quadratic ideal is one-dimensional; zero-diagonal conic det = abc/4.
    X1, Y1, Z1, T = sp.symbols('X1 Y1 Z1 T')
    mons = [X1 ** 2, X1 * Y1, X1 * Z1, Y1 ** 2, Y1 * Z1, Z1 ** 2]
    Mv = sp.Matrix(5, 6, lambda i, j: sp.Poly(mons[j].subs({X1: 1, Y1: T, Z1: T ** 2}), T).coeff_monomial(T ** i))
    require(len(Mv.nullspace()) == 1, 'quadratics through Veronese conic: dimension one')
    a_, b_, c_ = sp.symbols('qa qb qc', real=True)
    Cq = sp.Matrix([[0, a_ / 2, b_ / 2], [a_ / 2, 0, c_ / 2], [b_ / 2, c_ / 2, 0]])
    szero(Cq.det() - a_ * b_ * c_ / 4, 'zero-diagonal conic determinant abc/4')

    # (j) Theta-even traceless Hermitian: scalar square; balanced Theta-odd A: Ad_A on 5-space = (+1)^3(-1)^2.
    Xe = sym_hermitian('e')
    cons = list(Js * Xe.T * Js.H - Xe) + [Xe.trace()]
    eqs = []
    for c in cons:
        c = sp.expand(c)
        eqs += [sp.re(c), sp.im(c)]
    sol = sp.solve(eqs, sorted(Xe.free_symbols, key=str), dict=True)[0]
    Xe5 = Xe.subs(sol)
    fs = sorted(Xe5.free_symbols, key=str)
    require(len(fs) == 5, 'traceless Theta-even Hermitian space has dimension 5')
    sq = sp.expand(Xe5 * Xe5)
    szero(sq - sq[0, 0] * sp.eye(4), 'Theta-even traceless Hermitian has scalar square')
    A0 = sp.diag(1, -1, 1, -1)
    szero(A0 * Js + Js * A0.T, 'A0 is Theta-odd')
    basis5 = [sp.diff(Xe5, v) for v in fs]
    Gm = sp.Matrix(5, 5, lambda i, j: (basis5[i] * basis5[j]).trace())
    Cm = sp.Matrix(5, 5, lambda i, j: (basis5[i] * A0 * basis5[j] * A0).trace())
    RA = Gm.inv() * Cm
    evs = RA.eigenvals()
    require(evs == {1: 3, -1: 2}, f'Ad_A multiplicities on five-space {evs}')

    # (k) two orthogonal planes => binary: 1+q_j conj(q_k)=0 with |q|=1 means q_k=-q_j.
    th = sp.symbols('th1 th2', real=True)
    szero(sp.expand_complex((1 + sp.exp(sp.I * th[0]) * sp.exp(-sp.I * th[1])) *
                            (1 + sp.exp(-sp.I * th[0]) * sp.exp(sp.I * th[1]))) - (2 + 2 * sp.cos(th[0] - th[1])),
          'cross Gram modulus: zero iff antipodal')

    # (l) gamma=0 boundary: D0 can be singular (the proof really needs gamma != 0).
    qi = sp.Matrix([[sp.I, 0], [0, -sp.I]])
    qj = sp.Matrix([[0, 1], [-1, 0]])
    RB = lambda xq: qi * xq * (-qi).H
    RC = lambda xq: qj * xq * (-qj).H
    szero(2 * sp.eye(2) + RB(sp.eye(2)) + RC(sp.eye(2)), 'gamma=0 control: 2+R_B+R_C kills x=1')
    out['exact'] = 'all sympy identities passed'
    return out


# ----------------------------------------------------------------------------------------------
# Part 2: numeric tests of the abstract lemmas
# ----------------------------------------------------------------------------------------------

def theta_odd_generators():
    """Hermitian h with e^{ih} quaternionic-linear w.r.t. JST (i.e. Theta-odd h), orthonormal."""
    basis = []
    for k in range(16):
        v = np.zeros(16)
        v[k] = 1
        Xr = herm16(v)
        Y = Xr - JST @ Xr.conj() @ np.linalg.inv(JST)
        for b in basis:
            Y = Y - np.trace(b @ Y).real * b
        if nrm(Y) > 1e-9:
            basis.append(Y / np.sqrt(np.trace(Y @ Y).real))
    require(len(basis) == 10, 'sp(2) has dimension 10')
    return basis


def alternating_kernel(mats):
    """Complex alternating J with X J + J X^T = 0 for all X in mats."""
    cols = [np.concatenate([(X @ alt(e) + alt(e) @ X.T).ravel() for X in mats]) for e in np.eye(6)]
    Mx = np.array(cols).T
    _, s, vh = np.linalg.svd(Mx)
    return s, alt(vh[-1].conj())


def criterion_tests(rng):
    res = {}
    # tr((A+B+C)^3) = 6 Re tr(ABC) for balanced involutions
    for _ in range(5):
        A, B, C = (rand_balanced_involution(rng) for _ in range(3))
        require(abs(np.trace(np.linalg.matrix_power(A + B + C, 3)) - 6 * np.trace(A @ B @ C).real) < 1e-9,
                'tr (A+B+C)^3 = 6 Re tr ABC')
    # forward: tune C along a one-parameter family until Re tr(ABC)=0, then a unitary J exists
    found, generic = 0, []
    for _ in range(6):
        A, B = rand_balanced_involution(rng), rand_balanced_involution(rng)
        C0 = rand_balanced_involution(rng)
        K = herm16(rng.normal(size=16))
        Cf = lambda s_: uexp_herm(s_ * K) @ C0 @ H(uexp_herm(s_ * K))
        fval = lambda s_: np.trace(A @ B @ Cf(s_)).real
        grid = np.linspace(0, 3, 61)
        vals = [fval(s_) for s_ in grid]
        generic.append(alternating_kernel([A, B, Cf(0.0)])[0][-1])
        for i in range(60):
            if vals[i] * vals[i + 1] < 0:
                lo, hi = grid[i], grid[i + 1]
                for _ in range(80):
                    mid = (lo + hi) / 2
                    if fval(lo) * fval(mid) <= 0:
                        hi = mid
                    else:
                        lo = mid
                C = Cf((lo + hi) / 2)
                s, J = alternating_kernel([A, B, C])
                require(s[-1] < 1e-8, 'Re tr ABC = 0 gives an alternating kernel')
                J = J / np.sqrt(abs(np.trace(J @ H(J))) / 4)
                require(nrm(J @ H(J) - I4) < 1e-7, 'the common alternating form is unitary')
                # reverse direction: J^{-1} A J = -conj(A) etc.
                for X in (A, B, C):
                    require(nrm(np.linalg.inv(J) @ X @ J + X.conj()) < 1e-7, 'J reverses each involution')
                found += 1
                break
    require(found >= 3, 'enough zero crossings sampled')
    res['criterion_forward_instances'] = found
    res['generic_triple_min_kernel_sv'] = float(min(generic))
    require(min(generic) > 1e-3, 'generic triple (Re tr ABC != 0) has no common alternating form')
    return res


def two_kraus_tests(rng):
    """Quaternionic two-Kraus lemma, recipe as in the proof, including singular endpoints."""
    gens = theta_odd_generators()

    def rand_quat_unitary():
        return uexp_herm(sum(c * g for c, g in zip(rng.normal(size=10), gens)))

    cases = []
    for trial in range(8):
        B0, C0 = rand_quat_unitary(), rand_quat_unitary()
        # make them real-HS orthogonal: C0 -> C0 - <B0,C0>/4 B0 then re-unitarise is not allowed; instead
        # use pairs with tr(B0^*C0)=0: C0 = B0 * K with K quaternionic unitary of zero trace.
        K = rand_quat_unitary()
        # rotate K inside its own maximal torus to hit trace zero: K -> exp(i s h) with h Theta-odd balanced
        h = gens[trial % 10]
        s_grid = np.linspace(0, np.pi, 400)
        tr_vals = [np.trace(K @ uexp_herm(s_ * h)).real for s_ in s_grid]
        idx = [i for i in range(399) if tr_vals[i] * tr_vals[i + 1] < 0]
        if not idx and trial != 0:
            continue
        if not idx:
            idx = [0]
        lo, hi = s_grid[idx[0]], s_grid[idx[0] + 1]
        for _ in range(80):
            mid = (lo + hi) / 2
            if np.trace(K @ uexp_herm(lo * h)).real * np.trace(K @ uexp_herm(mid * h)).real <= 0:
                hi = mid
            else:
                lo = mid
        Kz = K @ uexp_herm(lo * h)
        C0 = B0 @ Kz
        if trial == 0:            # singular endpoint: C0 = +B0 on one quaternionic line, -B0 on the other
            C0 = B0 @ np.diag([1, 1, -1, -1]).astype(complex)   # quaternionic, trace zero
        require(abs(np.trace(H(B0) @ C0).real) < 1e-9, 'orthogonal unitary pair')
        th = rng.uniform(0, np.pi) if trial else np.pi / 4
        E1 = np.cos(th) * B0 + np.sin(th) * C0
        E2 = -np.sin(th) * B0 + np.cos(th) * C0
        sv = np.linalg.svd(E1, compute_uv=False)
        # hypotheses
        require(nrm(H(E1) @ E1 + H(E2) @ E2 - 2 * I4) < 1e-9 and nrm(E1 @ H(E1) + E2 @ H(E2) - 2 * I4) < 1e-9, '(1)')
        require(nrm(E1 @ JST - JST @ E1.conj()) < 1e-9, 'quaternionic')
        # recipe
        K1 = H(E1) @ E1 - I4
        K2 = H(E1) @ E2 + H(E2) @ E1
        if nrm(K1) < 1e-10 and nrm(K2) < 1e-10:
            Bn, Cn = E1, E2
        else:
            Q = K1 if nrm(K1) > nrm(K2) else K2
            Q = Q * 2 / nrm(Q)
            require(nrm(Q @ Q - I4) < 1e-8 and abs(np.trace(Q)) < 1e-8, 'Q balanced Hermitian involution')
            a_ = np.trace(K1 @ Q).real / 4
            b_ = np.trace(K2 @ Q).real / 4
            require(nrm(K1 - a_ * Q) < 1e-8 and nrm(K2 - b_ * Q) < 1e-8, 'alpha Q, beta Q structure')
            require(nrm(H(E2) @ E2 - I4 + a_ * Q) < 1e-8, 'second norm is -alpha Q')
            t = 0.5 * np.arctan2(-a_, b_ / 2)
            Bn = np.cos(t) * E1 + np.sin(t) * E2
            Cn = -np.sin(t) * E1 + np.cos(t) * E2
        require(nrm(H(Bn) @ Bn - I4) < 1e-8 and nrm(H(Cn) @ Cn - I4) < 1e-8, 'rotation makes both unitary')
        cases.append(float(min(sv)))
    require(len(cases) >= 5, 'enough two-Kraus cases')
    require(min(cases) < 1e-8, 'a singular endpoint (zero singular value) was included')
    return {'two_kraus_cases': len(cases), 'min_singular_value_seen': min(cases)}


def polymul(Pc, Qc):
    out = [np.zeros((4, 4), complex) for _ in range(len(Pc) + len(Qc) - 1)]
    for i, a in enumerate(Pc):
        for j, b in enumerate(Qc):
            out[i + j] = out[i + j] + a @ b
    return out


def polyeval(Pc, t):
    return sum(c * t ** k for k, c in enumerate(Pc))


def sharp(Pc):
    return [H(c) for c in Pc]


def deflate(Mc):
    """Factor a scalar-Gram matrix polynomial M = rho U F_d ... F_1 as in m4_collision_exclusion Sec.3.
    Returns list of (x, y, A) and the final constant; checks rank-2 and complementary kernels."""
    factors = []
    cur = [c.copy() for c in Mc]
    info = []
    while len(cur) > 1:
        d = len(cur) - 1
        G = polymul(sharp(cur), cur)
        r = np.array([np.trace(c).real / 4 for c in G])
        for k, c in enumerate(G):
            require(nrm(c - r[k] * I4) < 1e-7 * max(1, abs(r).max()), 'scalar Gram M^#M = rI')
        roots = np.roots(r[::-1])
        require(min(abs(roots.imag)) > 1e-6, 'r has no real root')
        z = sorted([w for w in roots if w.imag > 0], key=lambda w: w.imag)[0]
        Mz, Mzb = polyeval(cur, z), polyeval(cur, np.conj(z))
        s1, s2 = np.linalg.svd(Mz, compute_uv=False), np.linalg.svd(Mzb, compute_uv=False)
        require(s1[1] > 1e-4 and s1[2] < 1e-5 * s1[0] and s2[1] > 1e-4 and s2[2] < 1e-5 * s2[0],
                'rank exactly two at a complex root')
        _, _, vh = np.linalg.svd(Mz)
        P = H(vh[2:]) @ vh[2:]
        _, _, vh2 = np.linalg.svd(Mzb)
        P2 = H(vh2[2:]) @ vh2[2:]
        require(nrm(P + P2 - I4) < 1e-5, 'kernels at z, conj z are orthogonal complements')
        A = I4 - 2 * P
        x, y = z.real, z.imag
        # Q = M F^{-1} is a polynomial of degree d-1: fit on sample points
        ts = np.linspace(-3, 3, d + 3)
        vals = [polyeval(cur, t) @ np.linalg.inv((t - x) * I4 + 1j * y * A) for t in ts]
        V = np.vander(ts, d, increasing=True)
        coef = np.linalg.lstsq(V, np.array([v.ravel() for v in vals]), rcond=None)[0]
        fit = V @ coef
        require(max(nrm(fit[i] - vals[i].ravel()) for i in range(len(ts))) < 1e-6, 'M F^{-1} is polynomial')
        cur = [coef[k].reshape(4, 4) for k in range(d)]
        factors.append((x, y, A))
        info.append({'root': [float(x), float(y)], 'sv_at_root': [float(v) for v in s1]})
    const = cur[0]
    rho = np.sqrt(np.trace(H(const) @ const).real / 4)
    require(nrm(H(const) @ const - rho ** 2 * I4) < 1e-6, 'final constant is rho U')
    return factors, const / rho, rho, info


def deflation_tests(rng):
    out = []
    for case in ('generic', 'repeated'):
        U = rand_unitary(rng)
        A1 = rand_balanced_involution(rng)
        A2 = A1 if case == 'repeated' else rand_balanced_involution(rng)
        x1, y1 = rng.normal(), abs(rng.normal()) + 0.2
        x2, y2 = (x1, y1) if case == 'repeated' else (rng.normal(), abs(rng.normal()) + 0.2)
        F1 = [-x1 * I4 + 1j * y1 * A1, I4]
        F2 = [-x2 * I4 + 1j * y2 * A2, I4]
        Mc = polymul(polymul([1.7 * U], F2), F1)
        factors, U_rec, rho, info = deflate(Mc)
        rebuilt = [rho * U_rec]
        for (x, y, A) in reversed(factors):
            rebuilt = polymul(rebuilt, [-x * I4 + 1j * y * A, I4])
        require(max(nrm(a - b) for a, b in zip(rebuilt, Mc)) < 1e-6, 'factorisation reproduces M')
        out.append(case)
    return {'deflation_cases': out}


def d0_tests(rng):
    """(2I+R_B+R_C) invertible when Re(B+^*C+) = -Re(B-^*C-) != 0; gamma=0 counter-control."""
    def unitq():
        v = rng.normal(size=4)
        return v / np.linalg.norm(v)

    def qmul(p, q):
        a1, b1, c1, d1 = p
        a2, b2, c2, d2 = q
        return np.array([a1 * a2 - b1 * b2 - c1 * c2 - d1 * d2, a1 * b2 + b1 * a2 + c1 * d2 - d1 * c2,
                         a1 * c2 - b1 * d2 + c1 * a2 + d1 * b2, a1 * d2 + b1 * c2 - c1 * b2 + d1 * a2])

    def conj(q):
        return q * np.array([1, -1, -1, -1])

    def Lm(p):
        return np.array([qmul(p, e) for e in np.eye(4)]).T

    def Rm(p):
        return np.array([qmul(e, p) for e in np.eye(4)]).T

    mins = []
    for _ in range(300):
        Bp, Bm, Cp = unitq(), unitq(), unitq()
        g = qmul(conj(Bp), Cp)[0]
        # choose C- with Re(B-^* C-) = -g
        v = rng.normal(size=4)
        base = Bm * (-g)
        perp = v - (v @ Bm) * Bm
        perp /= np.linalg.norm(perp)
        Cm = base + np.sqrt(max(0, 1 - g * g)) * perp
        require(abs(qmul(conj(Bm), Cm)[0] + g) < 1e-12, 'constructed opposite real traces')
        RB = Lm(Bp) @ Rm(conj(Bm))
        RC = Lm(Cp) @ Rm(conj(Cm))
        require(nrm(RB.T @ RB - np.eye(4)) < 1e-12, 'R_B orthogonal')
        M = 2 * np.eye(4) + RB + RC
        smin = np.linalg.svd(M, compute_uv=False)[-1]
        mins.append((abs(g), smin))
    # invertible whenever g != 0 ; and smin bounded below by a function vanishing only at g=0
    for g, smin in mins:
        if g > 1e-3:
            require(smin > 1e-8, 'D0 invertible when gamma != 0')
    return {'d0_samples': len(mins), 'min_sv_over_samples_with_|gamma|>0.1':
            float(min(s for g, s in mins if g > 0.1))}


def u0_tests(rng):
    """If D0=diag(4,M) invertible and ker(D0-2UU^T) contains two independent x with x_0=0 then u_0=0."""
    ok = 0
    for _ in range(50):
        U, _ = np.linalg.qr(rng.normal(size=(5, 2)))
        Y = rng.normal(size=(2, 2))
        # force a 2-dim kernel: choose D0 with D0^{-1} = (1/2) U U^T + K where U^T K U = 0 ... construct directly
        # kernel condition: y = 2 U^T D0^{-1} U y for all y  <=> U^T D0^{-1} U = I/2 on R^2.
        Mblk = rng.normal(size=(4, 4))
        Mblk = Mblk @ Mblk.T + np.eye(4)
        D0 = np.block([[np.array([[4.0]]), np.zeros((1, 4))], [np.zeros((4, 1)), Mblk]])
        # rescale U's image condition by solving for a 2x2 change: U' = U S, need S^T U^T D0^{-1} U S = I/2
        Gm = U.T @ np.linalg.inv(D0) @ U
        w, V = np.linalg.eigh(Gm)
        S = V @ np.diag(1 / np.sqrt(2 * w))
        Up = U @ S                     # P = Up Up^T is no longer a projection in general; test the linear step only
        Kmat = D0 - 2 * Up @ Up.T
        sv = np.linalg.svd(Kmat, compute_uv=False)
        require(sv[-2] < 1e-9, 'constructed two-dimensional kernel')
        _, _, vh = np.linalg.svd(Kmat)
        ker = vh[-2:]
        # first coordinates of kernel vectors equal (2/4) u0 . (Up^T x); both zero iff u0 = 0 (injectivity)
        first = ker[:, 0]
        u0 = Up[0]
        require(np.allclose(first, 0.5 * (ker @ Up) @ u0, atol=1e-9), 'first row of D0 x = 2 P x')
        require(np.linalg.matrix_rank(ker @ Up, tol=1e-9) == 2, 'x -> U^T x injective on kernel')
        ok += 1
    return {'u0_linear_step_samples': ok}


# ----------------------------------------------------------------------------------------------
# Part 3: abstract families satisfying the operator hypotheses, and the proof chain run on them
# ----------------------------------------------------------------------------------------------

def gram_error(R, lam):
    G = np.array([[ip(R[i], R[j]) for j in range(6)] for i in range(6)])
    return nrm(G - (6 * np.eye(6) - 1 - np.outer(lam.conj(), lam)))


def groups_of(lam, tol=1e-6):
    groups = []
    for i, x in enumerate(lam):
        for g in groups:
            if abs(lam[g[0]] - x) < tol:
                g.append(i)
                break
        else:
            groups.append([i])
    return groups


def build_m3_control(rng):
    """R_(a,+-) = w^(2a) (I +- i sqrt3 H_a)/2 with generic pairwise trace-orthogonal balanced involutions."""
    D0 = np.diag([1, 1, -1, -1]).astype(complex)
    Hs = lambda v: [uexp_herm(herm16(v[16 * a:16 * a + 16])) @ D0 @ H(uexp_herm(herm16(v[16 * a:16 * a + 16])))
                    for a in range(3)]
    res = lambda v: np.array([np.trace(X @ Y).real for X, Y in itertools.combinations(Hs(v), 2)])
    v, err = gauss_newton(res, rng.normal(size=48))
    require(err < 1e-12, 'm=3 control: trace-orthogonal involutions')
    Hl = Hs(v)
    w = np.exp(2j * np.pi / 3)
    R = np.array([w ** (2 * a) * (I4 + sg * 1j * np.sqrt(3) * Hl[a]) / 2 for a in range(3) for sg in (1, -1)])
    lam = np.array([w ** (4 * a) for a in range(3) for _ in (0, 1)])
    return R, lam, Hl


def lm_family(labels, pairs, seed, iters=150):
    """Levenberg-Marquardt on (1), the linear relations (2), zero sum, and (optionally) the pair identity
    (R_a+R_b)^*(R_a+R_b)=I on the listed pairs.  Characters exp(i ph[labels]) are free."""
    labels = np.array(labels)
    nv = int(labels.max()) + 1
    rng = np.random.default_rng(seed)
    R = [rand_unitary(rng) for _ in range(6)]
    ph = 2 * np.pi * rng.random(nv)

    def res(R, ph):
        lam = np.exp(1j * ph[labels])
        G = np.array([[ip(R[i], R[j]) for j in range(6)] for i in range(6)])
        d = (G - (6 * np.eye(6) - 1 - np.outer(lam.conj(), lam)))[np.triu_indices(6, 1)]
        out = [d.real, d.imag, [lam.sum().real, lam.sum().imag]]
        for X in (sum(R), sum(np.conj(l) * Ri for l, Ri in zip(lam, R))):   # (2), linear: avoids sqrt-accuracy
            out += [X.ravel().real, X.ravel().imag]
        for a, b in pairs:
            P = R[a] + R[b]
            X = (H(P) @ P - I4).ravel()
            out += [X.real, X.imag]
        return np.concatenate(out)

    npar = 96 + nv
    mu = 1e-3
    r = res(R, ph)
    for _ in range(iters):
        if np.linalg.norm(r) < 1e-13:
            break
        Jm = np.zeros((len(r), npar))
        eps = 1e-7
        for i in range(6):
            for k in range(16):
                e = np.zeros(16)
                e[k] = eps
                Rp = list(R)
                Rp[i] = R[i] @ uexp_herm(herm16(e))
                Jm[:, 16 * i + k] = (res(Rp, ph) - r) / eps
        for k in range(nv):
            p2 = ph.copy()
            p2[k] += eps
            Jm[:, 96 + k] = (res(R, p2) - r) / eps
        accepted = False
        while mu < 1e8:
            step = -np.linalg.solve(Jm.T @ Jm + mu * np.eye(npar), Jm.T @ r)
            Rn = [R[i] @ uexp_herm(herm16(step[16 * i:16 * i + 16])) for i in range(6)]
            phn = ph + step[96:]
            rn = res(Rn, phn)
            if np.linalg.norm(rn) < np.linalg.norm(r):
                R, ph, r = Rn, phn, rn
                mu = max(mu / 3, 1e-12)
                accepted = True
                break
            mu *= 4
        if not accepted:
            break
    return np.array(R), np.exp(1j * ph[labels]), float(np.linalg.norm(r))


def build_m4_family(seeds=(3, 5, 6, 8)):
    """Irreducible two-pair families; in practice LM lands on antipodal (a,a,-a,-a,c,-c) solutions."""
    for seed in seeds:
        R, lam, err = lm_family([0, 0, 1, 1, 2, 3], [(0, 1), (2, 3)], seed)
        if err < 1e-11 and len(groups_of(lam, 1e-3)) == 4:
            return R, lam, seed
    raise CheckFailure('no m=4 family found')


def build_m5_structured(seed, kappa=0.8):
    """Structured irreducible five-value family: pair (I +- i sqrt3 A)/2, singletons x I + y B + z C on the
    conic; real 6x6 frame orthonormality solved exactly (Gauss-Newton, isolated regular solutions)."""
    rng = np.random.default_rng(seed)
    p = np.array([1 / np.sqrt(3), 0, 0, np.sqrt(2 / 3), 0])
    Q, _ = np.linalg.qr(np.column_stack([p, rng.normal(size=(5, 4))]))
    Eb = Q[:, 1:].T

    def so4(v):
        S = np.zeros((4, 4))
        S[np.triu_indices(4, 1)] = v
        S = S - S.T
        w, V = np.linalg.eig(S)
        return (V @ np.diag(np.exp(w)) @ np.linalg.inv(V)).real

    def res(v):
        Rw = so4(v[:6]) @ Eb
        a, b, c = v[6:9]
        out = [a * a + b * b + c * c - 1]
        for r in Rw:
            out += [r[3] ** 2 + r[4] ** 2 - 1 / 3, a * r[0] * r[1] + b * r[0] * r[2] + c * r[1] * r[2]]
        return np.array(out)

    v, err = gauss_newton(res, rng.normal(size=9), tol=1e-15)
    require(err < 1e-12, 'm=5 real frame solved')
    Rw = so4(v[:6]) @ Eb
    al, be, ga = kappa * v[6:9]
    w = Rw[:, :3] * np.sqrt(6) / 2
    cs = Rw[:, 3:] * np.sqrt(3)
    phi = np.arctan2(cs[:, 1], cs[:, 0])

    def quat(q):
        a, b, c, d = q
        return np.array([[a + 1j * b, c + 1j * d], [-c + 1j * d, a - 1j * b]])

    def unitq(re):
        u = rng.normal(size=3)
        u /= np.linalg.norm(u)
        return np.concatenate([[re], np.sqrt(1 - re * re) * u])

    def partner(b, re, target):
        bv = b[1:]
        nb, nc = np.linalg.norm(bv), np.sqrt(1 - re * re)
        ca = target / (nb * nc)
        require(abs(ca) < 1, 'quaternion realisation feasible')
        bh = bv / nb
        o = rng.normal(size=3)
        o -= o @ bh * bh
        o /= np.linalg.norm(o)
        return np.concatenate([[re], nc * (ca * bh + np.sqrt(1 - ca * ca) * o)])

    require(abs(al) < 2 and abs(be) < 2, 'feasible real parts')
    bp, bm = unitq(al / 2), unitq(-al / 2)
    cp = partner(bp, be / 2, ga / 2 - (al / 2) * (be / 2))
    cm = partner(bm, -be / 2, -ga / 2 - (al / 2) * (be / 2))
    Z2 = np.zeros((2, 2))
    B = np.block([[quat(bp), Z2], [Z2, quat(bm)]])
    C = np.block([[quat(cp), Z2], [Z2, quat(cm)]])
    A0 = np.diag([1, -1, 1, -1]).astype(complex)
    gens = theta_odd_generators()
    Aof = lambda u: uexp_herm(sum(c * g for c, g in zip(u, gens))) @ A0 @ H(uexp_herm(sum(c * g for c, g in zip(u, gens))))
    resA = lambda u: np.array([np.trace(Aof(u) @ B).real, np.trace(Aof(u) @ B).imag,
                               np.trace(Aof(u) @ C).real, np.trace(Aof(u) @ C).imag])
    u, errA = gauss_newton(resA, rng.normal(size=10))
    require(errA < 1e-12, 'Theta-odd A orthogonal to B, C')
    A = Aof(u)
    Us = [(I4 + 1j * np.sqrt(3) * A) / 2, (I4 - 1j * np.sqrt(3) * A) / 2] + [x * I4 + y * B + zc * C for x, y, zc in w]
    z = np.concatenate([[1, 1], np.exp(1j * phi)])
    return np.array([zz * U for zz, U in zip(z, Us)]), z ** 2


def build_reducible_m5(seeds=(6, 8, 9)):
    """(1)+(2) only, one repeated value, random start: lands on reducible families with N != 0."""
    for seed in seeds:
        R, lam, err = lm_family([0, 0, 1, 2, 3, 4], [], seed)
        if err < 1e-11 and len(groups_of(lam, 1e-3)) == 5 and commutant_small_svs(R)[0] < 1e-6:
            return R, lam, err
    raise CheckFailure('no reducible m=5 control found')


def grouped_setup(R, lam, tol=1e-6):
    """Common to M4_COLLISIONS Sec.1-2: roots, U_i, group means, nodes, M(t)."""
    groups = groups_of(lam)
    m = len(groups)
    # same square root within a group; common rotation so that every c_a is far from zero
    best = None
    for th in np.linspace(0, np.pi, 181):
        zs = [np.exp(1j * th) * np.sqrt(lam[g[0]]) for g in groups]
        sc = min(abs(zz.real) for zz in zs)
        if best is None or sc > best[0]:
            best = (sc, th, zs)
    _, th, zs = best
    zi = np.zeros(6, complex)
    for g, zz in zip(groups, zs):
        zi[g] = zz
    U = [R[i] / zi[i] for i in range(6)]
    n = [len(g) for g in groups]
    Fa = [sum(U[i] for i in g) / len(g) for g in groups]
    Da = {a: (U[g[0]] - U[g[1]]) / 2 for a, g in enumerate(groups) if len(g) == 2}
    c = np.array([zz.real for zz in zs])
    s = np.array([zz.imag for zz in zs])
    ta = s / c
    require(len(set(np.round(ta, 8))) == m, 'distinct nodes')
    rel1 = nrm(sum(n[a] * c[a] * Fa[a] for a in range(m)))
    rel2 = nrm(sum(n[a] * s[a] * Fa[a] for a in range(m)))
    require(rel1 < tol and rel2 < tol, 'relations (2)')
    Mc = [np.zeros((4, 4), complex) for _ in range(m)]
    for a in range(m):
        poly = np.poly([ta[b] for b in range(m) if b != a])[::-1]     # low -> high
        for k, pk in enumerate(poly):
            Mc[k] = Mc[k] + n[a] * c[a] * pk * Fa[a]
    d = m - 3
    require(all(nrm(Mc[k]) < tol for k in range(d + 1, m)), 'degree M <= d')
    Mc = Mc[:d + 1]
    fp = np.polyder(np.poly(ta))
    for a in range(m):
        ka = n[a] * c[a] * np.polyval(fp, ta[a])
        dev = nrm(polyeval(Mc, ta[a]) - ka * Fa[a])
        require(dev < tol * max(1.0, abs(ka)), 'M(t_a) = k_a F_a (m=%d, dev %.2e, k %.2e)' % (m, dev, ka))
    return dict(groups=groups, m=m, d=d, U=U, zi=zi, Fa=Fa, Da=Da, ta=ta, n=n, Mc=Mc)


def collision_theorem(R, lam, expect_irreducible=True, tol=1e-6):
    """M4_COLLISIONS Sec.2-4: M^#M = rI + pN, MN=N'M, D_a N = N'D_a, then N=0 and (10)-(13)."""
    S = grouped_setup(R, lam, tol)
    Mc, groups, ta, d = S['Mc'], S['groups'], S['ta'], S['d']
    G = polymul(sharp(Mc), Mc)
    GG = polymul(Mc, sharp(Mc))
    r = [np.trace(c).real / 4 for c in G]
    sing = [a for a, g in enumerate(groups) if len(g) == 1]
    pp = np.poly([ta[a] for a in sing])[::-1] if sing else np.array([1.0])
    require(len(pp) == 2 * d + 1 and len(G) == 2 * d + 1, 'deg(M^#M) <= 2d = number of singleton nodes')
    T = [G[k] - r[k] * I4 for k in range(len(G))]
    T2 = [GG[k] - r[k] * I4 for k in range(len(GG))]
    N = T[-1] / pp[-1]
    Np = T2[-1] / pp[-1]
    scale = max(1.0, max(nrm(c) for c in G))
    dev6 = max(max(nrm(T[k] - pp[k] * N) for k in range(len(T))), max(nrm(T2[k] - pp[k] * Np) for k in range(len(T2))))
    require(dev6 < tol * scale, '(6) with constant N, N\' (m=%d dev %.2e scale %.2e)' % (S['m'], dev6, scale))
    require(nrm(N - H(N)) < tol and abs(np.trace(N)) < tol, 'N Hermitian traceless')
    sN = 10 * tol * max(1.0, nrm(N))
    for Uc in S['U']:
        dv = nrm(Uc @ N - Np @ Uc)
        require(dv < sN, 'U_i N = N\' U_i (dev %.2e, |N| %.2e)' % (dv, nrm(N)))
    for a, Dm in S['Da'].items():
        require(nrm(Dm @ N - Np @ Dm) < sN, '(8) D_a N = N\' D_a')
    out = {'m': S['m'], 'd': d, 'norm_N': nrm(N)}
    sv = commutant_small_svs(R)
    out['commutant_second_smallest_sv'] = float(sv[0])
    if not expect_irreducible:
        require(nrm(N) > 1e-2 and sv[0] < 1e-6, 'reducible control: N nonzero, residual reducible')
        a0 = [a for a, g in enumerate(groups) if len(g) == 2][0]
        Pp = R[groups[a0][0]] + R[groups[a0][1]]
        out['pair_identity_violation'] = nrm(H(Pp) @ Pp - I4)
        require(out['pair_identity_violation'] > 1e-2, 'reducible control violates (11): irreducibility is essential')
        for i in range(1, 6):
            require(nrm(N @ H(S['U'][0]) @ S['U'][i] - H(S['U'][0]) @ S['U'][i] @ N) < 1e-6 * max(1, nrm(N)), 'N commutes with U_0^*U_i')
        return out, S
    require(sv[0] > 1e-2, 'irreducible')
    require(nrm(N) < tol and nrm(Np) < tol, '(9) N=N\'=0')
    om = np.exp(2j * np.pi / 3)
    for g in groups:
        if len(g) == 2:
            a, b = g
            Pp, Pm = R[a] + R[b], R[a] - R[b]
            require(nrm(H(Pp) @ Pp - I4) < tol and nrm(H(Pm) @ Pm - 3 * I4) < tol, '(11)')
            Sa = np.zeros((6, 6), complex)
            Sb = np.zeros((6, 6), complex)
            Sa[0, 0] = Sb[0, 0] = 1
            Sa[1, 1], Sb[1, 1] = lam[a], lam[b]
            Sa[2:, 2:], Sb[2:, 2:] = R[a], R[b]
            Gm = H(Sa) @ Sb
            ev = np.linalg.eigvals(Gm)
            for target in (1, om, om ** 2):
                require(sum(abs(ev - target) < 10 * tol) == 2, '(12) spectrum {1,1,w,w,w2,w2}')
            P = np.diag([1, 1, 0, 0, 0, 0])
            require(nrm(np.linalg.matrix_power(Gm, 3) - np.eye(6)) < 10 * tol, 'G^3=I')
            require(nrm(np.eye(6) + Gm + Gm @ Gm - 3 * P) < 10 * tol, '(13a)')
            require(nrm(H(Sa - Sb) @ (Sa - Sb) - 3 * (np.eye(6) - P)) < 10 * tol, '(13b)')
    return out, S


def exclusion_chain(R, lam, S):
    """m4_collision_exclusion Sec.2-6 for d = 1, 2."""
    groups, Mc, d, U, Fa, Da, ta = S['groups'], S['Mc'], S['d'], S['U'], S['Fa'], S['Da'], S['ta']
    out = {}
    # Sec.2: orthogonality (1), independent coefficients, span dimension
    for a, Dm in Da.items():
        for b, Fb in enumerate(Fa):
            require(abs(ip(Dm, Fb)) < 1e-6, '<D_a,F_b>=0')
        for b, Db in Da.items():
            require(abs(ip(Dm, Db) - 3 * (a == b)) < 1e-6, '<D_a,D_b>=3 delta')
    span = np.array([np.concatenate([X.ravel().real, X.ravel().imag]) for X in U])
    require(np.linalg.matrix_rank(span, tol=1e-6) == 4, 'real span of U_i has dimension 4')
    Gr = np.array([[ip(X, Y) for Y in U] for X in U])
    require(abs(Gr.imag).max() < 1e-6, 'normalised Gram is real')
    ev = np.sort(np.linalg.eigvalsh(Gr.real))
    require(np.allclose(ev, [0, 0, 6, 6, 6, 6], atol=1e-6), 'Gram eigenvalues 6 (x4), 0 (x2)')
    coefs = np.array([np.concatenate([X.ravel().real, X.ravel().imag]) for X in Mc])
    require(np.linalg.matrix_rank(coefs, tol=1e-6) == d + 1, 'd+1 independent coefficients')
    for X in Mc:
        for Dm in Da.values():
            require(abs(ip(X, Dm)) < 1e-6, '(2) coefficients orthogonal to differences')
    # Sec.3 factorisation
    factors, Ulead, rho, info = deflate(Mc)
    out['roots'] = info
    As = [A for (_, _, A) in factors]
    Hs = {}
    for a, Dm in Da.items():
        F2 = 2 * Fa[a]
        require(nrm(H(F2) @ F2 - I4) < 1e-6, '2F_a unitary')
        W = H(F2) @ (2 * Dm) / np.sqrt(3)
        require(nrm(W + H(W)) < 1e-6 and nrm(H(W) @ W - I4) < 1e-6, 'W skew-Hermitian unitary')
        Ha = -1j * W
        require(nrm(Ha @ Ha - I4) < 1e-6 and abs(np.trace(Ha)) < 1e-6, 'H_a balanced involution')
        Va = I4.astype(complex)
        for (x, y, A) in reversed(factors):
            Va = Va @ ((ta[a] - x) * I4 + 1j * y * A)
        Va = Va / np.sqrt(abs(np.linalg.det(Va)) ** 0.5)
        eps = F2 @ H(Ulead @ Va)
        require(nrm(eps - eps[0, 0].real * I4) < 1e-6 and abs(abs(eps[0, 0]) - 1) < 1e-6, '(4) 2F_a = eps U V_a')
        Hs[a] = Ha
    invols = As + list(Hs.values())
    require(len(invols) == 3, 'd + p = 3 involutions')
    retr = np.trace(invols[0] @ invols[1] @ invols[2]).real
    out['Re_tr_three_involutions'] = float(retr)
    require(abs(retr) < 1e-6, 'd=%d trace argument: Re tr = 0' % d)
    s, J = alternating_kernel(invols)
    require(s[-1] < 1e-6 and s[-2] > 1e-3, 'unique common alternating form')
    J = J / np.sqrt(abs(np.trace(J @ H(J))) / 4)
    require(nrm(J @ H(J) - I4) < 1e-6, 'J unitary')
    Jout = Ulead @ J @ Ulead.T
    for Ui in U:
        require(nrm(Ui @ J @ Ui.T - Jout) < 1e-5, 'Sec.6: U_i J U_i^T = U J U^T')
    J6 = np.zeros((6, 6), complex)
    J6[0, 1], J6[1, 0] = 1, -1
    J6[2:, 2:] = J
    Sl = []
    for i in range(6):
        Si = np.zeros((6, 6), complex)
        Si[0, 0], Si[1, 1] = 1, lam[i]
        Si[2:, 2:] = R[i]
        Sl.append(Si)
    for i in range(6):
        Gi = np.linalg.inv(Sl[0]) @ Sl[i]
        require(nrm(Gi @ J6 @ Gi.T - lam[i] / lam[0] * J6) < 1e-5, 'G_i J6 G_i^T = (l_i/l_0) J6')
    out['common_form'] = True
    return out, J, Hs, Ulead


def five_value_chain(R, lam, S, J):
    """five_value_exclusion Sec.1-4 (all steps not using the physical frames), plus the step's content."""
    groups, U, Fa, Da = S['groups'], S['U'], S['Fa'], S['Da']
    (pa,) = list(Da.keys())
    V = H(2 * Fa[pa])
    Up = [V @ X for X in U]
    ip_, im_ = groups[pa]
    A = (Up[ip_] - Up[im_]) / (1j * np.sqrt(3))
    require(nrm(Up[ip_] - (I4 + 1j * np.sqrt(3) * A) / 2) < 1e-6, 'paired slices (I +- i sqrt3 A)/2')
    require(nrm(A - H(A)) < 1e-6 and nrm(A @ A - I4) < 1e-6 and abs(np.trace(A)) < 1e-6, 'A balanced involution')
    for X in Up:
        require(nrm(X @ J @ X.T - J) < 1e-5, 'normalised slices preserve the SAME J')
    require(nrm(A @ J + J @ A.T) < 1e-5, 'AJ + JA^T = 0')
    sing = [g[0] for g in groups if len(g) == 1]
    basis = [I4.astype(complex)]
    for X in [Up[i] for i in sing]:
        w_ = X.copy()
        for b in basis:
            w_ = w_ - ip(b, w_).real / 4 * b
        if nrm(w_) > 1e-4:
            basis.append(w_ * 2 / np.sqrt(ip(w_, w_).real))
    require(len(basis) == 3, 'mean space has real dimension 3 and contains I')
    E1, E2 = basis[1], basis[2]
    require(nrm(H(E1) @ E1 + H(E2) @ E2 - 2 * I4) < 1e-6 and nrm(E1 @ H(E1) + E2 @ H(E2) - 2 * I4) < 1e-6,
            '(1) from the tight real frame')
    for X in (E1, E2):
        require(nrm(X @ J - J @ X.conj()) < 1e-5 and abs(ip(X, 1j * A)) < 1e-6, 'E quaternionic, orthogonal to iA')
    K1 = H(E1) @ E1 - I4
    K2 = H(E1) @ E2 + H(E2) @ E1
    if nrm(K1) < 1e-9 and nrm(K2) < 1e-9:
        B, C = E1, E2
    else:
        Q = K1 if nrm(K1) > nrm(K2) else K2
        Q = 2 * Q / nrm(Q)
        a_, b_ = np.trace(K1 @ Q).real / 4, np.trace(K2 @ Q).real / 4
        require(nrm(K1 - a_ * Q) < 1e-6 and nrm(K2 - b_ * Q) < 1e-6 and nrm(Q @ Q - I4) < 1e-6, 'lemma structure')
        t = 0.5 * np.arctan2(-a_, b_ / 2)
        B = np.cos(t) * E1 + np.sin(t) * E2
        C = -np.sin(t) * E1 + np.cos(t) * E2
    require(nrm(H(B) @ B - I4) < 1e-6 and nrm(H(C) @ C - I4) < 1e-6, 'B, C unitary')
    # channel equivalence: (2/3) sum Ad(R_i) = V^* (X + AXA + BXB^* + CXC^*) V  (output conjugation)
    Xr = herm16(np.random.default_rng(0).normal(size=16))
    lhs = V @ ((2 / 3) * sum(Ri @ Xr @ H(Ri) for Ri in R)) @ H(V)
    rhs = Xr + A @ Xr @ A + B @ Xr @ H(B) + C @ Xr @ H(C)
    require(nrm(lhs - rhs) < 1e-6, 'physically equivalent channel (2)')
    # (3): traceless Gram = q F
    Fm = B + H(B)
    require(nrm(Fm) > 1e-3, 'F != 0 in this control (F=0 branch is the three-Hermitian owner)')
    F = Fm / np.sqrt(abs(np.trace(Fm @ Fm)) / 4)
    al = np.trace((B + H(B)) @ F).real / 4
    be = np.trace((C + H(C)) @ F).real / 4
    ga = np.trace((H(B) @ C + H(C) @ B) @ F).real / 4
    for (x, y, zc) in np.random.default_rng(1).normal(size=(4, 3)):
        Y = x * I4 + y * B + zc * C
        require(nrm(H(Y) @ Y - (x * x + y * y + zc * zc) * I4 - (al * x * y + be * x * zc + ga * y * zc) * F) < 1e-6,
                '(3)')
    for i in sing:
        co = [ip(b, Up[i]).real / 4 for b in (I4, B, C)]
        require(abs(al * co[0] * co[1] + be * co[0] * co[2] + ga * co[1] * co[2]) < 1e-6, 'singletons on conic')
    require(min(abs(al), abs(be), abs(ga)) > 1e-4, '(4) all three cross coefficients nonzero')
    require(nrm(F @ F - I4) < 1e-6 and abs(np.trace(F)) < 1e-6, 'F^2 = I, traceless')
    require(nrm(B @ F - F @ B) < 1e-6 and nrm(C @ F - F @ C) < 1e-6, 'B, C commute with F')
    require(nrm(J @ F.T @ H(J) - F) < 1e-6, 'F Theta-even')
    Pp = (I4 + F) / 2
    Pm = (I4 - F) / 2
    gp = np.trace(H(B) @ C @ Pp).real / 2
    gm = np.trace(H(B) @ C @ Pm).real / 2
    require(abs(gp + gm) < 1e-6 and abs(gp) > 1e-4, 'Re traces of B+^*C+ and B-^*C- opposite, nonzero')
    # Sec.4: five-space, Ad_A multiplicities, D0 = Phi5 + 2P invertible
    Theta = lambda X: J @ X.T @ H(J)
    cand = []
    for k in range(16):
        e = np.zeros(16)
        e[k] = 1
        X = herm16(e)
        cand.append((X + Theta(X)) / 2 - np.trace(X) / 4 * I4)
    five = [F]
    for w_ in cand:
        w_ = w_.copy()
        for b in five:
            w_ = w_ - np.trace(b @ w_).real / 4 * b
        if nrm(w_) > 1e-7:
            five.append(w_ * 2 / np.sqrt(np.trace(w_ @ w_).real))
    require(len(five) == 5, 'five-space')
    Mat = lambda f: np.array([[np.trace(b @ f(c)).real / 4 for c in five] for b in five])
    AdA = Mat(lambda X: A @ X @ A)
    evA = np.sort(np.linalg.eigvalsh((AdA + AdA.T) / 2))
    require(np.allclose(evA, [-1, -1, 1, 1, 1], atol=1e-6), 'Ad_A = (+1)^3 (-1)^2')
    Phi5 = Mat(lambda X: X + A @ X @ A + B @ X @ H(B) + C @ X @ H(C))
    P = (np.eye(5) - AdA) / 2
    D0 = Phi5 + 2 * P
    require(abs(D0[0, 0] - 4) < 1e-6 and np.abs(D0[0, 1:]).max() < 1e-6 and np.abs(D0[1:, 0]).max() < 1e-6,
            'D0 = diag(4, I4+L)')
    RBm = Mat(lambda X: B @ X @ H(B))[1:, 1:]
    require(nrm(RBm.T @ RBm - np.eye(4)) < 1e-6, 'R_B orthogonal on F-perp')
    d0min = float(np.linalg.svd(D0, compute_uv=False)[-1])
    require(d0min > 1e-4, 'D0 invertible')
    kerF = np.linalg.svd(np.vstack([Phi5, np.eye(5)[0]]), compute_uv=False)
    kdim = int(sum(kerF < 1e-6))
    require(kdim <= 1, 'irreducible abstract control has dim(ker Phi5 ∩ F-perp) <= 1')
    require(nrm(A @ F - F @ A) > 1e-3, 'A does not commute with F in the (nonphysical) control')
    return {'alpha_beta_gamma': [float(al), float(be), float(ga)], 'D0_min_sv': d0min,
            'dim_ker_Phi5_Fperp': kdim, 'norm_[A,F]': nrm(A @ F - F @ A),
            'Phi5_singular_values': [float(v) for v in np.linalg.svd(Phi5, compute_uv=False)]}


def calculate():
    t0 = time.time()
    rng = np.random.default_rng(20260927)
    out = {'scope': 'Referee checks for M4 collision machinery and five-value exclusion; abstract operator '
                    'controls only, none is a physical MUB triangle'}
    out['exact'] = exact_checks()
    out['criterion'] = criterion_tests(rng)
    out['two_kraus'] = two_kraus_tests(rng)
    out['deflation'] = deflation_tests(rng)
    out['d0'] = d0_tests(rng)
    out['u0'] = u0_tests(rng)
    # m=3 control
    R3, lam3, Hl = build_m3_control(rng)
    require(gram_error(R3, lam3) < 1e-10, 'm=3 control satisfies (1)')
    c3, _ = collision_theorem(R3, lam3)
    c3['Re_tr_H1H2H3'] = float(np.trace(Hl[0] @ Hl[1] @ Hl[2]).real)
    s3, _ = alternating_kernel(Hl)
    c3['no_common_form_min_sv'] = float(s3[-1])
    require(abs(c3['Re_tr_H1H2H3']) > 1e-3 and s3[-1] > 1e-3,
            'm=3 generic control: no common form (d=0 gives no trace argument)')
    out['m3_control'] = c3
    # reducible m=5 control: N != 0
    Rr, lamr, err = build_reducible_m5()
    require(err < 1e-11, 'reducible control converged')
    cr, _ = collision_theorem(Rr, lamr, expect_irreducible=False)
    out['m5_reducible_control'] = cr
    # teeth: the irreducible-branch checks must reject the reducible control
    try:
        collision_theorem(Rr, lamr, expect_irreducible=True)
        raise RuntimeError('reducible control wrongly accepted')
    except CheckFailure as exc:
        out['negative_control_rejected'] = str(exc)
    # perfect-ray repair: sum_k v_k v_k^* = I with unit v_k forces orthonormality, via
    # tr((sum P_k)^2) = sum_{k,l} |<v_k,v_l>|^2 = 4 + off-diagonal terms.
    vs = [v / np.linalg.norm(v) for v in (rng.normal(size=(4, 4)) + 1j * rng.normal(size=(4, 4)))]
    Sm = sum(np.outer(v, v.conj()) for v in vs)
    require(abs(np.trace(Sm @ Sm).real - sum(abs(np.vdot(a, b)) ** 2 for a in vs for b in vs)) < 1e-10,
            'trace identity behind the perfect-ray orthonormality')
    # m=4 (d=1) irreducible family
    R4, lam4, seed4 = build_m4_family()
    require(gram_error(R4, lam4) < 1e-10, 'm=4 family satisfies (1)')
    c4, S4 = collision_theorem(R4, lam4)
    e4, _, _, _ = exclusion_chain(R4, lam4, S4)
    c4.update(e4)
    c4['lambda'] = [[float(x.real), float(x.imag)] for x in lam4]
    c4['antipodal'] = bool(abs(lam4[0] + lam4[2]) < 1e-6 and abs(lam4[4] + lam4[5]) < 1e-6)
    out['m4_family'] = c4
    # m=5 (d=2) structured irreducible families
    fams = []
    for kind, seed in (('unconstrained_LM', 1), ('unconstrained_LM', 3), ('unconstrained_LM', 7),
                       ('structured', 15), ('structured', 36), ('structured', 39)):
        if kind == 'structured':
            R5, lam5 = build_m5_structured(seed)
        else:
            R5, lam5, err5 = lm_family([0, 0, 1, 2, 3, 4], [], seed)
            require(err5 < 1e-11, 'LM m=5 family converged')
        require(gram_error(R5, lam5) < 1e-10, 'structured m=5 family satisfies (1)')
        require(max(nrm(H(X) @ X - I4) for X in R5) < 1e-10, 'unitary slices')
        require(abs(lam5.sum()) < 1e-10, 'zero-sum characters')
        require(len(groups_of(lam5, 1e-3)) == 5, 'five distinct values')
        c5, S5 = collision_theorem(R5, lam5)
        e5, J5, _, _ = exclusion_chain(R5, lam5, S5)
        f5 = five_value_chain(R5, lam5, S5, J5)
        c5.update(e5)
        c5['five_value'] = f5
        c5['seed'] = seed
        c5['kind'] = kind
        fams.append(c5)
    out['m5_families'] = fams
    out['elapsed_seconds'] = round(time.time() - t0, 2)
    require(out['elapsed_seconds'] < 60, 'time budget')
    return json.loads(json.dumps(out, default=float))


if __name__ == '__main__':
    print(json.dumps(calculate(), indent=1))
