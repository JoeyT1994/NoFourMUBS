"""Write per-ball remainders into a certificate: for each seed ball screened by kernel_n.py (Stage C passes at
n = f * sampled n * 1.05, f in 1.5..6), set its n and label radius to the screened ones.  A looser n makes the C1
certification refine less (seedcert.certify_c1 stops at the stored n); transfers do not depend on n.  Every value is
re-certified by the certifiers (C1 at the new n, Stage C at the new n and label radius); nothing here is trusted.

Usage: python apply_kernel_n.py CERT.json.gz KERNEL_N.jsonl OUT.json.gz
"""
import gzip, json, sys


def main(src, kn, out):
    d = json.load(gzip.open(src, 'rt'))
    rows = [json.loads(l) for l in open(kn) if l.strip()]
    changed = 0
    for o in rows:
        if not o.get('f'): continue
        s = d['seeds'][o['j']]
        if float(o['n']) <= float.fromhex(s['n']): continue          # never tighten
        s['n'] = float(o['n']).hex(); s['label_radius'] = float(o['label_k']).hex()
        s.setdefault('info', {})['n_factor'] = o['f']
        changed += 1
    d.setdefault('info', {})['per_ball_n'] = dict(source=kn, balls=changed)
    with gzip.open(out, 'wt') as f: json.dump(d, f, separators=(',', ':'))
    print('per-ball n written for %d of %d seed balls -> %s' % (changed, len(d['seeds']), out))


if __name__ == '__main__':
    main(*sys.argv[1:4])
