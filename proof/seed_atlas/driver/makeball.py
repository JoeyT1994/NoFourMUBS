"""Make a seed ball: centre data, then the radius ladder (C1 Taylor-model n, Stage C must pass)."""
import os, sys, time
import numpy as np
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(HERE, '../../atlas'))
import stagec as SC
from c1 import Ball, c1_bound, c1_bound_adaptive, sampled_n

LADDER = (0.125, 0.1, 0.08, 0.063, 0.05, 0.04, 0.03, 0.02, 0.015, 0.01)
LABELS = (0.03, 0.02)
N_SAFETY = 1.05          # stored n = N_SAFETY x the driver's Taylor-model bound: piece A's Arb bound is up to 1.135x it (300 balls, 24 Oct)
CLIQUE_CAP = 5_000_000   # driver screening cap (official: 5,000,000)
MAX_LABELS = 2500
TRY_UP_MAX = 0.15         # one rung up from the hint only below this (0.125 passes for under 1% of balls)


def k_for(r): return 3 if r <= 0.05 else 4


K_MORE = (6, 8)          # finer C1 partitions, tried when the tube fails (near the edge of Omega, i.e. near F6)


def stage_c_args(ball, r, n):
    U = ball.Uh                                   # horizontal gauge (SPEC §2.1)
    tcol = max(np.linalg.norm(U.reshape(6, 6, 4)[:, i, :], 2) for i in range(6))
    rcol = tcol * r + n
    rF = np.linalg.norm(U, 2) * r + n
    return ball.Ph.reshape(6, 6) / SC.TWO_PI, rcol / SC.TWO_PI, (U, r / SC.TWO_PI, n / SC.TWO_PI), rF / SC.TWO_PI


def run_stage_c(ball, r, n, label):
    """The official call (what the certifier runs)."""
    P, rcol, tang, rF = stage_c_args(ball, r, n)
    return SC.stage_c(P, rcol, tang=tang, radius=label, rF=rF)


def stage_c_capped(ball, r, n, label, cap=CLIQUE_CAP, max_labels=MAX_LABELS):
    """stagec.stage_c with a smaller clique-search cap and a label-count cut-off (driver screening).  Every step is
    the official one, so an ok here is an ok of the official call (whose cap is larger); a failure here may be a
    false negative, which only costs radius."""
    import math
    P, r_, tang, rF = stage_c_args(ball, r, n)
    rF = min(rF, math.sqrt(6) * r_)
    U, M = SC.bins(P, r_, tang=tang, rF=rF)
    if U is None: return dict(ok=False, reason='bin cap')
    cl = SC.cluster(U, M, radius=label)
    if cl is None: return dict(ok=False, reason='cluster', bins=len(U))
    C, s = cl
    if len(C) > max_labels: return dict(ok=False, reason='labels %d' % len(C), bins=len(U))
    O, Ub = SC.edges(C, s)
    O, Ub = SC.joint_filter(C, s, O, Ub, P, r_, SC.opnorm_bound(P), SC.cis_centre(P), rF, *tang)
    try:
        ok, steps = SC.two_cliques(O, Ub, cap=cap)
    except RuntimeError:
        return dict(ok=False, reason='graph cap', bins=len(U), labels=len(C))
    return dict(ok=ok, bins=len(U), labels=len(C), steps=steps)


def make_ball(theta0, phih0, phiv0, rmax=LADDER[0], rmin=LADDER[-1], hint=None, log=None):
    """Returns a Ball with r, n, k, label set, or None.  The radius search starts at the hint (the parent's passing
    (r, label)); if that passes it tries one rung up, else it walks down the ladder.  The search order only affects
    efficiency."""
    t0 = time.time()
    try:
        b = Ball(theta0, phih0, phiv0)
    except (ValueError, np.linalg.LinAlgError) as e:
        if log is not None: log.append('centre: %r' % e)
        return None
    tries = []
    cache = {}

    def attempt(r, lab):
        if r not in cache:
            sn = sampled_n(b, r)
            if sn is None: n, why = None, 'continuation'
            else: n, why = c1_bound_adaptive(b, r, 1.25 * sn)          # adaptive boxes (horizontal gauge)
            cache[r] = (4, None if n is None else n * N_SAFETY, why)
        k, n, why = cache[r]
        if n is None:
            tries.append((r, why)); return False
        t = time.time()
        o = stage_c_capped(b, r, n, lab)
        tries.append((r, lab, 'ok' if o.get('ok') else (o.get('reason') or 'graph'), round(time.time() - t, 1)))
        if o.get('ok'):
            b.r, b.n, b.k, b.label = r, n, k, lab; b.nsafe = N_SAFETY
            b.info = dict(edge=b.edge, R=b.R, S=[float(x) for x in b.S], stagec=dict(bins=o.get('bins'),
                          labels=o.get('labels'), steps=o.get('steps')), tries=tries)
        return o.get('ok')

    rungs = [r for r in LADDER if rmin - 1e-12 <= r <= rmax + 1e-12]
    plan = [(r, lab) for r in rungs for lab in LABELS]
    hint = None                                   # always start at the top rung (coordinator, 24 Oct)
    if hint is not None and tuple(hint) in plan:
        i = plan.index(tuple(hint))
        if attempt(*hint):
            ri = rungs.index(hint[0])
            if ri > 0 and rungs[ri - 1] <= TRY_UP_MAX:
                saved = (b.r, b.n, b.k, b.label, dict(b.info))
                for lab in LABELS:
                    if attempt(rungs[ri - 1], lab): break
                else:
                    b.r, b.n, b.k, b.label, b.info = saved
            b.info['tries'] = tries; b.info['t'] = round(time.time() - t0, 1)
            return b
        plan = plan[i + 1:]
    for (r, lab) in plan:
        if cache.get(r, (0, 1, None))[1] is None: continue
        if attempt(r, lab):
            b.info['tries'] = tries; b.info['t'] = round(time.time() - t0, 1)
            return b
    if log is not None: log.append('ladder failed: %s' % tries)
    return None


def restage(b, old_safe):
    """Raise a ball's n from old_safe to N_SAFETY times its Taylor-model bound and re-run (screened) Stage C, trying the
    other label radius if needed.  Returns ('same', n, label) or ('shrink', Ball) or ('fail', None)."""
    n2 = b.n / old_safe * N_SAFETY
    labs = [b.label] + [l for l in LABELS if l != b.label]
    for lab in labs:
        if stage_c_capped(b, b.r, n2, lab).get('ok'): return ('same', n2, lab)
    smaller = [r for r in LADDER if r < b.r - 1e-12]
    if not smaller: return ('fail', None)
    nb = make_ball(b.theta0, b.phih0, b.phiv0, rmax=smaller[0])
    return ('shrink', nb) if nb is not None else ('fail', None)
