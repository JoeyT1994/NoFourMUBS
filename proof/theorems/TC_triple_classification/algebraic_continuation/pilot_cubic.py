#!/usr/bin/env python3
"""Experimental first-pattern test after replaying existing bin witnesses."""
import argparse,json
from pathlib import Path
from load_native import R,NC
import run_bins as base
import bin_quadratic as BQ
import cubic_chordal as PH

p=argparse.ArgumentParser();p.add_argument('--receipt',type=Path,required=True)
p.add_argument('--output',type=Path,required=True);a=p.parse_args()
saved=json.loads(a.receipt.read_text());bins=saved['cover']['bin_quadratic'];result={}
def contract(model,roots,cover):
    original=base.FROZEN_CONTRACT(model,roots,cover)
    if cover.get('_quadratic_pruned') or not original[2]:return original
    cover.update(BQ.replay_pruning(model,BQ.restrict_cliques(cover,original[2]),bins))
    cover['_quadratic_pruned']=True
    return base.FROZEN_CONTRACT(model,roots,cover)
class Done(Exception):pass
def pattern(model,prepared,bounds,cover,clique,allow_fine=True):
    proof,info=PH.exclude(model,prepared,bounds,clique)
    result.update(colors=clique,proposal=info,witness=proof)
    raise Done('experimental first-pattern test, not a complete ball proof')
NC.contract_patterns=contract;R.final_pattern=pattern
manifest=base.binding(R.DEFAULT_ATLAS)
row=base.hybrid.phase.FROZEN_RUN_BALL(str(R.DEFAULT_ATLAS),saved['index'],manifest['id'],pattern_cap=500000)
a.output.write_text(json.dumps(dict(index=saved['index'],status='EXPERIMENTAL',
    complete_ball_proved=False,native_status=row['status'],reason=row.get('reason'),**result),indent=2)+'\n')
print(json.dumps(dict(index=saved['index'],proposal=result.get('proposal'),found_witness=result.get('witness') is not None)),flush=True)
