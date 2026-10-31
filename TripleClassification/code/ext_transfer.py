#!/usr/bin/env python3
"""Transfer leaves: a dyadic cell closed by a certified Hadamard equivalence into another ball.

A leaf {'transfer': {'target': T, 'group': G}} of a cell (level, cell) of ball B asserts: every H in the closed box
(level, cell) of B's chart is Hadamard-equivalent, by the atlas transfer G (kind T0 or T1: row and column permutations
of the corner, conjugation or transposition, and phase windings), to a matrix in the closed atlas ball T. Third bases
correspond under Hadamard equivalence, so the cell holds no third basis of unknown type once ball T is closed.

A region transfer {'transfer': {'target': T, 'group': G, 'region': 'image'}} is the same, except that ball T need not
be closed: the audit (assemble.py) requires the image of the box (image_box) to miss every cell of T that T's own
audit leaves unresolved or closes through a transfer, so the image lies in a part of T proved directly.

The check is the atlas's own (proof/seed_atlas/cert/patches.py, pinned): Transfer(model_for(B), Ball(T), G)
.check([level, *cell], use_sphere=False) proves, in Arb, that the image of the whole solid box lies strictly inside
ball T (with the orientation margins for a non-linear map). That ball T is closed is not checked here: the leaf
names T, and the original-ball audit (assemble.py) closes B only once every such T is closed, in an order that admits
no cycle.
"""
import gzip, json, os
from pathlib import Path

_cache = {}


def _atlas(root):
    import sys
    for d in (root / 'proof/seed_atlas/cert',):
        if str(d) not in sys.path: sys.path.insert(0, str(d))
    import patches as P, seedcert as SC
    if 'seeds' not in _cache:
        _cache['seeds'] = json.loads(gzip.decompress((root / 'proof/seed_atlas/results/seed_atlas_certificate.json.gz').read_bytes()))['seeds']
    return P, SC, _cache['seeds']


def check(root, ball, level, cell, spec):
    """Raise ValueError unless the transfer leaf is certified; return its target ball."""
    from flint import ctx
    root = Path(root).resolve(); P, SC, seeds = _atlas(root)
    if not (isinstance(spec, dict) and set(spec) in ({'target', 'group'}, {'target', 'group', 'region'}) and
            type(spec['target']) is int and 0 <= spec['target'] < len(seeds) and isinstance(spec['group'], dict) and
            spec.get('region', 'image') == 'image'):
        raise ValueError('invalid transfer leaf')
    if spec['group'].get('kind') not in ('T0', 'T1'): raise ValueError('transfer kind must be T0 or T1')
    old = ctx.prec; ctx.prec = 224
    try:
        key = ('model', ball)
        if key not in _cache: _cache[key] = P.model_for(SC.Ball(seeds[ball]))
        model = _cache[key]
        if model is None: raise ValueError('ball has no certified normal form')
        r = P.Transfer(model, SC.Ball(seeds[spec['target']]), spec['group']).check([level, *cell], use_sphere=False)
    finally:
        ctx.prec = old
    if not r.get('ok'): raise ValueError('transfer not certified: %s' % r.get('reason'))
    return spec['target']


def image_box(root, ball, level, cell, spec):
    """An outward enclosure of the image of the box in the target ball's chart: [[lo, hi]] * 4 (floats rounded outward
    from Arb bounds). For a region transfer the audit requires this box to miss every cell of the target ball that is
    unresolved or closed through a transfer."""
    from flint import ctx
    root = Path(root).resolve(); P, SC, seeds = _atlas(root)
    import wholeball as Z
    old = ctx.prec; ctx.prec = 224
    try:
        key = ('model', ball)
        if key not in _cache: _cache[key] = P.model_for(SC.Ball(seeds[ball]))
        tr = P.Transfer(_cache[key], SC.Ball(seeds[spec['target']]), spec['group'])
        if not tr.check([level, *cell], use_sphere=False).get('ok'): raise ValueError('transfer not certified')
        c, h, vertices = P.box_geometry([level, *cell], tr.r)
        if tr.linear: a, B, eps = tr.a0 + tr.B0 * c, tr.B0, 0
        else:
            Hc = P.tensor_at(tr.AH, c); a = tr.a0 + tr.B0 * c + Hc * c / 2; B = tr.B0 + Hc
            eps = tr.hnorm * (4 * h * h) / 2 + tr.xnorm * tr.model['tau']
        img = [a + B * (v - c) for v in vertices]            # affine image: its hull is the hull of the vertex images
        return [[min(Z.lower(iv[k, 0] - eps) for iv in img), max(Z.upper(iv[k, 0] + eps) for iv in img)] for k in range(4)]
    finally:
        ctx.prec = old


def cell_box(r, level, cell):
    """The w-box of a dyadic cell of a ball of chart radius r (floats; used only with an outward margin)."""
    return [[r * (-1 + 2 * c / 2 ** level), r * (-1 + 2 * (c + 1) / 2 ** level)] for c in cell]


def meets(a, b, margin=1e-12):
    """Whether two boxes may intersect (each widened by margin, so a near-touch counts as meeting)."""
    return all(a[k][0] - margin <= b[k][1] + margin and b[k][0] - margin <= a[k][1] + margin for k in range(4))


def find(root, ball, level, cell, targets, recorded_only=False):
    """A certified transfer of the box into one of the balls `targets`, or None. Candidates: the 72 corner symmetries
    (row and column permutations of the corner, conjugation, transposition) with the nearest winding, and the
    transfers recorded in the atlas for this ball. (Search only: check() decides.)"""
    import itertools
    import numpy as np
    root = Path(root).resolve(); P, SC, seeds = _atlas(root)
    if 'tables' not in _cache:
        import wholeball as Z
        balls = [SC.Ball(s) for s in seeds]
        Emb = np.zeros((36, 4), int)
        for k, (i, j) in enumerate(Z.SEEDS): Emb[6 * i + j, k] = 1
        ops = []
        for rows in itertools.permutations([0, 1, 2]):
            for cols in itertools.permutations([0, 1, 2]):
                for g in ('id', 'conj', 'T', 'conjT'):
                    L = SC.corner_L(list(rows), list(cols)) @ SC.g_matrix(g)
                    ops.append(dict(rows=list(rows), cols=list(cols), g=g, LL=(L @ Emb).astype(float),
                                    so=1 if g in ('id', 'conjT') else -1, ident=(list(rows) == [0, 1, 2] and list(cols) == [0, 1, 2] and g == 'id')))
        _cache['tables'] = dict(theta=np.array([b.theta0 for b in balls], float), r=np.array([b.r for b in balls], float),
                                o=np.array([b.o for b in balls], int), minv=np.array([np.linalg.inv(np.array(b.Mth, float)) for b in balls]),
                                ops=ops)
    T = _cache['tables']; B = SC.Ball(seeds[ball]); targets = set(targets)
    m = level; w = np.array([float(B.r) * (-1 + (2 * i + 1) * 2.0 ** -m) for i in cell])
    theta = np.array(B.theta0, float) + np.array(B.Mth, float) @ w
    cands = []
    if not recorded_only:
        tidx = np.array(sorted(t for t in targets if 0 <= t < len(seeds)), int)
        for op in T['ops']:
            sel = tidx[T['o'][tidx] == B.o * op['so']]
            if not len(sel): continue
            img = op['LL'] @ theta; diff = T['theta'][sel] - img[None, :]; wind = np.rint(diff / (2 * np.pi)).astype(int)
            wt = np.einsum('nij,nj->ni', T['minv'][sel], img[None, :] + 2 * np.pi * wind - T['theta'][sel])
            ratio = np.linalg.norm(wt, axis=1) / T['r'][sel]
            for k in np.argsort(ratio)[:3]:
                if ratio[k] < 0.98 and not (sel[k] == ball and op['ident'] and not wind[k].any()):
                    grp = dict(kind='T0' if op['ident'] else 'T1', wind=[int(x) for x in wind[k]])
                    if not op['ident']: grp.update(rows=op['rows'], cols=op['cols'], g=op['g'])
                    cands.append((float(ratio[k]), int(sel[k]), grp))
    for grp in seeds[ball].get('transfers', []):
        if grp.get('kind') in ('T0', 'T1') and int(grp['target']) in targets:
            cands.append((1.0, int(grp['target']), {k: grp[k] for k in ('kind', 'rows', 'cols', 'g', 'wind') if k in grp}))
    for _, t, grp in sorted(cands, key=lambda x: x[0]):
        spec = dict(target=t, group=grp)
        try:
            check(root, ball, level, cell, spec); return spec
        except (ValueError, ArithmeticError, ZeroDivisionError, KeyError, TypeError):
            continue
    return None
