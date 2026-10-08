"""A two-phase, reconstruction-free certificate that a seed box misses D0.

Acceptance uses outward Arb balls only. Seed boxes may cross R=0.
An unresolved cover returns False; numerical proposals are never accepted.
"""
from itertools import combinations, product
import math
from flint import arb, acb, ctx

ctx.prec = 96
I = acb(0, 1)


def parity(values):
    return (-1)**sum(values[i] > values[j]
                    for i in range(len(values)) for j in range(i+1, len(values)))


TERMS = []
for i in range(3):
    for j in range(3):
        if i == j:
            continue
        a, b = [k for k in range(3) if k != i]
        c, d = [k for k in range(3) if k != j]
        sign = parity([2*a, 2*b, 2*c+1, 2*d+1, 2*i, 2*j+1])
        TERMS.append((i, j, a, b, c, d, sign))


def complementary_R(x_angles, y_angles):
    """R of the complementary physical corner, using six sine products."""
    z = [y-x for x, y in zip(x_angles, y_angles)]
    value = sum(sign*(x_angles[b]-x_angles[a]).sin()
                *(y_angles[d]-y_angles[c]).sin()*(z[i]-z[j]).sin()
                for i, j, a, b, c, d, sign in TERMS)
    return 64*value**2


class Jet:
    """Value, four first derivatives, and 4x4 Hessian in the seed angles.

    All components are complex balls. Product and conjugation rules are
    exact differential identities; evaluating on a box encloses its Hessian.
    """
    def __init__(self, value, gradient=None, hessian=None):
        self.v = acb(value)
        self.d = gradient if gradient is not None else [acb(0)]*4
        self.h = hessian if hessian is not None else [
            [acb(0) for _ in range(4)] for _ in range(4)]

    def __add__(self, other):
        if not isinstance(other, Jet):
            other = Jet(other)
        return Jet(self.v+other.v,
                   [self.d[i]+other.d[i] for i in range(4)],
                   [[self.h[i][j]+other.h[i][j] for j in range(4)]
                    for i in range(4)])

    __radd__ = __add__

    def __neg__(self):
        return self*(-1)

    def __sub__(self, other):
        return self+(-other)

    def __rsub__(self, other):
        return (-self)+other

    def __mul__(self, other):
        if not isinstance(other, Jet):
            return Jet(self.v*other, [v*other for v in self.d],
                       [[v*other for v in row] for row in self.h])
        return Jet(self.v*other.v,
                   [self.d[i]*other.v+self.v*other.d[i] for i in range(4)],
                   [[self.h[i][j]*other.v+self.d[i]*other.d[j]
                     +self.d[j]*other.d[i]+self.v*other.h[i][j]
                     for j in range(4)] for i in range(4)])

    __rmul__ = __mul__

    def conjugate(self):
        return Jet(self.v.conjugate(), [v.conjugate() for v in self.d],
                   [[v.conjugate() for v in row] for row in self.h])

    def real(self):
        return Jet(self.v.real, [v.real for v in self.d],
                   [[v.real for v in row] for row in self.h])

    def abs2(self):
        return (self*self.conjugate()).real()


def R_jet(centers, radii):
    phases = []
    for i, (center, radius) in enumerate(zip(centers, radii)):
        value = acb(0, center+arb(0, radius)).exp()
        gradient = [acb(0)]*4
        gradient[i] = I*value
        hessian = [[acb(0) for _ in range(4)] for _ in range(4)]
        hessian[i][i] = -value
        phases.append(Jet(value, gradient, hessian))
    a, b, c, d = phases
    s, t = -(1+a+b), -(1+c+d)
    r = -(1+c*a.conjugate()+d*b.conjugate())
    X, Y, Z = s.abs2(), t.abs2(), r.abs2()
    p = X+Y+Z
    J = 2*(s*r*t.conjugate()).real()
    W = X*Y+X*Z+Y*Z-X*Y*Z
    g, eta = 27-3*p+J, 9-p+J
    chi = W-(p-9)*(p-18)+(p-15)*J
    return 4*g*g*eta-chi*chi


def R_upper_bound(centers, radii):
    """Second-order Taylor upper bound; see PROOF.md section 4."""
    at_center = R_jet(centers, [arb(0)]*4)
    over_box = R_jet(centers, radii)
    return (at_center.v.real
            +sum(radii[i]*abs(at_center.d[i]) for i in range(4))
            +sum(radii[i]*radii[j]*abs(over_box.h[i][j])
                 for i in range(4) for j in range(4))/2)


def certify_R_cap(centers, radii, cap, budget=4096):
    """Certify R < cap on the full closed seed box, allowing subdivision."""
    queue = [(centers, radii, 0)]
    nodes = 0
    while queue:
        if nodes >= budget:
            return False, nodes
        cc, rr, depth = queue.pop()
        nodes += 1
        if R_upper_bound(cc, rr) < cap:
            continue
        if depth >= 20:
            return False, nodes
        axis = depth % 4
        for sign in (-1, 1):
            child_c, child_r = cc.copy(), rr.copy()
            child_r[axis] /= 2
            child_c[axis] += sign*child_r[axis]
            queue.append((child_c, child_r, depth+1))
    return True, nodes


def cover_side_columns(centers, radii, cap, budget=50000, maxdepth=20):
    """Cover every possible missing column (1,x,y), rejecting or beating cap."""
    angles = [c+arb(0, r) for c, r in zip(centers, radii)]
    ex, ey = [arb(0), *angles[:2]], [arb(0), *angles[2:]]
    xs = [acb(0, v).exp() for v in ex]
    ys = [acb(0, v).exp() for v in ey]
    s, t = -sum(xs), -sum(ys)
    r = -sum(y*x.conjugate() for x, y in zip(xs, ys))
    # Exact dyadic centres and radii in turns; these 64 closed boxes cover T^2.
    queue = [(arb(k)/8+arb(1)/16, arb(l)/8+arb(1)/16,
              arb(1)/16, arb(1)/16, 0)
             for k in range(8) for l in range(8)]
    stats = dict(moment=0, corner=0, nodes=0, maxdepth=0)
    while queue:
        if stats['nodes'] >= budget:
            return False, stats
        cx, cy, rx, ry, depth = queue.pop()
        stats['nodes'] += 1
        stats['maxdepth'] = max(stats['maxdepth'], depth)
        tx = (cx+arb(0, rx))*2*arb.pi()
        ty = (cy+arb(0, ry))*2*arb.pi()
        x, y = acb(0, tx).exp(), acb(0, ty).exp()
        A, B, C = s-x, t-y, r-y*x.conjugate()
        if any(abs(v) > 2 for v in (A, B, C)):
            stats['moment'] += 1
            continue
        residual = (A*C*B.conjugate()
                    -(abs(A)**2+abs(B)**2+abs(C)**2-4))
        if not residual.real.contains(0) or not residual.imag.contains(0):
            stats['moment'] += 1
            continue
        if any(complementary_R([ex[j], ex[k], tx], [ey[j], ey[k], ty]) > cap
               for j, k in combinations(range(3), 2)):
            stats['corner'] += 1
            continue
        if depth >= maxdepth:
            return False, stats
        if rx >= ry:
            queue.extend((cx+sign*rx/2, cy, rx/2, ry, depth+1)
                         for sign in (-1, 1))
        else:
            queue.extend((cx, cy+sign*ry/2, rx, ry/2, depth+1)
                         for sign in (-1, 1))
    assert stats['nodes'] == 2*(stats['moment']+stats['corner'])-64
    return True, stats


def grid_box(case):
    """Slightly enlarge exact pi-grid boxes to include their Float64 versions."""
    level = case['level']
    centers = [arb(k)*arb.pi()/2**level for k in case['grid_numerators']]
    radii = [arb.pi()/2**level+arb(2)**(-40)]*4
    return centers, radii


def certify_case(case):
    centers, radii = grid_box(case)
    cap = case['R_cap']
    r_ok, r_nodes = certify_R_cap(centers, radii, cap)
    if not r_ok:
        return dict(ok=False, reason='R_cap', R_nodes=r_nodes)
    if case.get('transpose', False):
        centers = [centers[i] for i in (0, 2, 1, 3)]
        radii = [radii[i] for i in (0, 2, 1, 3)]
    ok, stats = cover_side_columns(centers, radii, cap)
    return dict(ok=ok, R_nodes=r_nodes, **stats)


def prune_box(centers, radii, budget=50000):
    """General entry point: radians, four Arb centres and four positive radii.

    Return ok=True only for a proved D0 exclusion. Automatic cap selection
    uses sixteen seed subboxes. Floating conversion only proposes a cap;
    every Taylor upper bound is compared to that cap in Arb before use.
    No assumptions about F membership, R positivity, or a reconstruction
    chart are required. Exhausting the budget returns ok=False.
    """
    centers, radii = list(map(arb, centers)), list(map(arb, radii))
    if len(centers) != 4 or len(radii) != 4 or not all(r > 0 for r in radii):
        raise ValueError('Need four centres and four strictly positive radii')
    half = [r/2 for r in radii]
    bounds = [R_upper_bound([c+s*r for c, s, r in zip(centers, signs, half)], half)
              for signs in product((-1, 1), repeat=4)]
    try:
        cap = math.ceil(max(float(v.upper()) for v in bounds))
    except (OverflowError, ValueError):
        return dict(ok=False, reason='unbounded_R')
    if not all(v < cap for v in bounds):
        cap += 1
    if not all(v < cap for v in bounds):
        return dict(ok=False, reason='R_cap')
    if cap <= 0:
        return dict(ok=True, reason='R_negative', R_cap=cap)
    for transpose in (False, True):
        order = (0, 2, 1, 3) if transpose else (0, 1, 2, 3)
        ok, stats = cover_side_columns([centers[i] for i in order],
                                      [radii[i] for i in order], cap, budget=budget)
        if ok:
            return dict(ok=True, reason='side_column', R_cap=cap,
                        transpose=transpose, **stats)
    return dict(ok=False, reason='unresolved', R_cap=cap)
