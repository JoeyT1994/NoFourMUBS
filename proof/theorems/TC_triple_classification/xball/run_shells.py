#!/usr/bin/env python3
"""Exact full-domain accounting, with bounded or complete shell replay."""
import argparse
from concurrent.futures import ProcessPoolExecutor, as_completed
import hashlib
import json
import os
from pathlib import Path
import time

import bootstrap as B
import geometry
import model as XM
import run_xball as RX


def run_piece(leaf, expected_binding):
    started=time.monotonic()
    row=dict(id=leaf['id'],cell=leaf['cell'],binding=expected_binding,status='NOT ESTABLISHED')
    try:
        if RX.binding()['id'] != expected_binding:raise ArithmeticError('source binding changed')
        _,original,source=XM.load_original()
        local,domain=XM.cell_model(original,leaf['cell'])
        row.update(source=source,subset=domain)
        RX.attempt(local,row)
        if RX.binding()['id'] != expected_binding:raise ArithmeticError('source binding changed during piece')
    except Exception as exc:
        row['status']='NOT ESTABLISHED';row.pop('claim',None)
        row['reason']=type(exc).__name__+': '+str(exc)
    row['seconds']=time.monotonic()-started
    return row


def account(cover, rows, binding, core=None):
    geometry.verify_cover(cover)
    required={leaf['id']:leaf for leaf in cover['leaves'] if leaf['kind']=='SHELL'}
    done={}
    for row in rows:
        key=row['id']
        if key in done or key not in required:raise ValueError('duplicate or unknown shell receipt')
        if row['binding']!=binding or row['cell']!=required[key]['cell']:
            raise ValueError('shell source or domain mismatch')
        if row['status'] in ('CERTIFIED','CERTIFIED EMPTY'):
            pats=row.get('patterns',[])
            if len(pats)!=row.get('patterns_after_column_filter'):
                raise ValueError('incomplete pattern accounting')
            if any(p['status'] not in ('CERTIFIED','EXCLUDED') for p in pats):
                raise ValueError('unresolved pattern in successful receipt')
        elif row['status']!='NOT ESTABLISHED':raise ValueError('unknown shell status')
        done[key]=row
    core_status='NOT ESTABLISHED'
    if core is not None:
        if core.get('binding')!=binding or core.get('subset',{}).get('radius_ratio')!=cover['core_radius_ratio']:
            raise ValueError('core receipt source or radius mismatch')
        if core.get('domain')!='core subset of original X-ball':raise ValueError('wrong core domain')
        if core.get('radius_hex')!='0x1.0a3d70a3d70a4p-3':raise ValueError('wrong original source radius')
        core_status=core['status']
        if core_status in ('CERTIFIED','CERTIFIED EMPTY'):
            pats=core.get('patterns',[])
            if len(pats)!=core.get('patterns_after_column_filter') or any(p['status'] not in ('CERTIFIED','EXCLUDED') for p in pats):
                raise ValueError('incomplete core pattern accounting')
    closed=[k for k,v in done.items() if v['status'] in ('CERTIFIED','CERTIFIED EMPTY')]
    unresolved=[k for k,v in done.items() if v['status']=='NOT ESTABLISHED']
    untested=sorted(set(required)-set(done))
    status='CERTIFIED' if not unresolved and not untested and core_status in ('CERTIFIED','CERTIFIED EMPTY') else 'NOT ESTABLISHED'
    return dict(status=status,binding=binding,geometric_cover=cover['verification'],
                original_radius_hex='0x1.0a3d70a3d70a4p-3',core_status=core_status,
                shell_required=len(required),shell_tested=len(done),shell_closed=len(closed),
                shell_unresolved=unresolved,shell_untested=untested,
                claim='Every completing third basis on the entire original X-ball is of Conjecture 1 type.' if status=='CERTIFIED' else None)


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--level',type=int,default=2)
    parser.add_argument('--core-power',type=int,default=2)
    parser.add_argument('--workers',type=int,default=1)
    parser.add_argument('--limit',type=int)
    parser.add_argument('--cell-ids',nargs='*')
    parser.add_argument('--core-receipt',type=Path)
    parser.add_argument('--resume',action='store_true')
    args=parser.parse_args()
    if not 1<=args.workers<=8:parser.error('workers must be between 1 and 8')
    if args.limit is not None and args.limit<1:parser.error('limit must be positive')
    cover=geometry.make_cover(args.level,args.core_power)
    manifest=RX.binding();manifest['workers']=args.workers
    manifest['runtime']=dict(python=RX.platform.python_version(),platform=RX.platform.platform(),
        packages={p:RX.importlib.metadata.version(p) for p in ('numpy','scipy','python-flint','sympy')})
    manifest['cover_sha256']=hashlib.sha256(json.dumps(cover,sort_keys=True).encode()).hexdigest()
    cells_path=args.output.with_suffix('.cells.jsonl')
    rows=[]
    if cells_path.exists():
        if not args.resume:parser.error('cell output exists; use --resume or a fresh path')
        rows=[json.loads(line) for line in cells_path.read_text().splitlines()]
        account(cover,rows,manifest['id'])
    elif args.output.exists():parser.error('summary output already exists')
    done={r['id'] for r in rows}
    pending=[leaf for leaf in cover['leaves'] if leaf['kind']=='SHELL' and leaf['id'] not in done]
    if args.cell_ids:
        requested=set(args.cell_ids)
        if len(requested)!=len(args.cell_ids):parser.error('duplicate cell id')
        available={leaf['id'] for leaf in cover['leaves'] if leaf['kind']=='SHELL'}
        if not requested<=available:parser.error('unknown shell cell id')
        pending=[leaf for leaf in pending if leaf['id'] in requested]
    if args.limit is not None:pending=pending[:args.limit]
    manifest['scheduled_ids']=[leaf['id'] for leaf in pending]
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.with_suffix('.cover.json').write_text(json.dumps(cover,indent=2)+'\n')
    args.output.with_suffix('.manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    with cells_path.open('a') as stream:
        def save(row):
            stream.write(json.dumps(row,allow_nan=False)+'\n');stream.flush();os.fsync(stream.fileno())
            rows.append(row)
            print(json.dumps({k:row[k] for k in ('id','status','seconds')}),flush=True)
        if args.workers==1:
            for leaf in pending:save(run_piece(leaf,manifest['id']))
        else:
            with ProcessPoolExecutor(max_workers=args.workers) as pool:
                futures=[pool.submit(run_piece,leaf,manifest['id']) for leaf in pending]
                for future in as_completed(futures):save(future.result())
    core=json.loads(args.core_receipt.read_text()) if args.core_receipt else None
    result=account(cover,rows,manifest['id'],core)
    if RX.binding()['id']!=manifest['id']:
        result['status']='NOT ESTABLISHED';result['claim']=None;result['reason']='sources changed during run'
    args.output.write_text(json.dumps(result,indent=2,allow_nan=False)+'\n')
    print(json.dumps({k:result[k] for k in ('status','core_status','shell_required','shell_tested','shell_closed')}),flush=True)
    return 0 if result['status']=='CERTIFIED' else 2


if __name__=='__main__':raise SystemExit(main())
