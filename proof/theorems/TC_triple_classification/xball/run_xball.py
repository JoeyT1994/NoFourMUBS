#!/usr/bin/env python3
"""Source-bound all-K attempt on the entire original X-ball."""
import argparse
import hashlib
import importlib.metadata
import json
import platform
import time

import bootstrap as B
from bootstrap import HERE, ROOT
import model as XM
import pipeline


def binding():
    frozen = B.verify_frozen_native()
    paths = set(B.native_run.source_paths())
    paths.update(HERE.glob('*.py'))
    paths.add(HERE / 'PROOF.md')
    paths.update((ROOT/'proof/seed_atlas/cert').glob('*.py'))
    paths.update((ROOT/'proof/atlas').glob('*.py'))
    paths.update(ROOT/path for path in (
        'proof/theorems/ZT_wholeball_transfers/ZT_return/edge/EDGE_REPORT.md',
        'proof/theorems/U_fold_at_edge/U_fold_at_edge_result/REPORT.md',
        'proof/theorems/W_f6_neighbourhood_chart/W_f6_neighbourhood_chart_RESULT/REPORT.md'))
    value = dict(schema='tc-xball-allk-v1', atlas_sha256=frozen['atlas_sha256'],
                 native_binding=frozen['id'], precision=XM.PRECISION,
                 sources={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
                          for p in sorted(paths)})
    value['id'] = hashlib.sha256(json.dumps(value, sort_keys=True).encode()).hexdigest()
    return value


def attempt(whole, row, pattern_cap=500):
    row['stage_c_preconditions'] = XM.stage_c_preconditions(whole)
    h = B.native_run.np.exp(1j*B.MS.numeric(whole['Q0']).reshape(6,6))
    roots = B.NC.propose_roots(h)
    row['numerical_root_proposals'] = len(roots)
    cover = B.NC.complete_cover(whole['ball'], whole, roots)
    row['cover'] = cover['summary']
    prepared, bounds, cliques, _ = B.NC.contract_patterns(whole, roots, cover)
    row['patterns_after_column_filter'] = len(cliques)
    row['patterns'] = []
    if len(cliques) > pattern_cap:
        raise ArithmeticError('pattern cap reached')
    for number, clique in enumerate(cliques):
        started = time.monotonic()
        try:
            result = pipeline.final_pattern(whole, prepared, bounds, cover, clique)
        except Exception as exc:
            result = dict(status='NOT ESTABLISHED', reason=type(exc).__name__+': '+str(exc))
        item = dict(number=number, colors=clique, **result,
                    seconds=time.monotonic()-started) if 'seconds' not in result else dict(number=number, colors=clique, **result)
        row['patterns'].append(item)
        print(json.dumps(dict(event='pattern', domain=row.get('id',row.get('domain')), number=number, status=item['status'],
                              q=item.get('q'), seconds=time.monotonic()-started)), flush=True)
    statuses = [p['status'] for p in row['patterns']]
    if all(s in ('CERTIFIED', 'EXCLUDED') for s in statuses):
        row['status'] = 'CERTIFIED' if 'CERTIFIED' in statuses else 'CERTIFIED EMPTY'
        row['claim'] = 'Every completing third basis on the entire represented domain is of Conjecture 1 type.'
    else:
        row['reason'] = 'One or more complete-cover patterns remain unresolved.'


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=B.native_run.Path, required=True)
    parser.add_argument('--pattern-cap', type=int, default=500)
    subset = parser.add_mutually_exclusive_group()
    subset.add_argument('--core-power', type=int)
    subset.add_argument('--cell', type=int, nargs=5, metavar=('LEVEL','I0','I1','I2','I3'))
    args = parser.parse_args()
    if args.output.exists():
        parser.error('output exists; select a fresh output path')
    if args.pattern_cap < 1:
        parser.error('pattern-cap must be positive')
    manifest = binding()
    manifest['runtime'] = dict(python=platform.python_version(), platform=platform.platform(),
        packages={p:importlib.metadata.version(p) for p in ('numpy','scipy','python-flint')})
    manifest['pattern_cap'] = args.pattern_cap
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.with_suffix(args.output.suffix+'.manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    started = time.monotonic()
    row = dict(status='NOT ESTABLISHED', binding=manifest['id'],
               domain='entire original X-ball', chart='F6-012', edge_index=0)
    try:
        record, whole, original = XM.load_original()
        row.update(original)
        if args.core_power is not None:
            whole, row['subset'] = XM.core_model(record,args.core_power)
            row['domain'] = 'core subset of original X-ball'
        elif args.cell is not None:
            whole, row['subset'] = XM.cell_model(whole,args.cell)
            row['domain'] = 'original X-ball intersect dyadic cell'
            row['id'] = row['subset']['id']
        attempt(whole, row, args.pattern_cap)
        if binding()['id'] != manifest['id']:
            raise ArithmeticError('sources changed during run')
    except Exception as exc:
        row['status'] = 'NOT ESTABLISHED'
        row.pop('claim', None)
        row['reason'] = type(exc).__name__+': '+str(exc)
    row['seconds'] = time.monotonic()-started
    args.output.write_text(json.dumps(row,indent=2,allow_nan=False)+'\n')
    print(json.dumps({k:row[k] for k in ('status','seconds')},allow_nan=False),flush=True)
    return 0 if row['status'] in ('CERTIFIED','CERTIFIED EMPTY') else 2


if __name__ == '__main__':
    raise SystemExit(main())
