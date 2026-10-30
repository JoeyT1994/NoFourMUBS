#!/usr/bin/env python3
"""Prove a cell the whole-cell certifier could not do in one piece, as a tree of its dyadic children (no proof role here;
audit_select.py --plane replays the tree).

  python plane_refine.py PLANE_ROOT CELL_DIR [--depth D] [--workers W] [--py PYTHON]

CELL_DIR holds entry.json (ball, level, cell, ...). Its 16 children at level+1, in PR #4's order
(itertools.product(range(2), repeat=4) of the bits), become:
- {"outside": true} when the child misses the closed original ball (plane_tree_certificate.misses_ball, which the
  replay rechecks);
- a leaf {"input", "proposal"} when plane_frontier_certificate.py's search and then its separate replay certify it;
- otherwise, while depth remains, that child's own 16 children (recursively).
Only when every node is settled is CELL_DIR/tree.json written (schema tc-plane-tree-proposal-v1, bound to the
parent entry) and replayed once with plane_tree_certificate.check; the outcome goes to CELL_DIR/refined.json.
Child work lives in CELL_DIR/kids/<level>_<cell>/.
"""
import argparse, itertools, json, os, subprocess, sys
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

CERT = ('CERTIFIED_EMPTY_DYADIC_CELL', 'CERTIFIED_CLASSIFIED_DYADIC_CELL')


def main():
    ap = argparse.ArgumentParser(); ap.add_argument('root'); ap.add_argument('cell_dir')
    ap.add_argument('--depth', type=int, default=2); ap.add_argument('--workers', type=int, default=8)
    ap.add_argument('--py', default=sys.executable)
    ap.add_argument('--seconds', type=float, default=0, help='cap each search (0: none); a capped search counts as failed')
    a = ap.parse_args(); root, top = Path(a.root).resolve(), Path(a.cell_dir).resolve()
    sys.path.insert(0, str(root / 'TripleClassification/code'))
    import plane_audit_manifest as PM
    import plane_tree_certificate as Tree
    import plane_frontier_certificate as F
    from plane_column_certificate import digest
    fc = root / 'TripleClassification/code/plane_frontier_certificate.py'
    parent = json.load(open(top / 'entry.json'))

    def prove(entry, d):
        """Search, then replay, one cell; True when the replay certifies it."""
        d.mkdir(parents=True, exist_ok=True); e = d / 'entry.json'; json.dump(entry, open(e, 'w'))
        if (d / 'replay.json').exists():
            return json.load(open(d / 'replay.json')).get('status') in CERT
        env = dict(os.environ, OMP_NUM_THREADS='1')
        try:
            subprocess.run([a.py, '-W', 'ignore', str(fc), str(e), '--out', str(d / 'frontier.json')], cwd=root, env=env,
                           capture_output=True, timeout=a.seconds or None)
        except subprocess.TimeoutExpired:
            return False                                         # too slow in one piece: split it (if depth remains)
        if not ((d / 'frontier.input.json.gz').exists() and (d / 'frontier.proposal.json.gz').exists()): return False
        subprocess.run([a.py, '-W', 'ignore', str(fc), str(e), '--input', str(d / 'frontier.input.json.gz'), '--proposal',
                        str(d / 'frontier.proposal.json.gz'), '--out', str(d / 'replay.json')], cwd=root, env=env, capture_output=True)
        try: return json.load(open(d / 'replay.json')).get('status') in CERT
        except (OSError, ValueError): return False

    def node(level, cell, depth):
        """The tree node for one child cell, or None if it could not be settled."""
        if Tree.misses_ball(level, cell): return {'outside': True}
        d = top / 'kids' / ('%d_%s' % (level, '_'.join(map(str, cell))))
        if prove(dict(parent, level=level, cell=list(cell)), d):
            rel = d.relative_to(top)
            return {'input': {'path': str(rel / 'frontier.input.json.gz'), 'sha256': digest(d / 'frontier.input.json.gz')},
                    'proposal': {'path': str(rel / 'frontier.proposal.json.gz'), 'sha256': digest(d / 'frontier.proposal.json.gz')}}
        if depth <= 1: return None
        kids = split(level, cell, depth - 1)
        return None if kids is None else {'children': kids}

    def split(level, cell, depth):
        cells = [[2 * c + b for c, b in zip(cell, bits)] for bits in itertools.product(range(2), repeat=4)]
        with ThreadPoolExecutor(a.workers) as pool:
            out = list(pool.map(lambda c: node(level + 1, c, depth), cells))
        return None if any(x is None for x in out) else out

    kids = split(parent['level'], parent['cell'], a.depth)
    res = dict(ball=parent['ball'], level=parent['level'], cell=parent['cell'], depth=a.depth)
    if kids is None:
        res['status'] = 'NOT_ESTABLISHED'; res['reason'] = 'some descendant cell was not certified within the depth'
    else:
        tree = dict(schema='tc-plane-tree-proposal-v1', root_entry_sha256=F.jsonsha(parent), tree={'children': kids})
        json.dump(tree, open(top / 'tree.json.new', 'w')); os.replace(top / 'tree.json.new', top / 'tree.json')
        r = Tree.check(parent, top / 'tree.json')                      # one replay of the whole tree before use
        res.update(status=r['status'], counts=r['counts'], tree_sha256=r['tree_sha256'],
                   checker_sources_sha256=PM.source_hashes(root))   # the checker version that replayed the tree
    json.dump(res, open(top / 'refined.json', 'w')); print(json.dumps(res))


if __name__ == '__main__': main()
