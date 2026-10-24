#!/usr/bin/env python3
"""Convert a seed-atlas certificate (gzip JSON, proof/seed_atlas/SPEC.md §8) into the plain-text form read by
src/io_seed.jl.  Standard library only.  Every float is passed through float.hex(), so the conversion is exact.

This file is the only place that knows the JSON layout (with src/io_seed.jl, which reads the text it writes).
Accepted layouts, so that small naming differences do not matter:
  * a box is {"box": {"lo": [...], "hi": [...]}} or {"lo": [...], "hi": [...]};
  * floats are hex strings (float.hex) or JSON numbers;
  * g is "id" | "conj" | "T" | "conjT" (default "id");
  * a T2 / rec permutation is "perm": [sign, tr, rowperm, colperm] or [rowperm, colperm] or
    {"sign":..., "tr":..., "rows":..., "cols":...}; it acts after g:  A(X) = sign (tr ? X^T : X)[rowperm, colperm]
    with A(X)[i, j] = sign * Y[rowperm[i], colperm[j]], 0-based;  g and perm compose (signs multiply, transposes add);
  * "wind" is a list of integers (36 for T2 / rec, row-major; 4 for T0 / T1) or a 6 x 6 nested list; optional.
Usage: python3 convert_seed.py certificate.json.gz out.txt
"""
import gzip
import json
import sys

G_MAP = {'id': (1, 0), 'conj': (-1, 0), 'T': (1, 1), 'conjT': (-1, 1)}
ID6 = list(range(6))


def fx(v, what):
    if isinstance(v, str):
        x = float.fromhex(v)
    elif isinstance(v, (int, float)) and not isinstance(v, bool):
        x = float(v)
    else:
        raise SystemExit('%s: not a float: %r' % (what, v))
    if x != x or x in (float('inf'), float('-inf')):
        raise SystemExit('%s: non-finite float' % what)
    return x.hex()


def fxs(vs, n, what):
    if not isinstance(vs, list) or len(vs) != n:
        raise SystemExit('%s: expected %d floats' % (what, n))
    return ' '.join(fx(v, what) for v in vs)


def ints(vs, n, what):
    if not isinstance(vs, list) or len(vs) != n or any(isinstance(v, bool) or not isinstance(v, int) for v in vs):
        raise SystemExit('%s: expected %d integers' % (what, n))
    return vs


def flat_wind(w, what):
    if w is None:
        return []
    if isinstance(w, list) and w and isinstance(w[0], list):
        w = [x for row in w for x in row]
    return ints(w, len(w), what)


def perm_of(t, what):
    """(sign, tr, rp, cp) of the signed permutation applied after g."""
    p = t.get('perm')
    if p is None:
        return 1, 0, ID6, ID6
    if isinstance(p, dict):
        return int(p.get('sign', 1)), int(bool(p.get('tr', 0))), ints(p['rows'], 6, what), ints(p['cols'], 6, what)
    if isinstance(p, list) and len(p) == 4:
        return int(p[0]), int(bool(p[1])), ints(p[2], 6, what), ints(p[3], 6, what)
    if isinstance(p, list) and len(p) == 2:
        return 1, 0, ints(p[0], 6, what), ints(p[1], 6, what)
    raise SystemExit('%s: unreadable perm %r' % (what, p))


def xfer_line(t, what):
    kind = t.get('kind')
    if kind not in ('T0', 'T1', 'T2', 'rec', 'T1prime'):
        raise SystemExit('%s: unknown kind %r' % (what, kind))
    box = t.get('box', t)
    lo = fxs(box['lo'], 4, what + ' lo'); hi = fxs(box['hi'], 4, what + ' hi')
    tg = t.get('target')
    if isinstance(tg, bool) or not isinstance(tg, int):
        raise SystemExit('%s: target must be an integer' % what)
    g = t.get('g', 'id')
    if g not in G_MAP:
        raise SystemExit('%s: unknown g %r' % (what, g))
    rows = t.get('rows', [0, 1, 2]); cols = t.get('cols', [0, 1, 2])
    ints(rows, 3, what + ' rows'); ints(cols, 3, what + ' cols')
    sign, tr, rp, cp = 1, 0, ID6, ID6
    gout = g
    if kind in ('T2', 'rec'):
        sp, tp, rp, cp = perm_of(t, what)
        sg, tg_ = G_MAP[g]
        sign, tr = sp * sg, tp ^ tg_
        gout = 'id'
    if sign not in (1, -1) or sorted(rp) != ID6 or sorted(cp) != ID6:
        raise SystemExit('%s: bad signed permutation' % what)
    wind = flat_wind(t.get('wind'), what + ' wind')
    return 'XFER %s %d %s LO %s HI %s ROWS %s COLS %s SIGN %d TR %d RP %s CP %s WIND %d%s\n' % (
        kind, tg, gout, lo, hi, ' '.join(map(str, rows)), ' '.join(map(str, cols)), sign, tr,
        ' '.join(map(str, rp)), ' '.join(map(str, cp)), len(wind), ''.join(' %d' % x for x in wind))


def main(src, dst):
    with gzip.open(src, 'rt') as f:
        d = json.load(f)
    if not str(d.get('format', '')).startswith('seed-atlas'):
        raise SystemExit('unexpected format %r' % d.get('format'))
    seeds = d.get('seeds', []); recs = d.get('records', [])
    fr = d.get('fourier_record', -1)
    fr = -1 if fr is None else int(fr)
    nx = 0
    with open(dst, 'w') as out:
        out.write('FORMAT seed-atlas-text-v1\n')
        out.write('COUNTS %d %d %d\n' % (len(seeds), len(recs), fr))
        for i, s in enumerate(seeds):
            w = 'seed %d' % i
            o = s['o']
            if o not in (1, -1):
                raise SystemExit('%s: o must be +-1' % w)
            tf = s.get('transfers', [])
            out.write('SEED %d %d %d %d\n' % (i, o, int(s['k']), len(tf)))
            out.write('THETA0 %s\n' % fxs(s['theta0'], 4, w + ' theta0'))
            out.write('MTH %s\n' % fxs(s['Mth'], 16, w + ' Mth'))
            out.write('R %s\nN %s\nLR %s\n' % (fx(s['r'], w + ' r'), fx(s['n'], w + ' n'), fx(s['label_radius'], w + ' lr')))
            out.write('P %s\n' % fxs(s['P'], 36, w + ' P'))
            out.write('U %s\n' % fxs(s['U'], 144, w + ' U'))
            for j, t in enumerate(tf):
                out.write(xfer_line(t, '%s transfer %d' % (w, j)))
            nx += len(tf)
        for i, r in enumerate(recs):
            w = 'record %d' % i
            tint = r.get('Tint') or []
            if len(tint) != 144 or any(isinstance(v, bool) or not isinstance(v, int) for v in tint):
                raise SystemExit('%s: Tint must be 144 integers' % w)
            tg = r.get('targets') or []
            bd = r.get('boundary') or []
            out.write('RECORD %d %d %s %s %d %d\n' % (i, 1 if r.get('closed', True) else 0, fx(r['R'], w + ' R'),
                                                    fx(r['label_radius'], w + ' lr'), len(tg), len(bd)))
            out.write('PHI %s\n' % fxs(r['phi'], 36, w + ' phi'))
            out.write('TINT %s\n' % ' '.join(str(v) for v in tint))
            for t in tg:
                tt, sg, tr, rp, cp = t
                if sg not in (1, -1) or sorted(rp) != ID6 or sorted(cp) != ID6:
                    raise SystemExit('%s: bad target %r' % (w, t))
                out.write('TARGET %d %d %d %s %s\n' % (int(tt), int(sg), int(bool(tr)), ' '.join(map(str, rp)),
                                                      ' '.join(map(str, cp))))
            for j, t in enumerate(bd):
                out.write(xfer_line(t, '%s box %d' % (w, j)))
            nx += len(bd)
        out.write('END\n')
    print('converted %d seed balls, %d records, %d transfer boxes -> %s' % (len(seeds), len(recs), nx, dst))


if __name__ == '__main__':
    main(sys.argv[1], sys.argv[2])
