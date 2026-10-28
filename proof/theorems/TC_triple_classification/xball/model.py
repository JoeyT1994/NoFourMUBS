"""Original X-ball model and explicit Stage C magnitude preconditions."""
import gzip
import hashlib
import json
import math

import bootstrap as B
import numpy as np
from flint import arb, ctx

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
