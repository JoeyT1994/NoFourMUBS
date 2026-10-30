#!/usr/bin/env python3
"""Unit test of verify_ball.py's auditor command: one --gamma-rules naming the rule of every section the certificate
holds (a legacy gamma 'rules' string listing anchored or graph is cut to fourier/ordering), and none without a section.
The auditor run is stubbed; file hashing and the Stage C check run for real on small files."""
import gzip, hashlib, json, os, runpy, subprocess, sys, tempfile

HERE = os.path.dirname(os.path.abspath(__file__))


def run(t, sections):
    def f(name, text='x'):
        p = os.path.join(t, name); open(p, 'w').write(text); return dict(path=p, sha256=hashlib.sha256(text.encode()).hexdigest())
    sub = os.path.join(t, 'l2.json.gz')
    with gzip.open(sub, 'wt') as g: json.dump(dict(seeds=[]), g)
    m = dict(schema='tc-tree-certificate-v1', ball=7, route='selective chain', rule='graph', auditor=f('audit.py'),
             layers=[dict(level=2, subatlas=dict(path=sub, sha256=hashlib.sha256(open(sub, 'rb').read()).hexdigest()),
                          receipts=f('l2.jsonl', ''), scripts=[f('split.py')])], stage_c=f('stagec.jsonl', ''))
    if 'gamma' in sections:
        m['gamma'] = dict(rules=sections['gamma'], gamma_test_sha256='a' * 64, records=f('g.jsonl'), lower_bounds=f('low.json'))
    if 'anchored' in sections:
        m['anchored'] = dict(checker_sha256='b' * 64, runner_sha256='c' * 64, records=f('a.jsonl'))
    if 'graph' in sections:
        m['graph'] = dict(checker_sha256='d' * 64, runner_sha256='e' * 64, checker_dir=t, checker_files=[f('cg.py')], records=f('gr.jsonl'))
    if 'plane' in sections:
        m['plane'] = dict(manifest=f('man.json'), root=t, cell_files=[f('entry.json'), f('tree.json'), f('in.gz'), f('prop.gz')])
    cert = os.path.join(t, 'cert.json'); json.dump(m, open(cert, 'w'))
    seen = []
    class P: returncode = 0; stdout = json.dumps(dict(status='GEOMETRY_AND_RECEIPTS_VERIFIED', layers=[], gamma={})); stderr = ''
    real = subprocess.run; subprocess.run = lambda cmd, **k: (seen.append(cmd), P)[1]
    sys.argv = ['verify_ball.py', cert, '--root', t]
    try: runpy.run_path(os.path.join(HERE, 'verify_ball.py'), run_name='__main__')
    except SystemExit as e: assert not e.code, e.code
    finally: subprocess.run = real
    cmd = seen[0]
    return [cmd[i + 1] for i, x in enumerate(cmd) if x == '--gamma-rules'], cmd


failures = 0
for name, sections, want in [
        ('legacy gamma rules with anchored and graph sections', dict(gamma='fourier,ordering,anchored,graph', anchored=1, graph=1),
         ['fourier,ordering,anchored,graph']),
        ('legacy gamma rules naming graph, no graph section', dict(gamma='fourier,ordering,anchored,graph'), ['fourier,ordering']),
        ('graph alone', dict(graph=1), ['graph']),
        ('anchored and graph without gamma', dict(anchored=1, graph=1), ['anchored,graph']),
        ('plane alone: no rule flag', dict(plane=1), []),
        ('plane with gamma and graph', dict(plane=1, gamma='fourier,ordering', graph=1), ['fourier,ordering,graph'])]:
    with tempfile.TemporaryDirectory() as t:
        got, cmd = run(t, sections)
        ok = got == want and (('--plane' in cmd) == ('plane' in sections))
        failures += not ok
        print('%-4s %-55s %s' % ('PASS' if ok else 'FAIL', name, got))
print('%d failure(s)' % failures); sys.exit(1 if failures else 0)
