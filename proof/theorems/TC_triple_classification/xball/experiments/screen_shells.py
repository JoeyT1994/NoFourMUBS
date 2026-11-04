#!/usr/bin/env python3
"""Bounded cheap all-K emptiness screen before expensive shell classification."""
import argparse
from concurrent.futures import ProcessPoolExecutor,as_completed
import hashlib,json,os,sys,time
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
import bootstrap as B
import geometry
import model as XM
import pipeline
import run_shells as RS
import run_xball as RX


def digest(path):return hashlib.sha256(path.read_bytes()).hexdigest()


def screen(leaf,binding,controller):
    started=time.monotonic()
    row=dict(id=leaf['id'],cell=leaf['cell'],binding=binding,screen_controller_sha256=controller,status='NOT ESTABLISHED')
    try:
        if RX.binding()['id']!=binding:raise ArithmeticError('base changed')
        _,whole,source=XM.load_original();model,subset=XM.cell_model(whole,leaf['cell'])
        row.update(source=source,subset=subset,stage_c_preconditions=XM.stage_c_preconditions(model))
        roots=B.NC.propose_roots(B.native_run.np.exp(1j*B.MS.numeric(model['Q0']).reshape(6,6)))
        cover=B.NC.complete_cover(model['ball'],model,roots)
        prepared,bounds,cliques,_=B.NC.contract_patterns(model,roots,cover)
        row.update(cover=cover['summary'],patterns_after_column_filter=len(cliques),patterns=[])
        if len(cliques)>500:raise ArithmeticError('pattern cap')
        for number,clique in enumerate(cliques):
            result=B.NC.label_pattern(cover,clique)
            if result['status']!='EXCLUDED':result=pipeline.BE.exclude(model,prepared,bounds,clique)
            if not result:result=dict(status='NOT ESTABLISHED',reason='Cheap screen leaves this pattern for classification or refinement.')
            row['patterns'].append(dict(number=number,colors=clique,**result))
        if all(p['status']=='EXCLUDED' for p in row['patterns']):
            row.update(status='CERTIFIED EMPTY',claim='No completing K on the original ball intersect this entire cell.')
        if RX.binding()['id']!=binding:raise ArithmeticError('base changed during screen')
        if digest(Path(__file__))!=controller:raise ArithmeticError('screen controller changed')
    except Exception as exc:
        row['status']='NOT ESTABLISHED';row.pop('claim',None);row['reason']=type(exc).__name__+': '+str(exc)
    row['seconds']=time.monotonic()-started
    return row


def main():
    p=argparse.ArgumentParser(description=__doc__)
    for name in ('cover','receipts','core','output'):p.add_argument('--'+name,type=Path,required=True)
    p.add_argument('--workers',type=int,default=6);p.add_argument('--limit',type=int,default=128)
    args=p.parse_args()
    if not 1<=args.workers<=8 or args.limit<1:p.error('invalid worker or task limit')
    targets=[args.output]+[args.output.with_suffix(s) for s in ('.cover.json','.cells.jsonl','.events.jsonl','.manifest.json')]
    if any(v.exists() for v in targets):p.error('select a fresh prefix')
    files=(args.cover,args.receipts,args.core);inputs={str(f.resolve()):digest(f) for f in files}
    cover=json.loads(args.cover.read_text());core=json.loads(args.core.read_text())
    rows=[json.loads(l) for l in args.receipts.read_text().splitlines()]
    base=RX.binding();controller=digest(Path(__file__))
    cover['verification']=geometry.verify_cover(cover);RS.account(cover,rows,base['id'],core)
    done={r['id'] for r in rows}
    pending=[v for v in cover['leaves'] if v['kind']=='SHELL' and v['id'] not in done][:args.limit]
    manifest=dict(base=base,controller_sha256=controller,inputs_sha256=inputs,scheduled_ids=[v['id'] for v in pending],workers=args.workers)
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.with_suffix('.manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    with args.output.with_suffix('.events.jsonl').open('w') as stream:
        with ProcessPoolExecutor(max_workers=args.workers) as pool:
            tasks=[pool.submit(screen,v,base['id'],controller) for v in pending]
            for task in as_completed(tasks):
                row=task.result();rows.append(row)
                stream.write(json.dumps(row,allow_nan=False)+'\n');stream.flush();os.fsync(stream.fileno())
                print(json.dumps({k:row[k] for k in ('id','status','seconds')}),flush=True)
    if RX.binding()!=base or digest(Path(__file__))!=controller or any(digest(f)!=inputs[str(f.resolve())] for f in files):
        raise ArithmeticError('source or input changed during screen')
    result=RS.account(cover,rows,base['id'],core)
    result.update(screen_controller_sha256=controller,new_pieces=len(pending))
    args.output.with_suffix('.cover.json').write_text(json.dumps(cover,indent=2)+'\n')
    args.output.with_suffix('.cells.jsonl').write_text(''.join(json.dumps(r,allow_nan=False)+'\n' for r in rows))
    args.output.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:result[k] for k in ('status','shell_required','shell_tested','shell_closed')}),flush=True)
    return 0 if result['status']=='CERTIFIED' else 2


if __name__=='__main__':raise SystemExit(main())
