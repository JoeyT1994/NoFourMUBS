#!/usr/bin/env python3
"""Rebuild the all-K cover and replay saved quadratic directions/multipliers.

No new quadratic direction or dual multiplier is optimized during replay.
The unchanged native exclusions and symmetry tests can still be used.
The replay has its own binding, including this verifier and the input row.
"""
import argparse
import hashlib
import json
from pathlib import Path
import run_algebraic as A
from bootstrap import ROOT, native_run as R
import scalar_support as S


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--receipts',type=Path,required=True)
    parser.add_argument('--index',type=int,required=True)
    parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args()
    if args.output.exists():parser.error('output exists')
    matches=[json.loads(line) for line in args.receipts.read_text().splitlines()
             if json.loads(line).get('index')==args.index]
    if len(matches)!=1:raise ValueError('exactly one input row required')
    saved=matches[0]
    source=A.binding(R.DEFAULT_ATLAS)
    if saved['binding']!=source['id']:
        raise ArithmeticError('saved scalar source/atlas binding mismatch')
    witnesses={tuple(p['colors']):p for p in saved.get('patterns',[])
               if 'dual_multipliers_hex' in p}
    used=set()
    def check(model,prepared,bounds,clique):
        old=S.FROZEN_EXCLUDE(model,prepared,bounds,clique)
        if old is not None:return old
        key=tuple(clique)
        if key not in witnesses:return None
        # A saved witness may belong to the final refined tube. On an
        # earlier, larger tube an indefinite dual is merely inconclusive;
        # continue the exhaustive contraction/refinement pipeline.
        try:
            result=S.replay(model,prepared,bounds,clique,witnesses[key])
        except (ArithmeticError,ZeroDivisionError,ValueError):
            return None
        if result is not None:used.add(key)
        return result
    def binding(atlas):
        value=A.binding(atlas)
        value['schema']='tc-algebraic-saved-quadratic-replay-v1'
        value['input_row_sha256']=hashlib.sha256(json.dumps(saved,sort_keys=True).encode()).hexdigest()
        value['sources'][str(Path(__file__).resolve().relative_to(ROOT))]=hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
        value.pop('id')
        value['id']=hashlib.sha256(json.dumps(value,sort_keys=True).encode()).hexdigest()
        return value
    R.BE.exclude=check;R.binding=binding
    manifest=binding(R.DEFAULT_ATLAS)
    row=R.run_ball(str(R.DEFAULT_ATLAS),args.index,manifest['id'])
    row['replayed_quadratic_witnesses']=len(used)
    row['saved_quadratic_witnesses']=len(witnesses)
    row['input_scalar_binding']=source['id']
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(row)+'\n')
    args.output.with_suffix(args.output.suffix+'.manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({k:row[k] for k in ('index','status','seconds','replayed_quadratic_witnesses','saved_quadratic_witnesses')}))
    return 0 if row['status'] in ('CERTIFIED','CERTIFIED EMPTY') else 2


if __name__=='__main__':raise SystemExit(main())
