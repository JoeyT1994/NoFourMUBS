#!/usr/bin/env python3
"""Classify every K pattern on a complete partition of the original ball."""
import argparse,hashlib,json
from pathlib import Path
from load_native import HERE,ROOT,R,NC,S
import run_cubic_bins as base
import seed_partition as SP
import partition_geometry as PG

MAX_LEVEL=3
CELL_CAP=1024
SP.local_model=PG.local_model


def binding(atlas):
    value=base.binding(atlas)
    for name in ('run_partition_bins.py','seed_partition.py','partition_geometry.py','PARTITION_GEOMETRY_PROOF.txt'):
        p=HERE/name;value['sources'][str(p.relative_to(ROOT))]=hashlib.sha256(p.read_bytes()).hexdigest()
    value['schema']='tc-original-ball-complete-partition-v1'
    value['extensions'].append('complete dyadic partition with certified box-ball intersection radii')
    value.pop('id');value['id']=hashlib.sha256(json.dumps(value,sort_keys=True).encode()).hexdigest()
    return value


def final_pattern(model,prepared,bounds,cover,clique,allow_fine=True):
    if not allow_fine:
        return base.eager.base.hybrid.phase.FROZEN_FINAL(model,prepared,bounds,cover,clique,allow_fine=False)
    labels=NC.label_pattern(cover,clique)
    if labels['status']=='EXCLUDED':return labels
    quick=S.FROZEN_EXCLUDE(model,prepared,bounds,clique)
    if quick is not None:return quick
    return SP.certify(model,prepared,bounds,cover,clique,max_level=MAX_LEVEL,cell_cap=CELL_CAP)


R.binding=binding;R.final_pattern=final_pattern


if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--index',type=int,required=True);p.add_argument('--output',type=Path,required=True)
    p.add_argument('--max-level',type=int,default=3);p.add_argument('--cell-cap',type=int,default=1024);a=p.parse_args()
    if not 2<=a.max_level<=6 or a.cell_cap<1:p.error('invalid partition limits')
    MAX_LEVEL=a.max_level;CELL_CAP=a.cell_cap
    if a.output.exists():p.error('output exists')
    manifest=binding(R.DEFAULT_ATLAS)
    row=base.eager.base.hybrid.phase.FROZEN_RUN_BALL(str(R.DEFAULT_ATLAS),a.index,manifest['id'],pattern_cap=500000)
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(row)+'\n')
    a.output.with_suffix(a.output.suffix+'.manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({k:row[k] for k in ('index','status','seconds')}),flush=True)
