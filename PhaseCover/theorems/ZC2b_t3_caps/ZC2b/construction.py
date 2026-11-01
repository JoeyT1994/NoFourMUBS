#!/usr/bin/env python3
"""Mixed T0/T1/T3 spherical-cap construction, followed by rigorous replay.

All floating computations here only propose cap geometry, S-lemma witnesses,
and polar facets.  A cap enters the retained list only after the relevant Arb
checker accepts it.  A sphere is marked CERTIFIED only after exact integer
coverage accepts the retained list.  Failed spheres keep their original boxes.
"""
from __future__ import annotations

import argparse
import collections
import gc
import gzip
import importlib.util
import itertools
import json
import math
import multiprocessing as mp
from pathlib import Path
import sys
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
for directory in (ROOT / 'atlas', ROOT / 'cert', ROOT / 'ZC'):
    sys.path.insert(0, str(directory))

import numpy as np
from scipy.optimize import minimize
from flint import arb, ctx
import patches as P
import seedcert as SC
import wholeball as Z
import edgecert as EC
import caps as CAPS
import cap_coverage as COV

_spec = importlib.util.spec_from_file_location('zc_original_construction', ROOT/'ZC'/'construction.py')
OLD = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(OLD)


def arr(a):
    return Z.mid_np(a)


def summary(result):
    return {k: v for k, v in result.items() if k not in ('caps', 'coverage')}


def save_result(path, result):
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_suffix('.tmp')
    tmp.write_text(json.dumps(result, indent=2)+'\n')
    tmp.replace(path)


class NumericSeed(OLD.NumericTransfer):
    """Reuse ZC proposals, with production weighting and explicit replay."""
    def enable_weighting(self):
        if self.linear or self.weighted_target:
            return
        import cap_weighted as WT
        bounds = WT.target_bounds(self.tr)
        self.tr._zc_weighted_target_bounds = bounds
        self.tauA = float(bounds['T0'].upper())
        self.curvA = float(bounds['local_hessian'].upper())
        self.weighted_target = True

    def verify(self, cap):
        return CAPS.check_cap(self.model, self.tr, cap)


def best_alignment(q, group):
    """Untrusted Fourier alignment and integer winding at one phase vector.

    The same 36 complement orders as edgecert.t3_distance are tried.  The
    sign convention in the cap record is +2*pi*wind, hence minus the rounded
    dephased phase difference.  Horizontal projection removes dephasing.
    """
    gq = np.asarray(SC.g_matrix(group['g']), dtype=float) @ np.asarray(q)
    I, J = list(group['rows']), list(group['cols'])
    Ic = [i for i in range(6) if i not in I]
    Jc = [j for j in range(6) if j not in J]
    pf = np.asarray([2*math.pi*((i*j) % 6)/6 for i in range(6) for j in range(6)])
    best = None
    for rc, cc in itertools.product(itertools.permutations(Ic), itertools.permutations(Jc)):
        rows, cols = I+list(rc), J+list(cc)
        idx = [6*rows[i]+cols[j] for i in range(6) for j in range(6)]
        d = (gq[idx]-pf).reshape(6, 6)
        dephased = d-d[:, :1]-d[:1, :]+d[0, 0]
        wind = -np.rint(dephased/(2*math.pi)).astype(np.int64)
        z = d+2*math.pi*wind
        z = z-z.mean(axis=0, keepdims=True)-z.mean(axis=1, keepdims=True)+z.mean()
        score = float(np.linalg.norm(z))
        if best is None or score < best[0]:
            best = (score, dict(rows=rows, cols=cols, wind=[int(x) for x in wind.ravel()]))
    return best


class NumericT3:
    def __init__(self, model, target, group, gi):
        import cap_t3 as T3
        self.T3 = T3
        self.tr = T3.Transfer(model, target, group, group_index=gi)
        self.model, self.target, self.group, self.index = model, target, group, gi
        self.linear = False
        self.weighted_target = False
        self.psi_remainder = 'global'
        self.r = float(model['r'])
        self.rt = float(target.r)
        self.Q0, self.U = arr(model['Q0']).ravel(), arr(model['U'])
        self.H2 = arr(model['H2']).reshape(36, 4, 4)
        self.L3 = np.asarray(SC.corner_L(group['rows'], group['cols']) @ SC.g_matrix(group['g']), float)[:3]
        self.S, _ = P.orientation_terms(group['g'], group['rows'], group['cols'], 'h')
        self.Sn = arr(self.S)
        self.Mi = np.linalg.inv(target.Mth)
        self.offset3 = 2*math.pi*np.asarray(group['wind'][:3])-math.pi*np.asarray([1., 2., 2.])/3
        terms = Z.signature_terms()[1]
        self.signs = np.asarray([sg for sg, nu in terms], float)
        self.freqs = np.asarray([nu for sg, nu in terms], float)
        self._local_cache = {}

    def enable_weighting(self):
        self.weighted_target = True

    def phases(self, x):
        w = self.r*np.asarray(x)
        return self.Q0+w@self.U.T+.5*np.einsum('aij,...i,...j->...a', self.H2, w, w)

    def predictor(self, x):
        q = self.phases(x)
        p3 = q@self.L3.T+self.offset3
        f = np.sin((q@self.Sn.T)@self.freqs.T)@self.signs
        pp = np.concatenate([p3, (-2*f)[..., None]], axis=-1)
        return (pp@self.Mi.T)/self.rt

    def local_data(self, v):
        key = (tuple(int(x) for x in v), self.weighted_target)
        if key not in self._local_cache:
            e = np.asarray(v, float)/np.linalg.norm(v)
            _, alignment = best_alignment(self.phases(e), self.group)
            raw = self.T3.prepare_local_data(self.tr, list(key[0]), alignment,
                                             weighted=self.weighted_target)
            out = dict(alignment=alignment)
            for name in ('parameter_d', 'parameter_F', 'distance_d', 'distance_F'):
                out[name] = arr(raw[name])
                if name.endswith('_d'):
                    out[name] = out[name].ravel()
            for name in ('parameter_curvature', 'psi_slope', 'psi_curvature',
                         'psi_factor', 'distance_curvature'):
                out[name] = float(raw[name].upper())
            # Optional sharper local Hessian/cubic remainder supplied by verifier.
            for name in ('psi_hessian_at_anchor', 'psi_output_norm', 'psi_cubic'):
                if name in raw:
                    out[name] = float(raw[name].upper())
            self._local_cache[key] = out
        return self._local_cache[key]

    def check_local_data(self, e, t, data):
        dsq = 2*self.r*self.r*max(0., 1.-t)
        delta = math.sqrt(dsq)
        pherr = data['psi_slope']*delta+.5*data['psi_curvature']*dsq
        nonlinear = data['psi_factor']*pherr*pherr
        if self.psi_remainder == 'local_hessian':
            nonlinear = min(nonlinear, data['psi_output_norm']*(
                data['psi_hessian_at_anchor']+data['psi_cubic']*pherr)*pherr*pherr)
        eps_p = .5*data['parameter_curvature']*dsq+nonlinear
        eps_d = .5*data['distance_curvature']*dsq
        sp, lp, mp = OLD.sdual(data['parameter_d'], data['parameter_F'], e, t)
        sd, ld, md = OLD.sdual(data['distance_d'], data['distance_F'], e, t)
        margin_p = 1.-math.sqrt(max(0., sp))-eps_p
        margin_d = 1.-math.sqrt(max(0., sd))-eps_d
        return dict(ok=min(margin_p, margin_d)>1e-8, margin=min(margin_p, margin_d),
                    parameter_margin=margin_p, distance_margin=margin_d,
                    parameter_error=eps_p, distance_error=eps_d,
                    parameter=(sp, lp, mp), distance=(sd, ld, md))

    def cap(self, direction, slack=3e-5, mode='local_sphere'):
        direction = np.asarray(direction, float)
        if np.linalg.norm(direction) == 0:
            return None
        direction = direction/np.linalg.norm(direction)
        v = np.rint(direction*2**30).astype(np.int64)
        vn = float(np.linalg.norm(v))
        e = v/vn
        data = self.local_data(v)
        checker = lambda t: self.check_local_data(e, t, data)
        if not checker(.999999)['ok']:
            return None
        lo, hi = 0., .999999
        if checker(lo)['ok']:
            hi = 0.
        else:
            for _ in range(16):
                mid = .5*(lo+hi)
                if checker(mid)['ok']:
                    hi = mid
                else:
                    lo = mid
        t = min(.999999, hi+slack)
        h = float(t*vn)
        t = h/vn
        out = checker(t)
        if not out['ok']:
            return None
        def witness(vals):
            s, la, mu = vals
            return {'s': float(s+max(2e-10, abs(s)*2e-10)).hex(),
                    'lambda': float(la).hex(), 'mu': float(mu).hex()}
        return dict(group_index=self.index, mode='local_sphere',
                    v=[int(x) for x in v], h=h.hex(), weighted_target=self.weighted_target,
                    psi_remainder=self.psi_remainder,
                    t3_group_sha256=self.T3.group_digest(self.group),
                    t3_parameter=witness(out['parameter']), t3_distance=witness(out['distance']),
                    t3_alignment=data['alignment'],
                    info=dict(numerical_threshold=t, numerical_radius=math.acos(t),
                              numerical_parameter_margin=out['parameter_margin'],
                              numerical_distance_margin=out['distance_margin'],
                              numerical_parameter_error=out['parameter_error'],
                              numerical_distance_error=out['distance_error']))

    def verify(self, cap):
        return self.T3.check_cap(self.model, self.tr, cap)


class SourceBuilder:
    def __init__(self, data, seed, model=None, weighted=False, psi_remainder='global'):
        self.data, self.seed = data, seed
        self.record = data['t3_seeds'][str(seed)]
        self.ball = SC.Ball(self.record)
        self.model = P.normal_form(self.ball) if model is None else model
        self.groups = self.record['transfers']
        self.weighted = weighted
        self.psi_remainder = psi_remainder
        self.transfers = {}
        self.targets = {}
        self.edges = {}
        self.rejections = collections.Counter()

    def transfer(self, gi):
        if gi not in self.transfers:
            group = self.groups[gi]
            ti = group['target']
            if group['kind'] == 'T3':
                if ti not in self.edges:
                    self.edges[ti] = EC.EdgeBall(self.data['edge'][ti])
                tr = NumericT3(self.model, self.edges[ti], group, gi)
                tr.psi_remainder = self.psi_remainder
            else:
                if ti not in self.targets:
                    self.targets[ti] = SC.Ball(self.data['seed_headers'][ti])
                tr = NumericSeed(self.model, self.targets[ti], group, gi)
            if self.weighted:
                tr.enable_weighting()
            self.transfers[gi] = tr
        return self.transfers[gi]

    def propose(self, tr, direction, modes=None):
        """Return the widest actually certified proposal at this normal."""
        if modes is None:
            modes = ['local_sphere'] if isinstance(tr, NumericT3) else ['polynomial']
        results = []
        for mode in modes:
            for slack in (3e-5, 3e-4, 3e-3):
                try:
                    cap = tr.cap(direction, slack=slack, mode=mode)
                    if cap is None:
                        break
                    replay = tr.verify(cap)
                    if replay.get('ok'):
                        cap['replay'] = replay
                        results.append(cap)
                        break
                    self.rejections[replay.get('reason', 'cap rejected')] += 1
                except (ArithmeticError, ValueError, ZeroDivisionError) as exc:
                    self.rejections[type(exc).__name__+': '+str(exc)] += 1
                    break
        if not results:
            return None
        return min(results, key=lambda c: c['info']['numerical_threshold'])

    def initialize(self):
        caps = []
        order = sorted(range(len(self.groups)), key=lambda gi:
                       -float(np.sum(8.**(-np.asarray(self.groups[gi]['boxes'])[:, 0]))))
        for gi in order:
            group = self.groups[gi]
            bp = OLD.box_points(group['boxes'])
            if len(bp) > 512:
                bp = bp[np.linspace(0, len(bp)-1, 512, dtype=int)]
            if len(caps) >= 5 and not np.any(OLD.uncovered(caps, bp)):
                continue
            tr = self.transfer(gi)
            directions = OLD.choose_directions(tr, bp)
            proposals = []
            # Mean reflects where this transfer was actually used in the box atlas.
            for direction in (directions[0], directions[-1]):
                modes = ['local_sphere'] if isinstance(tr, NumericT3) else ['polynomial']
                cap = self.propose(tr, direction, modes=modes)
                if cap is None and not tr.linear and not isinstance(tr, NumericT3):
                    cap = self.propose(tr, direction, modes=['local_sphere'])
                if cap is not None:
                    proposals.append(cap)
            if proposals:
                cap = max(proposals, key=lambda c: (
                    int(np.sum(~OLD.uncovered([c], bp))), c['info']['numerical_radius']))
                caps.append(cap)
            if len(caps) >= 8 and OLD.hull_diagnostic(caps)['minimum_distance'] > 1.00001:
                break
        return caps

    def augment(self, caps, max_add, progress=None):
        reason = 'addition_budget'
        # Instantiate each remaining transfer once for cheap predictor ranking.
        for gi in range(len(self.groups)):
            self.transfer(gi)
        for step in range(max_add):
            hull = OLD.hull_diagnostic(caps)
            if hull['minimum_distance'] > 1.000001:
                return caps, 'covered'
            if len(caps) < 5 or hull.get('reason') == 'qhull_failure':
                candidates = OLD.sphere_sample(2000, self.seed+step)
                mask = OLD.uncovered(caps, candidates)
                bad = candidates[mask][:128]
                if not len(bad):
                    return caps, 'degenerate_hull'
            else:
                bad = OLD.bad_hull_directions(caps, max_points=192)
            witness = bad[0]
            scores = sorted((float(np.sum(tr.predictor(witness)**2)), gi)
                            for gi, tr in self.transfers.items())
            proposals = []
            considered = 0
            for score, gi in scores:
                if score > 1.2 and considered:
                    break
                tr = self.transfers[gi]
                modes = (['local_sphere'] if isinstance(tr, NumericT3)
                         else ['polynomial'] if tr.linear else ['polynomial', 'local_sphere'])
                first = self.propose(tr, witness, modes)
                if first is None:
                    continue
                considered += 1
                dirs = [witness]
                nearby = [c for c in caps if c['group_index'] == gi]
                if nearby:
                    base = max(nearby, key=lambda c: float(np.asarray(c['v'])@witness)/np.linalg.norm(c['v']))
                    base = np.asarray(base['v'], float)/np.linalg.norm(base['v'])
                    dirs.extend((1-a)*base+a*witness for a in (.35, .65))
                for k, direction in enumerate(dirs):
                    cap = first if k == 0 else self.propose(tr, direction, modes)
                    if cap is None:
                        continue
                    e, t = OLD.cap_arrays([cap])
                    if e[0]@witness < t[0]+1e-6:
                        continue
                    gain = int(np.sum(bad@e[0] >= t[0]))
                    proposals.append((gain, cap['info']['numerical_radius'], cap))
                if considered >= 3:
                    break
            if not proposals:
                return caps, 'all_proposals_rejected_at_uncovered_direction'
            best = max(proposals, key=lambda item: (item[0], item[1]))[2]
            caps.append(best)
            if progress is not None and step % 10 == 0:
                progress(step, caps, hull)
        return caps, reason


def build_source(data, seed, output, max_add=180, weighted=False, model=None, resume=False,
                 upgrade=False, psi_remainder='global'):
    started = time.perf_counter()
    builder = SourceBuilder(data, seed, model=model, weighted=weighted, psi_remainder=psi_remainder)
    model_seconds = time.perf_counter()-started
    if resume and output.exists():
        prior = json.loads(output.read_text())
        caps = []
        for cap in prior.get('caps', []):
            tr = builder.transfer(cap['group_index'])
            replay = tr.verify(cap)
            if replay.get('ok'):
                cap['replay'] = replay
                if upgrade:
                    modes = (['local_sphere'] if isinstance(tr, NumericT3)
                             else ['polynomial'] if tr.linear else ['polynomial', 'local_sphere'])
                    replacement = builder.propose(tr, cap['v'], modes=modes)
                    if replacement is not None and (replacement['info']['numerical_threshold'] <
                                                     cap['info']['numerical_threshold']):
                        cap = replacement
                caps.append(cap)
    else:
        caps = builder.initialize()
    initial_count = len(caps)
    def checkpoint(step, current, hull):
        info = dict(seed=seed, augment_step=step, caps=len(current),
                    minimum_distance=hull['minimum_distance'], seconds=time.perf_counter()-started)
        print(json.dumps(info), file=sys.stderr, flush=True)
        save_result(output, dict(format='zc2b-mixed-caps-v1', status='NOT ESTABLISHED',
                                seed=seed, caps=current, info=info))
    caps, reason = builder.augment(caps, max_add, checkpoint)
    hull = OLD.hull_diagnostic(caps)
    if hull['minimum_distance'] > 1.000001:
        caps = OLD.prune_caps(caps)
        hull = OLD.hull_diagnostic(caps)
    coverage, cov = None, dict(passed=False, covers=False, error='no polar certificate')
    if len(caps) >= 5:
        try:
            coverage = COV.construct_coverage_certificate(caps)
            cov = COV.verify_coverage(caps, coverage)
        except (ValueError, ArithmeticError) as exc:
            cov = dict(passed=False, covers=False, error=str(exc))
    status = 'CERTIFIED' if cov.get('passed') and cov.get('covers') else 'NOT ESTABLISHED'
    kinds = collections.Counter(builder.groups[c['group_index']]['kind'] for c in caps)
    result = dict(format='zc2b-mixed-caps-v1', status=status, seed=seed, caps=caps,
                  coverage=coverage, coverage_replay=cov,
                  info=dict(original_boxes=sum(len(g['boxes']) for g in builder.groups),
                            original_t3_boxes=sum(len(g['boxes']) for g in builder.groups if g['kind']=='T3'),
                            groups=len(builder.groups), cap_count=len(caps), caps_by_kind=dict(kinds),
                            initial_cap_count=initial_count, reason=reason,
                            numerical_hull=hull, proposal_rejections=dict(builder.rejections),
                            normal_form=builder.model['summary'], model_seconds=model_seconds,
                            seconds=time.perf_counter()-started))
    save_result(output, result)
    return result


_DATA = _ARGS = None


def pool_one(seed):
    path = _ARGS.out/f'seed_{seed}.json'
    started = time.perf_counter()
    try:
        result = build_source(_DATA, seed, path, max_add=_ARGS.max_add,
                              weighted=_ARGS.weighted, resume=_ARGS.resume,
                              upgrade=_ARGS.upgrade, psi_remainder=_ARGS.psi_remainder)
    except Exception as exc:
        import traceback
        result = dict(format='zc2b-mixed-caps-v1', status='NOT ESTABLISHED', seed=seed,
                      reason=type(exc).__name__+': '+str(exc), traceback=traceback.format_exc(),
                      seconds=time.perf_counter()-started)
        if path.exists():
            result['checkpoint'] = str(path)
            save_result(path.with_name(path.stem+'_error.json'), result)
        else:
            result['caps'] = []
            save_result(path, result)
    return summary(result)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--input', type=Path, default=ROOT/'data'/'zc2b_t3.json.gz')
    ap.add_argument('--seeds', default='all')
    ap.add_argument('--out', type=Path, default=HERE/'results')
    ap.add_argument('--workers', type=int, default=1)
    ap.add_argument('--max-add', type=int, default=180)
    ap.add_argument('--weighted', action='store_true')
    ap.add_argument('--psi-remainder', choices=['global', 'local_hessian'], default='global')
    ap.add_argument('--resume', action='store_true')
    ap.add_argument('--upgrade', action='store_true', help='Re-propose wider caps at retained normals when resuming')
    ap.add_argument('--skip-certified', action='store_true')
    args = ap.parse_args()
    data = json.load(gzip.open(args.input, 'rt'))
    for record in data['t3_seeds'].values():
        for group in record['transfers']:
            group['boxes'] = np.asarray(group['boxes'], dtype=np.int32)
    seeds = data['t3_seed_indices'] if args.seeds=='all' else [int(x) for x in args.seeds.split(',')]
    if args.skip_certified:
        seeds = [seed for seed in seeds if not (args.out/f'seed_{seed}.json').exists()
                 or json.loads((args.out/f'seed_{seed}.json').read_text()).get('status') != 'CERTIFIED']
    global _DATA, _ARGS
    _DATA, _ARGS = data, args
    gc.collect()
    gc.freeze()
    started = time.perf_counter()
    results = []
    if args.workers > 1:
        with mp.get_context('fork').Pool(args.workers) as pool:
            for result in pool.imap_unordered(pool_one, seeds):
                print(json.dumps(result), flush=True)
                results.append(result)
    else:
        for seed in seeds:
            result = pool_one(seed)
            print(json.dumps(result), flush=True)
            results.append(result)
    receipt = dict(status='CERTIFIED' if all(r['status']=='CERTIFIED' for r in results) else 'PARTIAL',
                   spheres=len(results), certified=sum(r['status']=='CERTIFIED' for r in results),
                   seconds=time.perf_counter()-started, results=results)
    args.out.mkdir(parents=True, exist_ok=True)
    save_result(args.out/'run_receipt.json', receipt)


if __name__ == '__main__':
    main()
