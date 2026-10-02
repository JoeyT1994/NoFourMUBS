"""Exact checks for the quartet-edge corollary (QuartetEdgeCorollary.md).

1. The block normal form N(p,q) of ProvenResults/FourierBlocks is the
   transposed Fourier family, and N(p,q)^T is the Fourier family
   F_6^(2)(a,b) = F_6 o EXP(i R(a,b)) of the Tadej-Zyczkowski catalogue,
   up to a row permutation, with (p,q) = (zeta e^{ia}, zeta^2 e^{ib}),
   zeta = exp(2 pi i/6).  Checked as an identity in Q(zeta)[alpha,beta].
2. Every 3x3 submatrix position is reached from the upper-left corner by a
   row and a column permutation, and zero 3-minors / Hadamard blocks are
   invariant under monomial equivalence and transposition.  Checked on the
   exact Tao representative used by FourierBlocks: it has Hadamard blocks
   but no zero 3-minor in any of the 400 positions (so the Tao branch of the
   FourierBlocks theorem cannot arise from a zero 3-minor).
"""
from itertools import combinations, permutations, product
import json
import sympy as sp


def fourier_family_identification():
    zeta = sp.exp(sp.I*sp.pi/3)
    alpha, beta = sp.symbols('alpha beta', nonzero=True)
    phase = {0: 1, 1: alpha, 2: beta}
    # Tadej-Zyczkowski: R(a,b) has rows (0,a,b,0,a,b) at odd j, zero at even j.
    Fab = sp.Matrix(6, 6, lambda j, k: zeta**(j*k)*(phase[k % 3] if j % 2 else 1))
    F3 = sp.Matrix(3, 3, lambda i, j: zeta**(2*i*j))
    p, q = zeta*alpha, zeta**2*beta
    D = sp.diag(1, p, q)
    N = sp.Matrix(sp.BlockMatrix([[F3, D*F3], [F3, -D*F3]]))   # FourierBlocks convention
    rows = [0, 2, 4, 1, 3, 5]
    permuted = Fab.extract(rows, list(range(6)))
    diff = (permuted-N.T).applyfunc(lambda x: sp.simplify(sp.expand(x)))
    assert diff == sp.zeros(6, 6)
    # hence F^T(a,b) with columns permuted equals N(p,q)
    diff2 = (Fab.T.extract(list(range(6)), rows)-N).applyfunc(lambda x: sp.simplify(sp.expand(x)))
    assert diff2 == sp.zeros(6, 6)
    return {'F_ab_rows_0_2_4_1_3_5_equals_N_transpose': True,
            'F_ab_transpose_equals_N_up_to_column_permutation': True,
            'parameter_map': '(p,q)=(zeta*exp(ia), zeta^2*exp(ib)), zeta=exp(i*pi/3)'}


def tao_positions():
    # Exact arithmetic in Z[omega] as pairs (a,b) = a+b*omega.
    def mul(x, y):
        a, b = x; c, d = y
        return a*c-b*d, a*d+b*c-b*d
    def add(x, y):
        return x[0]+y[0], x[1]+y[1]
    def neg(x):
        return -x[0], -x[1]
    def star(x):
        a, b = x
        return a-b, -b
    roots = ((1, 0), (0, 1), (-1, -1))
    tao = ((0, 0, 0, 0, 0, 0), (0, 0, 1, 1, 2, 2), (0, 1, 0, 2, 2, 1),
           (0, 1, 2, 0, 1, 2), (0, 2, 2, 1, 0, 1), (0, 2, 1, 2, 1, 0))
    H = [[roots[e] for e in row] for row in tao]
    def det3(M):
        total = (0, 0)
        for p in permutations(range(3)):
            sgn = (-1)**sum(p[i] > p[j] for i in range(3) for j in range(i+1, 3))
            term = (1, 0)
            for i in range(3):
                term = mul(term, M[i][p[i]])
            total = add(total, term if sgn > 0 else neg(term))
        return total
    zero_minors = blocks = 0
    triples = list(combinations(range(6), 3))
    for I, J in product(triples, repeat=2):
        M = [[H[i][j] for j in J] for i in I]
        if det3(M) == (0, 0):
            zero_minors += 1
        gram_ok = True
        for r, s in product(range(3), repeat=2):
            v = (0, 0)
            for k in range(3):
                v = add(v, mul(M[r][k], star(M[s][k])))
            if v != ((3, 0) if r == s else (0, 0)):
                gram_ok = False
        blocks += gram_ok
    assert zero_minors == 0 and blocks == 40
    return {'tao_positions_checked': 400, 'tao_zero_minors': 0, 'tao_hadamard_blocks': 40}


def calculate():
    return {'fourier_family_identification': fourier_family_identification(),
            'tao_positions': tao_positions()}


if __name__ == '__main__':
    print(json.dumps(calculate(), indent=2))
