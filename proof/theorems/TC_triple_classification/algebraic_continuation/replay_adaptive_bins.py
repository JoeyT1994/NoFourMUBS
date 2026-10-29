"""Rebuild and audit an all-K certificate with complete closed-bin trees."""
import argparse,gzip,hashlib,json
from pathlib import Path
from load_native import ROOT,R,NC,S
NATIVE=R.binding(R.DEFAULT_ATLAS)['id']
import run_adaptive_bins as producer
import bin_quadratic as BQ
import adaptive_bins as AB
import optimized_support as phase
import chordal_support as chordal


def digest(path):return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def validate_identity(row,record,index):
    if type(row.get('index'))is not int or row['index']!=index:
        raise ValueError('wrong original ball index')
    if row.get('radius_hex')!=float.fromhex(record['r']).hex():
        raise ValueError('radius differs from original atlas')
    if row.get('seed_sha256')!=hashlib.sha256(json.dumps(record,sort_keys=True).encode()).hexdigest():
        raise ValueError('seed record differs from original atlas')
    patterns=row.get('patterns')
    if not isinstance(patterns,list) or len(patterns)!=row.get('patterns_after_column_filter'):
        raise ValueError('incomplete pattern accounting')
    if any(p.get('status') not in ('EXCLUDED','CERTIFIED') for p in patterns):
        raise ValueError('unresolved completing-basis pattern')
    expected='CERTIFIED' if any(p['status']=='CERTIFIED' for p in patterns) else 'CERTIFIED EMPTY'
    if row.get('status')!=expected:raise ValueError('inconsistent complete-cover status')


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--receipt',type=Path,required=True);p.add_argument('--output',type=Path,required=True)
    a=p.parse_args();audit=a.output.with_suffix(a.output.suffix+'.audit.json')
    if a.output.exists() or audit.exists():p.error('choose fresh output paths')
    saved=json.loads(a.receipt.read_text());index=saved.get('index')
    if type(index)is not int or not 0<=index<2775:p.error('invalid original atlas index')
    if saved.get('binding')!=producer.binding(R.DEFAULT_ATLAS)['id']:
        raise ArithmeticError('adaptive producer source binding mismatch')
    record=json.loads(gzip.decompress(R.DEFAULT_ATLAS.read_bytes()))['seeds'][index]
    validate_identity(saved,record,index)
    own_hash,guard_hash=digest(__file__),producer.guard.guard_sha256()
    preconditions=producer.guard.check(R,record)
    bins=saved.get('cover',{}).get('bin_quadratic')
    trees=saved.get('cover',{}).get('adaptive_bin_quadratic')
    witnesses={tuple(x['colors']):x for x in saved['patterns'] if 'dual_multipliers_hex' in x}
    used=set();bin_count=tree_count=leaf_count=0
    base=producer.eager.base
    def contract(model,roots,cover):
        nonlocal bin_count,tree_count,leaf_count
        original=base.FROZEN_CONTRACT(model,roots,cover)
        if cover.get('_quadratic_pruned') or not original[2]:return original
        if bins is None or trees is None:raise ArithmeticError('missing saved bin exclusions')
        reduced=BQ.restrict_cliques(cover,original[2])
        refined=BQ.replay_pruning(model,reduced,bins)
        refined,leaf_count=AB.replay_pruning(model,refined,trees)
        bin_count=len(bins['witnesses']);tree_count=len(trees['witnesses'])
        refined['_quadratic_pruned']=True
        refined['summary'].update(replayed_bin_witnesses=bin_count,
            replayed_adaptive_bins=tree_count,replayed_adaptive_leaves=leaf_count)
        cover.update(refined)
        return base.FROZEN_CONTRACT(model,roots,cover)
    def check(model,prepared,bounds,clique):
        old=S.FROZEN_EXCLUDE(model,prepared,bounds,clique)
        if old is not None:return old
        key=tuple(clique)
        if key not in witnesses:return None
        w=witnesses[key]
        replay=(chordal.replay if w.get('route')=='quadratic complex-entry residual support' else
                phase.replay if w.get('absolute_phase_caps_used') else S.replay)
        try:proof=replay(model,prepared,bounds,clique,w)
        except (ArithmeticError,ValueError,ZeroDivisionError):return None
        if proof is not None:used.add(key)
        return proof
    def binding(atlas):
        value=producer.binding(atlas);value['schema']='tc-adaptive-bin-saved-witness-replay-v1'
        value['input_row_sha256']=hashlib.sha256(json.dumps(saved,sort_keys=True).encode()).hexdigest()
        value['sources'][str(Path(__file__).resolve().relative_to(ROOT))]=digest(__file__)
        value.pop('id');value['id']=hashlib.sha256(json.dumps(value,sort_keys=True).encode()).hexdigest()
        return value
    frozen=base.hybrid.phase
    R.final_pattern=frozen.FROZEN_FINAL;R.JB.refine=frozen.FROZEN_JOINT
    R.run_ball=frozen.FROZEN_RUN_BALL;R.BE.exclude=check;R.binding=binding;NC.contract_patterns=contract
    manifest=binding(R.DEFAULT_ATLAS)
    row=R.run_ball(str(R.DEFAULT_ATLAS),index,manifest['id'],pattern_cap=500000)
    row.update(replayed_basis_witnesses=len(used),replayed_bin_witnesses=bin_count,
               replayed_adaptive_bins=tree_count,replayed_adaptive_leaves=leaf_count)
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(row)+'\n')
    manifest_path=a.output.with_suffix(a.output.suffix+'.manifest.json')
    manifest_path.write_text(json.dumps(manifest,indent=2)+'\n')
    validate_identity(row,record,index)
    if own_hash!=digest(__file__) or guard_hash!=producer.guard.guard_sha256():
        raise ArithmeticError('audit sources changed during replay')
    result=dict(index=index,status=row['status'],original_radius_preserved=True,radius_hex=row['radius_hex'],
        seed_sha256=row['seed_sha256'],native_binding=NATIVE,producer_sha256=digest(a.receipt),
        replay_sha256=digest(a.output),replay_manifest_sha256=digest(manifest_path),
        audit_source_sha256=own_hash,guard_sha256=guard_hash,stage_c_preconditions=preconditions,
        patterns=len(row['patterns']),replayed_bin_witnesses=bin_count,replayed_basis_witnesses=len(used),
        replayed_adaptive_bins=tree_count,replayed_adaptive_leaves=leaf_count)
    audit.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(dict(index=index,status=row['status'],audit=str(audit),seconds=row['seconds'])),flush=True)


if __name__=='__main__':main()
