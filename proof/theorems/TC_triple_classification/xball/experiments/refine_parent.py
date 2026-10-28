#!/usr/bin/env python3
"""Replay all sixteen exact children of one unresolved original-domain cell."""
import argparse,hashlib,json,sys
from concurrent.futures import ProcessPoolExecutor,as_completed
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
import geometry
import run_xball as RX
import run_shells as RS


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--parent',type=int,nargs=5,required=True)
    parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--workers',type=int,default=2)
    args=parser.parse_args()
    if not 1<=args.workers<=8:parser.error('workers must be between 1 and 8')
    if args.output.exists():parser.error('output exists')
    parent=geometry.validate(args.parent)
    if geometry.radial_squares(parent)[0]>1:parser.error('parent outside original ball')
    leaves=[dict(cell=list(c),id=geometry.identifier(c),kind='SHELL') for c in geometry.children(parent)]
    if any(geometry.radial_squares(v['cell'])[0]>1 for v in leaves):
        parser.error('this bounded pilot requires every child to meet the original ball')
    base=RX.binding();script=Path(__file__);script_hash=hashlib.sha256(script.read_bytes()).hexdigest()
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.with_suffix('.manifest.json').write_text(json.dumps(dict(base=base,controller_sha256=script_hash,parent=list(parent)),indent=2)+'\n')
    results=[]
    with args.output.with_suffix('.cells.jsonl').open('w') as stream:
        with ProcessPoolExecutor(max_workers=args.workers) as pool:
            jobs=[pool.submit(RS.run_piece,leaf,base['id']) for leaf in leaves]
            for job in as_completed(jobs):
                row=job.result();results.append(row)
                stream.write(json.dumps(row,allow_nan=False)+'\n');stream.flush()
                print(json.dumps({k:row[k] for k in ('id','status','seconds')}),flush=True)
    # All 16 children are the exact dyadic partition of the parent cube.
    if {r['id'] for r in results}!={v['id'] for v in leaves} or len(results)!=16:
        raise ArithmeticError('incomplete child partition')
    if RX.binding()['id']!=base['id'] or hashlib.sha256(script.read_bytes()).hexdigest()!=script_hash:
        raise ArithmeticError('source changed during replay')
    closed=all(r['status'] in ('CERTIFIED','CERTIFIED EMPTY') for r in results)
    status=('CERTIFIED EMPTY' if all(r['status']=='CERTIFIED EMPTY' for r in results) else 'CERTIFIED') if closed else 'NOT ESTABLISHED'
    result=dict(status=status,base_binding=base['id'],controller_sha256=script_hash,
                parent_cell=list(parent),original_radius_hex='0x1.0a3d70a3d70a4p-3',
                domain='original X-ball intersect parent dyadic cell',exact_children=16,
                children=[{k:r[k] for k in ('id','status','seconds')} for r in sorted(results,key=lambda r:r['id'])])
    args.output.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(dict(parent=parent,status=status)),flush=True)
    return 0 if closed else 2

if __name__=='__main__':raise SystemExit(main())
