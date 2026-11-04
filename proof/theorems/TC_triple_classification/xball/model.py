"""Original X-ball model and explicit Stage C magnitude preconditions."""
import gzip
import hashlib
import json
import math

import bootstrap as B
import numpy as np
from flint import arb, arb_mat, ctx
from types import SimpleNamespace

PRECISION = 224


def load_original():
    B.verify_frozen_native()
    document = json.loads(gzip.decompress(B.native_run.DEFAULT_ATLAS.read_bytes()))
    if len(document['edge']) != 1:
        raise ValueError('expected the pinned atlas single X-ball')
    record = document['edge'][0]
    ball = B.EC.EdgeBall(record)
    if record['r'] != '0x1.0a3d70a3d70a4p-3':
        raise ValueError('unexpected original X-ball radius')
    graph = B.EC.GraphData(record['graph'])
    c1 = B.EC.certify_edge_wholeball(ball, record, graph)
    if not c1['ok']:
        raise ArithmeticError('fresh original C1e failed: ' + c1['reason'])
    whole = c1.pop('tubes').model()
    ctx.prec = PRECISION
    whole['ball'] = ball
    digest = hashlib.sha256(json.dumps(record, sort_keys=True).encode()).hexdigest()
    return record, whole, dict(c1e=c1, normal_form=whole['summary'],
                              edge_record_sha256=digest, radius_hex=ball.r.hex())


def stage_c_preconditions(whole):
    """Check RIGOUR.md's input magnitude hypotheses for this actual call.

    Dimensions, normalized direction bounds, finite sums and exponential
    tables are the unchanged Stage C proof. Batch size does not enter an
    individual comparison. New model arguments must satisfy these bounds.
    """
    args, enclosure = B.NC.model_stage_c_args(whole['ball'], whole)
    if args['T'].shape != (36, 4) or args['P'].shape != (6, 6):
        raise ArithmeticError('unexpected Stage C dimensions')
    if not np.isfinite(args['T']).all() or not np.isfinite(args['P']).all():
        raise ArithmeticError('nonfinite Stage C input')
    tmax = max(abs(arb(float(v))) for v in args['T'].ravel())
    if not tmax <= 1:
        raise ArithmeticError('Stage C frame entry exceeds RIGOUR.md bound')
    for key in ('rcol', 'rH', 'nN', 'rF', 'radius'):
        value = args[key]
        if not math.isfinite(value) or not arb(0) <= arb(value) < 1:
            raise ArithmeticError('Stage C scalar outside RIGOUR.md bounds: ' + key)
    opnorm = B.NC.stagec.opnorm_bound(args['P'])
    if not math.isfinite(opnorm) or not arb(opnorm) < arb(101)/100:
        raise ArithmeticError('Stage C centre operator norm not below 1.01')
    # Largest bin is at M=12; coarse labels enforce s<0.1. Fine bins
    # occur at M=96 and use their complete closed mean-zero ball.
    bin_values = dict(a=arb(1)/24, X=arb(29).sqrt()/arb(6).sqrt()/24,
                      L=arb(5)/24, I=arb(5)/24)
    if not all(value < 1 for value in bin_values.values()):
        raise ArithmeticError('Stage C bin magnitude precondition failed')
    return dict(status='CERTIFIED', frame_entry_max=str(tmax),
                centre_opnorm_upper=opnorm,
                scalars={key:args[key] for key in ('rcol', 'rH', 'nN', 'rF', 'radius')},
                bin_maxima={key:str(value) for key,value in bin_values.items()},
                dimensions=[36, 4], margin=B.NC.stagec.MARGIN,
                arithmetic_dependency='proof/atlas/RIGOUR.md Sections 2-3',
                enclosure=enclosure)


def core_model(record, power):
    """Fresh model on an explicitly identified subset of the original ball."""
    if type(power) is not int or not 1 <= power <= 8:
        raise ValueError('invalid core power')
    derived = dict(record)
    derived['r'] = (float.fromhex(record['r'])/2**power).hex()
    whole = B.EW.edge_model(derived, prec=PRECISION)
    whole['ball'] = B.EC.EdgeBall(derived)
    return whole, dict(kind='CORE SUBSET ONLY', original_radius_hex=record['r'],
                       radius_hex=derived['r'], radius_ratio=[1,2**power],
                       normal_form=whole['summary'])


def cell_model(original, cell):
    """Enclose B_r intersect a closed dyadic cell by its true centre jet.

    The containing parameter sub-ball may extend outside B_r. Every segment
    from the anchor to an actual domain point remains inside B_r, which is
    all Taylor's theorem needs. No chart extension is assumed.
    """
    import geometry
    import patches
    geometry.validate(cell)
    lower, _ = geometry.radial_squares(cell)
    if lower > 1:raise ValueError('cell outside original ball')
    r = original['r']
    _, _, vertices = patches.box_geometry(cell, r)
    anchor = patches.anchor_for_box(cell, r)
    cube2 = max(sum((abs(v[i,0]-anchor[i,0]).upper()**2 for i in range(4)),arb(0)).upper()
                for v in vertices)
    min_dot = min(sum((anchor[i,0]*v[i,0] for i in range(4)),arb(0)).lower()
                  for v in vertices)
    sphere2 = r*r + sum((anchor[i,0]**2 for i in range(4)),arb(0)) - 2*min_dot
    squared = min(cube2, sphere2.upper())
    if squared < 0:raise ArithmeticError('negative squared enclosure radius')
    rho = arb(B.EW.upper_finite(squared.sqrt()))
    qc, uc, eta = B.EW.edge_centre_jet(original, anchor)
    hessian = original['beta']+original['x']*original['Z2']
    tau = hessian*rho*rho/2
    local = dict(Q0=qc,U=uc,H2=arb_mat(36,16),X=B.C.Z.eye(36),
                 tau=tau,r=rho,ball=SimpleNamespace(r=float(rho),
                    label_radius=original['ball'].label_radius))
    data = dict(kind='ORIGINAL BALL INTERSECT CLOSED CELL',cell=list(cell),
                id=geometry.identifier(cell),original_radius_hex=original['ball'].r.hex(),
                anchor=[str(anchor[i,0]) for i in range(4)],
                containing_radius=str(rho),hessian_bound=str(hessian),
                centre_jet_error=str(eta),phase_remainder=str(tau),
                chart_extension_outside_original_ball_assumed=False)
    return local,data
