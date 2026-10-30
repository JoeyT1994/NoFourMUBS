#!/usr/bin/env python3
"""Write the hash-bound plane audit manifest for one ball's certified cells (proposals and bindings only).

  python plane_manifest.py PLANE_ROOT BALL_DIR BALL

BALL_DIR holds one directory per cell (plane_ball.py): entry.json, frontier.input.json.gz, frontier.proposal.json.gz
and replay.json. For every cell whose replay certified it, this writes tree.json (a single terminal leaf binding the
input and proposal by SHA-256 to the entry) and then BALL_DIR/manifest.json, in PR #4's tc-plane-audit-manifest-v1
format, pinned to the checker sources of PLANE_ROOT. audit_select.py --plane replays every cell it uses; nothing here
is accepted as a verdict.
"""
import json, os, sys
from pathlib import Path

CERTIFIED = ('CERTIFIED_EMPTY_DYADIC_CELL', 'CERTIFIED_CLASSIFIED_DYADIC_CELL')


def main():
    root, d, ball = Path(sys.argv[1]).resolve(), Path(sys.argv[2]).resolve(), int(sys.argv[3])
    sys.path.insert(0, str(root / 'TripleClassification/code'))
    import plane_audit_manifest as PM
    import plane_frontier_certificate as F
    from plane_column_certificate import digest
    cells = []
    for c in sorted(p for p in d.iterdir() if p.is_dir()):
        try:
            rep = json.load(open(c / 'replay.json'))
        except (OSError, ValueError):
            continue
        if rep.get('status') not in CERTIFIED: continue
        entry = json.load(open(c / 'entry.json'))
        tree = dict(schema='tc-plane-tree-proposal-v1', root_entry_sha256=F.jsonsha(entry),
                    tree=dict(input=dict(path='frontier.input.json.gz', sha256=digest(c / 'frontier.input.json.gz')),
                              proposal=dict(path='frontier.proposal.json.gz', sha256=digest(c / 'frontier.proposal.json.gz'))))
        json.dump(tree, open(c / 'tree.json', 'w'))
        rel = c.relative_to(d)
        cells.append(dict(entry=dict(path=str(rel / 'entry.json'), sha256=digest(c / 'entry.json')),
                          tree=dict(path=str(rel / 'tree.json'), sha256=digest(c / 'tree.json'))))
    doc = dict(schema='tc-plane-audit-manifest-v1', ball=ball, original_atlas_sha256=F.PIN,
               checker_sources_sha256=PM.source_hashes(root), cells=cells)
    json.dump(doc, open(d / 'manifest.json.new', 'w'), indent=1); os.replace(d / 'manifest.json.new', d / 'manifest.json')
    print(json.dumps(dict(ball=ball, certified_cells=len(cells))))


if __name__ == '__main__': main()
