"""Apply complete Taylor--Bernstein bounds to the entire retained frontier.

Includes the separately replayed division-free parent certificate. Every
other nonexcluded box is retained explicitly; no confinement is assumed.
"""
import gzip,hashlib,json,shutil,time
from collections import Counter
from fractions import Fraction as Q
from pathlib import Path
from seed_bernstein import Bernstein
HERE=Path(__file__).resolve().parent

def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
    names=['global_taylor24_closed.jsonl.gz','global_taylor24_open.jsonl.gz']
    receipt=json.loads((HERE/'global_taylor24_receipt.json').read_text())
    for name in names:assert digest(HERE/name)==receipt['outputs'][name]
    with gzip.open(HERE/names[0],'rt') as f:closed_paths=[json.loads(line)['path'] for line in f]
    with gzip.open(HERE/names[1],'rt') as f:paths=[json.loads(line)['path'] for line in f]
    whole=sorted(closed_paths+paths);assert len(set(whole))==len(whole)
    assert all(not b.startswith(a) for a,b in zip(whole,whole[1:]))
    depth=max(map(len,whole));assert sum(2**(depth-len(p)) for p in whole)==2**depth
    assert all(len(p)==24 for p in paths)
    extension=json.loads((HERE/'dual_partition_extension.json').read_text())
    assert extension['status']=='PASS'
    for name,h in extension['files'].items():assert digest(HERE/name)==h
    dual=json.loads((HERE/'dual_parent_replay.json').read_text())
    assert dual['parent_closed'] and dual['partition_complete'] and not dual['solver_used']
    for name,h in dual['source_sha256'].items():assert digest(HERE/name)==h
    parent=dual['parent'];assert paths.count(parent)==1
    outclosed=HERE/'global_bernstein24_closed.jsonl.gz';outopen=HERE/'global_bernstein24_open.jsonl.gz'
    assert not outclosed.exists() and not outopen.exists()
    shutil.copyfile(HERE/names[0],outclosed)
    T=Bernstein(6);counts=Counter();audit=[];start=time.monotonic();last=start
    with gzip.open(outclosed,'at') as fc,gzip.open(outopen,'wt') as fo:
        for k in range(0,len(paths),128):
            batch=paths[k:k+128];co=T.coefficients(batch)
            do_audit=k in [0,(len(paths)//2//128)*128,((len(paths)-1)//128)*128]
            bounds=T.enclosures(co,audit=do_audit)
            if do_audit:T.audit_coefficients(batch[0],co[0]);audit.append(batch[0])
            for p,(lo,hi) in zip(batch,bounds):
                reason='reconstruction_dual' if p==parent else 'R_Bernstein_negative' if hi<0 else 'R_Bernstein_at_least_5' if lo>=5 else None
                if reason:
                    fc.write(json.dumps(dict(path=p,reason=reason,bounds=[str(lo),str(hi)]),separators=(',',':'))+'\n');counts[reason]+=1
                else:fo.write(json.dumps(dict(path=p),separators=(',',':'))+'\n')
            if time.monotonic()-last>20:
                print('processed',min(k+128,len(paths)),'/',len(paths),'new closed',sum(counts.values()),'seconds',round(time.monotonic()-start,1),flush=True);last=time.monotonic()
    remain=len(paths)-sum(counts.values())
    r=dict(status='OPEN',global_confinement_proved=False,scope='Complete global seed partition with Taylor--Bernstein and reconstruction exclusions',
        inherited_partition_verified=True,input_open=len(paths),new_closed=sum(counts.values()),total_closed=len(closed_paths)+sum(counts.values()),
        open=remain,counts=dict(counts),depth=24,degree=5,Bernstein_controls=1296,remainder=str(T.remainder),
        independent_Arb_audits=audit,open_volume_fraction=str(Q(remain,2**24)),seconds=time.monotonic()-start,
        inputs={name:digest(HERE/name) for name in names+['dual_parent_replay.json','dual_partition_extension.json']},
        outputs={p.name:digest(p) for p in [outclosed,outopen]},
        sources={name:digest(HERE/name) for name in ['refine_seed_bernstein.py','seed_bernstein.py','seed_taylor.py']})
    (HERE/'global_bernstein24_receipt.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(r,indent=2),flush=True)
if __name__=='__main__':main()
