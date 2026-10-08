"""Retained T2 certificates on exact collars inside all 54 F6-touching cells.

The original enlarged parent is partitioned exactly; all unproved slabs
remain explicitly open. No global layer closure is claimed.
"""
import argparse,hashlib,json,math,sys,time
from fractions import Fraction as Q
from pathlib import Path
ROOT=Path(__file__).resolve().parents[3]
sys.path.insert(0,str(ROOT/'ProvenResults/CampaignLayerCoverage'))
from collar import partition,audit,normalize
sys.path.insert(0,str(ROOT/'ProvenResults/FourierNeighbourhood/SeedLifting'))
import near_f6,zero_neighbourhood,analytic_radius_extension
from flint import arb,ctx

def aq(q):
    q=Q(q);return arb(q.numerator)/q.denominator
def bounds_json(b):return [[str(a),str(z)] for a,z in b]
def certify(bounds):
    c=[aq((a+b)/2) for a,b in bounds];h=[aq((b-a)/2) for a,b in bounds]
    for name,fun in [('near_f6',near_f6.certify_box),('analytic_radius_extension',analytic_radius_extension.certify_box),('zero_neighbourhood',zero_neighbourhood.certify_box)]:
        result=fun(c,h)
        if result['ok']:return dict(engine=name,certificate=result)
    return None

def generate(row):
    level=row['level'];radius=math.nextafter(math.pi/2**level+2**-40,math.inf)
    assert arb(radius)>arb.pi()/2**level+arb(2)**-40
    outer=tuple((Q(x)-Q(radius),Q(x)+Q(radius)) for x in row['theta'])
    center=[]
    for n in row['reference_pi_over_3']:
        ref=arb(n)*arb.pi()/3
        mid=(Q(str(ref.lower().fmpq()))+Q(str(ref.upper().fmpq())))/2
        center.append(Q(round(mid*2**96),2**96))
    # Selection is heuristic; outward T2 acceptance decides success.
    start=time.process_time();chosen=None
    for exponent in range(7,56):
        h=Q(1,2**exponent)
        inner=tuple((max(a,c-h),min(b,c+h)) for (a,b),c in zip(outer,center))
        result=certify(inner)
        if result is not None:chosen=(inner,result,exponent);break
    if chosen is None:raise AssertionError(('No retained T2 collar',row['cell']))
    inner,result,exponent=chosen
    leaves=partition(outer,inner);audit(outer,inner,leaves)
    assert all(aq(a)<=arb(n)*arb.pi()/3<=aq(b) for (a,b),n in zip(inner,row['reference_pi_over_3']))
    return dict(cell=row['cell'],job=row['job'],level=level,theta=row['theta'],
        reference_pi_over_3=row['reference_pi_over_3'],outer=bounds_json(outer),inner=bounds_json(inner),
        leaves=[dict(bounds=bounds_json(b),status='T2' if i==0 else 'open') for i,b in enumerate(leaves)],
        T2=result,chosen_exponent=exponent,cpu_seconds=time.process_time()-start,closure='OPEN')

def replay(row):
    outer,inner=normalize(row['outer']),normalize(row['inner'])
    r=arb.pi()/2**row['level']+arb(2)**-40
    assert all(aq(a)<=arb(x)-r and arb(x)+r<=aq(b) for (a,b),x in zip(outer,row['theta']))
    audit(outer,inner,[x['bounds'] for x in row['leaves']])
    assert row['leaves'][0]['bounds']==row['inner'] and row['leaves'][0]['status']=='T2'
    assert all(x['status']=='open' for x in row['leaves'][1:])
    assert all(aq(a)<=arb(n)*arb.pi()/3<=aq(b) for (a,b),n in zip(inner,row['reference_pi_over_3']))
    assert certify(inner) is not None

def main():
    p=argparse.ArgumentParser();p.add_argument('input',type=Path);p.add_argument('output',type=Path);p.add_argument('--replay',action='store_true')
    p.add_argument('--survivors',required=True,type=Path,help='Bind every ID/job/level/centre to the frozen survivor inventory')
    a=p.parse_args();ctx.prec=256 if a.replay else 160
    records=list(map(json.loads,a.input.open())) if a.replay else json.loads(a.input.read_text())['candidates']
    byid={r['cell']:r for r in records};assert len(byid)==len(records)
    seen=set()
    for line in a.survivors.open():
        f=line.split();cid=int(f[0])
        if cid not in byid:continue
        r=byid[cid];assert cid not in seen;seen.add(cid)
        assert int(f[1])==r['job'] and int(f[2])==r['level'] and list(map(float,f[3:]))==r['theta']
    assert seen==set(byid)
    if a.replay:
        start=time.process_time()
        for row in records:replay(row)
        result=dict(status='PASS_PARTIAL_COVERS',parents=len(records),certified_T2_regions=len(records),
            open_slabs=sum(len(r['leaves'])-1 for r in records),whole_parent_closures=0,precision=256,
            input_sha256=hashlib.sha256(a.input.read_bytes()).hexdigest(),cpu_seconds=time.process_time()-start,
            survivors_sha256=hashlib.sha256(a.survivors.read_bytes()).hexdigest())
        with a.output.open('x') as f:json.dump(result,f,indent=2);f.write('\n')
        print(json.dumps(result));return
    rows=records
    with a.output.open('x') as f:
        for source in rows:
            row=generate(source);f.write(json.dumps(row)+'\n');f.flush()
    print('Certified',len(rows),'T2 inner regions; all outer slabs remain open')

if __name__=='__main__':main()
