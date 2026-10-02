"""Bounded exact binary partitions of actual enlarged F6 parents.

Every terminal box is retained, including failed/pending boxes. Independent
96/160-bit replay is required before any discovered acceptance is of record.
"""
import argparse,concurrent.futures,json,sys,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[3]
sys.path.insert(0,str(ROOT/'ProvenResults/FourierNeighbourhood/SeedLifting'))
import near_f6,analytic_radius_extension,residual_lift
sys.path.insert(0,str(ROOT/'ProvenResults/CornerBounds/CampaignSecondPass'))
from second_pass import leaf_box,audit_partition,check_leaf
from flint import arb,ctx
from analytic_targets_pilot import box,reference

def run(args):
    row,folder,seconds=args;ctx.prec=96
    out=Path(folder)/('cell_'+str(row['cell'])+'.jsonl')
    rootc,rooth=box(row);rr,cc=reference(row['reference_pi_over_3'])
    queue=[''];terminal=[];nodes=0;start=time.process_time()
    with out.open('x') as f:
        while queue and time.process_time()-start<seconds:
            path=queue.pop();nodes+=1;c,h=leaf_box(rootc,rooth,path)
            result=None;method=None
            for name,fun in [('near_f6',near_f6.certify_box),('analytic_radius_extension',analytic_radius_extension.certify_box)]:
                tr=fun(c,h)
                if tr['ok']:result=tr;method=name;break
            if result is None:
                tr=check_leaf(c,h,10)
                if tr['ok']:result=tr;method='side'
            if result is None:
                tr=residual_lift.certify_f6(c,h,rows=rr,cols=cc,depth=18,maxlabels=1200,pair_budget=800000,triple_budget=500000)
                if tr['ok'] and tr['reason'] in ('outside_D0','residual_tube'):result=tr;method='residual_lift'
            if result is not None or len(path)>=20:
                leaf=dict(path=path,status='accepted' if result else 'open',method=method,certificate=result,last_reason=tr['reason'])
                terminal.append(leaf);f.write(json.dumps(leaf)+'\n');f.flush()
            else:queue.extend((path+'1',path+'0'))
        for path in queue:
            leaf=dict(path=path,status='open',method=None,certificate=None,last_reason='cpu_budget')
            terminal.append(leaf);f.write(json.dumps(leaf)+'\n')
    audit_partition(x['path'] for x in terminal)
    report=dict(cell=row['cell'],input=row,rows=rr,columns=cc,nodes=nodes,accepted=sum(x['status']=='accepted' for x in terminal),
                open=sum(x['status']=='open' for x in terminal),cpu_seconds=time.process_time()-start,
                status='DISCOVERY_ONLY',scope='Exact complete partition; accepted leaves require independent replay')
    (out.with_suffix('.summary.json')).write_text(json.dumps(report,indent=2)+'\n');return report
def main():
    p=argparse.ArgumentParser();p.add_argument('output',type=Path);p.add_argument('--seconds',type=float,default=180);p.add_argument('--workers',type=int,default=2)
    a=p.parse_args();a.output.mkdir(parents=True,exist_ok=False)
    probe=json.loads((ROOT/'Verification/BranchLayer_2026-09-29a/F6_probe.json').read_text())
    cohort=[r for r in probe['candidates'] if r['cell'] in probe['representative_ids']]
    with concurrent.futures.ProcessPoolExecutor(max_workers=a.workers) as pool:
        for result in pool.map(run,[(r,str(a.output),a.seconds) for r in cohort]):
            print(json.dumps({k:v for k,v in result.items() if k!='input'}),flush=True)
if __name__=='__main__':main()
