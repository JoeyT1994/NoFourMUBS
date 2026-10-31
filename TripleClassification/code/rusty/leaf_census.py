#!/usr/bin/env python3
"""Where an audit's replay time goes: for each ball, every leaf of every tree its whole-cell manifest lists, with the
replay time recorded in the leaf's own replay.json (no replay here; read-only).

  python leaf_census.py PLANE_V1 OUT_JSON BALL...

Per ball: manifest cells, leaves, leaves without a recorded time, total recorded seconds, the share of it in the slowest
1% and 5% of leaves, and the 300 slowest leaves (directory, level, cell, seconds, whether the extension certified it)."""
import json, sys
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path


def leaves_of(d, item):
    tree = d / item['tree']['path']; out = []
    def walk(node, level, cell):
        if 'children' in node:                  # 16 children in itertools.product(range(2), repeat=4) order
            for i, child in enumerate(node['children']):
                walk(child, level + 1, [2 * c + ((i >> (3 - k)) & 1) for k, c in enumerate(cell)])
        elif 'input' in node:
            q = Path(node['input']['path']); q = q if q.is_absolute() else tree.parent / q
            out.append((q.parent, level, cell))
    e = json.load(open(d / item['entry']['path'])); walk(json.load(open(tree))['tree'], e['level'], e['cell'])
    return out


def timed(x):
    p, level, cell = x
    try:
        r = json.load(open(p / 'replay.json'))
        s = r.get('total_seconds') or r.get('seconds')
        ext = any('ext_cell_certificate' in k for k in (r.get('dependencies_sha256') or {}))
        return str(p), level, cell, (float(s) if s is not None else None), ext
    except (OSError, ValueError): return str(p), level, cell, None, None


def main():
    plane, out = Path(sys.argv[1]), sys.argv[2]; res = {}
    for b in sys.argv[3:]:
        d = plane / ('b%s' % b); m = json.load(open(d / 'manifest.json'))['cells']
        with ThreadPoolExecutor(32) as pool:
            ls = [x for xs in pool.map(lambda it: leaves_of(d, it), m) for x in xs]
            t = list(pool.map(timed, ls))
        known = sorted((x for x in t if x[3] is not None), key=lambda x: -x[3]); tot = sum(x[3] for x in known)
        share = lambda f: round(sum(x[3] for x in known[:max(1, int(len(known) * f))]) / tot, 3) if tot else None
        res[b] = dict(manifest_cells=len(m), leaves=len(t), untimed=len(t) - len(known), total_seconds=round(tot),
                      share_slowest_1pct=share(.01), share_slowest_5pct=share(.05),
                      over_600s=sum(x[3] > 600 for x in known), over_60s=sum(x[3] > 60 for x in known),
                      slowest=[dict(dir=p, level=l, cell=c, seconds=round(s), ext=e) for p, l, c, s, e in known[:300]])
        print(b, {k: v for k, v in res[b].items() if k != 'slowest'}, flush=True)
    json.dump(res, open(out, 'w'), indent=1)


if __name__ == '__main__': main()
