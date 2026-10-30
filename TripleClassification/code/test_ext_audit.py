#!/usr/bin/env python3
"""The original-ball audit's plane step (PlaneManifest, as audit_select.py --plane uses it) on a cell whose proof needs
the extended check: ball 825's level-6 cell (3, 22, 27, 42), certified by secant witnesses.

  python test_ext_audit.py PINNED_ROOT EXT_ROOT CELL_DIR

CELL_DIR holds that cell's entry.json, frontier.input.json.gz, frontier.proposal.json.gz and replay.json (ext_replay.py).
1. on the extended tree (make_ext_root.sh): plane_manifest.py lists the cell and the audit's replay certifies it;
2. on the pinned tree: the cell is listed, but its extended receipt does not seed the replay cache, and the audit's
   replay does not certify it (the cell stays open).
"""
import json, os, shutil, subprocess, sys, tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
CLOSE = '''import json, sys; from pathlib import Path; root = Path(sys.argv[1]); sys.path.insert(0, str(root / 'TripleClassification/code'))
from plane_audit_manifest import PlaneManifest
m = PlaneManifest(Path(sys.argv[2]), 825, root)
try: print(json.dumps(dict(closed=m.close(6, (3, 22, 27, 42)))))
except ValueError as e: print(json.dumps(dict(closed=False, error=str(e)[:120])))'''


def main():
    pinned, ext, cdir = (os.path.abspath(x) for x in sys.argv[1:4]); failures = 0
    for name, root, want in (('extended tree', ext, True), ('pinned tree', pinned, False)):
        with tempfile.TemporaryDirectory() as t:
            ball = os.path.join(t, 'b825'); shutil.copytree(cdir, os.path.join(ball, '6_3_22_27_42'))
            m = subprocess.run([sys.executable, '-W', 'ignore', os.path.join(HERE, 'rusty', 'plane_manifest.py'), root, ball, '825'],
                               capture_output=True, text=True, cwd=root)
            listed = len(json.load(open(os.path.join(ball, 'manifest.json')))['cells']) if os.path.exists(os.path.join(ball, 'manifest.json')) else 0
            cached = len(json.load(open(os.path.join(ball, 'replay_cache.jobs.json')))) if os.path.exists(os.path.join(ball, 'replay_cache.jobs.json')) else 0
            q = subprocess.run([sys.executable, '-W', 'ignore', '-c', CLOSE, root, os.path.join(ball, 'manifest.json')],
                               capture_output=True, text=True, cwd=root, env=dict(os.environ, OMP_NUM_THREADS='1', TC_ROOT=''))
            try: r = json.loads(q.stdout.strip().splitlines()[-1])
            except (ValueError, IndexError): r = dict(closed=None, error=(q.stderr.strip().splitlines() or [''])[-1][:150])
            ok = listed == 1 and r.get('closed') is want and (want or cached == 0)
            failures += not ok
            print('%-4s %-15s listed %d, cached %d, audit replay closes it: %s %s' % ('PASS' if ok else 'FAIL', name, listed, cached,
                                                                                    r.get('closed'), r.get('error', '')))
    print('%d failure(s)' % failures); sys.exit(1 if failures else 0)


if __name__ == '__main__': main()
