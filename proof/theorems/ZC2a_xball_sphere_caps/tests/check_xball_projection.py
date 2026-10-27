"""Independently verify X-ball compact headers against original supplied data.

Only outgoing edge-group box arrays may be omitted and `_proposal_*` keys
may be added.  Every mathematical header and every ordered descriptor is
compared for exact JSON-value equality.  No numerical tolerance is used.
"""
from __future__ import annotations
import argparse
from collections import Counter
import gzip
from hashlib import sha256
import json
from pathlib import Path
import time


def file_sha256(path):
    h = sha256()
    with open(path, 'rb') as f:
        for chunk in iter(lambda: f.read(1 << 20), b''):
            h.update(chunk)
    return h.hexdigest()


def load(path):
    opener = gzip.open if str(path).endswith('.gz') else open
    with opener(path, 'rt') as f:
        return json.load(f)


def verify(original_path, compact_path):
    started = time.perf_counter()
    original, compact = load(original_path), load(compact_path)
    def need(condition, message):
        if not condition:
            raise ValueError(message)
    need(set(original) == set(compact), 'top-level key set changed')
    for key in original:
        if key != 'edge':
            need(original[key] == compact[key], 'changed top-level field: ' + key)
    need(len(original['edge']) == len(compact['edge']), 'edge count changed')
    box_count, group_count = 0, 0
    levels, kinds = Counter(), Counter()
    for ei, (edge, ce) in enumerate(zip(original['edge'], compact['edge'])):
        need(set(edge) == set(ce), 'edge key set changed')
        for key in edge:
            if key != 'transfers':
                need(edge[key] == ce[key], f'edge {ei}: changed header {key}')
        need(len(edge['transfers']) == len(ce['transfers']), 'transfer group count changed')
        for gi, (group, cg) in enumerate(zip(edge['transfers'], ce['transfers'])):
            expected_keys = set(group)
            actual_keys = {key for key in cg if not key.startswith('_proposal_')}
            need(expected_keys == actual_keys, f'group {gi}: descriptor keys changed')
            for key in group:
                if key != 'boxes':
                    need(group[key] == cg[key], f'group {gi}: changed descriptor {key}')
            need(cg.get('boxes') == [], f'group {gi}: compact boxes not empty')
            boxes = group.get('boxes', [])
            if '_proposal_box_count' in cg:
                need(cg['_proposal_box_count'] == len(boxes), f'group {gi}: proposal box count differs')
            box_count += len(boxes)
            group_count += 1
            levels.update(box[0] for box in boxes)
            kinds[group['kind']] += 1
    return dict(status='CERTIFIED exact input projection', passed=True,
                edge_count=len(original['edge']), seed_headers=len(original['seed_headers']),
                transfer_groups=group_count, original_boxes=box_count,
                original_box_levels=dict(sorted(levels.items())), group_kinds=dict(kinds),
                original_sha256=file_sha256(original_path), compact_sha256=file_sha256(compact_path),
                seconds=time.perf_counter() - started,
                omitted_fields=['outgoing edge transfer boxes'],
                ignored_fields=['_proposal_* search-only metadata'])


if __name__ == '__main__':
    root = Path(__file__).resolve().parent.parent
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('original', nargs='?', default=root / 'data/zc2a_xball.json.gz')
    ap.add_argument('compact', nargs='?', default=root / 'data/xball_headers.json.gz')
    ap.add_argument('--output', type=Path)
    args = ap.parse_args()
    try:
        result = verify(args.original, args.compact)
    except (ValueError, KeyError, TypeError, IndexError, OSError) as exc:
        result = dict(status='NOT ESTABLISHED', passed=False, error=str(exc))
    text = json.dumps(result, indent=2) + '\n'
    if args.output:
        args.output.write_text(text)
    print(text, end='')
    raise SystemExit(0 if result['passed'] else 1)
