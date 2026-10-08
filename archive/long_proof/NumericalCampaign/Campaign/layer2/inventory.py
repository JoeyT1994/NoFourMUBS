"""Freeze the complete final layer survivor inventory and a seeded uniform sample.

Read-only on production data. Refuses missing, duplicate or malformed outcomes.
Run on rusty: python3 inventory.py PACKAGE NEW_OUTPUT_DIRECTORY [sample_size]
"""
import argparse,hashlib,json,mmap,random,sys
from pathlib import Path

def digest(p):
    h=hashlib.sha256()
    with p.open('rb') as f:
        for b in iter(lambda:f.read(8*1024*1024),b''):h.update(b)
    return h.hexdigest()

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('package',type=Path);p.add_argument('output',type=Path)
    p.add_argument('sample_size',type=int,nargs='?',default=512)
    p.add_argument('--guarded',action='store_true',help='Verify guarded package source manifest and mark run-of-record provenance')
    a=p.parse_args();pkg,out,n=a.package,a.output,a.sample_size
    provenance={}
    if a.guarded:
        approved='e18d1563b7413ad70423ed1dc16a3a785b929607611aac036fe61048a77df984'
        manifest=pkg/'MANIFEST.sha256';entries={}
        for line in manifest.read_text().splitlines():
            h,name=line.split(maxsplit=1);name=name.lstrip('*')
            assert name not in entries and not Path(name).is_absolute() and '..' not in Path(name).parts
            entries[name]=h;assert digest(pkg/name)==h,('Package source mismatch',name)
        assert entries['code/Certification/fasttm.jl']==approved
        provenance=dict(run_of_record='guarded_2026-09-29',fasttm_sha256=approved,
                        guarded_package_manifest_sha256=digest(manifest),guarded_package=str(pkg.resolve()))
    out.mkdir(parents=True,exist_ok=False)
    layer=pkg/'layer.txt';N=layer.stat().st_size//121
    assert layer.stat().st_size==121*N
    seen=bytearray(N);survivors=[];sources={};excluded=0
    with layer.open('rb') as f,mmap.mmap(f.fileno(),0,access=mmap.ACCESS_READ) as mm:
        for p in sorted((pkg/'results/layer').glob('l_*.jsonl')):
            h=hashlib.sha256()
            with p.open('rb') as r:
                for line in r:
                    h.update(line);row=json.loads(line);i=row['cell']
                    assert type(i) is int and 1<=i<=N and not seen[i-1],(p,i)
                    assert type(row['ok']) is bool
                    seen[i-1]=1
                    rec=mm[(i-1)*121:i*121];fields=rec.split()
                    assert len(fields)==7 and int(fields[0])==i
                    assert int(fields[1])==row['job'] and int(fields[2])==row['level']
                    assert list(map(float,fields[3:]))==row['theta']
                    if row['ok']:excluded+=1;continue
                    survivors.append((i,rec))
            sources[str(p.relative_to(pkg))]=h.hexdigest()
        assert all(seen),('missing outcomes',N-sum(seen))
    survivors.sort();assert survivors
    with (out/'survivors.txt').open('xb') as f:
        for _,rec in survivors:f.write(rec)
    seed=2026092902
    n=min(n,len(survivors));sample=random.Random(seed).sample(survivors,n)
    with (out/'sample.txt').open('xb') as f:
        for _,rec in sample:f.write(rec)
    manifest=dict(status='PASS_INVENTORY_ONLY',layer_records=N,excluded=excluded,
        survivors=len(survivors),layer_sha256=digest(layer),result_sources=sources,
        survivors_sha256=digest(out/'survivors.txt'),sample_sha256=digest(out/'sample.txt'),
        sample_seed=seed,sample_size=n,sample_ids=[i for i,_ in sample],**provenance)
    (out/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({k:v for k,v in manifest.items() if k not in ('result_sources','sample_ids')}),flush=True)

if __name__=='__main__':main()
