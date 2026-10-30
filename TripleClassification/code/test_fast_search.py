#!/usr/bin/env python3
"""fast_search.py writes byte-identical input and proposal files to the pinned search, for each given cell entry.

  python test_fast_search.py PLANE_ROOT ENTRY.json...
"""
import filecmp, os, shutil, subprocess, sys, tempfile

HERE = os.path.dirname(os.path.abspath(__file__))


def main():
    root = os.path.abspath(sys.argv[1]); failures = 0
    for entry in sys.argv[2:]:
        with tempfile.TemporaryDirectory() as t:
            for k, cmd in (('pinned', [os.path.join(root, 'TripleClassification/code/plane_frontier_certificate.py')]),
                           ('fast', [os.path.join(HERE, 'fast_search.py'), root])):
                os.makedirs(os.path.join(t, k)); shutil.copy(entry, os.path.join(t, k, 'entry.json'))
                subprocess.run([sys.executable, '-W', 'ignore'] + cmd + [os.path.join(t, k, 'entry.json'), '--out',
                                os.path.join(t, k, 'frontier.json')], cwd=root, capture_output=True,
                               env=dict(os.environ, OMP_NUM_THREADS='1'))
            same = [f for f in ('frontier.input.json.gz', 'frontier.proposal.json.gz')
                    if os.path.exists(os.path.join(t, 'fast', f)) and filecmp.cmp(os.path.join(t, 'pinned', f), os.path.join(t, 'fast', f), shallow=False)]
            ok = len(same) == 2; failures += not ok
            print('%-4s %s: %s' % ('PASS' if ok else 'FAIL', entry, 'input and proposal identical' if ok else 'identical: %s' % same))
    print('%d failure(s)' % failures); sys.exit(1 if failures else 0)


if __name__ == '__main__': main()
