"""Validated 34-variable residual jets on a certified native Hadamard chart.

Coordinates are four original w coordinates and 30 first-row-fixed K
phases. The latter can be radians or turns, explicitly selected. H's 30
Gram equations vanish identically and are dropped; every other equation
is retained. This is an analytic system, not a polynomial expansion.
"""
from dataclasses import dataclass
from functools import lru_cache
import gzip
import hashlib
import json
from pathlib import Path
from flint import arb, arb_mat, acb
from bootstrap import C, MS, native_run as R
from intervals import energy, norm_upper, finite, symmetric
import patches as P
import seedcert as SC

ROWS = tuple(range(30, 96))
K_FREE = tuple(range(42, 72))  # row-major K rows 1,...,5; first row zero


def sub(a, rows, cols):
    return arb_mat([[a[i, j] for j in cols] for i in rows])


def radius(values):
    return norm_upper(values)


@dataclass
class PhaseJet:
    value: object
    derivative: object
    # List of (phase coordinate, second derivative matrix). Unlisted
    # phase coordinates are affine and have identically zero Hessian.
    second: list


class ResidualJet:
    def __init__(self, phase, rows=ROWS):
        if phase.value.nrows() != 72 or phase.derivative.nrows() != 72:
            raise ValueError('72 phase entries required')
        if len(rows) != len(set(rows)) or any(not 0 <= r < 96 for r in rows):
            raise ValueError('invalid residual selection')
        self.phase, self.rows = phase, tuple(rows)
        self.lookup = {r:i for i, r in enumerate(rows)}
        n = len(rows)
        self.value = arb_mat(n, 1)
        weights = arb_mat(n, len(MS.TERMS))
        angles = MS.LMAT * phase.value
        self.zs = []
        for t, (re, im, den, _) in enumerate(MS.TERMS):
            z = acb(0, angles[t, 0]).exp()/den
            self.zs.append(z)
            if re in self.lookup:
                i = self.lookup[re]
                self.value[i, 0] += z.real
                weights[i, t] = -z.imag
            if im in self.lookup:
                i = self.lookup[im]
                self.value[i, 0] += z.imag
                weights[i, t] = z.real
        self.phase_jacobian = weights * MS.LMAT
        self.jacobian = self.phase_jacobian * phase.derivative
        finite(self.value); finite(self.jacobian)

    def weighted_hessian(self, weights):
        """Hessian of a fixed weighted sum, with full chart chain rule."""
        if len(weights) != len(self.rows):
            raise ValueError('wrong number of residual weights')
        coefficients = []
        for t, (re, im, _, _) in enumerate(MS.TERMS):
            value = arb(0)
            if re in self.lookup:
                value -= weights[self.lookup[re]] * self.zs[t].real
            if im in self.lookup:
                value -= weights[self.lookup[im]] * self.zs[t].imag
            coefficients.append(value)
        hphase = MS.LMAT.transpose() * arb_mat(
            [[coefficients[t]*MS.LMAT[t, k] for k in range(72)]
             for t in range(len(MS.TERMS))])
        m = self.phase.derivative
        h = m.transpose()*hphase*m
        gp = arb_mat([weights])*self.phase_jacobian
        for row, second in self.phase.second:
            h += second*gp[0, row]
        return finite(symmetric(h))

    def energy_jet(self):
        f = list(self.value.entries())
        value = energy(f)
        gradient = 2*self.jacobian.transpose()*self.value
        hessian = 2*(self.jacobian.transpose()*self.jacobian+self.weighted_hessian(f))
        return value, finite(gradient), finite(symmetric(hessian))


class NativeChart:
    """Jet oracle conditional on the native normal-form certificate.

    from_atlas is the source-bound entry point. Constructing this class
    with an arbitrary dict is useful in tests but does not certify a chart.
    """
    def __init__(self, model, *, turns=False):
        for key in ('Q0', 'U', 'H2', 'X', 'r', 'tau', 'Z1', 'Z2'):
            if key not in model:
                raise ValueError('missing native model field '+key)
        self.model, self.turns = model, bool(turns)
        self._centres = {}

    @classmethod
    def from_atlas(cls, atlas, index, *, turns=False):
        raw = Path(atlas).read_bytes()
        if hashlib.sha256(raw).hexdigest() != R.PINNED_ATLAS:
            raise ValueError('original atlas hash mismatch')
        records = json.loads(gzip.decompress(raw))['seeds']
        if type(index) is not int or not 0 <= index < len(records):
            raise ValueError('invalid native seed index')
        ball = SC.Ball(records[index])
        c1 = SC.certify_c1(ball, max_boxes=4096)
        if not c1['ok']:
            raise ArithmeticError('native C1 failed')
        model = P.normal_form(ball, prec=160)
        obj = cls(model, turns=turns)
        obj.input = dict(index=index, c1=c1,
                         seed_sha256=hashlib.sha256(json.dumps(records[index], sort_keys=True).encode()).hexdigest(),
                         atlas_sha256=R.PINNED_ATLAS)
        return obj

    def box_inside(self, w):
        return radius(w) <= self.model['r']

    def h_jet(self, w, *, local=True):
        if len(w) != 4 or any(not x.is_finite() for x in w):
            raise ValueError('four finite native coordinates required')
        model = self.model
        h2, x = model['H2'], model['X']
        centre = arb_mat([[v.mid()] for v in w])
        c = [centre[i, 0] for i in range(4)]
        if local and radius(c) <= model['r'] and 'Qbase' in model:
            key = tuple(str(v) for v in c)
            if key not in self._centres:
                self._centres[key] = P.centre_jet(model, centre)[:2]
            q0, u = self._centres[key]
            d = [w[i]-c[i] for i in range(4)]
            rho = radius(d)
            error0, error1 = model['Z2']*rho*rho/2, model['Z2']*rho
        else:
            q0, u, d = model['Q0'], model['U'], w
            # These bounds are valid on box intersect original native ball.
            error0, error1 = model['tau'], model['Z1']
        q = arb_mat(36, 1); j = arb_mat(36, 4); second = []
        for row in range(36):
            xn = C.rownorm(x, row)
            q[row, 0] = q0[row, 0] + sum((u[row, a]*d[a] for a in range(4)), arb(0))
            q[row, 0] += sum((h2[row, 4*a+b]*d[a]*d[b]/2
                              for a in range(4) for b in range(4)), arb(0))
            q[row, 0] += arb(0, (xn*error0).upper())
            hs = arb_mat(4, 4)
            for a in range(4):
                j[row, a] = u[row, a] + sum(
                    ((h2[row, 4*a+b]+h2[row, 4*b+a])*d[b]/2 for b in range(4)), arb(0))
                j[row, a] += arb(0, (xn*error1).upper())
                for b in range(4):
                    hs[a, b] = (h2[row, 4*a+b]+h2[row, 4*b+a])/2
                    hs[a, b] += arb(0, (xn*model['Z2']).upper())
            second.append(hs)
        return q, j, second

    def phase_jet(self, box):
        if len(box) != 34 or any(not arb(v).is_finite() for v in box):
            raise ValueError('34 finite intervals required')
        box = [arb(v) for v in box]
        qh, jh, hhs = self.h_jet(box[:4])
        q, j, second = arb_mat(72, 1), arb_mat(72, 34), []
        for row in range(36):
            q[row, 0] = qh[row, 0]
            hs = arb_mat(34, 34)
            for a in range(4):
                j[row, a] = jh[row, a]
                for b in range(4):
                    hs[a, b] = hhs[row][a, b]
            second.append((row, hs))
        factor = 2*arb.pi() if self.turns else arb(1)
        for col, row in enumerate(K_FREE):
            q[row, 0] = factor*box[4+col]
            j[row, 4+col] = factor
        return PhaseJet(q, j, second)

    def residual_jet(self, box):
        return ResidualJet(self.phase_jet(box))

    def energy_jet(self, box):
        return self.residual_jet(box).energy_jet()


def critical_system(jet, epsilon, height=(1, 0, 0, 0)):
    """Positive-level witness equations and their interval Jacobian.

    Also works after validated K elimination, with a four-variable jet.
    Its exclusion alone is NOT a zero-free conclusion; see barrier.py.
    """
    e, gradient, hessian = jet
    n = gradient.nrows()
    if n not in (4, 34) or hessian.nrows() != n or hessian.ncols() != n:
        raise ValueError('four or 34 intrinsic coordinates required')
    if len(height) != 4:
        raise ValueError('four height coefficients required')
    a = [arb(v) for v in height]
    epsilon = arb(epsilon)
    if not epsilon > 0 or a[0].contains(0) or any(not v.is_finite() for v in a):
        raise ValueError('positive epsilon and nonzero first height coefficient required')
    equations = [e-epsilon]
    rows = [[gradient[j, 0] for j in range(n)]]
    for i in range(4, n):
        equations.append(gradient[i, 0])
        rows.append([hessian[i, j] for j in range(n)])
    for i in range(1, 4):
        equations.append(a[0]*gradient[i, 0]-a[i]*gradient[0, 0])
        rows.append([a[0]*hessian[i, j]-a[i]*hessian[0, j] for j in range(n)])
    return arb_mat([[v] for v in equations]), arb_mat(rows)

