#!/usr/bin/env python3
"""Write the hash-bound plane audit manifest for one ball's certified cells (proposals and bindings only).

  python plane_manifest.py PLANE_ROOT BALL_DIR BALL

BALL_DIR holds one directory per cell (plane_ball.py): entry.json, frontier.input.json.gz, frontier.proposal.json.gz
and replay.json, or a children tree from plane_refine.py (tree.json and refined.json). For every cell whose replay
certified it, this writes tree.json (a single terminal leaf binding the input and proposal by SHA-256 to the entry);
a certified refined cell keeps its children tree. It then writes BALL_DIR/manifest.json, in PR #4's
tc-plane-audit-manifest-v1 format, pinned to the checker sources of PLANE_ROOT. audit_select.py --plane replays every cell it uses; nothing here
is accepted as a verdict.
"""
import json, os, sys
from pathlib import Path

CERTIFIED = ('CERTIFIED_EMPTY_DYADIC_CELL', 'CERTIFIED_CLASSIFIED_DYADIC_CELL')


def main():
    root, d, ball = Path(sys.argv[1]).resolve(), Path(sys.argv[2]).resolve(), int(sys.argv[3])
    sys.path.insert(0, str(root / 'TripleClassification/code'))
    here = Path(__file__).resolve().parent             # plane_cache.py (shared with audit_select.py): beside this
    sys.path[:0] = [str(here), str(here.parent)]        # file on rusty, in code/ in the repository
    import plane_cache
    import plane_audit_manifest as PM
    import plane_frontier_certificate as F
    from plane_column_certificate import digest
    cells = []; seen = {}                            # cells whose own job replay certified them, for the replay cache
    for c in sorted(p for p in d.iterdir() if p.is_dir()):
        def status(name):
            try: return json.load(open(c / name)).get('status')
            except (OSError, ValueError): return None
        entry = json.load(open(c / 'entry.json')) if (c / 'entry.json').exists() else None
        if entry is None: continue
        if status('refined.json') in CERTIFIED and (c / 'tree.json').exists():
            pass                                             # a children tree written and replayed by plane_refine.py
        elif status('replay.json') in CERTIFIED:
            rep = json.load(open(c / 'replay.json'))
            if (rep.get('snapshot_sha256') == digest(c / 'frontier.input.json.gz') and rep.get('proposal_sha256') ==
                    digest(c / 'frontier.proposal.json.gz') and rep.get('entry_sha256') == digest(c / 'entry.json') and
                    rep.get('original_atlas_sha256') == F.PIN and rep.get('ball') == ball and
                    rep['geometry']['level'] == entry['level'] and rep['geometry']['cell'] == entry['cell']):
                seen[c.name] = (entry['level'], entry['cell'])
            tree = dict(schema='tc-plane-tree-proposal-v1', root_entry_sha256=F.jsonsha(entry),
                        tree=dict(input=dict(path='frontier.input.json.gz', sha256=digest(c / 'frontier.input.json.gz')),
                                  proposal=dict(path='frontier.proposal.json.gz', sha256=digest(c / 'frontier.proposal.json.gz'))))
            json.dump(tree, open(c / 'tree.json', 'w'))
        else:
            continue
        rel = c.relative_to(d)
        cells.append(dict(entry=dict(path=str(rel / 'entry.json'), sha256=digest(c / 'entry.json')),
                          tree=dict(path=str(rel / 'tree.json'), sha256=digest(c / 'tree.json'))))
    src = PM.source_hashes(root)
    doc = dict(schema='tc-plane-audit-manifest-v1', ball=ball, original_atlas_sha256=F.PIN, checker_sources_sha256=src, cells=cells)
    json.dump(doc, open(d / 'manifest.json.new', 'w'), indent=1); os.replace(d / 'manifest.json.new', d / 'manifest.json')
    # Each listed cell was already replayed once by its own job (plane_ball.py), from the same input, proposal and entry
    # (their hashes checked above) with the same pinned sources; record that in the audit's replay cache, so the audit
    # does not replay it again. Refined trees were replayed once by plane_refine.py. verify_ball.py replays everything.
    cache = {}
    for item in cells:
        name = Path(item['entry']['path']).parent.name
        lc = seen.get(name) or ((lambda e: (e['level'], e['cell']))(json.load(open(d / item['entry']['path'])))
                                if (d / name / 'refined.json').exists() else None)
        if lc: cache[plane_cache.key(item, d / item['tree']['path'], src, lc[0], lc[1])] = 'certified'
    plane_cache.save(d / 'replay_cache.jobs.json', cache)
    print(json.dumps(dict(ball=ball, certified_cells=len(cells))))


if __name__ == '__main__': main()
