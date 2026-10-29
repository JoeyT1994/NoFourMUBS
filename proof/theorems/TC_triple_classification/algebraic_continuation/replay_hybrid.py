#!/usr/bin/env python3
"""Rebuild all patterns and check saved phase/entry witnesses without conic search."""
import argparse,hashlib,json
from pathlib import Path
from load_native import ROOT,R,S
import run_hybrid as producer
import optimized_support as phase
import chordal_support as chordal


def main():
    p=argparse.ArgumentParser();p.add_argument('--receipt',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True);a=p.parse_args()
    if a.output.exists():p.error('output exists')
    saved=json.loads(a.receipt.read_text())
    if saved.get('binding')!=producer.binding(R.DEFAULT_ATLAS)['id']:raise ArithmeticError('hybrid binding mismatch')
    witnesses={tuple(x['colors']):x for x in saved.get('patterns',[]) if 'dual_multipliers_hex' in x}
    used=set()
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
        value=producer.binding(atlas);value['schema']='tc-hybrid-saved-witness-replay-v1'
        value['input_row_sha256']=hashlib.sha256(json.dumps(saved,sort_keys=True).encode()).hexdigest()
        own=Path(__file__).resolve();value['sources'][str(own.relative_to(ROOT))]=hashlib.sha256(own.read_bytes()).hexdigest()
        value.pop('id');value['id']=hashlib.sha256(json.dumps(value,sort_keys=True).encode()).hexdigest()
        return value
    frozen=producer.phase
    R.final_pattern=frozen.FROZEN_FINAL;R.JB.refine=frozen.FROZEN_JOINT
    R.run_ball=frozen.FROZEN_RUN_BALL;R.BE.exclude=check;R.binding=binding
    manifest=binding(R.DEFAULT_ATLAS)
    row=R.run_ball(str(R.DEFAULT_ATLAS),saved['index'],manifest['id'],pattern_cap=500000)
    row.update(saved_witnesses=len(witnesses),replayed_witnesses=len(used))
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(row)+'\n')
    a.output.with_suffix(a.output.suffix+'.manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({k:row[k] for k in ('index','status','saved_witnesses','replayed_witnesses','seconds')}),flush=True)
    return 0 if row['status'] in ('CERTIFIED','CERTIFIED EMPTY') else 2


if __name__=='__main__':raise SystemExit(main())
