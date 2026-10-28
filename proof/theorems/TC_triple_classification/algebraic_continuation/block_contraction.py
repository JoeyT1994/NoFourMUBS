"""Conditional joint contraction with separate error balls for six columns.

At a zero, e = e - A F. Any finite binary64 A is allowed. Both signs of
each component are bounded on the seven original Euclidean factors.
This is an enclosure operation; it does not assert existence of a zero.
"""
import numpy as np
from load_native import C, MS, S, arb, arb_mat, norm_upper, quadratic_lower


def block_bound(q, g, groups):
    total = arb(0)
    for a, aa in enumerate(groups):
        total += norm_upper(g[i, 0] for i in aa)
        total += C.Z.spectral(S.block(q, aa, aa)) / 2
        for bb in groups[a+1:]:
            total += C.Z.spectral(S.block(q, aa, bb))
    return total


def refine(model, prepared, bounds, clique, iterations=3, signed=False):
    pp, bb = dict(prepared), {c: dict(bounds[c]) for c in clique}
    initial = [str(bb[c]['epsilon']) for c in clique]
    history = []
    q0 = arb_mat([[model['Q0'][i, 0]] for i in range(36)] +
                 [[prepared[clique[c]]['v0'][r, 0]] for r in range(6) for c in range(6)])
    pk6 = C.project6()
    pk = arb_mat([[pk6[a, b] if c == d else 0 for b in range(6) for d in range(6)]
                  for a in range(6) for c in range(6)])
    jk = S.block(MS.jacobian(q0), range(96), range(36, 72)) * pk
    pre = MS.numeric(pk) @ np.linalg.pinv(MS.numeric(jk))
    for step in range(iterations):
        d = S.data(model, pp, bb, clique)
        rows = []
        for o in range(36):
            direction = pre[o].tolist()
            const, q, g, tail, _ = S.direction_quadratic(d, direction)
            q = -q
            g = -g
            for k in range(36):
                g[4+k, 0] += d['scaled'][36+o, 4+k]
            bound = abs(const) + block_bound(q, g, d['groups']) + tail
            if signed:
                lo = quadratic_lower(q, g, d['groups'])
                hi = quadratic_lower(-q, -g, d['groups'])
                if lo is not None and hi is not None:
                    signed_bound = max(abs((-const+lo[0]).lower()),
                                       abs((-const-hi[0]).upper())) + tail
                    bound = min(bound.upper(), signed_bound.upper())
            rows.append(bound)
        proposed = [arb(C.Z.upper(norm_upper(rows[c::6]))) for c in range(6)]
        history.append([str(v) for v in proposed])
        changed = False
        for col, color in enumerate(clique):
            if proposed[col] < bb[color]['epsilon']:
                changed = True
                bb[color]['epsilon'] = proposed[col]
                bb[color]['phase_radius'] = min(bb[color]['phase_radius'].upper(),
                    (proposed[col] + pp[color]['Tnorm']*model['r']).upper())
        if not changed:
            break
    return pp, bb, dict(route='seven-factor conditional Newton contraction',
                       signed=signed, initial=initial, proposals=history,
                       final=[str(bb[c]['epsilon']) for c in clique])
