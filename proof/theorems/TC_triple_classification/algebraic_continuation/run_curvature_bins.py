#!/usr/bin/env python3
"""Use contracted symmetry curvature on complete original-ball partitions."""
import argparse,hashlib,json
from pathlib import Path
from load_native import HERE,ROOT,R
import run_partition_fast as base
import run_partition_cached as cached
import contracted_symmetry as symmetry
from load_native import MS
MS.prove=symmetry.prove
import run_bins as bins_base
from partition_cache import Cache


def binding(atlas):
    value=cached.binding(atlas)
    for name in ('run_curvature_bins.py','contracted_symmetry.py','CURVATURE_PROOF.txt'):
        p=HERE/name;value['sources'][str(p.relative_to(ROOT))]=hashlib.sha256(p.read_bytes()).hexdigest()
    value['schema']='tc-original-ball-contracted-symmetry-partition-v1'
    value['extensions'].append('signed symmetry curvature contracted with H2 and X before norms')
    value.pop('id');value['id']=hashlib.sha256(json.dumps(value,sort_keys=True).encode()).hexdigest()
    return value


R.binding=binding


if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--index',type=int,required=True);p.add_argument('--output',type=Path,required=True)
    p.add_argument('--max-level',type=int,default=3);p.add_argument('--cell-cap',type=int,default=1024)
    p.add_argument('--cache-directory',type=Path,default=HERE/'results/.cache');a=p.parse_args()
    if not 2<=a.max_level<=6 or a.cell_cap<1:p.error('invalid partition limits')
    base.base.MAX_LEVEL=a.max_level;base.base.CELL_CAP=a.cell_cap
    if a.output.exists():p.error('output exists')
    cache=Cache(a.index,a.cache_directory);cache.install();manifest=binding(R.DEFAULT_ATLAS)
    row=bins_base.hybrid.phase.FROZEN_RUN_BALL(str(R.DEFAULT_ATLAS),a.index,manifest['id'],pattern_cap=500000)
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(row)+'\n')
    a.output.with_suffix(a.output.suffix+'.manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({k:row[k] for k in ('index','status','seconds')}),flush=True)
