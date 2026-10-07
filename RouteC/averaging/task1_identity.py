"""Task 1.  Exact Laurent identities behind  R(A) = R^vee(B) = 4 (Im q(B))^2  and the
sum-of-squares form of S(H) = sum_c R_c(H); plus a 60-digit check on random Hadamards.

Exact part (sympy, generic dephased E = [[1,1,1],[1,a,b],[1,c,d]], conj = (a,b,c,d)->1/(a,b,c,d)):
  (i)   g(-s,-t,-r)   = det(E) conj(det E)               (= det E E^dagger)
  (ii)  eta(-s,-t,-r) = perm(E) conj(perm E)
  (iii) chi(-s,-t,-r) = -(q + conj q),   q = perm(E) det(E)^2 / prod(E)
  (iv)  R^vee(E) := R(-s,-t,-r) = 4|det|^4|perm|^2 - (q+conj q)^2 = -(q - conj q)^2 = 4 (Im q)^2
  (v)   D(E) (the 6x6 determinant of CornerBounds/PROOF.md s2) = q - conj q   (sign fixed below)
"""
import sys, itertools
import sympy as sp
import mpmath as mp
import numpy as np

sys.path.insert(0, __file__.rsplit('/', 1)[0])


def exact():
    a, b, c, d = V = sp.symbols('a b c d', nonzero=True)
    cj = lambda e: sp.sympify(e).xreplace({x: 1 / x for x in V})
    E = sp.Matrix([[1, 1, 1], [1, a, b], [1, c, d]])
    G = 6 * sp.eye(3) - E * E.applyfunc(cj).T
    s, t, r = G[1, 0], G[2, 0], G[2, 1]

    def inv(s, t, r):
        X, Y, Z = [sp.expand(x * cj(x)) for x in (s, t, r)]
        p = X + Y + Z; J = sp.expand(s * r * cj(t) + cj(s * r) * t)
        W = X * Y + X * Z + Y * Z - X * Y * Z
        g = 27 - 3 * p + J; eta = 9 - p + J; chi = W - (p - 9) * (p - 18) + (p - 15) * J
        return sp.expand(g), sp.expand(eta), sp.expand(chi), sp.expand(4 * g * g * eta - chi * chi)

    g, eta, chi, R = inv(s, t, r)
    gv, etav, chiv, Rv = inv(-s, -t, -r)
    det = E.det(); perm = sum(sp.prod(E[i, p[i]] for i in range(3)) for p in itertools.permutations(range(3)))
    q = sp.expand(perm * det ** 2 / (a * b * c * d))
    assert sp.expand(gv - det * cj(det)) == 0
    assert sp.expand(etav - perm * cj(perm)) == 0
    assert sp.expand(chiv + q + cj(q)) == 0
    assert sp.expand(Rv + (q - cj(q)) ** 2) == 0
    # also the unflipped version: g = det(6I - E E^dag), and R itself is NOT a square in general
    assert sp.expand(g - sp.expand(G.det())) == 0
    # D of CornerBounds s2
    cols = []
    for x, y in zip((sp.Integer(1), a, b), (sp.Integer(1), c, d)):
        z = y / x
        cols += [sp.Matrix([x, -1 / x, 0, 0, -z, 1 / z]), sp.Matrix([0, 0, y, -1 / y, z, -1 / z])]
    D = sp.expand(sp.Matrix.hstack(*cols).det())
    sign = None
    for sg in (1, -1):
        if sp.expand(D - sg * (q - cj(q))) == 0: sign = sg
    assert sign is not None
    nterms = len(sp.Add.make_args(sp.expand(q - cj(q))))
    print(f'PASS exact: g^v=|det|^2, eta^v=|perm|^2, chi^v=-2Re q, R^v=4(Im q)^2, D = {sign:+d}*(q - conj q)  [{nterms} Laurent terms]')
    return sign


# ---------------------------------------------------------------- 60-digit numerical check
mp.mp.dps = 60


def mp_hadamard(x0):
    """Refine float phases x0 (25) to a 60-digit Hadamard by min-norm Gauss-Newton."""
    x = mp.matrix([mp.mpf(float(v)) for v in x0])
    for it in range(12):
        H = [[mp.mpc(1)] * 6 for _ in range(6)]
        for i in range(5):
            for j in range(5): H[i + 1][j + 1] = mp.expjpi(x[5 * i + j] / mp.pi)
        f = []; Jr = []; Ji = []
        for A in range(6):
            for B in range(A + 1, 6):
                gab = mp.fsum(H[A][j] * mp.conj(H[B][j]) for j in range(6))
                row = [mp.mpc(0)] * 25
                for j in range(1, 6):
                    term = H[A][j] * mp.conj(H[B][j])
                    if A >= 1: row[(A - 1) * 5 + j - 1] += 1j * term
                    if B >= 1: row[(B - 1) * 5 + j - 1] += -1j * term
                f.append(gab); Jr.append(row)
        F = mp.matrix([mp.re(v) for v in f] + [mp.im(v) for v in f])
        J = mp.matrix([[mp.re(v) for v in row] for row in Jr] + [[mp.im(v) for v in row] for row in Jr])
        res = max(abs(v) for v in F)
        if res < mp.mpf(10) ** -55: break
        # min-norm least squares via SVD with cutoff
        U, S, Vt = mp.svd_r(J)
        step = mp.matrix(25, 1)
        for k in range(len(S)):
            if S[k] > mp.mpf(10) ** -20:
                coef = mp.fsum(U[i, k] * F[i] for i in range(30)) / S[k]
                for j in range(25): step[j] += coef * Vt[k, j]
        x = x - step
    return H, res


def mp_R(E):
    E = [[E[i][j] / E[i][0] for j in range(3)] for i in range(3)]
    E = [[E[i][j] / E[0][j] for j in range(3)] for i in range(3)]
    dot = lambda u, v: mp.fsum(u[k] * mp.conj(v[k]) for k in range(3))
    s, t, r = -dot(E[1], E[0]), -dot(E[2], E[0]), -dot(E[2], E[1])
    X, Y, Z = abs(s) ** 2, abs(t) ** 2, abs(r) ** 2; p = X + Y + Z; J = 2 * mp.re(s * r * mp.conj(t))
    g = 27 - 3 * p + J; eta = 9 - p + J; chi = X * Y + X * Z + Y * Z - X * Y * Z - (p - 9) * (p - 18) + (p - 15) * J
    return 4 * g * g * eta - chi * chi


def mp_q(B):
    perm = mp.fsum(mp.fprod(B[i][p[i]] for i in range(3)) for p in itertools.permutations(range(3)))
    det = mp.det(mp.matrix(B))
    return perm * det ** 2 / mp.fprod(B[i][j] for i in range(3) for j in range(3))


def numeric(n=20, seed=7):
    from common import random_hadamard, TRIPLES, COMP
    rng = np.random.default_rng(seed)
    worst = [mp.mpf(0)] * 4
    for k in range(n):
        x = random_hadamard(rng)
        H, res = mp_hadamard(x)
        S1 = S2 = mp.mpf(0)
        for rows in TRIPLES:
            for cols in TRIPLES:
                A = [[H[i][j] for j in cols] for i in rows]
                B = [[H[i][j] for j in COMP[cols]] for i in rows]
                C = [[H[i][j] for j in cols] for i in COMP[rows]]
                Dm = [[H[i][j] for j in COMP[cols]] for i in COMP[rows]]
                RA = mp_R(A); qB = mp_q(B); qC = mp_q(C)
                worst[0] = max(worst[0], abs(RA - 4 * mp.im(qB) ** 2))
                worst[1] = max(worst[1], abs(RA - 4 * mp.im(qC) ** 2))
                worst[2] = max(worst[2], abs(RA - mp_R(Dm)))
                S1 += RA; S2 += 4 * mp.im(mp_q(A)) ** 2
        worst[3] = max(worst[3], abs(S1 - S2))
        print(f'  H#{k}: residual {mp.nstr(res, 3)}, S = {mp.nstr(S1, 15)}, mean R = {mp.nstr(S1 / 400, 8)}')
    print('max |R(A)-4Im q(B)^2|, |R(A)-4Im q(C)^2|, |R(A)-R(D)|, |S - 4 sum Im q^2| =',
          [mp.nstr(w, 3) for w in worst])


if __name__ == '__main__':
    exact()
    numeric(int(sys.argv[1]) if len(sys.argv) > 1 else 10)
