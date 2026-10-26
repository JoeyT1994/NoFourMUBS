"""Write a certificate whose seed balls carry their certified caps (FORMAT.md section 4a).

Usage: python caps_merge.py CERT CAPS_DIR OUT
For each seed ball j with CAPS_DIR/seed_<j>.json, set "caps" to it and empty the boxes of its transfer groups (the caps
refer to the groups by index; with caps, both checkers verify the sphere by the caps and their coverage alone).  Other
balls are unchanged.  Nothing here is trusted: run the certifiers on OUT.
"""
import gzip, json, os, sys


def main(cert, caps_dir, out):
    d = json.load(gzip.open(cert, 'rt')); n = boxes = 0
    for j, s in enumerate(d['seeds']):
        p = os.path.join(caps_dir, 'seed_%d.json' % j)
        if not os.path.exists(p): continue
        with open(p) as f: c = json.load(f)
        s['caps'] = dict(caps=c['caps'], coverage=c['coverage'])
        for g in s.get('transfers', []):
            boxes += len(g.get('boxes', [])); g['boxes'] = []
        n += 1
    with gzip.open(out, 'wt') as f: json.dump(d, f, separators=(',', ':'))
    print('%d of %d seed balls carry caps; %d transfer boxes dropped -> %s' % (n, len(d['seeds']), boxes, out))


if __name__ == '__main__':
    main(*sys.argv[1:4])
