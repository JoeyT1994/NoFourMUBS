"""List the open sub-balls of finished splits, for the next splitting round (validated, audit finding F1).

  python deep_list.py SPLIT_DIR OUT.txt --tc-tree T --atlas A --split-version SPLIT_PY... [--sidecar S...]

Rows are selected exactly as assemble.py selects them (receipts.Validator): only rows with the sub-atlas's current
binding count, so an old success never hides newer missing or inconclusive work.  A sub-atlas is finished when every
sub-ball has a current row.  A sub-ball is listed as `A:s` unless it is closed (CERTIFIED or CERTIFIED EMPTY with a
Stage C precondition pass, in its row or the sidecar) or its own split `<A stem>_s<s>_l2.json.gz` already exists.
"""
import argparse, glob, os, sys


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('dir'); ap.add_argument('out')
    ap.add_argument('--tc-tree', required=True); ap.add_argument('--atlas', required=True)
    ap.add_argument('--split-version', nargs='+', required=True); ap.add_argument('--sidecar', nargs='*', default=[])
    a = ap.parse_args()
    sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
    import receipts as RC
    V = RC.Validator(a.tc_tree, a.atlas, a.split_version)
    side = {}
    for x in (r for p in a.sidecar for r in RC.read_jsonl(p)):
        if x.get('status') == 'PASS' and x.get('guard_sha256') in V.guards:
            side[(x['atlas_sha256'], x['index'])] = x['seed_sha256']
    lines, unfinished = [], 0
    for sa in sorted(glob.glob(os.path.join(a.dir, '*.json.gz'))):
        stem = sa[:-len('.json.gz')]
        seeds, info, sha = RC.load_split(sa)
        sel, _ = V.select(RC.read_jsonl(stem + '.jsonl'), seeds, V.split_bindings(sha))
        if len(sel) < len(seeds):
            unfinished += 1; continue
        for i, x in sorted(sel.items()):
            closed = x['status'] in RC.CLOSED and (
                (x.get('stage_c_preconditions') or {}).get('guard_sha256') in V.guards
                or side.get((sha, i)) == RC.record_sha(seeds[i]))
            if not closed and not os.path.exists('%s_s%d_l2.json.gz' % (stem, i)):
                lines.append('%s:%d' % (sa, i))
    open(a.out, 'w').write('\n'.join(lines) + ('\n' if lines else ''))
    print('{"listed": %d, "unfinished_subatlases": %d}' % (len(lines), unfinished))


if __name__ == '__main__':
    main()
