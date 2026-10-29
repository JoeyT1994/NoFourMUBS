#!/usr/bin/env python3
"""Experimental first-pattern test after replaying existing bin witnesses."""
import argparse,json
from pathlib import Path
from load_native import R,NC
import run_bins as base
import bin_quadratic as BQ
import seed_partition as SP
import partition_geometry as PG
SP.local_model=PG.local_model
import run_eager_bins as eager
import cubic_chordal
eager.chordal_support=cubic_chordal

p=argparse.ArgumentParser();p.add_argument('--receipt',type=Path,required=True)
p.add_argument('--output',type=Path,required=True);a=p.parse_args()
saved=json.loads(a.receipt.read_text());bins=saved['cover']['bin_quadratic'];result={}
original_cell=SP.cell_test
cell_counts={}
def cell(*args,**kwargs):
    out=original_cell(*args,**kwargs);cell_counts[out['status']]=cell_counts.get(out['status'],0)+1
    with a.output.with_suffix('.progress.jsonl').open('a') as stream:stream.write(json.dumps(dict(box=list(args[5]),status=out['status']))+'\n')
    if sum(cell_counts.values())%16==0:print(json.dumps(cell_counts),flush=True)
    return out
SP.cell_test=cell
def contract(model,roots,cover):
    original=base.FROZEN_CONTRACT(model,roots,cover)
    if cover.get('_quadratic_pruned') or not original[2]:return original
    cover.update(BQ.replay_pruning(model,BQ.restrict_cliques(cover,original[2]),bins))
    cover['_quadratic_pruned']=True
    return base.FROZEN_CONTRACT(model,roots,cover)
class Done(Exception):pass
def pattern(model,prepared,bounds,cover,clique,allow_fine=True):
    if not allow_fine:return base.hybrid.phase.FROZEN_FINAL(model,prepared,bounds,cover,clique,allow_fine=False)
    proof=SP.certify(model,prepared,bounds,cover,clique,max_level=3,cell_cap=512)
    result.update(colors=clique,partition=proof)
    raise Done('experimental first-pattern test, not a complete ball proof')
NC.contract_patterns=contract;R.final_pattern=pattern;R.binding=base.binding;R.BE.exclude=eager.exclude
manifest=base.binding(R.DEFAULT_ATLAS)
row=base.hybrid.phase.FROZEN_RUN_BALL(str(R.DEFAULT_ATLAS),saved['index'],manifest['id'],pattern_cap=500000)
a.output.write_text(json.dumps(dict(index=saved['index'],status='EXPERIMENTAL',
    complete_ball_proved=False,native_status=row['status'],reason=row.get('reason'),**result),indent=2)+'\n')
print(json.dumps(dict(index=saved['index'],partition_status=result.get('partition',{}).get('status'),tested_cells=result.get('partition',{}).get('tested_cells'))),flush=True)
