"""Quantitative consequences of separately certified local tube constants.

These functions do not assert geometric inclusion or boundary coverage.
Their constants, metric, residual normalization and domain must be bound
to the local theorem before a returned gap can be used by a classifier.
"""
from flint import arb
from intervals import endpoints


def _positive(*values):
    if any(not arb(v).is_finite() or not arb(v) > 0 for v in values):
        raise ValueError('strictly positive certified constants required')


def product_gap(sigma, hessian, wall_radius):
    sigma, hessian, t = map(arb, (sigma, hessian, wall_radius))
    _positive(sigma, hessian, t)
    gap = sigma*t-hessian*t*t/2
    _positive(gap)
    return gap


def regular_gap(sigma, hessian, ambient_radius, transverse_radius):
    sigma, hessian, r, t = map(arb, (sigma, hessian, ambient_radius, transverse_radius))
    _positive(sigma, hessian, r, t)
    _positive(sigma-hessian*r)
    return arb(3).sqrt()/2*(sigma-hessian*r)*t


def crossing_gap(normal_defect, mixed_defect, normal_inverse_norm,
                 obstruction_norm, normal_derivative, normal_wall, kernel_wall):
    q, delta, alpha, beta, m, b, t = map(arb, (
        normal_defect, mixed_defect, normal_inverse_norm,
        obstruction_norm, normal_derivative, normal_wall, kernel_wall))
    _positive(alpha, beta, b, t, 1-q, 1-delta)
    if not q >= 0 or not delta >= 0 or not m >= 0:
        raise ValueError('nonnegative defect and derivative bounds required')
    normal = (1-q)*b/alpha
    mixed = (1-delta)*t*t/(beta+m*alpha/(1-q))
    # Use lower endpoints: the returned point is a uniform certified lower
    # bound, not an interval containing the unknown actual minimum.
    return min(normal.lower(), mixed.lower())


def epsilon_below(gaps):
    """One common exact dyadic positive level strictly below every gap^2."""
    gaps = [arb(g) for g in gaps]
    if not gaps:
        raise ValueError('nonempty complete boundary gap list required')
    _positive(*gaps)
    lower = min(g.lower() for g in gaps)
    candidate = arb(1)
    exponent = 0
    while not 2*candidate < lower*lower:
        candidate /= 2
        exponent += 1
        if exponent > 100000:
            raise ArithmeticError('epsilon conversion limit reached')
    return '1/'+str(2**exponent)


def unweighted_to_native(gap):
    """||diag(I_60,I_36/6) F|| >= ||F||/6; phase metric is unchanged."""
    gap = arb(gap)
    _positive(gap)
    return gap/6

