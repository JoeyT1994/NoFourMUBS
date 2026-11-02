#!/usr/bin/env python3
"""Tile the weak plane for every reference completion of one cell (tiles.py), and combine into pattern verdicts.

    python run_tiles.py CELL.input.json.gz OUT.json [--hmin 0.004] [--hcls 0.006]

A pattern is EXCLUDED if the native fine bins exclude it or every tile of its reference is EXCLUDED, CLASSIFIED if
no tile is OPEN, and OPEN otherwise. A reference's tiling uses the largest R and weak cap over its patterns.
"""
import argparse, json, math, multiprocessing as mp, sys, time
import run_cell as RC
import witness as W
import tiles as TL
import fine_patterns as FP
from flint import arb


REF = {}


def tile(args):
    """One coarse square, split recursively. Near the reference (|c| <= 0.3): the original reference (T1-T3), down to
    half-side 0.0141. Farther out: the original reference, then a recentred one (far field), down to half-side 0.0177."""
    (cx, cy), a, hcls = args; ref = REF['ref']

    def one(cx, cy, a):
        h = W.up(arb(a) * arb(2).sqrt()); far = math.hypot(cx, cy) > 0.3
        if (arb(cx) ** 2 + arb(cy) ** 2).sqrt() - h > ref.W: return [('outside', (cx, cy), a)]
        t = ref.bound((cx, cy), h)
        if ref.exclude(t): return [('EXCLUDED', (cx, cy), a)]
        if far and TL.recentred(ref, (cx, cy), h)[0]: return [('EXCLUDED far', (cx, cy), a)]
        if h < hcls:
            row = ref.classify(t)
            if row: return [('CLASSIFIED', (cx, cy), a, row['q'][:12])]
        if a < (0.0177 if far else 0.0141) * 1.01: return [('OPEN', (cx, cy), a, float(t['d'].upper()))]
        return [e for sx in (-1, 1) for sy in (-1, 1) for e in one(cx + sx * a / 2, cy + sy * a / 2, a / 2)]
    return one(cx, cy, a)


def grid(ref, a, hcls, workers):
    """A uniform grid of closed squares of half-side a covering [-W, W]^2 (fork workers share the reference)."""
    n = math.ceil(float(ref.W.upper()) / (2 * a)); REF['ref'] = ref
    cells = [(((2 * i + 1) * a - n * 2 * a, (2 * j + 1) * a - n * 2 * a), a, hcls) for i in range(2 * n) for j in range(2 * n)]
    with mp.get_context('fork').Pool(workers) as pool: log = [e for es in pool.map(tile, cells, chunksize=1) for e in es]
    counts = {}
    for e in log: counts[e[0]] = counts.get(e[0], 0) + 1
    return counts, log


def main():
    ap = argparse.ArgumentParser(description=__doc__); ap.add_argument('cell'); ap.add_argument('out')
    ap.add_argument('--hmin', type=float, default=0.004); ap.add_argument('--hcls', type=float, default=0.006)
    ap.add_argument('--grid', type=float, help='uniform grid of squares of this half-side instead of the quadtree')
    ap.add_argument('--workers', type=int, default=1)
    a = ap.parse_args(); t0 = time.monotonic()
    n = RC.setup(a.cell); S = RC.STATE; model = S['model']; rho = S['cover']['bin_radius']
    refs, members, verdict = {}, {}, {}
    for i, clique in enumerate(S['cliques']):
        refined, receipt = FP.refine(S['ball'], model, S['cover'], clique)
        if refined is None:
            verdict[i] = 'EXCLUDED' if receipt['status'] == 'EXCLUDED' else 'OPEN'; continue
        prop = W.propose(RC.MS.numeric(model['Q0'])[:, 0], [RC.MS.numeric(S['prepared'][c]['v0'])[:, 0] for c in clique])
        key, perm = W.match(prop['y'], refs)
        if key is None: key, perm = len(refs), list(range(6)); refs[key] = W.prepare(model, prop)
        order = sorted(range(6), key=lambda j: perm[j])
        R, wcap = W.colour_product(refs[key]['y'], refs[key]['Ti'], [refined['bin_indices'][clique[j]] for j in order], rho)
        members.setdefault(key, []).append((i, R, wcap))
    out = dict(cell=a.cell, patterns=n, setup_seconds=round(time.monotonic() - t0, 1), references=[])
    for key, rows in members.items():
        t = time.monotonic()
        R, wcap = W.fmax([r for _, r, _ in rows]), W.fmax([w for _, _, w in rows])
        ref = TL.Reference(refs[key], R, wcap)
        if a.grid: counts, log = grid(ref, a.grid, a.hcls, a.workers)
        else: counts, log = ref.cover(hmin=a.hmin, hcls=a.hcls)
        status = 'OPEN' if counts.get('OPEN') else ('CLASSIFIED' if counts.get('CLASSIFIED') else 'EXCLUDED')
        for i, _, _ in rows: verdict[i] = status
        out['references'].append(dict(reference=key, patterns=[i for i, _, _ in rows], S=ref.S.str(4), W=ref.W.str(4),
                                      tiles=counts, status=status, seconds=round(time.monotonic() - t, 1),
                                      open_tiles=[e[1:] for e in log if e[0] == 'OPEN']))
        print(json.dumps({k: v for k, v in out['references'][-1].items() if k != 'open_tiles'}), flush=True)
    out['verdicts'] = {s: sum(1 for v in verdict.values() if v == s) for s in ('EXCLUDED', 'CLASSIFIED', 'OPEN')}
    out['seconds'] = round(time.monotonic() - t0, 1)
    open(a.out, 'w').write(json.dumps(out, indent=1)); print(json.dumps(out['verdicts']), out['seconds'], 's')


if __name__ == '__main__': main()
