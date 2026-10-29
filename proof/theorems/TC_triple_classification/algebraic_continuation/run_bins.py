#!/usr/bin/env python3
"""Original-ball all-K proof with exact replayable quadratic bin filtering."""
import argparse,hashlib,json
from pathlib import Path
from load_native import HERE,ROOT,R,NC
import run_hybrid as hybrid
import bin_quadratic as BQ

FROZEN_CONTRACT=NC.contract_patterns


def binding(atlas):
    value=hybrid.binding(atlas)
    for name in ('bin_quadratic.py','BIN_PROOF.txt','run_bins.py'):
        p=HERE/name;value['sources'][str(p.relative_to(ROOT))]=hashlib.sha256(p.read_bytes()).hexdigest()
    value['schema']='tc-bin-quadratic-allk-v1'
    value['extensions'].append('signed quadratic exclusions on original closed phase bins')
    value.pop('id');value['id']=hashlib.sha256(json.dumps(value,sort_keys=True).encode()).hexdigest()
    return value


def contract(model,roots,cover):
    original=FROZEN_CONTRACT(model,roots,cover)
    if cover.get('_quadratic_pruned') or not original[2]:return original
    reduced=BQ.restrict_cliques(cover,original[2])
    refined,proof=BQ.prune(model,reduced)
    refined['_quadratic_pruned']=True
    refined['summary']['bin_quadratic']=proof
    cover.update(refined)
    return FROZEN_CONTRACT(model,roots,cover)


R.binding=binding
NC.contract_patterns=contract


if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--index',type=int,required=True);p.add_argument('--output',type=Path,required=True)
    a=p.parse_args();manifest=binding(R.DEFAULT_ATLAS);hybrid.OPEN=None
    row=hybrid.phase.FROZEN_RUN_BALL(str(R.DEFAULT_ATLAS),a.index,manifest['id'],pattern_cap=500000)
    if hybrid.OPEN is not None:
        clique,result=hybrid.OPEN;patterns=row.setdefault('patterns',[])
        patterns.append(dict(number=len(patterns),colors=list(clique),**result))
        row['patterns_not_attempted']=row.get('patterns_after_column_filter',len(patterns))-len(patterns)
        row['status']='NOT ESTABLISHED';row.pop('claim',None)
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(row)+'\n')
    a.output.with_suffix(a.output.suffix+'.manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({k:row[k] for k in ('index','status','seconds')}),flush=True)
