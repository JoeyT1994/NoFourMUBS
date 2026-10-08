"""Task 2 (exact part).  Hessian of S(H) = sum_c R_c(H) at F6 = (zeta^{jk}), zeta = e^{i pi/3},
restricted to the tangent space T of the dephased Hadamard variety.

All arithmetic is in Z[zeta] (pairs (A,B) = A + B zeta, zeta^2 = zeta - 1) and Q; no floats.

Facts checked exactly:
  * T is spanned by the four integer phase patterns t1,t2 (Fourier family F6^(2)(a,b)) and
    t3,t4 = t1^T,t2^T (transposed family); they lie in the kernel of the Jacobian of HH^dag = 6I.
    (dim ker = 4 = defect of F6; the kernel rank count is done with exact rational row reduction
    of the real Jacobian written over the basis {1, sqrt3}.)
  * Every corner of F6 has Im q = 0, i.e. R_c(F6) = 0 (so S = sum_c Dc^2, Dc = 2 Im q_c, has a
    critical zero and its Hessian is 2 sum_c grad Dc grad Dc^T).
  * The Hessian quadratic form on T, its Gram matrices for three metrics, and the exact generalised
    eigenvalues.
"""
import itertools
from fractions import Fraction as Fr
import sympy as sp

TRIPLES = list(itertools.combinations(range(6), 3))
PERMS = list(itertools.permutations(range(3)))
SGN = [1, -1, -1, 1, 1, -1]


class Z:  # A + B*zeta, zeta = e^{i pi/3}
    __slots__ = ('A', 'B')

    def __init__(s, A, B=0): s.A, s.B = A, B
    def __add__(s, o): return Z(s.A + o.A, s.B + o.B)
    def __sub__(s, o): return Z(s.A - o.A, s.B - o.B)
    def __mul__(s, o):
        if not isinstance(o, Z): return Z(s.A * o, s.B * o)
        return Z(s.A * o.A - s.B * o.B, s.A * o.B + s.B * o.A + s.B * o.B)
    __rmul__ = __mul__
    def conj(s): return Z(s.A + s.B, -s.B)          # conj(zeta) = 1 - zeta
    def re(s): return Fr(s.A) + Fr(s.B, 2)          # real part (rational)
    def im3(s): return Fr(s.B, 2)                   # imaginary part / sqrt3
    def iszero(s): return s.A == 0 and s.B == 0


ZETA = [Z(1, 0), Z(0, 1), Z(-1, 1), Z(-1, 0), Z(0, -1), Z(1, -1)]  # zeta^k
EXP = [[(j * k) % 6 for k in range(6)] for j in range(6)]          # F6 exponents


def tangent_basis():
    def Rp(a, b):
        M = [[0] * 6 for _ in range(6)]
        for j in (1, 3, 5):
            M[j][1] = M[j][4] = a; M[j][2] = M[j][5] = b
        return M
    t1, t2 = Rp(1, 0), Rp(0, 1)
    tr = lambda M: [list(r) for r in zip(*M)]
    return [t1, t2, tr(t1), tr(t2)]


def jacobian_exact():
    """Real Jacobian (30x25) of the off-diagonal entries of H H^dag w.r.t. dephased phases.
    d G_ab / d phi_aj = i h_aj conj(h_bj),  d/d phi_bj = -i h_aj conj(h_bj).  i*zeta^k has
    Re = -sin(k pi/3) = -sqrt3*(im3 of zeta^k), Im = cos(k pi/3) = re(zeta^k)."""
    rows = []
    for a in range(6):
        for b in range(a + 1, 6):
            re_row = [0] * 25; im_row = [0] * 25
            for j in range(1, 6):
                k = (EXP[a][j] - EXP[b][j]) % 6
                w = ZETA[k]
                for (who, sg) in ((a, 1), (b, -1)):
                    if who >= 1:
                        idx = (who - 1) * 5 + j - 1
                        re_row[idx] += sg * (-sp.sqrt(3) * sp.Rational(w.im3()))
                        im_row[idx] += sg * sp.Rational(w.re())
            rows += [re_row, im_row]
    return sp.Matrix(rows)


def q_and_dq(entries, tvec):
    """entries: 3x3 F6 exponents; tvec: 3x3 rational phase velocities.  Returns q(B) and
    X = sum t_ij b_ij dq/db_ij  (so d/de q(B o e^{i e t}) = i X at e=0) in Z[zeta]."""
    b = [[ZETA[e % 6] for e in row] for row in entries]
    perm = Z(0); det = Z(0)
    for s, p in zip(SGN, PERMS):
        m = b[0][p[0]] * b[1][p[1]] * b[2][p[2]]
        perm = perm + m; det = det + m * s
    # b_ij * d/db_ij of perm and det: sum over permutation terms containing (i, p[i]=j)
    dperm = Z(0); ddet = Z(0)
    for s, p in zip(SGN, PERMS):
        m = b[0][p[0]] * b[1][p[1]] * b[2][p[2]]
        w = sum(tvec[i][p[i]] for i in range(3))
        dperm = dperm + m * w; ddet = ddet + m * (s * w)
    prodexp = sum(e for row in entries for e in row)
    inv_prod = ZETA[(-prodexp) % 6]
    q = perm * det * det * inv_prod
    tsum = sum(tvec[i][j] for i in range(3) for j in range(3))
    X = (dperm * det * det + perm * det * ddet * 2) * inv_prod - q * tsum
    return q, X


def gauge_project(t):
    """Remove best row+column shifts (least squares) from a 6x6 rational phase matrix."""
    rm = [Fr(sum(r), 6) for r in t]; cm = [Fr(sum(t[i][j] for i in range(6)), 6) for j in range(6)]
    m = Fr(sum(map(sum, t)), 36)
    return [[t[i][j] - rm[i] - cm[j] + m for j in range(6)] for i in range(6)]


def run():
    T = tangent_basis()
    J = jacobian_exact()
    Tv = sp.Matrix([[T[k][i][j] for k in range(4)] for i in range(1, 6) for j in range(1, 6)])
    assert all(sp.simplify(x) == 0 for x in J * Tv)
    # rank of J over Q(sqrt3): write J = J0 + sqrt3 J1, stack real structure  [[J0,3J1],[J1,J0]]
    J0 = J.applyfunc(lambda x: sp.Rational(x.subs(sp.sqrt(3), 0)))
    J1 = (J - J0).applyfunc(lambda x: sp.nsimplify(x / sp.sqrt(3)))
    big = sp.BlockMatrix([[J0, 3 * J1], [J1, J0]]).as_explicit()
    rk = big.rank() // 2
    print('rank of Hadamard Jacobian at F6 over Q(sqrt3):', rk, '-> dim T =', 25 - rk)
    assert rk == 21

    # D_c'(t_k) = 2 * d/de Im q = 2 Re X
    L = []           # 400 x 4 rational
    nzero_corner = 0
    for rows in TRIPLES:
        for cols in TRIPLES:
            ent = [[EXP[i][j] for j in cols] for i in rows]
            line = []
            for k in range(4):
                tv = [[T[k][i][j] for j in cols] for i in rows]
                q, X = q_and_dq(ent, tv)
                assert q.im3() == 0           # R_c(F6) = 4 (Im q)^2 = 0  (here: block = corner itself)
                line.append(2 * X.re())
            L.append(line)
            nzero_corner += any(x != 0 for x in line)
    print('corners with nonzero linear term:', nzero_corner, 'of 400')
    N = sp.Matrix(4, 4, lambda k, l: 2 * sum(sp.Rational(r[k]) * sp.Rational(r[l]) for r in L))   # Hessian of S on T
    Mdeph = sp.Matrix(4, 4, lambda k, l: sum(T[k][i][j] * T[l][i][j] for i in range(6) for j in range(6)))
    G = [gauge_project(t) for t in T]
    Mperp = sp.Matrix(4, 4, lambda k, l: sp.Rational(sum(G[k][i][j] * G[l][i][j] for i in range(6) for j in range(6))))
    lam = sp.symbols('lam')
    out = {}
    print('Hessian of S on T in basis (t1,t2,t3,t4):'); sp.pprint(N)
    for name, M in (('dephased Euclidean |v|^2 on 25 phases', Mdeph), ('gauge-reduced |v_perp|^2 on 36 phases', Mperp)):
        cp = sp.factor((N - lam * M).det())
        ev = sp.solve(cp, lam)
        print(f'metric {name}: Gram =', M.tolist(), '\n   det(N - lam M) =', cp, '\n   eigenvalues =', ev)
        out[name] = ev
    # max over corners of the linear forms: the corner multiset of linear forms (for minimax)
    return L, N, Mdeph, Mperp, out


if __name__ == '__main__':
    import json, os
    L, N, Md, Mp, ev = run()
    here = os.path.dirname(os.path.abspath(__file__))
    json.dump(dict(L=[[str(x) for x in r] for r in L], N=[[str(x) for x in r] for r in N.tolist()],
                   Mdeph=[[str(x) for x in r] for r in Md.tolist()], Mperp=[[str(x) for x in r] for r in Mp.tolist()]),
              open(os.path.join(here, 'results_task2_exact.json'), 'w'), indent=1)
