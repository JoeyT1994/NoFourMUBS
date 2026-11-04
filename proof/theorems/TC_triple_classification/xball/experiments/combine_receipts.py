#!/usr/bin/env python3
"""Replace one coarse shell leaf by its complete certified child partition.

This is an accounting replay, not a rerun of numerical certificates. All
input bytes, acceptance sources and this controller are bound in its manifest.
"""
import argparse
import hashlib
import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import geometry
import run_shells as RS
import run_xball as RX


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--results', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    outputs = [args.output, *(args.output.with_suffix(s) for s in
                              ('.cover.json', '.cells.jsonl', '.manifest.json'))]
    if any(p.exists() for p in outputs):
        parser.error('choose a fresh output prefix')
    names = (
        'core_r_over_4_final.json', 'core_r_over_4_final.json.manifest.json',
        'shell_pilot_final.cover.json', 'shell_pilot_final.cells.jsonl',
        'shell_pilot_final.manifest.json', 'refined_parent.json',
        'refined_parent.cells.jsonl', 'refined_parent.manifest.json')
    paths = {name: args.results / name for name in names}
    hashes = {name: digest(path) for name, path in paths.items()}
    def read(name):
        return json.loads(paths[name].read_text())
    def rows(name):
        return [json.loads(line) for line in paths[name].read_text().splitlines()]
    base = RX.binding()
    bid = base['id']
    core = read('core_r_over_4_final.json')
    cover = read('shell_pilot_final.cover.json')
    coarse = rows('shell_pilot_final.cells.jsonl')
    refined = read('refined_parent.json')
    children = rows('refined_parent.cells.jsonl')
    shell_manifest = read('shell_pilot_final.manifest.json')
    child_manifest = read('refined_parent.manifest.json')
    for manifest in (read('core_r_over_4_final.json.manifest.json'),
                     shell_manifest, child_manifest['base']):
        if any(manifest.get(key) != value for key, value in base.items()):
            raise ValueError('input manifest does not match current acceptance sources')
    if shell_manifest['cover_sha256'] != hashlib.sha256(
            json.dumps(cover, sort_keys=True).encode()).hexdigest():
        raise ValueError('coarse cover hash mismatch')
    cover['verification'] = geometry.verify_cover(cover)
    RS.account(cover, coarse, bid, core)
    parent = geometry.validate(refined['parent_cell'])
    parent_id = geometry.identifier(parent)
    expected = {geometry.identifier(c): list(c) for c in geometry.children(parent)}
    if len(children) != 16 or {r['id']: r['cell'] for r in children} != expected:
        raise ValueError('refinement does not contain every exact child once')
    if child_manifest['parent'] != list(parent):
        raise ValueError('parent manifest mismatch')
    controller = Path(__file__).with_name('refine_parent.py')
    if refined['base_binding'] != bid or any(
            v['controller_sha256'] != digest(controller)
            for v in (refined, child_manifest)):
        raise ValueError('refinement source mismatch')
    if (refined['domain'] != 'original X-ball intersect parent dyadic cell'
            or refined['original_radius_hex'] != '0x1.0a3d70a3d70a4p-3'):
        raise ValueError('refinement domain mismatch')
    if refined['children'] != [{k: r[k] for k in ('id', 'status', 'seconds')}
                               for r in sorted(children, key=lambda r: r['id'])]:
        raise ValueError('refinement summary differs from its rows')
    closed = all(r['status'] in ('CERTIFIED', 'CERTIFIED EMPTY') for r in children)
    expected_status = (('CERTIFIED EMPTY' if all(r['status'] == 'CERTIFIED EMPTY'
                        for r in children) else 'CERTIFIED') if closed
                       else 'NOT ESTABLISHED')
    if refined['status'] != expected_status:
        raise ValueError('refinement status is not justified by all children')
    old_leaf = [v for v in cover['leaves'] if v['id'] == parent_id]
    if len(old_leaf) != 1 or old_leaf[0]['kind'] != 'SHELL':
        raise ValueError('parent is not exactly one coarse shell leaf')
    cover['leaves'] = [v for v in cover['leaves'] if v['id'] != parent_id]
    cover['leaves'] += [dict(id=key, cell=cell, kind='SHELL')
                        for key, cell in expected.items()]
    cover['verification'] = geometry.verify_cover(cover)
    combined = [r for r in coarse if r['id'] != parent_id] + children
    result = RS.account(cover, combined, bid, core)
    script_hash = digest(Path(__file__))
    result.update(accounting_controller_sha256=script_hash,
                  refined_parent=parent_id,
                  refined_parent_status=refined['status'])
    manifest = dict(base=base, accounting_controller_sha256=script_hash,
                    inputs_sha256=hashes,
                    description='Exact coverage/accounting replay of saved receipts; '
                                'not a numerical certificate rerun.')
    if RX.binding() != base or hashes != {name: digest(path) for name, path in paths.items()}:
        raise ValueError('input or acceptance source changed during accounting')
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.with_suffix('.cover.json').write_text(json.dumps(cover, indent=2)+'\n')
    args.output.with_suffix('.cells.jsonl').write_text(''.join(
        json.dumps(r, allow_nan=False)+'\n' for r in combined))
    args.output.with_suffix('.manifest.json').write_text(json.dumps(manifest, indent=2)+'\n')
    args.output.write_text(json.dumps(result, indent=2, allow_nan=False)+'\n')
    print(json.dumps({k: result[k] for k in ('status', 'core_status', 'shell_required',
                                           'shell_tested', 'shell_closed')}))
    return 0 if result['status'] == 'CERTIFIED' else 2


if __name__ == '__main__':
    raise SystemExit(main())
