"""Apply the practical positive-J scalar inequality to the entire frontier."""
from pathlib import Path
import json,gzip,hashlib,time
from flint import ctx
from complementary_scalar_rule import polynomials,verify_identity
from scalar_bernstein import ScalarBernstein
from positive_scalar_rule import coefficients,bernstein,verify
import exact_algebra
HERE=Path(__file__).resolve().parent
def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def run():
    ctx.prec=128;assert verify_identity() and verify();start=time.monotonic()
    prior=json.loads((HERE/'global_complementary_extension.json').read_text())
    for name,h in {**prior['inputs'],**prior['sources']}.items():assert digest(HERE/name)==h
    old=json.loads((HERE/'global_dual_extension.json').read_text())['removed_parents']
    old=set(old)|{r['path'] for r in prior['excluded']}
    with gzip.open(HERE/'global_scalar24_open.jsonl.gz','rt') as f:base=[json.loads(line)['path'] for line in f]
    paths=[p for p in base if p not in old];assert len(paths)==prior['remaining_open']
    bounds={};audits={};polys=polynomials();polys['p']=polys['p_minus_5']+5
    for name in ['J','p']:
        T=ScalarBernstein(6,polys[name]);out=[];audit=[]
        for k in range(0,len(paths),128):
            batch=paths[k:k+128];co=T.coefficients(batch)
            check=k in [0,(len(paths)//2//128)*128,((len(paths)-1)//128)*128]
            vals=T.enclosures(co,audit=check)
            if check:T.audit_coefficients(batch[0],co[0]);audit.append(batch[0])
            assert all(lo.is_finite() and hi.is_finite() for lo,hi in vals)
            out+=vals
        bounds[name]=out;audits[name]=audit
        print('Enclosed',name,len(out),'seconds',time.monotonic()-start,flush=True)
    co=coefficients();removed=[];candidates=0;last=time.monotonic()
    for index,path in enumerate(paths):
        jp=bounds['J'][index];pp=bounds['p'][index]
        if not(jp[0]>0 and pp[1]<=7):continue
        candidates+=1
        # Floating bounds are only a proposal filter. All accepted boxes
        # are independently enclosed again with outward Arb arithmetic.
        if bernstein([pp,jp],co,False)[1]>=0:continue
        lo,hi=bernstein([pp,jp],co,True)
        if hi<0:removed.append(dict(path=path,p=list(map(str,pp)),J=list(map(str,jp)),Q=[str(lo),str(hi)]))
        if time.monotonic()-last>20:
            print('Processed',index+1,'new exclusions',len(removed),flush=True);last=time.monotonic()
    excluded={r['path'] for r in removed};assert len(excluded)==len(removed)
    assert excluded<=set(paths) and excluded.isdisjoint(old)
    remaining=[p for p in paths if p not in excluded]
    assert sorted(remaining+list(excluded)+list(old))==sorted(base)
    files=['refine_positive_scalar.py','positive_scalar_rule.py','complementary_scalar_rule.py','scalar_bernstein.py','seed_bernstein.py','seed_taylor.py','reconstruction_polynomials.py',exact_algebra.__file__]
    result=dict(status='PASS_PARTIAL_GLOBAL_COVER',global_confinement_proved=False,cutoff=5,
        scope='Positive-J Q(p,J) exclusions, with outward two-variable polynomial Bernstein verification',
        base_open=len(paths),eligible_boxes=candidates,new_closed=len(removed),remaining_open=len(remaining),
        total_closed=prior['total_closed']+len(removed),exact_partition_verified=True,
        independent_phase_Arb_audits=audits,all_accepted_Q_controls_outward_Arb=True,
        excluded=removed,seconds=time.monotonic()-start,
        inputs={name:digest(HERE/name) for name in ['global_complementary_extension.json','global_dual_extension.json','global_scalar24_open.jsonl.gz']},
        sources={name:digest(HERE/name) for name in files})
    (HERE/'global_positive_extension.json').write_text(json.dumps(result,indent=2)+'\n')
    progress=json.loads((HERE/'CURRENT_PROGRESS.json').read_text())
    assert progress['open']==len(paths) and progress['closed']==prior['total_closed']
    progress['open']=len(remaining);progress['closed']=result['total_closed']
    progress['reports']['global_positive_extension.json']=digest(HERE/'global_positive_extension.json')
    (HERE/'CURRENT_PROGRESS.json').write_text(json.dumps(progress,indent=2)+'\n')
    print('New exclusions',len(removed),'open',len(remaining),'seconds',time.monotonic()-start,flush=True)

if __name__=='__main__':run()
