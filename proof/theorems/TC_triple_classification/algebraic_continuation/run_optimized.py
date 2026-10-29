#!/usr/bin/env python3
"""Original-ball all-K certifier with optimized, independently checked support."""
import hashlib
import json
import os
from pathlib import Path
import signal
import sys
from load_native import HERE, ROOT, R
import run_algebraic as previous
import optimized_support as optimized

FROZEN_FINAL = R.final_pattern
FROZEN_JOINT = R.JB.refine
FROZEN_RUN_BALL = R.run_ball
last_joint = None


def binding(atlas):
    value = previous.binding(atlas)
    for name in ('load_native.py','optimized_support.py','run_optimized.py','OPTIMIZED_PROOF.txt'):
        p = HERE/name
        value['sources'][str(p.relative_to(ROOT))] = hashlib.sha256(p.read_bytes()).hexdigest()
    value['schema'] = 'tc-optimized-quadratic-allk-v1'
    value['extensions'].append('optimized residual support with intersected phase bounds')
    value.pop('id')
    value['id'] = hashlib.sha256(json.dumps(value,sort_keys=True).encode()).hexdigest()
    return value


def capture_joint(model, prepared, bounds, clique):
    global last_joint
    pp, bb, receipt = FROZEN_JOINT(model,prepared,bounds,clique)
    last_joint = model, pp, bb, tuple(clique)
    return pp,bb,receipt


def final_pattern(model,prepared,bounds,cover,clique,allow_fine=True):
    global last_joint
    last_joint = None
    result = FROZEN_FINAL(model,prepared,bounds,cover,clique,allow_fine=allow_fine)
    if not allow_fine or result['status'] != 'NOT ESTABLISHED':
        return result
    candidate = last_joint
    if candidate is None or candidate[3] != tuple(clique):
        candidate = model,prepared,bounds,clique
    try:
        proof, info = optimized.exclude(*candidate)
        if proof is not None:
            return dict(**proof, optimized_search=info)
        result['optimized_search'] = info
    except TimeoutError:
        raise
    except Exception as exc:
        # Failure of the optional numerical search does not remove a case.
        result['optimized_search_failure'] = type(exc).__name__+': '+str(exc)
    return result


def timed_run_ball(atlas,index,expected_binding,pattern_cap=500):
    limit = int(os.environ.get('TC_OPTIMIZED_SECONDS','0'))
    def timeout(_signum,_frame):
        raise TimeoutError('original-ball time limit reached')
    if limit:
        signal.signal(signal.SIGALRM,timeout)
        signal.alarm(limit)
    try:
        out = FROZEN_RUN_BALL(atlas,index,expected_binding,pattern_cap)
        out['time_limit_seconds'] = limit
        return out
    finally:
        if limit:
            signal.alarm(0)


R.binding = binding
R.JB.refine = capture_joint
R.final_pattern = final_pattern
R.run_ball = timed_run_ball


if __name__ == '__main__':
    if '--seconds' in sys.argv:
        i = sys.argv.index('--seconds')
        os.environ['TC_OPTIMIZED_SECONDS'] = str(int(sys.argv[i+1]))
        del sys.argv[i:i+2]
    raise SystemExit(R.main())
