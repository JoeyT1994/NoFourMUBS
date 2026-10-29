#!/usr/bin/env python3
"""Account only for source-bound replays at the original atlas radii."""
import datetime,gzip,hashlib,json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[3]


def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()


def verified_row(path,atlas):
    row=json.loads(path.read_text())
    if row.get('status') not in ('CERTIFIED','CERTIFIED EMPTY'):return None
    manifest=json.loads(path.with_suffix(path.suffix+'.manifest.json').read_text())
    body={k:v for k,v in manifest.items() if k!='id'}
    if hashlib.sha256(json.dumps(body,sort_keys=True).encode()).hexdigest()!=manifest['id']:
        raise ArithmeticError(f'invalid manifest identity: {path}')
    if row.get('binding')!=manifest['id']:raise ArithmeticError(f'row binding mismatch: {path}')
    for name,digest in manifest['sources'].items():
        if sha(ROOT/name)!=digest:raise ArithmeticError(f'source changed: {name}')
    if not any('replay' in name for name in manifest['sources']):
        raise ArithmeticError('discovery receipt passed as independent replay')
    record=atlas['seeds'][row['index']]
    if hashlib.sha256(json.dumps(record,sort_keys=True).encode()).hexdigest()!=row['seed_sha256']:
        raise ArithmeticError('seed record mismatch')
    if row.get('coordinates')!='original native four-coordinate ball':
        raise ArithmeticError('different coordinate scope')
    if len(row['patterns'])!=row['patterns_after_column_filter']:
        raise ArithmeticError('incomplete pattern list')
    if any(p['status'] not in ('CERTIFIED','EXCLUDED') for p in row['patterns']):
        raise ArithmeticError('unresolved pattern')
    if row.get('radius_hex')!=record['r']:
        raise ArithmeticError('original radius changed')
    return dict(index=row['index'],status=row['status'],radius_hex=row['radius_hex'],
        receipt=str(path.relative_to(HERE)),receipt_sha256=sha(path),binding=manifest['id'],
        bin_witnesses=row.get('replayed_bin_witnesses',0),
        basis_witnesses=row.get('replayed_basis_witnesses',row.get('replayed_witnesses',0)))


def progress():
    atlas_path=ROOT/'proof/seed_atlas/results/seed_atlas_certificate.json.gz'
    if sha(atlas_path)!='33ad9798eb7a5585c486f2427a6b223867a43b308b7f184467b4cd5956bd8baf':
        raise ArithmeticError('atlas changed')
    atlas=json.loads(gzip.decompress(atlas_path.read_bytes()))
    initial=json.loads((HERE.parent/'algebraic/results/remaining_indices.json').read_text())
    if len(initial)!=181 or len(set(initial))!=181:raise ArithmeticError('unexpected starting list')
    found={}
    for path in sorted((HERE/'results').glob('replay*.jsonl'))+sorted((HERE/'results').glob('replay*/ball_*.jsonl')):
        row=verified_row(path,atlas)
        if row is not None:
            if row['index'] not in initial:raise ArithmeticError('replay outside requested starting list')
            found.setdefault(row['index'],row)
    remaining=sorted(set(initial)-found.keys())
    return dict(updated_utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),
        upstream_revision='13d1853c7d89bb1d8901b63649cede39c8c98b2b',upstream_reported_closed=2593,
        upstream_global_certificates_freshly_replayed=False,previous_new_replayed_closures=[2169],
        initial_open_count=181,new_replayed_original_ball_closures=sorted(found),
        evidence=[found[i] for i in sorted(found)],remaining=len(remaining),remaining_indices=remaining,
        original_radii_preserved=True,global_proof_complete=False,checkpoint_only=True)


if __name__=='__main__':
    value=progress()
    print(json.dumps({k:value[k] for k in ('new_replayed_original_ball_closures','remaining','global_proof_complete')}))
