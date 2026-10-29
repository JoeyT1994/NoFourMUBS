#!/usr/bin/env python3
"""Test every valid original-radius enclosure before later refitting changes it."""
import argparse,hashlib,json
from pathlib import Path
from load_native import HERE,ROOT,R,NC,S
import run_bins as base
import optimized_support as phase_support
import chordal_support

OPEN=None
ATTEMPTS=[]


class OpenPattern(Exception):pass


def binding(atlas):
    value=base.binding(atlas);p=Path(__file__).resolve()
    value['sources'][str(p.relative_to(ROOT))]=hashlib.sha256(p.read_bytes()).hexdigest()
    value['schema']='tc-eager-bin-quadratic-allk-v1'
    value['extensions'].append('test each enclosure before changing its expansion point')
    value.pop('id');value['id']=hashlib.sha256(json.dumps(value,sort_keys=True).encode()).hexdigest()
    return value


def exclude(model,prepared,bounds,clique):
    proof=S.exclude(model,prepared,bounds,clique)
    if proof is not None:return proof
    for module in (phase_support,chordal_support):
        try:
            proof,info=module.exclude(model,prepared,bounds,clique)
            ATTEMPTS.append(dict(method=module.__name__,**info))
            if proof is not None:return proof
        except Exception as exc:
            ATTEMPTS.append(dict(method=module.__name__,failure=type(exc).__name__+': '+str(exc)))
    return None


def final_pattern(model,prepared,bounds,cover,clique,allow_fine=True):
    global OPEN
    if allow_fine:ATTEMPTS.clear()
    result=base.hybrid.phase.FROZEN_FINAL(model,prepared,bounds,cover,clique,allow_fine=allow_fine)
    if allow_fine and result['status']=='NOT ESTABLISHED':
        result['all_enclosure_searches']=list(ATTEMPTS)
        OPEN=tuple(clique),result
        raise OpenPattern('first unresolved pattern; every remaining pattern is still required')
    return result


R.binding=binding;R.BE.exclude=exclude;R.final_pattern=final_pattern


if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--index',type=int,required=True);p.add_argument('--output',type=Path,required=True)
    a=p.parse_args();manifest=binding(R.DEFAULT_ATLAS);OPEN=None
    row=base.hybrid.phase.FROZEN_RUN_BALL(str(R.DEFAULT_ATLAS),a.index,manifest['id'],pattern_cap=500000)
    if OPEN is not None:
        clique,result=OPEN;patterns=row.setdefault('patterns',[])
        patterns.append(dict(number=len(patterns),colors=list(clique),**result))
        row['patterns_not_attempted']=row.get('patterns_after_column_filter',len(patterns))-len(patterns)
        row['status']='NOT ESTABLISHED';row.pop('claim',None)
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(row)+'\n')
    a.output.with_suffix(a.output.suffix+'.manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({k:row[k] for k in ('index','status','seconds')}),flush=True)
