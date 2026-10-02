"""Outward certificate for a labelled side chart; no radicals or reconstruction.

Arguments are in radians. A successful certificate proves a unique side
in the supplied six-phase cube for every supplied target moment vector.
It does not identify that side with H+ or prove complete-carrier flatness.
"""
from flint import arb


def moments(q):
    x, y = q[::2], q[1::2]
    z = [b-a for a, b in zip(x, y)]
    return [sum(f(t) for t in angles)
            for angles in (x, y, z) for f in (arb.cos, arb.sin)]


def jacobian(q):
    J = [[arb(0) for _ in range(6)] for _ in range(6)]
    for j in range(3):
        a, b = q[2*j:2*j+2]
        z = b-a
        J[0][2*j], J[1][2*j] = -a.sin(), a.cos()
        J[2][2*j+1], J[3][2*j+1] = -b.sin(), b.cos()
        J[4][2*j], J[5][2*j] = z.sin(), -z.cos()
        J[4][2*j+1], J[5][2*j+1] = -z.sin(), z.cos()
    return J


def seed_moments(theta):
    a, b, c, d = theta
    return [-(1+a.cos()+b.cos()), -(a.sin()+b.sin()),
            -(1+c.cos()+d.cos()), -(c.sin()+d.sin()),
            -(1+(c-a).cos()+(d-b).cos()),
            -((c-a).sin()+(d-b).sin())]


def certify(q0, radius, target, inverse):
    """Fixed-preconditioner contraction; unresolved input always returns False.

    q0 and inverse may be floating proposals: converting them to Arb treats
    their binary values exactly. target must enclose all requested moments.
    Acceptance uses Arb comparisons and never floating norm estimates.
    """
    q0 = [arb(v) for v in q0]
    radius = arb(radius)
    A = [[arb(v) for v in row] for row in inverse]
    if not radius > 0:
        return False
    J = jacobian([v+arb(0, radius) for v in q0])
    residual = [v-t for v, t in zip(moments(q0), target)]
    for i in range(6):
        eta = abs(sum(A[i][k]*residual[k] for k in range(6)))
        lam = sum(abs(arb(int(i == j))-sum(A[i][k]*J[k][j]
                  for k in range(6))) for j in range(6))
        if not (lam < 1 and eta+lam*radius < radius):
            return False
    return True
