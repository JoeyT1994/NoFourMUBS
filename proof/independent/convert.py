#!/usr/bin/env python3
"""Convert a nofour-atlas-v1 certificate (gzip JSON) into the plain-text format read by check.jl.

Standard library only.  Every float is written with float.hex(), so the conversion is exact.

Output format (one item per line, whitespace separated):
    FORMAT nofour-atlas-v1
    NRECORDS <n>
    then per record:
    RECORD <index> <closed 0/1> <R hex> <label_radius hex> <ntargets>
    PHI <36 hex floats, row-major>
    TINT <144 integers, row-major 36 x 4>
    TARGET <t> <sign> <tr 0/1> <rowperm 6 ints> <colperm 6 ints>      (ntargets lines)
Usage: python3 convert.py certificate.json.gz out.txt
"""
import gzip
import json
import sys


def main(src, dst):
    with gzip.open(src, 'rt') as f:
        d = json.load(f)
    if d.get('format') != 'nofour-atlas-v1':
        raise SystemExit('unexpected format %r' % d.get('format'))
    recs = d['records']
    with open(dst, 'w') as out:
        out.write('FORMAT nofour-atlas-v1\n')
        out.write('NRECORDS %d\n' % len(recs))
        for i, r in enumerate(recs):
            phi = r['phi']
            if len(phi) != 36:
                raise SystemExit('record %d: phi has %d entries' % (i, len(phi)))
            for x in phi:  # validate that every entry is a float.hex string
                float.fromhex(x)
            tint = r.get('Tint') or []
            if not tint:
                raise SystemExit('record %d has no Tint (frame); this certificate predates the frame export and '
                                 'cannot be checked from phi and Tint' % i)
            if len(tint) != 144 or any(not isinstance(v, int) for v in tint):
                raise SystemExit('record %d: Tint must be 144 integers' % i)
            R = float(r['R']); lr = float(r['label_radius'])
            tg = r.get('targets') or []
            out.write('RECORD %d %d %s %s %d\n' % (i, 1 if r['closed'] else 0, R.hex(), lr.hex(), len(tg)))
            out.write('PHI ' + ' '.join(phi) + '\n')
            out.write('TINT ' + ' '.join(str(v) for v in tint) + '\n')
            for t in tg:
                tt, sg, tr, rp, cp = t
                if sg not in (1, -1) or tr not in (0, 1, True, False):
                    raise SystemExit('record %d: bad target %r' % (i, t))
                if sorted(rp) != list(range(6)) or sorted(cp) != list(range(6)):
                    raise SystemExit('record %d: bad permutation in target %r' % (i, t))
                out.write('TARGET %d %d %d %s %s\n' % (int(tt), int(sg), int(bool(tr)),
                                                      ' '.join(map(str, rp)), ' '.join(map(str, cp))))
    print('converted %d records (%d closed) -> %s' % (len(recs), sum(1 for r in recs if r['closed']), dst))


if __name__ == '__main__':
    main(sys.argv[1], sys.argv[2])
