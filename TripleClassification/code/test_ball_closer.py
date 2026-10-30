#!/usr/bin/env python3
"""End-to-end test of ball_closer.py on ball 491's level-4 cell (12, 5, 12, 12), which the whole-cell checker certifies.

  python test_ball_closer.py PLANE_ROOT [WORKERS]

1. the cell as the root: one leaf, the tree replays as certified;
2. a 1 s cap at level 4 forces a split: level-5 leaves (and outside cells), the tree replays as certified;
3. a rerun of 2 reuses every settled cell (no search time);
4. with the split forbidden (max level 4) the cell is reported open, with no tree.
"""
import json, os, subprocess, sys, tempfile

HERE = os.path.dirname(os.path.abspath(__file__))


def main():
    proot = os.path.abspath(sys.argv[1]); w = sys.argv[2] if len(sys.argv) > 2 else '8'; failures = 0
    with tempfile.TemporaryDirectory() as t:
        def run(out, *extra):
            q = subprocess.run([sys.executable, '-W', 'ignore', os.path.join(HERE, 'ball_closer.py'), proot, '491', os.path.join(t, out),
                                '--cell', '4:12,5,12,12', '--start', '4', '--workers', w] + list(extra), capture_output=True, text=True)
            try: return json.load(open(os.path.join(t, out, 'b491', 'closer.json')))
            except (OSError, ValueError): print(q.stderr[-1500:]); return {}
        cases = [('the cell closes as one leaf', lambda: run('one'),
                  lambda r: r.get('verdict') == 'CLOSED' and r['tree_counts']['certified'] == 1 and r['tree_counts']['nodes'] == 1),
                 ('a forced split closes on level-5 children', lambda: run('split', '--seconds', '4:1', '--max-level', '5'),
                  lambda r: r.get('verdict') == 'CLOSED' and r['tree_counts']['nodes'] == 17 and
                  r['tree_counts']['certified'] + r['tree_counts']['outside'] == 16 and r['cells_by_level']['4'] == {'split': 1}),
                 ('a rerun reuses every settled cell', lambda: run('split', '--seconds', '4:1', '--max-level', '5'),
                  lambda r: r.get('verdict') == 'CLOSED' and r['search_core_hours'] == 0),
                 ('no split allowed: the cell is open', lambda: run('open', '--seconds', '4:1', '--max-level', '4'),
                  lambda r: r.get('verdict') == 'OPEN' and r['open_cells'] == [[4, [12, 5, 12, 12]]] and
                  not os.path.exists(os.path.join(t, 'open', 'b491', 'tree.json')))]
        for name, go, ok in cases:
            r = go(); good = ok(r); failures += not good
            print('%-4s %-45s %s' % ('PASS' if good else 'FAIL', name,
                                     {k: r.get(k) for k in ('verdict', 'tree_counts', 'cells_by_level', 'search_core_hours', 'wall_seconds')}))
    print('%d failure(s)' % failures); sys.exit(1 if failures else 0)


if __name__ == '__main__': main()
