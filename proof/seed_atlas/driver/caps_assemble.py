"""Write a certificate whose seed balls and edge ball carry certified caps (FORMAT.md sections 4a and 8a).

Usage: python caps_assemble.py CERT OUT [--seed-caps DIR]... [--edge-caps FILE] [--compact]
  --seed-caps DIR   seed_<j>.json files ({"caps", "coverage"}; T0/T1 caps, and T3 caps of theorem ZC2b); the first
                    directory that has a ball's file wins
  --edge-caps FILE  the X-ball's caps ({"caps", "coverage"}, theorem ZC2a), json or json.gz
  --compact         store every coverage certificate in the index-only schema (cap_coverage.COMPACT_SCHEMA)
Each capped sphere keeps its group descriptors (the caps name them by index) with empty boxes.  Cap fields the
checkers do not read (info, replay, diagnostics) are dropped.  Nothing here is trusted: run the certifiers on OUT.
"""
import argparse, gzip, json, os, sys
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(HERE, '../cert'))
import cap_coverage as COV

CAP_FIELDS = ('group_index', 'v', 'h', 'mode', 'weighted_target', 'lambda', 'lambda_', 'mu', 's', 'multiplier_vec',
              'psi_remainder', 't3_group_sha256', 't3_alignment', 't3_parameter', 't3_distance')


def load(path):
    with (gzip.open(path, 'rt') if path.endswith('.gz') else open(path)) as f: return json.load(f)


def clean(c, compact):
    caps = [{k: cap[k] for k in CAP_FIELDS if k in cap} for cap in c['caps']]
    cov = c['coverage']
    if compact and cov.get('schema') == COV.SCHEMA: cov = COV.compact_coverage_certificate(cov)
    return dict(caps=caps, coverage=cov)


def attach(rec, c, compact):
    rec['caps'] = clean(c, compact); n = 0
    for g in rec.get('transfers', []):
        n += len(g.get('boxes', [])); g['boxes'] = []
    return n


def main(argv=None):
    ap = argparse.ArgumentParser(); ap.add_argument('cert'); ap.add_argument('out')
    ap.add_argument('--seed-caps', action='append', default=[]); ap.add_argument('--edge-caps')
    ap.add_argument('--compact', action='store_true'); a = ap.parse_args(argv)
    d = load(a.cert); capped = dropped = 0
    for j, s in enumerate(d['seeds']):
        for dr in a.seed_caps:
            p = os.path.join(dr, 'seed_%d.json' % j)
            if os.path.exists(p):
                dropped += attach(s, load(p), a.compact); capped += 1; break
    if a.edge_caps:
        dropped += attach(d['edge'][0], load(a.edge_caps), a.compact)
    left = sum(len(g.get('boxes', [])) for s in d['seeds'] for g in s.get('transfers', [])) + \
        sum(len(g.get('boxes', [])) for e in d.get('edge', []) for g in e.get('transfers', []))
    with gzip.open(a.out, 'wt') as f: json.dump(d, f, separators=(',', ':'))
    print('%d of %d seed balls and %d edge ball(s) carry caps; %d boxes dropped, %d left -> %s'
          % (capped, len(d['seeds']), int(bool(a.edge_caps)), dropped, left, a.out))


if __name__ == '__main__':
    main()
