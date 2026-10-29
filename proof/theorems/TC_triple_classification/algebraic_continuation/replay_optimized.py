#!/usr/bin/env python3
"""Reconstruct the entire all-K cover; verify saved witnesses without conic search."""
import argparse
import hashlib
import json
from pathlib import Path
from load_native import HERE, ROOT, R, S
import run_algebraic as previous
import run_optimized as producer
import optimized_support as optimized


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--receipts',type=Path,required=True)
    p.add_argument('--index',type=int,required=True)
    p.add_argument('--output',type=Path,required=True)
    a=p.parse_args()
    if a.output.exists():p.error('output exists')
    rows=[json.loads(x) for x in a.receipts.read_text().splitlines()]
    matches=[x for x in rows if x['index']==a.index]
    if len(matches)!=1:raise ValueError('exactly one saved original-ball row required')
    saved=matches[0]
    expected=producer.binding(R.DEFAULT_ATLAS)
    if saved['binding']!=expected['id']:raise ArithmeticError('producer binding mismatch')
    witnesses={tuple(x['colors']):x for x in saved.get('patterns',[])
               if 'dual_multipliers_hex' in x}
    used=set()
    def check(model,prepared,bounds,clique):
        old=S.FROZEN_EXCLUDE(model,prepared,bounds,clique)
        if old is not None:return old
        key=tuple(clique)
        if key not in witnesses:return None
        w=witnesses[key]
        try:
            proof=(optimized.replay if w.get('absolute_phase_caps_used') else S.replay)(
                model,prepared,bounds,clique,w)
        except (ArithmeticError,ValueError,ZeroDivisionError):
            return None
        if proof is not None:used.add(key)
        return proof
    def binding(atlas):
        value=producer.binding(atlas)
        value['schema']='tc-optimized-saved-witness-replay-v1'
        value['input_row_sha256']=hashlib.sha256(json.dumps(saved,sort_keys=True).encode()).hexdigest()
        own=Path(__file__).resolve()
        value['sources'][str(own.relative_to(ROOT))]=hashlib.sha256(own.read_bytes()).hexdigest()
        value.pop('id');value['id']=hashlib.sha256(json.dumps(value,sort_keys=True).encode()).hexdigest()
        return value
    R.final_pattern=producer.FROZEN_FINAL
    R.JB.refine=producer.FROZEN_JOINT
    R.run_ball=producer.FROZEN_RUN_BALL
    R.BE.exclude=check
    R.binding=binding
    manifest=binding(R.DEFAULT_ATLAS)
    row=R.run_ball(str(R.DEFAULT_ATLAS),a.index,manifest['id'])
    row.update(saved_witnesses=len(witnesses),replayed_witnesses=len(used))
    a.output.parent.mkdir(parents=True,exist_ok=True)
    a.output.write_text(json.dumps(row)+'\n')
    a.output.with_suffix(a.output.suffix+'.manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({k:row[k] for k in ('index','status','saved_witnesses','replayed_witnesses','seconds')}))
    return 0 if row['status'] in ('CERTIFIED','CERTIFIED EMPTY') else 2


if __name__=='__main__':raise SystemExit(main())
