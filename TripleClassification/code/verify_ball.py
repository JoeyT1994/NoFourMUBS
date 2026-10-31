#!/usr/bin/env python3
"""Verify one seed ball's tree certificate from its manifest alone.

  python verify_ball.py CERTIFICATE.json --root TC_TREE [--guard stagec_guard.py ...]

The manifest (written by assemble.py) names every input by path and SHA-256: the tree auditor, each layer's
sub-atlas, receipts and accepted builder scripts, the Stage C rows its closed sub-balls use, and, when a score rule
was needed, the gamma records with the pinned gamma_test.py hash, and the anchored-column receipts with the pinned
checker and runner hashes. This script:

1. checks every file's SHA-256 against the manifest (a moved or edited file fails);
2. runs the pinned auditor (audit_select.py) on exactly those layers, scripts and gamma records, under the rule the
   manifest names, and requires GEOMETRY_AND_RECEIPTS_VERIFIED;
3. checks that every closed sub-ball of every layer, and every cell a score or anchored rule closed (the auditor
   lists them), either carries an inline Stage C result of an accepted guard, or
   has a PASS row in the manifest's Stage C file for its exact sub-atlas, index and record, from a guard whose
   SHA-256 equals one of the --guard files (default: stagec_guard.py beside this script).

It prints one JSON line and exits 0 only if all three hold.
"""
import argparse, gzip, hashlib, json, os, subprocess, sys

HERE = os.path.dirname(os.path.abspath(__file__))


def sha(path):
    h = hashlib.sha256()
    with open(path, 'rb') as f:
        for chunk in iter(lambda: f.read(1 << 20), b''): h.update(chunk)
    return h.hexdigest()


def fail(msg):
    print(json.dumps(dict(status='FAILED', reason=msg))); sys.exit(1)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('certificate'); ap.add_argument('--root', required=True)
    ap.add_argument('--guard', nargs='*', default=[os.path.join(HERE, 'stagec_guard.py')])
    a = ap.parse_args()
    m = json.load(open(a.certificate))
    if m.get('schema') != 'tc-tree-certificate-v1': fail('unknown certificate schema')
    files = [m['auditor'], m['stage_c']] + [x for L in m['layers'] for x in [L['subatlas'], L['receipts']] + L['scripts']]
    if m.get('gamma'): files += [m['gamma']['records'], m['gamma']['lower_bounds']]
    if m.get('anchored'): files += [m['anchored']['records']]
    if m.get('graph'): files += [m['graph']['records']] + m['graph']['checker_files']
    if m.get('plane'): files += [m['plane'].get('manifest', m['plane'])] + m['plane'].get('cell_files', [])
    for f in files:
        if not os.path.exists(f['path']) or sha(f['path']) != f['sha256']: fail('file missing or changed: ' + f['path'])
    cmd = [sys.executable, '-W', 'ignore', m['auditor']['path'], '--root', a.root, '--index', str(m['ball']),
           '--layers'] + [L['subatlas']['path'] for L in m['layers']] + \
          ['--scripts'] + [','.join(s['path'] for s in L['scripts']) for L in m['layers']]
    if m.get('gamma'):
        cmd += ['--gamma', m['gamma']['records']['path'], '--gamma-sha', m['gamma']['gamma_test_sha256'],
                '--gamma-rules', m['gamma']['rules'], '--gamma-lower', m['gamma']['lower_bounds']['path'],
                '--gamma-lower-sha', m['gamma']['lower_bounds']['sha256']]
    if m.get('anchored'):
        if not m.get('gamma'): cmd += ['--gamma-rules', 'anchored']
        cmd += ['--anchored', m['anchored']['records']['path'], '--anchored-sha', m['anchored']['checker_sha256'],
                '--anchored-runner-sha', m['anchored']['runner_sha256']]
    if m.get('plane'):                              # every plane cell is replayed by the auditor, not read from a receipt
        cmd += ['--plane', m['plane'].get('manifest', m['plane'])['path']]
        cmd[cmd.index('--root') + 1] = m['plane'].get('root', a.root)
    if m.get('graph'):
        if not m.get('gamma') and not m.get('anchored'): cmd += ['--gamma-rules', 'graph']
        cmd += ['--graph', m['graph']['records']['path'], '--graph-dir', m['graph']['checker_dir'],
                '--graph-sha', m['graph']['checker_sha256'], '--graph-runner-sha', m['graph']['runner_sha256']]
    # An independent replay must not inherit the live loop's leaf cache.
    env = dict(os.environ); env.pop('TC_LEAF_CACHE', None)
    p = subprocess.run(cmd, capture_output=True, text=True, env=env)
    try:
        v = json.loads((p.stdout.strip().splitlines() or ['{}'])[-1])
    except ValueError:
        v = {}
    if p.returncode != 0 or v.get('status') != 'GEOMETRY_AND_RECEIPTS_VERIFIED':
        fail('tree audit: ' + ((p.stderr.strip().splitlines() or [''])[-1])[:200])
    guards = {sha(g) for g in a.guard}
    stage = {}
    for line in open(m['stage_c']['path']):
        r = json.loads(line)
        if r.get('status') == 'PASS' and r.get('guard_sha256') in guards:
            stage[(r['atlas_sha256'], r['index'])] = r['seed_sha256']
    missing = 0
    disch = {tuple(x) for x in v.get('discharged', [])}
    for L in m['layers']:
        seeds = json.load(gzip.open(L['subatlas']['path'], 'rt'))['seeds']
        for line in open(L['receipts']['path']):
            try:
                r = json.loads(line)
            except ValueError:
                continue
            if r.get('status') not in ('CERTIFIED', 'CERTIFIED EMPTY') and (L['level'], r['index']) not in disch: continue
            if (r.get('stage_c_preconditions') or {}).get('guard_sha256') in guards: continue
            rec = hashlib.sha256(json.dumps(seeds[r['index']], sort_keys=True).encode()).hexdigest()
            if stage.get((L['subatlas']['sha256'], r['index'])) != rec: missing += 1
    if missing: fail('%d closed or discharged sub-balls without a Stage C PASS from an accepted guard' % missing)
    print(json.dumps(dict(status='VERIFIED', ball=m['ball'], route=m['route'], rule=m['rule'], layers=v['layers'],
                          gamma=v.get('gamma'), plane=v.get('plane'))))


if __name__ == '__main__': main()
