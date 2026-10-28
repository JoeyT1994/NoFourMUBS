"""Uniform, existence-and-uniqueness elimination of all 30 K phases.

This is stronger than a conditional enclosure of exact zeros. It verifies
a parametric contraction for 30 selected equations and retains every one
of the other 36 equations. Rank loss returns an inconclusive result.
"""
import numpy as np
import scipy.linalg as sla
from flint import arb, arb_mat
from bootstrap import C
from intervals import endpoints, finite, energy, symmetric
from intrinsic import sub


def _radii(box):
    result = [v.rad() for v in box]
    if any(not v > 0 for v in result):
        raise ValueError('K graph requires 30 nondegenerate phase intervals')
    return result


class ImplicitGraph:
    """An actual analytic K(w) graph over a native parameter box.

    The full K box contains at most one root of the selected equations
    for each w, and contains one for every w. It consequently contains
    every full triple in that box. An exhaustive all-K cover remains a
    separate requirement; this constructor does not supply one.
    """
    def __init__(self, oracle, wbox, kbox, *, selected=None, inverse_hex=None):
        self.oracle = oracle
        self.wbox = [arb(v) for v in wbox]
        self.kbox = [arb(v) for v in kbox]
        if len(self.wbox) != 4 or len(self.kbox) != 30:
            raise ValueError('four w and 30 K intervals required')
        if not oracle.box_inside(self.wbox):
            raise ArithmeticError('graph parameter box must lie in the certified native ball')
        radius = _radii(self.kbox)
        centre = [v.mid() for v in self.kbox]
        middle = oracle.residual_jet([v.mid() for v in self.wbox]+centre)
        jk_mid = sub(middle.jacobian, range(66), range(4, 34))
        if selected is None:
            _, _, pivots = sla.qr(C.Z.mid_np(jk_mid).T, pivoting=True, mode='economic')
            selected = list(map(int, pivots[:30]))
        if (len(selected) != 30 or len(set(selected)) != 30
                or any(type(i) is not int or not 0 <= i < 66 for i in selected)):
            raise ValueError('30 distinct residual indices required')
        self.selected = list(selected)
        self.remaining = [i for i in range(66) if i not in selected]
        if inverse_hex is None:
            proposal = np.linalg.inv(C.Z.mid_np(sub(jk_mid, selected, range(30))))
            self.pre = C.Z.mat(proposal)
        else:
            if len(inverse_hex) != 30 or any(len(row) != 30 for row in inverse_hex):
                raise ValueError('30 by 30 preconditioner required')
            self.pre = arb_mat([[arb(float.fromhex(v)) for v in row] for row in inverse_hex])
        finite(self.pre)
        full = oracle.residual_jet(self.wbox+self.kbox)
        base = oracle.residual_jet(self.wbox+centre)
        jk = sub(full.jacobian, selected, range(4, 34))
        defect = C.Z.eye(30)-self.pre*jk
        offset = self.pre*sub(base.value, selected, [0])
        ratios, margins = [], []
        for i in range(30):
            variation = sum((abs(defect[i, j])*radius[j] for j in range(30)), arb(0))
            ratios.append(variation/radius[i])
            margins.append(radius[i]-abs(offset[i, 0])-variation)
        if not all(v < 1 for v in ratios):
            raise ArithmeticError('K graph derivative contraction not established')
        if not all(v > 0 for v in margins):
            raise ArithmeticError('K graph self-map not established for every parameter')
        self.receipt = dict(
            status='CERTIFIED PARAMETRIC GRAPH',
            selected_residuals=[30+i for i in self.selected],
            retained_residuals=[30+i for i in self.remaining],
            k_phase_units='turns' if oracle.turns else 'radians',
            contraction_upper=max(C.Z.upper(v) for v in ratios).hex(),
            self_map_margins=[endpoints(v) for v in margins],
            inverse_hex=[[float(v.mid()).hex() for v in row]
                         for row in [[self.pre[i, j] for j in range(30)] for i in range(30)]],
            existence_for_every_parameter=True,
            uniqueness_on_entire_k_box=True,
            exhaustive_all_k_cover_certified=False)

    def _restrict(self, wbox):
        wbox = [arb(v) for v in wbox]
        if len(wbox) != 4 or not all(a.contains(b) for a, b in zip(self.wbox, wbox)):
            raise ValueError('parameter restriction leaves the certified graph domain')
        return wbox

    def graph_enclosure(self, wbox, iterations=4):
        wbox = self._restrict(wbox)
        kbox = list(self.kbox)
        for _ in range(iterations):
            c = [v.mid() for v in kbox]
            full = self.oracle.residual_jet(wbox+kbox)
            base = self.oracle.residual_jet(wbox+c)
            defect = C.Z.eye(30)-self.pre*sub(full.jacobian, self.selected, range(4, 34))
            offset = self.pre*sub(base.value, self.selected, [0])
            proposed = arb_mat([[c[i]] for i in range(30)])-offset+defect*arb_mat(
                [[kbox[i]-c[i]] for i in range(30)])
            # A zero is known to exist for every w. Empty intersection is
            # therefore an error, not an exclusion or classification.
            kbox = [kbox[i].intersection(proposed[i, 0]) for i in range(30)]
        return kbox

    def energy_jet(self, wbox):
        wbox = self._restrict(wbox)
        kbox = self.graph_enclosure(wbox)
        jet = self.oracle.residual_jet(wbox+kbox)
        jg = sub(jet.jacobian, self.selected, range(34))
        normal = self.pre*sub(jg, range(30), range(4, 34))
        first = -normal.solve(self.pre*sub(jg, range(30), range(4)))
        lift = arb_mat([[int(i == j) for j in range(4)] for i in range(4)] +
                       [[first[i, j] for j in range(4)] for i in range(30)])
        second_rhs = arb_mat(30, 16)
        for i, row in enumerate(self.selected):
            weights = [arb(int(j == row)) for j in range(66)]
            h = lift.transpose()*jet.weighted_hessian(weights)*lift
            for a in range(4):
                for b in range(4):
                    second_rhs[i, 4*a+b] = h[a, b]
        second = -normal.solve(self.pre*second_rhs)
        f = sub(jet.value, self.remaining, [0])
        jr = sub(jet.jacobian, self.remaining, range(34))
        reduced_j = jr*lift
        weights = [arb(0)]*66
        for i in self.remaining:
            weights[i] = jet.value[i, 0]
        h = lift.transpose()*jet.weighted_hessian(weights)*lift
        normal_gradient = sub(jr, range(36), range(4, 34)).transpose()*f
        for a in range(4):
            for b in range(4):
                h[a, b] += sum((normal_gradient[i, 0]*second[i, 4*a+b]
                                for i in range(30)), arb(0))
        return (energy(f.entries()), finite(2*reduced_j.transpose()*f),
                finite(symmetric(2*(reduced_j.transpose()*reduced_j+h))))

