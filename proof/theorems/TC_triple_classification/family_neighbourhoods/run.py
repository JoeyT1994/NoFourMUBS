#!/usr/bin/env python3
"""Whole-original-ball all-K certifier. A cap or failed bound is unresolved."""
import argparse
from concurrent.futures import ProcessPoolExecutor,as_completed
import gzip
import hashlib
import importlib.metadata
import json
import os
from pathlib import Path
import platform
import sys
import time

# Each worker owns its Arb context. Prevent numerical proposal libraries
# from starting another thread pool inside each independent seed worker.
for variable in ('OPENBLAS_NUM_THREADS','MKL_NUM_THREADS','VECLIB_MAXIMUM_THREADS','OMP_NUM_THREADS'):
    os.environ.setdefault(variable,'1')

import numpy as np
from flint import arb,ctx
import native_columns as C
import native_cover as NC
import conditioned_columns as CC
import moving_symmetry as MS
import pattern_proposals as PP
import basis_exclusion as BE
import patches as P
import seedcert as SC

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[3]
DEFAULT_ATLAS=ROOT/'proof/seed_atlas/results/seed_atlas_certificate.json.gz'
PINNED_ATLAS='33ad9798eb7a5585c486f2427a6b223867a43b308b7f184467b4cd5956bd8baf'


def source_paths():
    sources=[*HERE.glob('*.py'),HERE/'PROOF.md',HERE/'requirements.txt',
        HERE.parent/'seed_method/reference/r0153/CHECKPOINT.md',
        HERE.parent/'seed_method/seed_cover.py',HERE.parent/'tao.py',
        ROOT/'proof/atlas/stagec.py',ROOT/'proof/atlas/STAGEC.md',ROOT/'proof/atlas/RIGOUR.md',
        ROOT/'proof/seed_atlas/FORMAT.md',
        ROOT/'proof/theorems/Z_completion_hessian/Z_completion_hessian_return/THEOREM.md',
        ROOT/'proof/theorems/ZT_wholeball_transfers/ZT_return/REPORT.md',
        *[ROOT/'proof/seed_atlas/cert'/name for name in
          ('seedcert.py','patches.py','wholeball.py','wholeball_basis.json','tmarb.py')]]
    return sorted(set(sources))


def binding(atlas):
    paths=source_paths()
    files={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in paths}
    atlas_hash=hashlib.sha256(Path(atlas).read_bytes()).hexdigest()
    if atlas_hash!=PINNED_ATLAS:raise ValueError('atlas checksum mismatch; this release is bound to the supplied original atlas')
    value=dict(schema='tc-native-allk-v1',atlas_sha256=atlas_hash,sources=files,precision=160)
    value['id']=hashlib.sha256(json.dumps(value,sort_keys=True).encode()).hexdigest()
    return value


def final_pattern(model,prepared,bounds,cover,clique):
    attempts=[]
    labels=NC.label_pattern(cover,clique)
    if labels['status']=='EXCLUDED':return labels
    excluded=BE.exclude(model,prepared,bounds,clique)
    if excluded:return excluded
    # Cheap direct route for well-conditioned native columns.
    if max(float(bounds[c]['epsilon']) for c in clique)<.08:
        direct=MS.classify(model,prepared,bounds,clique,attempts=1)
        if direct['status']=='CERTIFIED':return dict(**direct,route='native')
        attempts.append(direct)
    pp,bb,possible=NC.restrict_pattern_bins(model,prepared,bounds,cover,clique)
    if not possible:return dict(status='EXCLUDED',route='bin orthogonality')
    pp,bb,possible=CC.refine_pattern(pp,bb,clique)
    if possible:pp,bb,possible=CC.refine_pattern(pp,bb,clique,reference_count=4)
    if not possible:return dict(status='EXCLUDED',route='conditioned orthogonality')
    if max(float(bb[c]['epsilon']) for c in clique)<.2:
        direct=MS.classify(model,pp,bb,clique,attempts=1)
        if direct['status']=='CERTIFIED':return dict(**direct,route='conditioned')
        attempts.append(direct)
    # Fit an expansion point, then reconstruct every covering radius in Arb.
    pp,bb,cc,fit=PP.fit(model,prepared,bounds,cover,clique)
    pp,bb,possible=NC.restrict_pattern_bins(model,pp,bb,cc,clique)
    if possible:pp,bb,possible=CC.refine_pattern(pp,bb,clique)
    if possible:pp,bb,possible=CC.refine_pattern(pp,bb,clique,reference_count=4)
    if not possible:return dict(status='EXCLUDED',route='refitted orthogonality',proposal=fit)
    excluded=BE.exclude(model,pp,bb,clique)
    if excluded:return excluded
    direct=MS.classify(model,pp,bb,clique,attempts=1)
    return dict(**direct,route='refitted',proposal=fit,
        column_error_bounds=[str(bb[c]['epsilon']) for c in clique],previous_attempts=attempts)


def run_ball(atlas,index,expected_binding,pattern_cap=500):
    started=time.monotonic();row=dict(index=index,status='NOT ESTABLISHED',binding=expected_binding)
    try:
        if binding(atlas)['id']!=expected_binding:raise ArithmeticError('source binding changed before run')
        document=json.loads(gzip.decompress(Path(atlas).read_bytes()))
        record=document['seeds'][index];ball=SC.Ball(record)
        row.update(radius_hex=float(ball.r).hex(),coordinates='original native four-coordinate ball',
            seed_sha256=hashlib.sha256(json.dumps(record,sort_keys=True).encode()).hexdigest())
        ctx.prec=160
        c1=SC.certify_c1(ball,max_boxes=4096)
        if not c1['ok']:raise ArithmeticError('original C1 failed: '+c1['reason'])
        row['c1']=c1
        model=P.normal_form(ball,prec=160);row['normal_form']=model['summary']
        h=np.exp(1j*MS.numeric(model['Q0']).reshape(6,6))
        roots=NC.propose_roots(h);cover=NC.complete_cover(ball,model,roots)
        row['cover']=cover['summary']
        prepared,bounds,cliques,steps=NC.contract_patterns(model,roots,cover)
        row['patterns_after_column_filter']=len(cliques);row['patterns']=[]
        if len(cliques)>pattern_cap:raise ArithmeticError('pattern cap reached')
        for number,clique in enumerate(cliques):
            try:result=final_pattern(model,prepared,bounds,cover,clique)
            except (ArithmeticError,ValueError,RuntimeError,np.linalg.LinAlgError) as exc:
                result=dict(status='NOT ESTABLISHED',reason=str(exc))
            row['patterns'].append(dict(number=number,colors=clique,**result))
        statuses=[p['status'] for p in row['patterns']]
        if all(s in ('CERTIFIED','EXCLUDED') for s in statuses):
            row['status']='CERTIFIED' if 'CERTIFIED' in statuses else 'CERTIFIED EMPTY'
            row['claim']='Every completing third basis on the entire original ball is of Conjecture 1 type.'
        else:row['reason']='One or more complete-cover patterns remain unresolved.'
        if binding(atlas)['id']!=expected_binding:
            row['status']='NOT ESTABLISHED';row['reason']='source binding changed during run';row.pop('claim',None)
    except Exception as exc:
        row['status']='NOT ESTABLISHED';row.pop('claim',None)
        row['reason']=type(exc).__name__+': '+str(exc)
    row['seconds']=time.monotonic()-started
    return row


def read_indices(args):
    values=list(args.indices or [])
    if args.index_file:
        raw=args.index_file.read_text()
        if raw.lstrip().startswith('['):extra=json.loads(raw)
        else:extra=[int(v) for line in raw.splitlines() for v in line.split('#',1)[0].replace(',',' ').split()]
        values.extend(extra)
    if not values:raise ValueError('supply --indices or --index-file; no survivor list is assumed')
    if any(isinstance(i,bool) or not isinstance(i,int) or not 0<=i<2775 for i in values):
        raise ValueError('indices must be zero-based integers from 0 through 2774')
    if len(values)!=len(set(values)):raise ValueError('duplicate seed index')
    return values


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--atlas',type=Path,default=DEFAULT_ATLAS)
    parser.add_argument('--indices',type=int,nargs='*')
    parser.add_argument('--index-file',type=Path)
    parser.add_argument('--workers',type=int,default=1)
    parser.add_argument('--pattern-cap',type=int,default=500)
    parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--resume',action='store_true')
    args=parser.parse_args()
    if args.workers<1 or args.pattern_cap<1:parser.error('workers and pattern-cap must be positive')
    try:indices=read_indices(args);manifest=binding(args.atlas)
    except (ValueError,OSError) as exc:parser.error(str(exc))
    manifest.update(requested_indices=indices,workers=args.workers,pattern_cap=args.pattern_cap,
        runtime=dict(python=platform.python_version(),platform=platform.platform(),
                     packages={p:importlib.metadata.version(p) for p in ('numpy','scipy','python-flint')}))
    args.output.parent.mkdir(parents=True,exist_ok=True)
    completed={}
    if args.output.exists():
        if not args.resume:parser.error('output exists; use --resume or another path')
        for line in args.output.read_text().splitlines():
            row=json.loads(line)
            if row.get('binding')!=manifest['id']:parser.error('resume source/atlas binding mismatch')
            if row['index'] in completed:parser.error('duplicate existing receipt')
            completed[row['index']]=row
        if not set(completed)<=set(indices):parser.error('existing receipts contain indices outside this request')
    args.output.with_suffix(args.output.suffix+'.manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    pending=[i for i in indices if i not in completed]
    with args.output.open('a') as stream:
        def save(row):
            stream.write(json.dumps(row,allow_nan=False)+'\n');stream.flush();os.fsync(stream.fileno())
            completed[row['index']]=row
            print(json.dumps({k:row[k] for k in ('index','status','seconds')}),flush=True)
        if args.workers==1:
            for i in pending:save(run_ball(str(args.atlas),i,manifest['id'],args.pattern_cap))
        else:
            with ProcessPoolExecutor(max_workers=args.workers) as pool:
                futures={pool.submit(run_ball,str(args.atlas),i,manifest['id'],args.pattern_cap):i for i in pending}
                for future in as_completed(futures):save(future.result())
    unresolved=[i for i in indices if completed[i]['status']=='NOT ESTABLISHED']
    print(json.dumps(dict(requested=len(indices),complete=len(indices)-len(unresolved),unresolved=unresolved)),flush=True)
    return 2 if unresolved else 0


if __name__=='__main__':raise SystemExit(main())
