#!/usr/bin/env python3
"""Regression and tamper tests for audit_select.py on two real trees (ball 126: levels 2-3; ball 491: levels 2-4).

  python test_audit_select.py SAMPLES SCRIPTS        (from the repository root)

SAMPLES holds b126_l2, b126_l3, b491_l2, b491_l3, b491_l4 and b1601_l2 (.json.gz and .jsonl; ball 1601 is a
level-2 tree with classified rows); SCRIPTS holds the builders the
receipts are bound to: l2_v1/split.py, l2_v2/split.py, l2_v3/split.py (with its stagec_guard.py), l3/split_mixed.py,
deep/split_select.py.  The genuine trees must verify; each edited copy must be refused, for the stated reason.
"""
import gzip, json, os, shutil, subprocess, sys, tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))


def audit(index, layers, scripts):
    cmd = [sys.executable, '-W', 'ignore', os.path.join(HERE, 'audit_select.py'), '--root', ROOT, '--index', str(index),
           '--layers'] + layers + ['--scripts'] + scripts
    p = subprocess.run(cmd, capture_output=True, text=True)
    last = (p.stderr.strip().splitlines() or [''])[-1]
    ok = p.returncode == 0 and '"GEOMETRY_AND_RECEIPTS_VERIFIED"' in p.stdout
    return ok, last


def rows(path):
    return [json.loads(l) for l in open(path)]


def write_rows(path, rr):
    with open(path, 'w') as f:
        for r in rr: f.write(json.dumps(r) + '\n')


def main():
    samples, scripts = map(os.path.abspath, sys.argv[1:3])
    l2 = ','.join(os.path.join(scripts, d, 'split.py') for d in ('l2_v1', 'l2_v2', 'l2_v3'))
    l3 = os.path.join(scripts, 'l3', 'split_mixed.py') + ',' + os.path.join(scripts, 'deep', 'split_select.py')
    deep = os.path.join(scripts, 'deep', 'split_select.py')
    failures = 0

    def check(name, expect_ok, index, names, edit=None, reason=None):
        nonlocal failures
        with tempfile.TemporaryDirectory() as t:
            for n in names:
                for ext in ('.json.gz', '.jsonl'): shutil.copy(os.path.join(samples, n + ext), os.path.join(t, n + ext))
            if edit: edit(t)
            layers = [os.path.join(t, n + '.json.gz') for n in names]
            ok, last = audit(index, layers, [l2, l3, deep][:len(names)])
        good = ok == expect_ok and (expect_ok or reason is None or reason in last)
        failures += not good
        print('%-4s %-58s %s' % ('PASS' if good else 'FAIL', name, '' if ok else last[:110]))

    def edit_row(name, pick, change):
        def f(t):
            p = os.path.join(t, name + '.jsonl'); rr = rows(p)
            before = json.dumps(rr)
            for r in rr:
                if pick(r): change(r); break
            if json.dumps(rr) == before: raise AssertionError('tamper edit changed nothing: ' + name)
            write_rows(p, rr)
        return f

    def edit_info(name, change):
        def f(t):
            p = os.path.join(t, name + '.json.gz'); doc = json.load(gzip.open(p, 'rt'))
            change(doc); json.dump(doc, gzip.open(p, 'wt'))
        return f

    closed = lambda r: r['status'] in ('CERTIFIED', 'CERTIFIED EMPTY')
    check('126: genuine levels 2-3', True, 126, ['b126_l2', 'b126_l3'])
    check('491: genuine levels 2-4', True, 491, ['b491_l2', 'b491_l3', 'b491_l4'])
    check('491: stop at level 3 (open cell left)', False, 491, ['b491_l2', 'b491_l3'], reason='unresolved cell')
    check('491: a closed level-4 row marked open', False, 491, ['b491_l2', 'b491_l3', 'b491_l4'],
          edit_row('b491_l4', closed, lambda r: r.update(status='NOT ESTABLISHED')), 'unresolved cell')
    check('491: a level-4 row with a foreign binding', False, 491, ['b491_l2', 'b491_l3', 'b491_l4'],
          edit_row('b491_l4', closed, lambda r: r.update(binding='0' * 64)), 'source binding mismatch')
    check('491: a level-4 row with another seed hash', False, 491, ['b491_l2', 'b491_l3', 'b491_l4'],
          edit_row('b491_l4', closed, lambda r: r.update(seed_sha256='0' * 64)), 'seed binding mismatch')

    def drop_first(t):
        p = os.path.join(t, 'b491_l4.jsonl'); write_rows(p, rows(p)[1:])
    check('491: a level-4 receipt missing', False, 491, ['b491_l2', 'b491_l3', 'b491_l4'], drop_first, 'missing or unexpected rows')

    def weak_q(r):
        for x in r['patterns']:
            if x['status'] == 'CERTIFIED': x['q'] = '1.0'; return
    check('1601: genuine level 2 with classified sub-balls', True, 1601, ['b1601_l2'])
    check('1601: a symmetry bound q = 1', False, 1601, ['b1601_l2'],
          edit_row('b1601_l2', lambda r: r['status'] == 'CERTIFIED', weak_q), 'not strict')
    check('1601: a classified row with an unknown method', False, 1601, ['b1601_l2'],
          edit_row('b1601_l2', lambda r: r['status'] == 'CERTIFIED',
                   lambda r: [x.update(method='other') for x in r['patterns'] if x['status'] == 'CERTIFIED']),
          'unknown classification method')
    def dup_first(change):
        def f(t):
            p = os.path.join(t, 'b491_l4.jsonl'); rr = rows(p)
            extra = dict(rr[0]); change(extra); write_rows(p, [extra] + rr)
        return f
    check('491: a second, open receipt for a closed sub-ball', True, 491, ['b491_l2', 'b491_l3', 'b491_l4'],
          dup_first(lambda r: r.update(status='NOT ESTABLISHED', patterns=[])))
    check('491: a second closed receipt with a foreign binding', False, 491, ['b491_l2', 'b491_l3', 'b491_l4'],
          dup_first(lambda r: r.update(binding='0' * 64)), 'source binding mismatch')
    check('491: a level-3 cell removed from the cover', False, 491, ['b491_l2', 'b491_l3', 'b491_l4'],
          edit_info('b491_l3', lambda d: d['info']['split']['cover'].pop()), None)
    check('491: level 4 names another level-3 file', False, 491, ['b491_l2', 'b491_l3', 'b491_l4'],
          edit_info('b491_l4', lambda d: d['info']['split'].update(parent_receipts_sha256='0' * 64)), 'names a different previous layer')
    check('491: a sub-ball radius shrunk', False, 491, ['b491_l2', 'b491_l3', 'b491_l4'],
          edit_info('b491_l4', lambda d: d['seeds'][0].update(r=(float.fromhex(d['seeds'][0]['r']) / 2).hex())), None)
    print('%d failure(s)' % failures)
    sys.exit(1 if failures else 0)


if __name__ == '__main__': main()
