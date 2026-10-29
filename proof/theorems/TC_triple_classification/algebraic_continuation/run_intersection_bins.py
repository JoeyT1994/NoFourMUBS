#!/usr/bin/env python3
"""Eager original-ball classifier with contracted H-jet remainders."""
import argparse,hashlib,json
from pathlib import Path
from load_native import HERE,ROOT,R
import run_eager_bins as eager
import intersection_chordal


def binding(atlas):
    value=eager.binding(atlas)
    for name in ('run_intersection_bins.py','intersection_chordal.py','INTERSECTION_PROOF.txt','tight_chordal.py','TIGHT_CHORDAL_PROOF.txt'):
        p=HERE/name;value['sources'][str(p.relative_to(ROOT))]=hashlib.sha256(p.read_bytes()).hexdigest()
    value['schema']='tc-intersection-bin-quadratic-allk-v1'
    value['extensions'].append('intersection of 25 quadratic tube constraints')
    value.pop('id');value['id']=hashlib.sha256(json.dumps(value,sort_keys=True).encode()).hexdigest()
    return value


eager.chordal_support=intersection_chordal
R.binding=binding


if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--index',type=int,required=True);p.add_argument('--output',type=Path,required=True)
    a=p.parse_args();manifest=binding(R.DEFAULT_ATLAS);eager.OPEN=None
    row=eager.base.hybrid.phase.FROZEN_RUN_BALL(str(R.DEFAULT_ATLAS),a.index,manifest['id'],pattern_cap=500000)
    if eager.OPEN is not None:
        clique,result=eager.OPEN;patterns=row.setdefault('patterns',[])
        patterns.append(dict(number=len(patterns),colors=list(clique),**result))
        row['patterns_not_attempted']=row.get('patterns_after_column_filter',len(patterns))-len(patterns)
        row['status']='NOT ESTABLISHED';row.pop('claim',None)
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(row)+'\n')
    a.output.with_suffix(a.output.suffix+'.manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({k:row[k] for k in ('index','status','seconds')}),flush=True)
