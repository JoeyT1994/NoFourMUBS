#!/usr/bin/env python3
"""Convert a seed-atlas certificate (gzip JSON, layout of proof/seed_atlas/FORMAT.md) into the plain-text form read by
src/io_seed.jl.  Standard library only.  Every float goes through float.fromhex / float.hex, so the conversion is
exact; integers are checked to be integers.  Fields named `info`, and any field not used here, are ignored.

This file and src/io_seed.jl are the only places that know the certificate's layout.
Usage: python3 convert_seed.py certificate.json.gz out.txt
"""
import gzip
import json
import sys

KINDS_SEED = ('T0', 'T1', 'T2')
KINDS_REC = ('rec', 'T1prime')
GS = ('id', 'conj', 'T', 'conjT')


def fx(v, what):
    if not isinstance(v, str):
        raise SystemExit('%s: floats must be float.hex strings, got %r' % (what, v))
    x = float.fromhex(v)
    if x != x or x in (float('inf'), float('-inf')):
        raise SystemExit('%s: non-finite float' % what)
    return x.hex()


def fxs(vs, n, what):
    if not isinstance(vs, list) or len(vs) != n:
        raise SystemExit('%s: expected %d floats' % (what, n))
    return ' '.join(fx(v, what) for v in vs)


def isint(v):
    return isinstance(v, int) and not isinstance(v, bool)


def ints(vs, what, n=None):
    if not isinstance(vs, list) or any(not isint(v) for v in vs) or (n is not None and len(vs) != n):
        raise SystemExit('%s: expected %s integers' % (what, n if n is not None else 'a list of'))
    return vs


def group_lines(t, kinds, what):
    kind = t.get('kind')
    if kind not in kinds:
        raise SystemExit('%s: kind %r not allowed here' % (what, kind))
    tg = t.get('target')
    if not isint(tg):
        raise SystemExit('%s: target must be an integer' % what)
    g = t.get('g', 'id')
    if g not in GS:
        raise SystemExit('%s: unknown g %r' % (what, g))
    rows = ints(t.get('rows', []), what + ' rows'); cols = ints(t.get('cols', []), what + ' cols')
    wind = t.get('wind', [])
    if wind and isinstance(wind[0], list):
        wind = [x for row in wind for x in row]
    wind = ints(wind, what + ' wind')
    boxes = t.get('boxes')
    if not isinstance(boxes, list):
        raise SystemExit('%s: boxes must be a list' % what)
    flat = []
    for b in boxes:
        ints(b, what + ' box', 5)
        flat.extend(b)
    head = 'GROUP %s %d %s ROWS %d%s COLS %d%s WIND %d%s NBOX %d\n' % (
        kind, tg, g, len(rows), ''.join(' %d' % x for x in rows), len(cols), ''.join(' %d' % x for x in cols),
        len(wind), ''.join(' %d' % x for x in wind), len(boxes))
    return head + 'BOXES' + ''.join(' %d' % x for x in flat) + '\n', len(boxes)


def main(src, dst):
    with gzip.open(src, 'rt') as f:
        d = json.load(f)
    if d.get('format') != 'seed-atlas-v1':
        raise SystemExit('unexpected format %r' % d.get('format'))
    seeds = d.get('seeds', []); recs = d.get('records', [])
    fr = d.get('fourier_record', -1)
    fr = -1 if fr is None else fr
    if not isint(fr):
        raise SystemExit('fourier_record must be an integer')
    nbox = 0
    with open(dst, 'w') as out:
        out.write('FORMAT seed-atlas-text-v2\n')
        out.write('COUNTS %d %d %d\n' % (len(seeds), len(recs), fr))
        for i, s in enumerate(seeds):
            w = 'seed %d' % i
            o, k = s.get('o'), s.get('k')
            if o not in (1, -1) or not isint(k):
                raise SystemExit('%s: o must be +-1 and k an integer' % w)
            gs = s.get('transfers', [])
            out.write('SEED %d %d %d %d\n' % (i, o, k, len(gs)))
            out.write('THETA0 %s\n' % fxs(s['theta0'], 4, w + ' theta0'))
            out.write('MTH %s\n' % fxs(s['Mth'], 16, w + ' Mth'))
            out.write('R %s\nN %s\nLR %s\n' % (fx(s['r'], w + ' r'), fx(s['n'], w + ' n'), fx(s['label_radius'], w + ' lr')))
            out.write('P %s\n' % fxs(s['P'], 36, w + ' P'))
            out.write('U %s\n' % fxs(s['U'], 144, w + ' U'))
            for j, t in enumerate(gs):
                txt, nb = group_lines(t, KINDS_SEED, '%s group %d' % (w, j))
                out.write(txt); nbox += nb
        for i, r in enumerate(recs):
            w = 'record %d' % i
            tint = ints(r.get('Tint') or [], w + ' Tint', 144)
            gs = r.get('boundary', [])
            out.write('RECORD %d %s %s %s %d\n' % (i, fx(r['R'], w + ' R'), fx(r['label_radius'], w + ' lr'),
                                                  fx(r['eta_scale'], w + ' eta_scale'), len(gs)))
            out.write('PHI %s\n' % fxs(r['phi'], 36, w + ' phi'))
            out.write('TINT %s\n' % ' '.join(str(v) for v in tint))
            for j, t in enumerate(gs):
                txt, nb = group_lines(t, KINDS_REC, '%s group %d' % (w, j))
                out.write(txt); nbox += nb
        tao = d.get('tao')
        if tao is None:
            out.write('TAO none\n')
        else:
            out.write('TAO %s %s\n' % (fx(tao['R'], 'tao R'), fx(tao['label_radius'], 'tao label_radius')))
        out.write('END\n')
    print('converted %d seed balls, %d records, %d boundary boxes -> %s' % (len(seeds), len(recs), nbox, dst))


if __name__ == '__main__':
    main(sys.argv[1], sys.argv[2])
