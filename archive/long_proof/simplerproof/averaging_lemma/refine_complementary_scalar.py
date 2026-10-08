"""Exhaustive, certified negative-J consequence on the current frontier."""
from pathlib import Path
import gzip,hashlib,json,time
from flint import ctx
from complementary_scalar_rule import polynomials,verify_identity
from scalar_bernstein import ScalarBernstein
import exact_algebra
HERE=Path(__file__).resolve().parent
def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def run():
    ctx.prec=128;assert verify_identity();start=time.monotonic()
    prior=json.loads((HERE/'global_dual_extension.json').read_text())
    for name,h in prior['inputs'].items():assert digest(HERE/name)==h
    with gzip.open(HERE/'global_scalar24_open.jsonl.gz','rt') as f:base=[json.loads(line)['path'] for line in f]
    old=set(prior['removed_parents']);assert old<=set(base)
    paths=[p for p in base if p not in old];assert len(paths)==prior['remaining_open']
    incoming=paths.copy();polys=polynomials();audits={};negative={};removed=[];stages=[]
    for name in ['J','p_minus_5','negative_branch']:
        T=ScalarBernstein(6,polys[name]);retained=[];audit=[];before=len(paths)
        for k in range(0,before,128):
            batch=paths[k:k+128];co=T.coefficients(batch)
            do_audit=k in [0,(before//2//128)*128,((before-1)//128)*128]
            bounds=T.enclosures(co,audit=do_audit)
            if do_audit:
                T.audit_coefficients(batch[0],co[0]);audit.append(batch[0])
            for path,(lo,hi) in zip(batch,bounds):
                assert lo.is_finite() and hi.is_finite()
                if name=='J':
                    if hi<0:negative[path]=[str(lo),str(hi)];retained.append(path)
                elif (hi<=0 if name=='p_minus_5' else hi<0):
                    removed.append(dict(path=path,reason='negative_J_'+name,J=negative[path],bound=[str(lo),str(hi)]))
                else:retained.append(path)
        paths=retained;audits[name]=audit
        stages.append(dict(name=name,examined=before,retained_for_next_stage=len(paths),remainder=str(T.remainder)))
        print(stages[-1],'seconds',time.monotonic()-start,flush=True)
    excluded={r['path'] for r in removed};assert len(excluded)==len(removed) and excluded<=set(incoming)
    remaining=[p for p in incoming if p not in excluded]
    assert set(remaining).isdisjoint(excluded)
    assert sorted(remaining+list(excluded)+list(old))==sorted(base)
    sources=['refine_complementary_scalar.py','complementary_scalar_rule.py','scalar_bernstein.py','seed_bernstein.py','seed_taylor.py','reconstruction_polynomials.py',exact_algebra.__file__]
    result=dict(status='PASS_PARTIAL_GLOBAL_COVER',global_confinement_proved=False,cutoff=5,
        scope='Additional negative-J scalar exclusions; exhaustive evaluation of the current frontier',
        base_open=len(incoming),new_closed=len(removed),remaining_open=len(remaining),
        total_closed=prior['total_closed']+len(removed),exact_partition_verified=True,
        exact_identity_verified=True,independent_Arb_audits=audits,stages=stages,
        excluded=removed,seconds=time.monotonic()-start,
        inputs={'global_dual_extension.json':digest(HERE/'global_dual_extension.json'),
                'global_scalar24_open.jsonl.gz':digest(HERE/'global_scalar24_open.jsonl.gz')},
        sources={name:digest(HERE/name) for name in sources})
    (HERE/'global_complementary_extension.json').write_text(json.dumps(result,indent=2)+'\n')
    print('New closed',len(removed),'remaining open',len(remaining),flush=True)
    progress=json.loads((HERE/'CURRENT_PROGRESS.json').read_text())
    assert progress['open']==len(incoming) and progress['closed']==prior['total_closed']
    progress['open']=len(remaining);progress['closed']=result['total_closed']
    progress['reports']['global_complementary_extension.json']=digest(HERE/'global_complementary_extension.json')
    (HERE/'CURRENT_PROGRESS.json').write_text(json.dumps(progress,indent=2)+'\n')

if __name__=='__main__':run()
