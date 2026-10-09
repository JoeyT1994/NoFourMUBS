"""Tao's matrix S6 as a zero-dimensional ball Record: it is isolated in the quotient and it is not a quartet edge.

S6 has entries e(k_ij/3) (the matrix K below).  At S6 the Hadamard Jacobian J is injective on the 25-dimensional
horizontal space (tangent dimension 0), with sigma >= 2.1 certified by an Arb Cholesky factorisation.  For the ball
B = {e^{i(P + delta)} : delta horizontal, ||delta|| <= R}, P the float rounding of 2 pi K/3:
  * uniqueness (BallRecord.unique_in_ball): L R < sigma, so B contains at most one Hadamard, namely S6 itself
    (||P - 2 pi K/3|| < 1e-14).  Every class within quotient distance R - 1e-14 of [S6] has a representative in B,
    hence equals [S6]: S6 is isolated.
  * Stage C on B (normal bound n(R) ~ e0/sigma, no tangent directions) excludes a quartet edge in B, so S6 is not one.
Exits nonzero on failure.  This replaces the external inputs [BW] and the archived exact Tao verifier.
"""
import math, sys
import numpy as np
from ballrecord import BallRecord, L_PHI

K = np.array([[0, 0, 0, 0, 0, 0], [0, 0, 1, 1, 2, 2], [0, 1, 0, 2, 2, 1],
              [0, 1, 2, 0, 1, 2], [0, 2, 2, 1, 0, 1], [0, 2, 1, 2, 1, 0]])

def exact_spectrum():
    """Exact: on horizontal directions J^T J >= 9/2 at S6, so sigma = 3/sqrt2 exactly (no Arb, no eigensolver).

    J (our convention: the 15 entries a < b of (Z o e^{i delta})(Z o e^{i delta})^*, linearised) has, for the pair (a, b),
    coefficient i W_abc on delta_ac and -i W_abc on delta_bc, with W_abc = w^(K_ac - K_bc), w = e(1/3).  So
    M = J^T J has rational entries, since Re w^m = 1 or -1/2.  We check exactly that M(M - 9/2)(M - 12) = 0, that
    tr M = 180 and tr M^2 = 1620 (multiplicities 11, 16, 9), and that the 11-dimensional gauge space (row-plus-column
    patterns) lies in ker M.  The horizontal space is the orthogonal complement of the gauge space, hence the span of
    the eigenvalues 9/2 and 12.  (After the integer certificate in research/conditioning/return/verify_tao.py.)"""
    from fractions import Fraction as Fr
    re_w = lambda m: Fr(1) if m % 3 == 0 else Fr(-1, 2)
    idx = lambda a, c: 6 * a + c
    M = [[Fr(0)] * 36 for _ in range(36)]
    for a in range(6):
        for b in range(a + 1, 6):
            # J_ab row: coefficient i*w^(K_ac - K_bc) at (a, c) and its negative at (b, c)
            coef = {}
            for c in range(6):
                e = int(K[a][c] - K[b][c])
                coef.setdefault(idx(a, c), []).append((e, 1))
                coef.setdefault(idx(b, c), []).append((e, -1))
            for x, cx in coef.items():
                for y, cy in coef.items():
                    # Re(conj(i w^ex sx) * i w^ey sy) = sx sy Re(w^(ey - ex))
                    M[x][y] += sum(sx * sy * re_w(ey - ex) for ex, sx in cx for ey, sy in cy)
    mm = lambda A, B: [[sum(A[i][k] * B[k][j] for k in range(36)) for j in range(36)] for i in range(36)]
    shift = lambda A, t: [[A[i][j] - (t if i == j else 0) for j in range(36)] for i in range(36)]
    assert all(M[i][j] == M[j][i] for i in range(36) for j in range(36))
    P = mm(mm(M, shift(M, Fr(9, 2))), shift(M, Fr(12)))
    assert all(x == 0 for row in P for x in row)
    M2 = mm(M, M)
    assert sum(M[i][i] for i in range(36)) == 180 and sum(M2[i][i] for i in range(36)) == 1620
    # multiplicities m0 + m1 + m2 = 36, (9/2) m1 + 12 m2 = 180, (81/4) m1 + 144 m2 = 1620  =>  (11, 16, 9)
    for g in [[1 if a == r else 0 for a in range(6) for c in range(6)] for r in range(6)] + \
             [[1 if c == r else 0 for a in range(6) for c in range(6)] for r in range(6)]:
        assert all(sum(M[i][j] * g[j] for j in range(36)) == 0 for i in range(36))
    return True   # gauge span has dimension 11 = m0, so ker M = gauge and M >= 9/2 on the horizontal space


if __name__ == '__main__':
    R = float(sys.argv[1]) if len(sys.argv) > 1 else 0.08
    H = np.exp(2j * np.pi * K / 3)
    assert abs(H @ H.conj().T - 6 * np.eye(6)).max() < 1e-12
    B = BallRecord((2 * math.pi * K / 3).reshape(36), sigma_try=(2.1, 2.0, 1.9, 1.7), dimT=0)
    print('S6: tangent dimension 0, sigma >= %.2f, e0 = %.2e' % (B.sigma, B.e0))
    ok0 = exact_spectrum()
    print('exact spectrum of J^T J on horizontal directions: {9/2 (x16), 12 (x9)}, sigma = 3/sqrt2: %s' % ok0)
    print('isolation (exact): any other Hadamard e^{i(2 pi K/3 + delta)}, delta horizontal, has ||delta|| >= sigma/sqrt3 = sqrt(3/2)')
    ok1 = B.unique_in_ball(R)
    print('isolation: L R = %.4f < sigma = %.2f: %s' % (L_PHI * R, B.sigma, ok1))
    o = B.stage_c(R, radius=0.03)
    print('Stage C on the ball R = %.3f: ok %s (n = %.2e, bins %s, labels %s)' % (R, o.get('ok'), o.get('n', 0), o.get('bins'), o.get('labels')))
    ok = ok0 and ok1 and o.get('ok')
    print('TAO PASS' if ok else 'TAO FAIL'); sys.exit(0 if ok else 1)
