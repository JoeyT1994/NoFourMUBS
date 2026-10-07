"""Verified global-frontier exclusions from the macroscopic scalar regions."""
from pathlib import Path
import json,gzip,hashlib,time
from flint import arb,ctx
from complementary_scalar_rule import polynomials
from scalar_bernstein import ScalarBernstein
from positive_scalar_rule import bernstein
from practical_scalar_regions import certificate
import exact_algebra
HERE=Path(__file__).resolve().parent
def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def run():
    ctx.prec=128;proof=certificate();start=time.monotonic()
    prior=json.loads((HERE/'global_positive_extension.json').read_text())
    for name,h in {**prior['inputs'],**prior['sources']}.items():assert digest(HERE/name)==h
    old=set(json.loads((HERE/'global_dual_extension.json').read_text())['removed_parents'])
    for name in ['global_complementary_extension.json','global_positive_extension.json']:
        old.update(r['path'] for r in json.loads((HERE/name).read_text())['excluded'])
    with gzip.open(HERE/'global_scalar24_open.jsonl.gz','rt') as f:base=[json.loads(x)['path'] for x in f]
    paths=[p for p in base if p not in old];assert len(paths)==prior['remaining_open']
    polys=polynomials();polys['p']=polys['p_minus_5']+5;bounds={};audits={}
    for name in ['p','J']:
        T=ScalarBernstein(6,polys[name]);out=[];audit=[]
        for k in range(0,len(paths),128):
            batch=paths[k:k+128];co=T.coefficients(batch)
            check=k in [0,(len(paths)//2//128)*128,((len(paths)-1)//128)*128]
            bb=T.enclosures(co,audit=check)
            assert all(lo.is_finite() and hi.is_finite() for lo,hi in bb)
            if check:T.audit_coefficients(batch[0],co[0]);audit.append(batch[0])
            out+=bb
        bounds[name]=out;audits[name]=audit
        print('Enclosed',name,'seconds',time.monotonic()-start,flush=True)
    # 25-12 J p(9-p)(5-p), in powers of (p,J).
    small=[((0,0),25),((1,1),-540),((2,1),168),((3,1),-12)]
    removed=[];counts=dict(absolute_J=0,small_p=0);a=arb(21)/8
    for index,path in enumerate(paths):
        pp,jp=bounds['p'][index],bounds['J'][index]
        if jp[0]>=a or jp[1]<=-a:
            removed.append(dict(path=path,reason='absolute_J',J=list(map(str,jp))));counts['absolute_J']+=1
        elif pp[0]>0 and pp[1]<5 and jp[0]>=0:
            if bernstein([pp,jp],small,False)[1]>=0:continue
            lo,hi=bernstein([pp,jp],small,True)
            if hi<0:
                removed.append(dict(path=path,reason='small_p',p=list(map(str,pp)),J=list(map(str,jp)),bound=[str(lo),str(hi)]));counts['small_p']+=1
    excluded={r['path'] for r in removed};assert len(excluded)==len(removed)
    assert excluded<=set(paths) and excluded.isdisjoint(old)
    remaining=[p for p in paths if p not in excluded]
    assert sorted(remaining+list(excluded)+list(old))==sorted(base)
    files=['refine_scalar_regions.py','practical_scalar_regions.py','practical_scalar_regions.json','positive_scalar_rule.py','complementary_scalar_rule.py','scalar_bernstein.py','seed_bernstein.py','seed_taylor.py','reconstruction_polynomials.py',exact_algebra.__file__]
    result=dict(status='PASS_PARTIAL_GLOBAL_COVER',global_confinement_proved=False,cutoff=5,
        base_open=len(paths),new_closed=len(removed),remaining_open=len(remaining),total_closed=prior['total_closed']+len(removed),
        exact_partition_verified=True,counts=counts,all_accepted_polynomial_bounds_outward_Arb=True,
        independent_phase_Arb_audits=audits,excluded=removed,seconds=time.monotonic()-start,
        inputs={name:digest(HERE/name) for name in ['global_positive_extension.json','global_complementary_extension.json','global_dual_extension.json','global_scalar24_open.jsonl.gz']},
        sources={name:digest(HERE/name) for name in files})
    (HERE/'global_scalar_regions_extension.json').write_text(json.dumps(result,indent=2)+'\n')
    progress=json.loads((HERE/'CURRENT_PROGRESS.json').read_text())
    assert progress['open']==len(paths) and progress['closed']==prior['total_closed']
    progress['open']=len(remaining);progress['closed']=result['total_closed']
    progress['reports']['global_scalar_regions_extension.json']=digest(HERE/'global_scalar_regions_extension.json')
    progress['new_receipts']['practical_scalar_regions.json']=digest(HERE/'practical_scalar_regions.json')
    (HERE/'CURRENT_PROGRESS.json').write_text(json.dumps(progress,indent=2)+'\n')
    print('New closed',len(removed),'open',len(remaining),counts,flush=True)

if __name__=='__main__':run()
