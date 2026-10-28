#!/usr/bin/env python3
"""Original-ball algebraic search, stopping safely at the first open pattern."""
import argparse,hashlib,json,time
from pathlib import Path
from load_native import HERE,ROOT,R
import run_optimized as phase
import chordal_support as chordal

OPEN=None


class OpenPattern(Exception):
    pass


def binding(atlas):
    value=phase.binding(atlas)
    for name in ('chordal_support.py','CHORDAL_PROOF.txt','run_hybrid.py'):
        p=HERE/name;value['sources'][str(p.relative_to(ROOT))]=hashlib.sha256(p.read_bytes()).hexdigest()
    value['schema']='tc-hybrid-quadratic-allk-v1'
    value['extensions'].append('exact quadratic complex-entry K equations')
    value.pop('id');value['id']=hashlib.sha256(json.dumps(value,sort_keys=True).encode()).hexdigest()
    return value


def final_pattern(model,prepared,bounds,cover,clique,allow_fine=True):
    global OPEN
    result=phase.final_pattern(model,prepared,bounds,cover,clique,allow_fine=allow_fine)
    if not allow_fine or result['status']!='NOT ESTABLISHED':return result
    candidate=phase.last_joint
    if candidate is None or candidate[3]!=tuple(clique):candidate=model,prepared,bounds,clique
    try:
        proof,info=chordal.exclude(*candidate)
        if proof is not None:return dict(**proof,chordal_search=info)
        result['chordal_search']=info
    except Exception as exc:
        result['chordal_search_failure']=type(exc).__name__+': '+str(exc)
    OPEN=(tuple(clique),result)
    raise OpenPattern('first unresolved complete-cover pattern; all other patterns remain required')


def run_single(index):
    global OPEN
    OPEN=None;manifest=binding(R.DEFAULT_ATLAS)
    row=phase.FROZEN_RUN_BALL(str(R.DEFAULT_ATLAS),index,manifest['id'],pattern_cap=500000)
    if OPEN is not None:
        clique,proof=OPEN;patterns=row.setdefault('patterns',[])
        patterns.append(dict(number=len(patterns),colors=list(clique),**proof))
        row['patterns_not_attempted']=row.get('patterns_after_column_filter',len(patterns))-len(patterns)
        row['status']='NOT ESTABLISHED';row.pop('claim',None)
    return row,manifest


R.binding=binding
R.final_pattern=final_pattern


if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--index',type=int,required=True)
    p.add_argument('--output',type=Path,required=True);a=p.parse_args()
    if not 0<=a.index<2775:p.error('invalid original index')
    row,manifest=run_single(a.index)
    a.output.parent.mkdir(parents=True,exist_ok=True)
    a.output.write_text(json.dumps(row)+'\n')
    a.output.with_suffix(a.output.suffix+'.manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({k:row[k] for k in ('index','status','seconds')}),flush=True)
