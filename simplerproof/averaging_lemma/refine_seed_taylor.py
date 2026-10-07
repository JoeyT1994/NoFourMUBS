"""Apply certified Taylor R bounds to EVERY leaf of a saved global frontier.

No near-F6 terminal. All unexcluded leaves remain open. The inherited
partition is verified by exact prefix and dyadic-volume checks.
"""
import argparse,gzip,hashlib,json,shutil,time
from collections import Counter
from fractions import Fraction as Q
from pathlib import Path
from seed_taylor import Taylor
HERE=Path(__file__).resolve().parent

def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
    ap=argparse.ArgumentParser();ap.add_argument('--input',default='global_coarse24');ap.add_argument('--output',default='global_taylor24');args=ap.parse_args()
    inp=HERE/args.input;out=HERE/args.output
    ic=Path(str(inp)+'_closed.jsonl.gz');io=Path(str(inp)+'_open.jsonl.gz')
    with gzip.open(ic,'rt') as f:old=[json.loads(x)['path'] for x in f]
    with gzip.open(io,'rt') as f:paths=[json.loads(x)['path'] for x in f]
    whole=sorted(old+paths)
    assert len(whole)==len(set(whole))
    assert all(not b.startswith(a) for a,b in zip(whole,whole[1:]))
    assert sum((Q(1,2**len(p)) for p in whole),Q(0))==1
    del whole,old
    levels={len(x) for x in paths};assert len(levels)==1
    depth=levels.pop();assert depth%4==0
    T=Taylor(depth//4);closed=0;counts=Counter();audit=[];start=time.monotonic();last=start
    oc=Path(str(out)+'_closed.jsonl.gz');oo=Path(str(out)+'_open.jsonl.gz')
    assert not oc.exists() and not oo.exists()
    shutil.copyfile(ic,oc)
    with gzip.open(oc,'at') as fc,gzip.open(oo,'wt') as fo:
        for k in range(0,len(paths),256):
            batch=paths[k:k+256];co=T.coefficients(batch)
            if k in [0,(len(paths)//2//256)*256,((len(paths)-1)//256)*256]:
                T.audit_coefficients(batch[0],co[0]);audit.append(batch[0])
            for p,c in zip(batch,co):
                lo,hi=T.enclosure(c)
                reason='R_Taylor_negative' if hi<0 else 'R_Taylor_at_least_5' if lo>=5 else None
                if reason:
                    fc.write(json.dumps(dict(path=p,reason=reason,bound=[str(lo),str(hi)]),separators=(',',':'))+'\n');closed+=1;counts[reason]+=1
                else:fo.write(json.dumps(dict(path=p),separators=(',',':'))+'\n')
            if time.monotonic()-last>20:
                print('processed',min(k+256,len(paths)),'of',len(paths),'new closed',closed,'seconds',round(time.monotonic()-start,1),flush=True);last=time.monotonic()
    receipt=dict(status='OPEN',scope='Global seed partition, improved necessary-condition pruning; not confinement',global_confinement_proved=False,
        inherited_partition_verified=True,input_open=len(paths),new_closed=closed,open=len(paths)-closed,
        counts=dict(counts),depth=depth,degree=5,remainder=str(T.remainder),independent_Arb_dot_audits=audit,
        open_volume_fraction=str(Q(len(paths)-closed,2**depth)),seconds=time.monotonic()-start,
        inputs={p.name:digest(p) for p in [ic,io]},outputs={p.name:digest(p) for p in [oc,oo]},
        sources={p.name:digest(p) for p in [Path(__file__),HERE/'seed_taylor.py',HERE.parents[1]/'ProvenResults/FourierCornerRigidity/exact_algebra.py']})
    Path(str(out)+'_receipt.json').write_text(json.dumps(receipt,indent=2)+'\n');print(json.dumps(receipt,indent=2))
if __name__=='__main__':main()
