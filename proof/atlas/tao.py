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

if __name__ == '__main__':
    R = float(sys.argv[1]) if len(sys.argv) > 1 else 0.08
    H = np.exp(2j * np.pi * K / 3)
    assert abs(H @ H.conj().T - 6 * np.eye(6)).max() < 1e-12
    B = BallRecord((2 * math.pi * K / 3).reshape(36), sigma_try=(2.1, 2.0, 1.9, 1.7), dimT=0)
    print('S6: tangent dimension 0, sigma >= %.2f, e0 = %.2e' % (B.sigma, B.e0))
    ok1 = B.unique_in_ball(R)
    print('isolation: L R = %.4f < sigma = %.2f: %s' % (L_PHI * R, B.sigma, ok1))
    o = B.stage_c(R, radius=0.03)
    print('Stage C on the ball R = %.3f: ok %s (n = %.2e, bins %s, labels %s)' % (R, o.get('ok'), o.get('n', 0), o.get('bins'), o.get('labels')))
    ok = ok1 and o.get('ok')
    print('TAO PASS' if ok else 'TAO FAIL'); sys.exit(0 if ok else 1)
