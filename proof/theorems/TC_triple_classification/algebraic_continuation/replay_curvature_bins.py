#!/usr/bin/env python3
"""Rebuild every original K pattern and every leaf of its saved partition."""
import argparse,hashlib,json
from pathlib import Path
from load_native import ROOT,R,NC,S
import run_curvature_bins as producer
import bin_quadratic as BQ
import seed_partition as SP
import optimized_support as phase
import cubic_chordal as cubic


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--receipt',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True);a=p.parse_args()
    if a.output.exists():p.error('output exists')
    saved=json.loads(a.receipt.read_text())
    if saved.get('binding')!=producer.binding(R.DEFAULT_ATLAS)['id']:raise ArithmeticError('producer binding mismatch')
    if saved['status'] not in ('CERTIFIED','CERTIFIED EMPTY'):raise ArithmeticError('input is not a completed ball certificate')
    base=producer.bins_base;frozen=base.hybrid.phase
    bins=saved.get('cover',{}).get('bin_quadratic')
    patterns={tuple(x['colors']):x for x in saved.get('patterns',[])}
    current=None;bin_count=0;leaves_checked=0;used_witnesses=0
    def contract(model,roots,cover):
        nonlocal bin_count
        original=base.FROZEN_CONTRACT(model,roots,cover)
        if cover.get('_quadratic_pruned') or not original[2]:return original
        if bins is None:raise ArithmeticError('missing saved bin exclusions')
        refined=BQ.replay_pruning(model,BQ.restrict_cliques(cover,original[2]),bins)
        bin_count=len(bins['witnesses']);refined['_quadratic_pruned']=True
        refined['summary']['replayed_bin_witnesses']=bin_count;cover.update(refined)
        return base.FROZEN_CONTRACT(model,roots,cover)
    def check(model,prepared,bounds,clique):
        nonlocal used_witnesses
        old=S.FROZEN_EXCLUDE(model,prepared,bounds,clique)
        if old is not None:return old
        w=current
        if w is None or 'dual_multipliers_hex' not in w:return None
        replay=(cubic.replay if w.get('route')=='complex-entry support with signed cubic tensors' else
            phase.replay if w.get('absolute_phase_caps_used') else S.replay)
        try:proof=replay(model,prepared,bounds,clique,w)
        except (ArithmeticError,ValueError,ZeroDivisionError):return None
        if proof is not None:used_witnesses+=1
        return proof
    def final(model,prepared,bounds,cover,clique,allow_fine=True):
        nonlocal current,leaves_checked
        key=tuple(clique)
        if key not in patterns:raise ArithmeticError('rebuilt pattern missing from receipt')
        w=patterns[key]
        if w.get('route')!='complete partition of original seed ball':
            current=w
            return frozen.FROZEN_FINAL(model,prepared,bounds,cover,clique,allow_fine=False)
        if w['target_radius_hex']!=float(model['r']).hex():raise ArithmeticError('partition changed original radius')
        SP.check_partition(w['leaves']);answers=[]
        for leaf in w['leaves']:
            box=tuple(leaf['box'])
            if SP.outside(box):answers.append(dict(box=list(box),status='OUTSIDE'));continue
            local,c,args,geometry=SP.local_model(model,box)
            restricted,info=SP.restrict_cover(model,local,c,args,cover,clique,prepared)
            if restricted is None:out=info
            else:
                pp,bb,cc=restricted;current=leaf
                out=frozen.FROZEN_FINAL(local,pp,bb,cc,clique,allow_fine=False)
            leaves_checked+=1
            answers.append(dict(box=list(box),**out,geometry=geometry))
            if out['status'] not in ('EXCLUDED','CERTIFIED'):
                return dict(status='NOT ESTABLISHED',reason='saved partition leaf did not replay',failed_box=list(box))
        status='CERTIFIED' if any(x['status']=='CERTIFIED' for x in answers) else 'EXCLUDED'
        return dict(status=status,route='complete partition replay of original seed ball',
            target_radius_hex=float(model['r']).hex(),original_radius_preserved=True,leaves=answers)
    def binding(atlas):
        value=producer.binding(atlas);value['schema']='tc-original-ball-contracted-symmetry-partition-replay-v1'
        value['input_row_sha256']=hashlib.sha256(json.dumps(saved,sort_keys=True).encode()).hexdigest()
        own=Path(__file__).resolve();value['sources'][str(own.relative_to(ROOT))]=hashlib.sha256(own.read_bytes()).hexdigest()
        value.pop('id');value['id']=hashlib.sha256(json.dumps(value,sort_keys=True).encode()).hexdigest()
        return value
    R.final_pattern=final;R.JB.refine=frozen.FROZEN_JOINT;R.BE.exclude=check;R.binding=binding
    NC.contract_patterns=contract;manifest=binding(R.DEFAULT_ATLAS)
    row=frozen.FROZEN_RUN_BALL(str(R.DEFAULT_ATLAS),saved['index'],manifest['id'],pattern_cap=500000)
    row.update(replayed_bin_witnesses=bin_count,replayed_partition_leaves=leaves_checked,replayed_basis_witnesses=used_witnesses)
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(row)+'\n')
    a.output.with_suffix(a.output.suffix+'.manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({k:row[k] for k in ('index','status','replayed_bin_witnesses','replayed_partition_leaves','seconds')}),flush=True)
    return 0 if row['status'] in ('CERTIFIED','CERTIFIED EMPTY') else 2


if __name__=='__main__':raise SystemExit(main())
