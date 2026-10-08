"""Bounded A/B diagnostics. Failed tests remain open, never certificates.

The F6 test uses actual enlarged parents and all retained side choices.
The near-atlas cohort is selected by floating evidence only; its R-gap
acceptance and replays use outward Arb at 96/160 bits.
"""
import argparse,csv,json,math,sys,time
from itertools import permutations
from pathlib import Path
ROOT=Path(__file__).resolve().parents[3]
sys.path.insert(0,str(ROOT/'ProvenResults/FourierNeighbourhood/SeedLifting'))
import residual_lift
sys.path.insert(0,str(ROOT/'ProvenResults/CornerBounds/CampaignSecondPass'))
import second_pass
from flint import arb,ctx
def box(r):
    return [arb(x) for x in r['theta']],[arb.pi()/2**r['level']+arb(2)**-40]*4
def reference(nn):
    for rr in permutations(range(1,6),2):
        for cc in permutations(range(1,6),2):
            if tuple(r*c%6 for r in rr for c in cc)==tuple(x%6 for x in nn):
                return (0,*rr,*(i for i in range(1,6) if i not in rr)),(0,*cc,*(i for i in range(1,6) if i not in cc))
    raise ValueError('No exact F6 reference')
def main():
    p=argparse.ArgumentParser();p.add_argument('mode',choices=['A','B']);p.add_argument('output',type=Path)
    a=p.parse_args();ctx.prec=96
    source=ROOT/'Verification/BranchLayer_2026-09-29a'
    with a.output.open('x') as out:
        if a.mode=='A':
            probe=json.loads((source/'F6_probe.json').read_text())
            cohort=[r for r in probe['candidates'] if r['cell'] in probe['representative_ids']]
            for row in cohort:
                rr,cc=reference(row['reference_pi_over_3']);c,h=box(row);start=time.process_time()
                result=residual_lift.certify_f6(c,h,rows=rr,cols=cc,depth=14,maxlabels=512,pair_budget=150000,triple_budget=100000)
                record=dict(cell=row['cell'],F6_class=row['F6_class_certificate']['cube'],rows=rr,columns=cc,
                            certificate=result,cpu_seconds=time.process_time()-start,
                            full_R_zero_scope=result.get('ok',False) and result['reason'] in ('residual_tube','outside_D0'))
                if record['full_R_zero_scope']:
                    ctx.prec=160;c,h=box(row)
                    replay=residual_lift.certify_f6(c,h,rows=rr,cols=cc,depth=14,maxlabels=512,pair_budget=150000,triple_budget=100000)
                    assert replay['ok'] and replay['reason'] in ('residual_tube','outside_D0');record['replay160']=replay;ctx.prec=96
                out.write(json.dumps(record)+'\n');out.flush();print(json.dumps(record),flush=True)
        else:
            sample=[dict(cell=int(f[0]),job=int(f[1]),level=int(f[2]),theta=list(map(float,f[3:])))
                    for f in map(str.split,(source/'layer2_inventory_20260929a/sample.txt').open())]
            diagnostics=list(csv.DictReader((source/'classification512_atlas.tsv').open(),delimiter='\t'))
            bytheta={tuple(float(d['t'+str(i)]) for i in range(1,5)):d for d in diagnostics}
            assert len(bytheta)==len(diagnostics)==len(sample)
            assert set(bytheta)=={tuple(r['theta']) for r in sample}
            for row in sample:
                d=bytheta[tuple(row['theta'])]
                assert int(d['level'])==row['level']
                if not (int(d['nD0'])==0 and float(d['Rmin'])<=0<=float(d['Rmax']) and float(d['atlas_dist_rad'])<=2*math.pi/512):continue
                c,h=box(row);attempts=[]
                for threshold in (arb(1),arb(1)/64,arb(1)/4096):
                    start=time.process_time();result=second_pass.certify_box(c,h,max_depth=8,node_budget=511,threshold=threshold)
                    record=dict(threshold=str(threshold),certificate=result,cpu_seconds=time.process_time()-start)
                    if result['ok']:
                        ctx.prec=160;c160,h160=box(row);start=time.process_time()
                        assert second_pass.replay(c160,h160,result)
                        record.update(replay_precision=160,replay_cpu_seconds=time.process_time()-start);ctx.prec=96
                    attempts.append(record)
                    if result['ok']:break
                record=dict(row,diagnostic=d,attempts=attempts)
                out.write(json.dumps(record)+'\n');out.flush();print(row['cell'],[(r['threshold'],r['certificate']['ok'],round(r['cpu_seconds'],3)) for r in attempts],flush=True)
if __name__=='__main__':main()
