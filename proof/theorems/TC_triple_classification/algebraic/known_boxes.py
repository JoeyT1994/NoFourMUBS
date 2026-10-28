"""Recompute known-type proofs for removed boxes; never trust a leaf label."""
import numpy as np
from flint import arb, arb_mat
from bootstrap import C, MS
from intervals import norm_upper, endpoints
from intrinsic import sub
import patches as P
import scalar_support as S


def classify(chart, box):
    """All zeros in one explicit 34-coordinate box, on the native branch."""
    if len(box) != 34 or not chart.box_inside(box[:4]):
        return None
    jet = chart.residual_jet(box)
    e = sum((abs(v).lower()**2 if not v.contains(0) else arb(0)
             for v in jet.value.entries()), arb(0))
    if e > 0:
        return dict(status='EXCLUDED', route='direct residual on removed box', energy=endpoints(e))
    model = chart.model
    centre = arb_mat([[v.mid()] for v in box[:4]])
    rho = norm_upper([box[i]-centre[i, 0] for i in range(4)])
    q0, u, eta = P.centre_jet(model, centre)
    local = dict(Q0=q0, U=u, H2=model['H2'], X=model['X'],
                 r=rho.upper(), tau=(model['Z2']*rho*rho/2).upper())
    phase = chart.phase_jet(box).value
    prepared, bounds = {}, {}
    for c in range(6):
        values = [phase[36+6*r+c, 0] for r in range(6)]
        prepared[c] = C.build(local, [float(v.mid()) for v in values])
        actual = C.project6()*arb_mat([[v] for v in values])
        radius = norm_upper((actual-prepared[c]['v0']).entries())
        bounds[c] = C.contract(prepared[c], radius)
    clique = list(range(6))
    excluded = S.exclude(local, prepared, bounds, clique)
    if excluded is not None:
        return excluded
    result = MS.classify(local, prepared, bounds, clique, attempts=3)
    if result['status'] == 'CERTIFIED':
        return dict(**result, route='recomputed symmetry on removed box',
                    chart_centre_error=endpoints(eta))
    return None

