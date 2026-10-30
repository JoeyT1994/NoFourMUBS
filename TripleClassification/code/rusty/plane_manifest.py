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
import fcntl, json, os, sys
from pathlib import Path

CERTIFIED = ('CERTIFIED_EMPTY_DYADIC_CELL', 'CERTIFIED_CLASSIFIED_DYADIC_CELL')
EXT_PREFIXES = ('TripleClassification/code/ext_cell_certificate.py', 'TripleClassification/code/projector/')


def main():
    root, d, ball = Path(sys.argv[1]).resolve(), Path(sys.argv[2]).resolve(), int(sys.argv[3])
    lock = open(d / '.manifest.lock', 'w'); fcntl.flock(lock, fcntl.LOCK_EX)   # one writer per ball at a time
    sys.path.insert(0, str(root / 'TripleClassification/code'))
    here = Path(__file__).resolve().parent             # plane_cache.py (shared with audit_select.py): beside this
    sys.path += [str(here), str(here.parent)]           # file on rusty, in code/ in the repository; after the checker
                                                        # tree, so its modules are never shadowed
    import plane_cache
    import plane_audit_manifest as PM
    import plane_frontier_certificate as F
    from plane_column_certificate import digest
    def leaves_match(tree_path):
        """Every input and proposal a tree names still has the hash the tree records."""
        ok = [True]
        def walk(node):
            if isinstance(node, dict):
                for k in ('input', 'proposal'):
                    if k in node:
                        q = tree_path.parent / node[k]['path']
                        ok[0] = ok[0] and q.is_file() and digest(q) == node[k]['sha256']
                for v in node.values(): walk(v)
            elif isinstance(node, list):
                for v in node: walk(v)
        walk(json.load(open(tree_path))['tree']); return ok[0]
    src_now = PM.source_hashes(root)                     # the checker version this manifest pins
    cells = []; seen = {}                            # cells whose own job replay certified them, for the replay cache
    for c in sorted(p for p in d.iterdir() if p.is_dir()):
        def status(name):
            try: return json.load(open(c / name)).get('status')
            except (OSError, ValueError): return None
        entry = json.load(open(c / 'entry.json')) if (c / 'entry.json').exists() else None
        if entry is None: continue
        if status('refined.json') in CERTIFIED and (c / 'tree.json').exists():
            ref = json.load(open(c / 'refined.json')); tree = json.load(open(c / 'tree.json'))
            if not (ref.get('tree_sha256') == digest(c / 'tree.json') and tree.get('root_entry_sha256') == F.jsonsha(entry) and
                    ref.get('ball') == ball and ref.get('level') == entry['level'] and ref.get('cell') == entry['cell']):
                continue                                     # not the tree plane_refine.py replayed for this entry
            if not leaves_match(c / 'tree.json'): continue   # a leaf changed since the tree was replayed: leave it out
            if ref.get('checker_sources_sha256') == src_now:
                seen[c.name] = (entry['level'], entry['cell'])   # replayed by this very checker version: cache it
        elif status('replay.json') in CERTIFIED:
            rep = json.load(open(c / 'replay.json'))
            if not (rep.get('snapshot_sha256') == digest(c / 'frontier.input.json.gz') and rep.get('proposal_sha256') ==
                    digest(c / 'frontier.proposal.json.gz') and rep.get('entry_sha256') == digest(c / 'entry.json') and
                    rep.get('original_atlas_sha256') == F.PIN and rep.get('ball') == ball and
                    rep['geometry']['level'] == entry['level'] and rep['geometry']['cell'] == entry['cell']):
                continue                                     # files no longer those the replay certified: leave it out
            deps = rep.get('dependencies_sha256') or {}
            ext = [k for k in deps if k.startswith(EXT_PREFIXES)]           # an extended replay counts only on a tree
            if (rep.get('checker_sha256') == src_now.get('TripleClassification/code/plane_frontier_certificate.py') and
                    all(deps[k] == v for k, v in src_now.items() if k in deps) and   # that pins the same extension
                    all(src_now.get(k) == deps[k] for k in ext)):
                seen[c.name] = (entry['level'], entry['cell'])   # replayed by this very checker version: cache it
            tree = dict(schema='tc-plane-tree-proposal-v1', root_entry_sha256=F.jsonsha(entry),
                        tree=dict(input=dict(path='frontier.input.json.gz', sha256=digest(c / 'frontier.input.json.gz')),
                                  proposal=dict(path='frontier.proposal.json.gz', sha256=digest(c / 'frontier.proposal.json.gz'))))
            try: same = json.load(open(c / 'tree.json')) == tree
            except (OSError, ValueError): same = False
            if not same:                                     # written whole, then renamed: never read half-written
                tmp = c / ('tree.json.%d.new' % os.getpid()); json.dump(tree, open(tmp, 'w')); os.replace(tmp, c / 'tree.json')
        else:
            continue
        rel = c.relative_to(d)
        cells.append(dict(entry=dict(path=str(rel / 'entry.json'), sha256=digest(c / 'entry.json')),
                          tree=dict(path=str(rel / 'tree.json'), sha256=digest(c / 'tree.json'))))
    src = PM.source_hashes(root)
    doc = dict(schema='tc-plane-audit-manifest-v1', ball=ball, original_atlas_sha256=F.PIN, checker_sources_sha256=src, cells=cells)
    tmp = d / ('manifest.json.%d.new' % os.getpid())          # one temporary file per writer
    json.dump(doc, open(tmp, 'w'), indent=1); os.replace(tmp, d / 'manifest.json')
    # Each listed cell was already replayed once by its own job (plane_ball.py), from the same input, proposal and entry
    # (their hashes checked above) with the same pinned sources; record that in the audit's replay cache, so the audit
    # does not replay it again. Refined trees were replayed once by plane_refine.py, which records the checker sources it
    # ran; only those replayed by this checker version are cached (the rest: plane_prereplay.py). verify_ball.py replays
    # everything.
    cache = {}
    for item in cells:
        name = Path(item['entry']['path']).parent.name
        lc = seen.get(name)
        if lc: cache[plane_cache.key(item, d / item['tree']['path'], src, lc[0], lc[1])] = 'certified'
    plane_cache.save(d / 'replay_cache.jobs.json', cache)
    print(json.dumps(dict(ball=ball, certified_cells=len(cells))))


if __name__ == '__main__': main()
