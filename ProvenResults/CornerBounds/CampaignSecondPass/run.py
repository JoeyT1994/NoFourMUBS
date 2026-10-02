"""Run the bounded second pass on TSV evidence or campaign layer records.

The output is a separate reviewable JSONL certificate stream; it does not
change layer.txt, production job state or accepted reconstruction inputs.
"""
from pathlib import Path
import argparse,csv,hashlib,json,math,multiprocessing,time
from flint import ctx
from second_pass import arb,certify_box,replay


def load_rows(path,format):
    with path.open() as f:
        if format=='tsv':
            for i,row in enumerate(csv.DictReader(f,delimiter='\t'),1):
                yield dict(source_row=i,cell=None,job=None,level=int(row['level']),
                           theta=[float(row['t'+str(k)]) for k in range(1,5)],
                           sampled_D0_points=int(row['nD0']))
        else:
            for i,line in enumerate(f,1):
                fields=line.split()
                if not fields or fields[0].startswith('#'):continue
                if len(fields)<7:raise ValueError('Malformed campaign record')
                yield dict(source_row=i,cell=int(fields[0]),job=int(fields[1]),
                           level=int(fields[2]),theta=list(map(float,fields[3:7])))


def cell_box(row):
    if len(row['theta'])!=4 or not all(math.isfinite(t) for t in row['theta']):
        raise ValueError('Four finite Float64 centres required')
    if not 0<=row['level']<=60:raise ValueError('Invalid grid level')
    # Float64 input is represented exactly. Radius encloses BOTH the exact-pi
    # grid radius and the production driver's Float64 radius, plus its guard.
    rho=max((arb.pi()/2**row['level']).upper(),arb(math.pi/2**row['level']))+arb(2)**-40
    return [arb(t) for t in row['theta']],[rho]*4


def work(item):
    row,options,precision=item;ctx.prec=precision
    start=time.process_time();wall=time.perf_counter()
    try:
        cc,hh=cell_box(row);certificate=certify_box(cc,hh,**options)
    except Exception as exc:
        certificate=dict(ok=False,reason='error:'+type(exc).__name__,error=str(exc))
    return dict(row,certificate=certificate,cpu_seconds=time.process_time()-start,
                wall_seconds=time.perf_counter()-wall)


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('input',type=Path);parser.add_argument('output',type=Path)
    parser.add_argument('--format',choices=('tsv','layer'),default='layer')
    parser.add_argument('--indices',type=Path,help='JSON list of one-based input row numbers')
    parser.add_argument('--first',type=int,default=1);parser.add_argument('--last',type=int)
    parser.add_argument('--workers',type=int,choices=range(1,9),default=1)
    parser.add_argument('--precision',type=int,choices=(96,160),default=96)
    parser.add_argument('--max-depth',type=int,default=4)
    parser.add_argument('--node-budget',type=int,default=31)
    parser.add_argument('--threshold',type=int)
    parser.add_argument('--replay',action='store_true',help='Input is a saved JSONL run; replay all accepted covers at 160 bits')
    args=parser.parse_args()
    if args.output.exists():raise SystemExit('Output exists; choose a new receipt path')
    args.output.parent.mkdir(parents=True,exist_ok=True)
    options=dict(max_depth=args.max_depth,node_budget=args.node_budget,threshold=args.threshold)
    started=time.perf_counter()
    if args.replay:
        ctx.prec=160;records=[]
        with args.input.open() as f:
            header=json.loads(next(f))
            for line in f:
                row=json.loads(line)
                if not row['certificate']['ok']:continue
                cc,hh=cell_box(row)
                ok=replay(cc,hh,row['certificate'])
                if not ok:raise AssertionError(('Replay failed',row['source_row']))
                records.append(row['source_row'])
        args.output.write_text(json.dumps(dict(status='PASS',precision=160,
            input_sha256=hashlib.sha256(args.input.read_bytes()).hexdigest(),
            replayed_rows=records,seconds=time.perf_counter()-started),indent=2)+'\n')
        print('PASS: replayed',len(records),'accepted full covers at 160 bits',flush=True)
        return
    selected=None if args.indices is None else set(json.loads(args.indices.read_text()))
    rows=[row for row in load_rows(args.input,args.format)
          if row['source_row']>=args.first and (args.last is None or row['source_row']<=args.last)
          and (selected is None or row['source_row'] in selected)]
    if selected is not None and {r['source_row'] for r in rows}!=selected:
        raise ValueError('Missing selected rows')
    header=dict(type='header',input=str(args.input),input_sha256=hashlib.sha256(args.input.read_bytes()).hexdigest(),
                precision=args.precision,options=options,selected_rows=[r['source_row'] for r in rows],
                sources={p.name:hashlib.sha256(p.read_bytes()).hexdigest()
                         for p in (Path(__file__),Path(__file__).with_name('second_pass.py'))})
    count=accepted=0;cpu=0.;part=args.output.with_suffix(args.output.suffix+'.part')
    if part.exists():raise SystemExit('Partial receipt exists; preserve it and choose a new output')
    with part.open('x') as f,multiprocessing.Pool(args.workers) as pool:
        f.write(json.dumps(header)+'\n');f.flush()
        for out in pool.imap_unordered(work,((r,options,args.precision) for r in rows),chunksize=1):
            f.write(json.dumps(out)+'\n');f.flush()
            count+=1;accepted+=int(out['certificate']['ok']);cpu+=out['cpu_seconds']
            if count%32==0 or count==len(rows):
                print(count,'/',len(rows),'accepted',accepted,'CPU seconds',round(cpu,2),flush=True)
    part.rename(args.output)
    print('DONE',accepted,'/',count,'CPU seconds',round(cpu,2),'wall seconds',round(time.perf_counter()-started,2),flush=True)


if __name__=='__main__':main()
