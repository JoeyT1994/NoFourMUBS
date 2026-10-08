"""Proposal-only Fourier fits; acceptance requires complete outward lifts."""
import argparse,json,math,sys,time
from fractions import Fraction as Q
from itertools import permutations,product
from pathlib import Path
import numpy as np
ROOT=Path(__file__).resolve().parents[3]
sys.path.insert(0,str(ROOT/'ProvenResults/FourierNeighbourhood/SeedLifting'))
from branch_reference_lift import certify_box
sys.path.insert(0,str(ROOT/'ProvenResults/CornerBounds/CampaignSecondPass'))
from second_pass import leaf_box,audit_partition
from analytic_targets_pilot import box
from flint import arb,ctx

def maps():
    result={}
    for rr in permutations(range(6),3):
        for cc in permutations(range(6),3):
            key=tuple(((rr[i]-rr[0])*(cc[j]-cc[0])%6,
                (int(rr[i]%3==1)-int(rr[0]%3==1))*((cc[j]%2)-(cc[0]%2)),
                (int(rr[i]%3==2)-int(rr[0]%3==2))*((cc[j]%2)-(cc[0]%2)))
                for i,j in ((1,1),(1,2),(2,1),(2,2)))
            result.setdefault(key,(tuple(rr)+tuple(i for i in range(6) if i not in rr),tuple(cc)+tuple(i for i in range(6) if i not in cc)))
    return [(np.array([v[0]/6 for v in k]),np.array([v[1:] for v in k],dtype=float),rr,cc) for k,(rr,cc) in result.items()]

def propose(centers,allmaps):
    wraps=np.array(list(product((-1,0,1),repeat=4)),dtype=float);best=[]
    for transpose in (False,True):
        x=np.array([float(c)/(2*math.pi) for c in centers]);x=x[[0,2,1,3]] if transpose else x
        x=x%1
        for h,A,rr,cc in allmaps:
            targets=x-h+wraps;parameters=targets@np.linalg.pinv(A).T
            errors=np.sum((parameters@A.T-targets)**2,axis=1);idx=np.argmin(errors)
            a,b=(Q(float(v)).limit_denominator(65536) for v in parameters[idx])
            best.append((float(errors[idx]),str(a),str(b),rr,cc,transpose))
    chosen=[];seen=set()
    for err,a,b,rr,cc,tr in sorted(best):
        k=(a,b,tr)
        if k in seen:continue
        seen.add(k);chosen.append(dict(fit_error_evidence_only=err,a=a,b=b,rows=rr,columns=cc,transpose=tr))
        if len(chosen)==2:break
    return chosen

def test(c,h,proposal):
    return certify_box(c,h,proposal['a'],proposal['b'],rows=proposal['rows'],cols=proposal['columns'],
                       transpose=proposal['transpose'],depth=18,maxlabels=1200,pair_budget=800000,triple_budget=500000)

def main():
    p=argparse.ArgumentParser();p.add_argument('output',type=Path);a=p.parse_args();a.output.mkdir(parents=True,exist_ok=False)
    allmaps=maps();ctx.prec=96
    src=ROOT/'Verification/BranchLayer_guarded_20260930a/target_B_bound_nearzero10.jsonl'
    selected=[r for r in map(json.loads,src.open()) if not any(x['certificate']['ok'] for x in r['attempts'])]
    for row in selected:
        c,h=box(row);leaves=[];start=time.process_time()
        with (a.output/('cell_'+str(row['cell'])+'.jsonl')).open('x') as out:
            for bits in product('01',repeat=4):
                path=''.join(bits);cc,hh=leaf_box(c,h,path);attempts=[]
                for proposal in propose(cc,allmaps):
                    result=test(cc,hh,proposal);record=dict(proposal=proposal,certificate=result)
                    if result['ok']:
                        ctx.prec=160;c160,h160=box(row);ccc,hhh=leaf_box(c160,h160,path);replayed=test(ccc,hhh,proposal)
                        assert replayed['ok'];record['replay160']=replayed;ctx.prec=96
                    attempts.append(record)
                    if result['ok']:break
                leaf=dict(path=path,accepted=any(x['certificate']['ok'] for x in attempts),attempts=attempts)
                leaves.append(leaf);out.write(json.dumps(leaf)+'\n');out.flush()
        audit_partition(r['path'] for r in leaves)
        report=dict(cell=row['cell'],input=row,accepted=sum(r['accepted'] for r in leaves),open=sum(not r['accepted'] for r in leaves),
                    cpu_seconds=time.process_time()-start,status='PASS_PARTIAL_COVER' if any(r['accepted'] for r in leaves) else 'OPEN')
        (a.output/('cell_'+str(row['cell'])+'.summary.json')).write_text(json.dumps(report,indent=2)+'\n')
        print({k:v for k,v in report.items() if k!='input'},flush=True)
if __name__=='__main__':main()
