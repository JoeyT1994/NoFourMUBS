"""Outward replay, frame coverage, and rejection controls for DIRECT_LIFT.md."""
from fractions import Fraction as Q
from itertools import combinations
import json

from direct_lift import (arb, acb, atlas_data, certify_box, certify_any_frame,
                         frame_matrices, sine_sum, TERMS)


def generic_R(E):
    """Independent direct invariant evaluation; no complementary sine sum."""
    a, b, c, d = [E[i][j]*E[0][0]/(E[i][0]*E[0][j])
                  for i, j in ((1, 1), (1, 2), (2, 1), (2, 2))]
    s, t, q = -(1+a+b), -(1+c+d), -(1+c/a+d/b)
    X, Y, Z = abs(s)**2, abs(t)**2, abs(q)**2
    p, J = X+Y+Z, 2*(s*q*t.conjugate()).real
    W = X*Y+X*Z+Y*Z-X*Y*Z
    g, eta = 27-3*p+J, 9-p+J
    chi = W-(p-9)*(p-18)+(p-15)*J
    return 4*g*g*eta-chi*chi


def main():
    assert len(TERMS) == 6
    assert 6*(2+2+4) == 48 and 8*48 == 384 and 2*384 == 768
    assert Q(54, 10**6) < Q(1, 16384)
    # The coefficient in the new bound is the sum of four squared block
    # speeds divided by six, not an unnormalized carrier distance.
    r, k = Q(67, 10), Q(74, 100)
    b2 = Q(72**2*8, 1)/r
    assert b2 < 79**2
    assert Q(1+2*79**2, 6)+(1+2*79)**2/k < 191**2
    print('PASS: square-root corner perturbation and normalization constants')

    pi = arb.pi()
    center = [2*pi/3, 4*pi/3, 2*pi/3, pi/3-2*(arb(1)/16).atan()]
    widths = [arb(1)/5000000]*2+[pi/512]*2
    result = certify_box(center, widths)
    assert result['ok'], result
    assert arb(result['R_path_lower']) > arb('6.7')
    assert arb(result['gram_lower']) > arb('0.74')
    assert arb(result['side_speed_upper']) < 79
    assert arb(result['carrier_speed_upper']) < 189
    assert arb(result['gap_lower']) > arb('0.45')
    assert arb(result['required_gap_upper']) < arb('0.018')
    assert arb(result['carrier_distance_upper']) < arb('0.000054')
    assert tuple(result['gap_columns']) == (1, 3, 5)
    print('PASS: whole elongated patch, transverse 2e-7, tangential pi/512')
    print(json.dumps(result, indent=2))

    # At the exact centre, check the alternative side and every corner
    # against the generic invariant formula, independently of sine_sum.
    omega = acb(0, 2*pi/3).exp()
    z, w = [acb(0, t).exp() for t in center[2:]]
    S, T = 1+z+w, 1+omega.conjugate()*z+omega*w
    alpha = S*T.conjugate()/(S.conjugate()*T)
    gamma = -S/S.conjugate()
    K = [[acb(1)]*6,
         [acb(1), omega, omega*omega, alpha, alpha*omega, alpha*omega*omega],
         [acb(1), z, w, gamma, gamma/w, gamma/z]]
    for i in range(3):
        for j in range(3):
            gram = sum(K[i][n]*K[j][n].conjugate() for n in range(6))
            assert (gram-6*int(i == j)).contains(0)
    R0 = generic_R([row[:3] for row in K])
    assert R0.contains(arb(38654705664)/4362470401)
    for cols in combinations(range(6), 3):
        others = [j for j in range(6) if j not in cols]
        sine = sine_sum([K[1][j].arg() for j in others],
                        [K[2][j].arg() for j in others])
        direct = generic_R([[row[j] for j in cols] for row in K])
        assert direct.overlaps(64*sine*sine), cols
    print('PASS: independent invariant comparison for all 20 alternative corners')

    # All 72 maps, tested with nonzero-width boxes in the mapped frames.
    count = 0
    for rows, cols, tr, matrix in frame_matrices():
        assert all(abs(a) <= 1 for row in matrix for a in row)
        mapped = [sum(a*c for a, c in zip(row, center)) for row in matrix]
        mapped_widths = [sum(abs(a) for a in row)*arb('1e-9') for row in matrix]
        proof = certify_any_frame(mapped, mapped_widths)
        assert proof['ok'], (rows, cols, tr, proof)
        count += 1
    assert count == 72
    print('PASS: all 72 positional frames, including transpose and periodic lifts')

    too_wide = certify_box(center, [arb('1e-6')]*2+widths[2:])
    assert not too_wide['ok'] and too_wide['reason'] == 'outside_proved_tube'
    no_gap = certify_box(center, [arb('1e-4')]*2+widths[2:])
    assert not no_gap['ok'] and no_gap['reason'] == 'alternative_branch_not_excluded'
    boundary = [*center[:2], 2*pi/3, pi/3]
    assert not certify_box(boundary, [arb('1e-7')]*4)['ok']
    production = certify_any_frame(center, [pi/512]*4)
    assert not production['ok']
    try:
        certify_box(center, [arb(-1)]*4)
    except ValueError:
        pass
    else:
        raise AssertionError('Negative widths accepted')
    print('PASS: matrix-radius, branch-gap, R=0, full production-box, and invalid-input controls')
    print('SCOPE: accepted strict reconstruction inputs; R-separated only; no production workload reduction claimed')


if __name__ == '__main__':
    main()
