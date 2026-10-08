#!/usr/bin/env python3
"""NONRIGOROUS pilot: feasible tangent-LP minimax descent with retraction.

No result of this script is a proof or an exclusion certificate.
"""
import argparse
import json
import math
import os
from pathlib import Path
import sys
import time

import numpy as np
from scipy.optimize import least_squares, linprog

OUTPUT_ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(OUTPUT_ROOT / 'inputs' / 'toolkit'))
sys.path.insert(0, str(OUTPUT_ROOT / 'global'))
import common as C
from verify_tube import signed_polynomial

ANTI = signed_polynomial()
EXPS = np.array([e for e in ANTI if tuple(e) < tuple(-v for v in e)], dtype=float)
COEF = np.array([ANTI[tuple(int(v) for v in e)] for e in EXPS], dtype=float)
assert EXPS.shape == (24, 9)
FULLIDS = (6 * C.RI[:, :, None] + C.CI[:, None, :]).reshape(400, 9)
DEPHIDS = {6 * i + j: (i - 1) * 5 + j - 1 for i in range(1, 6) for j in range(1, 6)}
LOCATIONS = [(b, k, DEPHIDS[int(FULLIDS[b, k])])
             for b in range(400) for k in range(9) if int(FULLIDS[b, k]) in DEPHIDS]
BI, KI, DI = np.array(LOCATIONS).T


def values_grad(phi):
    phases = np.zeros((6, 6)); phases[1:, 1:] = phi.reshape(5, 5)
    angles = phases.ravel()[FULLIDS] @ EXPS.T
    f = 2 * (np.sin(angles) @ COEF)
    local = 2 * (np.cos(angles) * COEF) @ EXPS
    grad = np.zeros((400, 25))
    grad[BI, DI] = local[BI, KI]
    return f, grad


def retract(phi, steps=30):
    x = phi.copy()
    for _ in range(steps):
        f = C.hres(x)
        if np.max(np.abs(f)) < 2e-11:
            return x, True
        J = C.hjac(x)
        d = np.linalg.lstsq(J, f, rcond=1e-11)[0]
        x -= d
        if np.linalg.norm(d) > 10:
            return x, False
    return x, np.max(np.abs(C.hres(x))) < 2e-10


def descend(phi, deadline, max_steps=140):
    x = phi.copy(); radius = 0.18; trace = []
    for iteration in range(max_steps):
        if time.monotonic() > deadline:
            reason = 'time_limit'; break
        f, grad = values_grad(x); objective = float(np.max(np.abs(f)))
        J = C.hjac(x)
        U, s, Vh = np.linalg.svd(J, full_matrices=True)
        rank = int(np.sum(s > 2e-7))
        N = Vh[rank:].T
        trace.append({'iteration': iteration, 'M': objective ** 2,
                      'jacobian_rank': rank, 'radius': radius,
                      'hadamard_residual': float(np.max(np.abs(C.hres(x))))})
        if objective < 2e-5:
            reason = 'near_zero_M'; break
        if N.shape[1] == 0:
            reason = 'isolated_tangent'; break
        D = grad @ N; r = N.shape[1]
        A = np.column_stack([np.vstack([D, -D]), -np.ones(800)])
        b = np.concatenate([-f, f])
        lp = linprog(np.r_[np.zeros(r), 1.0], A_ub=A, b_ub=b,
                     bounds=[(-radius / math.sqrt(r), radius / math.sqrt(r))] * r + [(0, None)],
                     method='highs', options={'dual_feasibility_tolerance': 1e-8,
                                               'primal_feasibility_tolerance': 1e-8})
        if not lp.success:
            reason = 'LP_failure:' + str(lp.status); break
        pred = objective - lp.x[-1]
        trace[-1]['predicted_decrease_sqrtM'] = float(pred)
        if pred < 1e-9:
            reason = 'first_order_stationary'; break
        step = N @ lp.x[:r]
        accepted = False
        for ls in range(12):
            trial, ok = retract(x + step)
            if ok:
                nv, _ = values_grad(trial); nobj = float(np.max(np.abs(nv)))
                correction = np.linalg.norm(trial - x - step)
                if nobj < objective - max(1e-10, 0.02 * pred * 2 ** (-ls)) and correction < 2 * np.linalg.norm(step):
                    x = trial; accepted = True
                    if ls == 0 and nobj < objective - .6 * pred:
                        radius = min(.5, 1.25 * radius)
                    else:
                        radius = max(1e-6, radius * 2 ** (-ls))
                    break
            step *= .5
        if not accepted:
            radius *= .2
            if radius < 1e-7:
                reason = 'line_search_stalled'; break
    else:
        reason = 'iteration_limit'
    f, _ = values_grad(x)
    return x, {'reason': reason, 'M': float(np.max(np.abs(f)) ** 2),
               'hadamard_residual': float(np.max(np.abs(C.hres(x)))),
               'trace': trace}


def main():
    p = argparse.ArgumentParser()
    p.add_argument('--starts', type=int, default=30)
    p.add_argument('--seconds', type=float, default=120)
    p.add_argument('--seed', type=int, default=2026100801)
    args = p.parse_args()
    started = time.monotonic(); deadline = started + args.seconds
    rng = np.random.default_rng(args.seed)
    # Floating consistency checks, not certificate claims.
    phi = rng.uniform(-np.pi, np.pi, 25); f, G = values_grad(phi)
    direction = rng.normal(size=25); direction /= np.linalg.norm(direction)
    h = 1e-6
    central = (values_grad(phi+h*direction)[0]-values_grad(phi-h*direction)[0])/(2*h)
    error = float(np.max(np.abs(central-G@direction)))
    assert error < 1e-6
    results=[]
    for k in range(args.starts):
        if time.monotonic() > deadline:
            break
        raw = rng.uniform(-np.pi, np.pi, 25)
        fit = least_squares(C.hres, raw, jac=C.hjac, xtol=1e-12, ftol=1e-12,
                            gtol=1e-12, max_nfev=700)
        residual = float(np.max(np.abs(C.hres(fit.x))))
        if residual > 1e-8:
            results.append({'start_index': k, 'projection_failed': True,
                            'initial_seed': raw.tolist(), 'residual': residual})
            continue
        x, ok = retract(fit.x)
        if not ok:
            continue
        initialM = float(C.R_all(C.Hmat(x)).max())
        direct_error=float(np.max(np.abs(values_grad(x)[0]**2-C.R_all(C.Hmat(x))[[C.CORNERS.index((r,C.COMP[c])) for r,c in C.CORNERS]])))
        y, result=descend(x, deadline)
        result.update({'start_index':k, 'initial_seed':raw.tolist(), 'initial_phi':x.tolist(),
                       'final_phi':y.tolist(), 'initial_M':initialM,
                       'R_consistency_error': direct_error})
        # A gauge-aligned nearest-root candidate is not certified to be in the F orbit.
        # It is logged only as an exploratory proximity diagnostic.
        phase = np.zeros((6,6));phase[1:,1:]=y.reshape(5,5)
        rootres = C.wrap(phase-np.rint(phase/(np.pi/3))*(np.pi/3))
        result['sixth_root_phase_residual_norm'] = float(np.linalg.norm(C.gauge_ls(rootres)))
        results.append(result)
        print(json.dumps({k: result[k] for k in ('start_index','initial_M','M','reason','hadamard_residual','sixth_root_phase_residual_norm')}),flush=True)
    low_M = [e for e in results if e.get('M', float('inf')) < 60]
    if low_M:
        for e in low_M:
            H = C.Hmat(np.array(e['final_phi']))
            e['nu_orbit_alignment_upper_bound'] = float(C.dist_F6(H, top=1)[0][0])
        orbit_count = len(C.orbit())
    else:
        orbit_count = 0
    summary={'classification':'floating-point exploration only; no proof claims',
             'orbit_elements_checked_for_low_M': orbit_count,
             'seed':args.seed,'requested_starts':args.starts,'seconds_limit':args.seconds,
             'elapsed_seconds':time.monotonic()-started,'gradient_consistency_error':error,
             'completed_starts':len(results),'results':results}
    path=Path(__file__).with_name('minimax_results.json')
    path.write_text(json.dumps(summary,indent=2)+'\n')
    print('Wrote',path,flush=True)


if __name__=='__main__': main()
