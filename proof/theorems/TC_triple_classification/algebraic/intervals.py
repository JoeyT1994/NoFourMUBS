"""Small outward-rounded primitives. Numerical eigenvalues only propose shifts."""
import math
import numpy as np
from flint import arb, arb_mat
from bootstrap import C


def finite(a):
    if not all(x.is_finite() for x in a.entries()):
        raise ArithmeticError('nonfinite matrix')
    return a


def square(x):
    """Real interval square, including intervals crossing zero (flint 0.9)."""
    x = arb(x)
    if not x.is_finite():
        raise ArithmeticError('nonfinite square')
    if x.contains(0):
        hi = abs(x).upper()
        return arb(0).union(hi * hi)
    return x * x


def energy(xs):
    return sum((square(x) for x in xs), arb(0))


def norm_upper(xs):
    return sum((abs(x).upper() * abs(x).upper() for x in xs), arb(0)).sqrt()


def symmetric(a):
    if a.nrows() != a.ncols():
        raise ValueError('square matrix required')
    return (a + a.transpose()) / 2


def positive_definite(a):
    """Interval LDL of a symmetric enclosure; no floating acceptance."""
    finite(a)
    n = a.nrows()
    if n != a.ncols():
        raise ValueError('square matrix required')
    lower = [[arb(0) for _ in range(n)] for _ in range(n)]
    diagonal = []
    for i in range(n):
        pivot = a[i, i] - sum((lower[i][k] * lower[i][k] * diagonal[k]
                              for k in range(i)), arb(0))
        if not pivot > 0:
            return False
        diagonal.append(pivot)
        for j in range(i + 1, n):
            lower[j][i] = (a[j, i] - sum(
                (lower[j][k] * lower[i][k] * diagonal[k] for k in range(i)),
                arb(0))) / pivot
    return True


def endpoints(x):
    """Exact binary64 outward endpoints, suitable for independent replay."""
    return dict(lower_hex=C.Z.lower(x).hex(), upper_hex=C.Z.upper(x).hex())


def dual_lower(q, g, groups, multipliers):
    """Bound g.v + v.Q.v/2 on a product of unit Euclidean balls.

    Each group must occur exactly once. For Lambda positive semidefinite
    and A=Q+Lambda positive definite, completing the square gives
    -g.A^-1.g/2 - sum(lambda)/2. This is a lower bound even when the
    numerical dual optimizer is inaccurate or fails to find its optimum.
    """
    n = q.nrows()
    if q.ncols() != n or g.nrows() != n or g.ncols() != 1:
        raise ValueError('invalid quadratic dimensions')
    if (sorted(i for group in groups for i in group) != list(range(n))
            or any(not group for group in groups)
            or len(groups) != len(multipliers)):
        raise ValueError('groups must partition all variables')
    lam = [arb(x) for x in multipliers]
    if any(not (v.is_finite() and v >= 0) for v in lam):
        raise ValueError('nonnegative finite dual multipliers required')
    a = symmetric(q)
    for group, v in zip(groups, lam):
        for i in group:
            a[i, i] += v
    if not positive_definite(a):
        raise ArithmeticError('quadratic dual is not certified positive definite')
    solution = a.solve(g)
    value = -(g.transpose() * solution)[0, 0] / 2 - sum(lam, arb(0)) / 2
    if not value.is_finite():
        raise ArithmeticError('nonfinite quadratic dual value')
    return value


def propose_dual(q, g, groups):
    """SLSQP proposes only; dual_lower rechecks the actual interval matrices."""
    from scipy.optimize import minimize
    qn = C.Z.mid_np(symmetric(q))
    gn = C.Z.mid_np(g)[:, 0]
    if not np.isfinite(qn).all() or not np.isfinite(gn).all():
        return []
    scale = max(1., np.linalg.norm(qn, 2), np.linalg.norm(gn))
    floor = scale * 1e-10
    ids = [np.array(group, dtype=int) for group in groups]
    initial = np.array([np.linalg.norm(qn, 2) + np.linalg.norm(gn[z]) + floor
                        for z in ids])

    def matrix(lam):
        a = qn.copy()
        for z, v in zip(ids, lam):
            a[z, z] += v
        return a

    def objective(lam):
        a = matrix(lam)
        try:
            np.linalg.cholesky(a)
            sol = np.linalg.solve(a, gn)
        except np.linalg.LinAlgError:
            return 1e30, np.zeros(len(ids))
        return ((np.dot(gn, sol) + sum(lam))/2,
                np.array([(1 - np.dot(sol[z], sol[z]))/2 for z in ids]))

    def constraint(lam):
        return np.linalg.eigvalsh(matrix(lam))[0] - floor

    def constraint_jac(lam):
        _, vectors = np.linalg.eigh(matrix(lam))
        v = vectors[:, 0]
        return np.array([np.dot(v[z], v[z]) for z in ids])

    result = minimize(objective, initial, jac=True, method='SLSQP',
                      bounds=[(0., None)] * len(ids),
                      constraints=[dict(type='ineq', fun=constraint,
                                        jac=constraint_jac)],
                      options=dict(maxiter=80, ftol=scale*1e-10))
    proposals = []
    if np.isfinite(result.x).all():
        proposals.append(np.maximum(0., result.x) + 10*floor)
    proposals.append(initial)
    return proposals


def quadratic_lower(q, g, groups):
    """Best verified proposal; failure returns None and cannot exclude."""
    best = None
    for proposal in propose_dual(q, g, groups):
        try:
            value = dual_lower(q, g, groups, [float(v) for v in proposal])
        except (ArithmeticError, ZeroDivisionError, ValueError):
            continue
        if best is None or value.lower() > best[0].lower():
            best = value, [float(v).hex() for v in proposal]
    return best

