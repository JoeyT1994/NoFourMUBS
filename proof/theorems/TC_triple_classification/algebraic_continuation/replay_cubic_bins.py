#!/usr/bin/env python3
"""Rebuild the original all-K cover and replay every saved bin/basis witness."""
import argparse,hashlib,json
from pathlib import Path
from load_native import ROOT,R,NC,S
import run_cubic_bins as producer
import bin_quadratic as BQ
import optimized_support as phase
import cubic_chordal as chordal


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--receipt',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True);a=p.parse_args()
    base=producer.eager.base
    if a.output.exists():p.error('output exists')
    saved=json.loads(a.receipt.read_text())
    if saved.get('binding')!=producer.binding(R.DEFAULT_ATLAS)['id']:raise ArithmeticError('bin-producer binding mismatch')
    bins=saved.get('cover',{}).get('bin_quadratic')
    witnesses={tuple(x['colors']):x for x in saved.get('patterns',[]) if 'dual_multipliers_hex' in x}
    used=set();bin_count=0
    def contract(model,roots,cover):
        nonlocal bin_count
        original=base.FROZEN_CONTRACT(model,roots,cover)
        if cover.get('_quadratic_pruned') or not original[2]:return original
        if bins is None:raise ArithmeticError('missing saved bin exclusions')
        reduced=BQ.restrict_cliques(cover,original[2])
        refined=BQ.replay_pruning(model,reduced,bins)
        bin_count=len(bins['witnesses']);refined['_quadratic_pruned']=True
        refined['summary']['replayed_bin_witnesses']=bin_count;cover.update(refined)
        return base.FROZEN_CONTRACT(model,roots,cover)
    def check(model,prepared,bounds,clique):
        old=S.FROZEN_EXCLUDE(model,prepared,bounds,clique)
        if old is not None:return old
        key=tuple(clique)
        if key not in witnesses:return None
        w=witnesses[key]
        replay=(chordal.replay if w.get('route')=='complex-entry support with signed cubic tensors' else
                phase.replay if w.get('absolute_phase_caps_used') else S.replay)
        try:proof=replay(model,prepared,bounds,clique,w)
        except (ArithmeticError,ValueError,ZeroDivisionError):return None
        if proof is not None:used.add(key)
        return proof
    def binding(atlas):
        value=producer.binding(atlas);value['schema']='tc-cubic-bin-quadratic-saved-witness-replay-v1'
        value['input_row_sha256']=hashlib.sha256(json.dumps(saved,sort_keys=True).encode()).hexdigest()
        own=Path(__file__).resolve();value['sources'][str(own.relative_to(ROOT))]=hashlib.sha256(own.read_bytes()).hexdigest()
        value.pop('id');value['id']=hashlib.sha256(json.dumps(value,sort_keys=True).encode()).hexdigest()
        return value
    frozen=base.hybrid.phase
    R.final_pattern=frozen.FROZEN_FINAL;R.JB.refine=frozen.FROZEN_JOINT
    R.run_ball=frozen.FROZEN_RUN_BALL;R.BE.exclude=check;R.binding=binding
    NC.contract_patterns=contract
    manifest=binding(R.DEFAULT_ATLAS)
    row=R.run_ball(str(R.DEFAULT_ATLAS),saved['index'],manifest['id'],pattern_cap=500000)
    row.update(saved_basis_witnesses=len(witnesses),replayed_basis_witnesses=len(used),replayed_bin_witnesses=bin_count)
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(row)+'\n')
    a.output.with_suffix(a.output.suffix+'.manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({k:row[k] for k in ('index','status','replayed_bin_witnesses','replayed_basis_witnesses','seconds')}),flush=True)
    return 0 if row['status'] in ('CERTIFIED','CERTIFIED EMPTY') else 2


if __name__=='__main__':raise SystemExit(main())
