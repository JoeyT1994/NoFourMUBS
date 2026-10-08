"""Exhaustively apply sharper necessary-condition bounds to a saved cover."""
from pathlib import Path
from fractions import Fraction as Q
from collections import Counter
import gzip,hashlib,json,shutil,time
from flint import arb
from scalar_bernstein import ScalarBernstein,conditions
HERE=Path(__file__).resolve().parent

def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
    prefix='global_bernstein24';out='global_scalar24'
    previous=json.loads((HERE/(prefix+'_receipt.json')).read_text())
    for n,h in previous['outputs'].items():assert digest(HERE/n)==h
    ic=HERE/(prefix+'_closed.jsonl.gz');io=HERE/(prefix+'_open.jsonl.gz')
    with gzip.open(ic,'rt') as f:old=[json.loads(line)['path'] for line in f]
    with gzip.open(io,'rt') as f:paths=[json.loads(line)['path'] for line in f]
    whole=sorted(old+paths);assert len(whole)==len(set(whole))
    assert all(not b.startswith(a) for a,b in zip(whole,whole[1:]))
    depth=max(map(len,whole));assert sum(2**(depth-len(p)) for p in whole)==2**depth
    assert all(len(p)==24 for p in paths)
    original=len(paths);outclosed=HERE/(out+'_closed.jsonl.gz');outopen=HERE/(out+'_open.jsonl.gz')
    assert not outclosed.exists() and not outopen.exists()
    shutil.copyfile(ic,outclosed);polys=conditions();stages=[];start=time.monotonic();new=[]
    names=['order_1','order_3','signed_complement','order_0','order_2','order_4','eta_plus','eta_minus','R_difference']
    with gzip.open(outclosed,'at') as fc:
        for name in names:
            before=len(paths);T=ScalarBernstein(6,polys[name]);retained=[];audit=[];stage_start=time.monotonic();last=stage_start
            for k in range(0,before,128):
                batch=paths[k:k+128];co=T.coefficients(batch)
                do_audit=k in [0,(before//2//128)*128,((before-1)//128)*128]
                bounds=T.enclosures(co,audit=do_audit)
                if do_audit:T.audit_coefficients(batch[0],co[0]);audit.append(batch[0])
                for path,(lo,hi) in zip(batch,bounds):
                    reject=(lo>arb(5).sqrt() or hi<-arb(5).sqrt()) if name=='signed_complement' else hi<0
                    if reject:
                        fc.write(json.dumps(dict(path=path,reason='Bernstein_'+name,bounds=[str(lo),str(hi)]),separators=(',',':'))+'\n');new.append(path)
                    else:retained.append(path)
                if time.monotonic()-last>20:
                    print(name,'processed',min(k+128,before),'/',before,'excluded',k+len(batch)-len(retained),flush=True);last=time.monotonic()
            stages.append(dict(name=name,input=before,closed=before-len(retained),open=len(retained),
                remainder=str(T.remainder),independent_Arb_audits=audit,seconds=time.monotonic()-stage_start))
            print(stages[-1],flush=True);paths=retained
    with gzip.open(outopen,'wt') as f:
        for path in paths:f.write(json.dumps(dict(path=path),separators=(',',':'))+'\n')
    # Verify the final tree, not only its incoming partition.
    final=sorted(old+new+paths);assert final==whole
    sources=['refine_scalar_bernstein.py','scalar_bernstein.py','seed_bernstein.py','seed_taylor.py','reconstruction_polynomials.py']
    result=dict(status='OPEN',scope='Complete global partition under canonical ordering and strict maximality, M<5',global_confinement_proved=False,
        complete_partition_verified=True,input_open=original,new_closed=len(new),total_closed=len(old)+len(new),open=len(paths),depth=24,
        open_volume_fraction=str(Q(len(paths),2**24)),stages=stages,seconds=time.monotonic()-start,
        inputs={p.name:digest(p) for p in [ic,io]},outputs={p.name:digest(p) for p in [outclosed,outopen]},
        sources={name:digest(HERE/name) for name in sources})
    (HERE/(out+'_receipt.json')).write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2),flush=True)
if __name__=='__main__':main()
