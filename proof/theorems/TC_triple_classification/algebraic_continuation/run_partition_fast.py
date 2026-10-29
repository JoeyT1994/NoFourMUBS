#!/usr/bin/env python3
"""Try native whole-pattern recognition before complete ball subdivision."""
import argparse,hashlib,json,time
from pathlib import Path
from load_native import HERE,ROOT,R,S
import run_partition_bins as base


def binding(atlas):
    value=base.binding(atlas);own=Path(__file__).resolve()
    value['sources'][str(own.relative_to(ROOT))]=hashlib.sha256(own.read_bytes()).hexdigest()
    value['schema']='tc-original-ball-native-then-partition-v1'
    value['extensions'].append('native whole-pattern recognition before partitioning')
    value.pop('id');value['id']=hashlib.sha256(json.dumps(value,sort_keys=True).encode()).hexdigest()
    return value


def final_pattern(model,prepared,bounds,cover,clique,allow_fine=True):
    if not allow_fine:return base.final_pattern(model,prepared,bounds,cover,clique,allow_fine=False)
    started=time.monotonic();print(json.dumps(dict(pattern=list(clique),event='started')),flush=True)
    previous=R.BE.exclude
    try:
        R.BE.exclude=S.FROZEN_EXCLUDE
        result=base.base.eager.base.hybrid.phase.FROZEN_FINAL(model,prepared,bounds,cover,clique,allow_fine=False)
    finally:R.BE.exclude=previous
    if result['status'] not in ('CERTIFIED','EXCLUDED'):
        result=base.final_pattern(model,prepared,bounds,cover,clique,allow_fine=True)
    print(json.dumps(dict(pattern=list(clique),event='finished',status=result['status'],
        seconds=time.monotonic()-started)),flush=True)
    return result


R.binding=binding;R.final_pattern=final_pattern


if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--index',type=int,required=True);p.add_argument('--output',type=Path,required=True)
    p.add_argument('--max-level',type=int,default=3);p.add_argument('--cell-cap',type=int,default=1024);a=p.parse_args()
    if not 2<=a.max_level<=6 or a.cell_cap<1:p.error('invalid partition limits')
    base.MAX_LEVEL=a.max_level;base.CELL_CAP=a.cell_cap
    if a.output.exists():p.error('output exists')
    manifest=binding(R.DEFAULT_ATLAS)
    row=base.base.eager.base.hybrid.phase.FROZEN_RUN_BALL(str(R.DEFAULT_ATLAS),a.index,manifest['id'],pattern_cap=500000)
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(row)+'\n')
    a.output.with_suffix(a.output.suffix+'.manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({k:row[k] for k in ('index','status','seconds')}),flush=True)
