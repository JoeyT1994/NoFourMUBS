#!/usr/bin/env python3
"""Bounded breadth-first refinement, preserving an exact full X-ball cover."""
import argparse
from collections import deque
from concurrent.futures import ProcessPoolExecutor, wait, FIRST_COMPLETED
import hashlib
import json
import os
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import geometry
import run_shells as RS
import run_xball as RX


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def descendant(cell, ancestor):
    m, *idx = geometry.validate(cell)
    n, *parent = geometry.validate(ancestor)
    return m >= n and all(i // 2**(m-n) == j for i, j in zip(idx, parent))


def split(leaves, done, key):
    parent = leaves.pop(key)
    done.pop(key, None)
    children = []
    for cell in geometry.children(parent['cell']):
        kind = 'OUTSIDE' if geometry.radial_squares(cell)[0] > 1 else 'SHELL'
        leaf = dict(id=geometry.identifier(cell), cell=list(cell), kind=kind)
        leaves[leaf['id']] = leaf
        if kind == 'SHELL':
            children.append(leaf['id'])
    return children


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--cover', type=Path, required=True)
    p.add_argument('--receipts', type=Path, required=True)
    p.add_argument('--core', type=Path, required=True)
    p.add_argument('--output', type=Path, required=True)
    p.add_argument('--scope', nargs='+', required=True, help='ancestor cell IDs')
    p.add_argument('--max-new-pieces', type=int, default=96)
    p.add_argument('--max-level', type=int, default=6)
    p.add_argument('--workers', type=int, default=6)
    args = p.parse_args()
    if not 1 <= args.workers <= 8 or args.max_new_pieces < 0:
        p.error('workers must be 1..8 and the task limit nonnegative')
    if not 1 <= args.max_level <= 20:
        p.error('max level must be 1..20')
    scopes = [geometry.validate([int(v) for v in s.split(':')]) for s in args.scope]
    if any(descendant(a, b) for i, a in enumerate(scopes)
           for j, b in enumerate(scopes) if i != j):
        p.error('scopes must be distinct and nonoverlapping')
    targets = [args.output] + [args.output.with_suffix(s) for s in
                              ('.cover.json', '.cells.jsonl', '.events.jsonl', '.manifest.json')]
    if any(f.exists() for f in targets):
        p.error('select a fresh output prefix')
    inputs = {str(f.resolve()): digest(f) for f in (args.cover, args.receipts, args.core)}
    cover = json.loads(args.cover.read_text())
    core = json.loads(args.core.read_text())
    rows = [json.loads(line) for line in args.receipts.read_text().splitlines()]
    base = RX.binding()
    cover['verification'] = geometry.verify_cover(cover)
    RS.account(cover, rows, base['id'], core)
    leaves = {v['id']: v for v in cover['leaves']}
    done = {r['id']: r for r in rows}
    inside = lambda v: any(descendant(v['cell'], s) for s in scopes)
    for s in scopes:
        if not any(descendant(v['cell'], s) for v in leaves.values()):
            p.error('scope is not represented by leaves in the input cover')
    pending = deque()
    for key, leaf in list(leaves.items()):
        if leaf['kind'] != 'SHELL' or not inside(leaf):
            continue
        row = done.get(key)
        if row is None:
            pending.append(key)
        elif row['status'] == 'NOT ESTABLISHED' and leaf['cell'][0] < args.max_level:
            pending.extend(split(leaves, done, key))
    controller_hash = digest(Path(__file__))
    manifest = dict(base=base, controller_sha256=controller_hash,
                    inputs_sha256=inputs, scope=[list(v) for v in scopes],
                    max_new_pieces=args.max_new_pieces, max_level=args.max_level,
                    workers=args.workers)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.with_suffix('.manifest.json').write_text(json.dumps(manifest, indent=2)+'\n')
    submitted = 0
    with args.output.with_suffix('.events.jsonl').open('w') as stream:
        with ProcessPoolExecutor(max_workers=args.workers) as pool:
            active = {}
            while active or (pending and submitted < args.max_new_pieces):
                while pending and submitted < args.max_new_pieces and len(active) < args.workers:
                    key = pending.popleft()
                    active[pool.submit(RS.run_piece, leaves[key], base['id'])] = key
                    submitted += 1
                finished, _ = wait(active, return_when=FIRST_COMPLETED)
                for future in finished:
                    key = active.pop(future)
                    row = future.result()
                    if row['id'] != key:
                        raise ValueError('worker domain mismatch')
                    done[key] = row
                    stream.write(json.dumps(row, allow_nan=False)+'\n')
                    stream.flush(); os.fsync(stream.fileno())
                    print(json.dumps({k: row[k] for k in ('id', 'status', 'seconds')}), flush=True)
                    if (row['status'] == 'NOT ESTABLISHED'
                            and leaves[key]['cell'][0] < args.max_level
                            and submitted < args.max_new_pieces):
                        pending.extend(split(leaves, done, key))
    cover['leaves'] = sorted(leaves.values(), key=lambda v: v['cell'])
    cover['verification'] = geometry.verify_cover(cover)
    rows = sorted(done.values(), key=lambda v: v['cell'])
    result = RS.account(cover, rows, base['id'], core)
    result.update(controller_sha256=controller_hash, new_pieces=submitted)
    scoped = [v for v in leaves.values() if inside(v) and v['kind'] == 'SHELL']
    result['scope_accounting'] = dict(required=len(scoped),
        closed=sum(done.get(v['id'], {}).get('status') in ('CERTIFIED', 'CERTIFIED EMPTY') for v in scoped),
        unresolved=[v['id'] for v in scoped if done.get(v['id'], {}).get('status') == 'NOT ESTABLISHED'],
        untested=[v['id'] for v in scoped if v['id'] not in done])
    if RX.binding() != base or digest(Path(__file__)) != controller_hash:
        raise ValueError('source changed during run')
    if any(digest(Path(path)) != value for path, value in inputs.items()):
        raise ValueError('input changed during run')
    args.output.with_suffix('.cover.json').write_text(json.dumps(cover, indent=2)+'\n')
    args.output.with_suffix('.cells.jsonl').write_text(''.join(json.dumps(r, allow_nan=False)+'\n' for r in rows))
    args.output.write_text(json.dumps(result, indent=2)+'\n')
    print(json.dumps({k: result[k] for k in ('status', 'shell_required', 'shell_tested', 'shell_closed', 'scope_accounting')}), flush=True)
    return 0 if result['status'] == 'CERTIFIED' else 2


if __name__ == '__main__':
    raise SystemExit(main())
