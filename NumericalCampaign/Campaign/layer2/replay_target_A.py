"""96/160-bit replay of every accepted leaf in a complete partial partition."""
import argparse,concurrent.futures,hashlib,json,sys,time
from pathlib import Path
from target_A_refine import near_f6,analytic_radius_extension,residual_lift,leaf_box,audit_partition,check_leaf,box
from flint import ctx
def run(args):
    src,out=args;meta=json.loads(src.with_suffix('.summary.json').read_text());leaves=[json.loads(l) for l in src.open()]
    audit_partition(r['path'] for r in leaves);receipts=[];start=time.process_time()
    for precision in (96,160):
        ctx.prec=precision;c,h=box(meta['input']);accepted=0
        for leaf in leaves:
            if leaf['status']!='accepted':continue
            cc,hh=leaf_box(c,h,leaf['path']);method=leaf['method']
            if method=='near_f6':r=near_f6.certify_box(cc,hh)
            elif method=='analytic_radius_extension':r=analytic_radius_extension.certify_box(cc,hh)
            elif method=='side':r=check_leaf(cc,hh,10)
            elif method=='residual_lift':
                r=residual_lift.certify_f6(cc,hh,rows=meta['rows'],cols=meta['columns'],depth=18,maxlabels=1200,pair_budget=800000,triple_budget=500000)
                assert r['reason'] in ('outside_D0','residual_tube')
            else:raise ValueError(method)
            assert r['ok'],(meta['cell'],leaf['path'],precision,r);accepted+=1
            receipts.append(dict(precision=precision,path=leaf['path'],method=method,certificate=r))
        assert accepted==meta['accepted']
    report=dict(status='PASS_PARTIAL_COVER',cell=meta['cell'],accepted=meta['accepted'],open=meta['open'],
                source_sha256=hashlib.sha256(src.read_bytes()).hexdigest(),replays=receipts,cpu_seconds=time.process_time()-start)
    with (out/src.name).open('x') as f:json.dump(report,f,indent=2);f.write('\n')
    return {k:v for k,v in report.items() if k!='replays'}
def main():
    p=argparse.ArgumentParser();p.add_argument('input',type=Path);p.add_argument('output',type=Path);a=p.parse_args();a.output.mkdir(parents=True,exist_ok=False)
    files=sorted(a.input.glob('cell_*.jsonl'))
    assert len(files)==6 and all(p.with_suffix('.summary.json').exists() for p in files)
    with concurrent.futures.ProcessPoolExecutor(max_workers=2) as pool:
        for r in pool.map(run,[(p,a.output) for p in files]):print(json.dumps(r),flush=True)
if __name__=='__main__':main()
