"""Guarded replay of a selected ledger, preserving all historical receipts.

Source hashes are checked before and after the single Julia process. Failed
acceptances become open leaves in a NEW ledger; they never inherit old PASS.
"""
import argparse,hashlib,json,os,shutil,subprocess,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[3]
APPROVED='e18d1563b7413ad70423ed1dc16a3a785b929607611aac036fe61048a77df984'
def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def rows(p):return [json.loads(l) for l in p.open()] if p.exists() else []
def save(p,data):
    with p.open('x') as f:
        for r in data:f.write(json.dumps(r)+'\n')
def source_hashes():
    paths=list((ROOT/'NumericalCampaign/Certification').glob('*.jl'))
    paths += [ROOT/'NumericalCampaign/Campaign/driver.jl',Path(__file__),Path(__file__).with_name('guarded_replay.jl')]
    return {str(p.relative_to(ROOT)):digest(p) for p in sorted(paths)}
def main():
    p=argparse.ArgumentParser();p.add_argument('ledger',type=Path);p.add_argument('output',type=Path)
    a=p.parse_args();a.output.mkdir(parents=True,exist_ok=False)
    sources=source_hashes();assert sources['NumericalCampaign/Certification/fasttm.jl']==APPROVED
    (a.output/'source_hashes.json').write_text(json.dumps(sources,indent=2)+'\n')
    accepted=[];folders=[]
    for folder in sorted(a.ledger.iterdir()):
        if not folder.is_dir() or not (folder/'done.json').exists():continue
        folders.append(folder)
        for r in rows(folder/'cover.jsonl'):
            if r.get('status') in ('certified','F_out','R_out','BC_out','D0_out') and r.get('method')!='arb_F_order':
                accepted.append(r)
    assert len({(r['cell'],tuple(r['path'])) for r in accepted})==len(accepted)
    inp=a.output/'input.txt'
    with inp.open('x') as f:
        for r in accepted:
            path=','.join(map(str,r['path'])) or 'root'
            f.write(' '.join(map(str,[r['cell'],path,r['method'],r['radius'],*r['theta']]))+'\n')
    env=dict(os.environ,CERT_COVER_ACCELERATED='1',OPENBLAS_NUM_THREADS='1',JULIA_NUM_THREADS='1',JULIA_PKG_PRECOMPILE_AUTO='0')
    cmd=[os.environ.get('JULIA',str(Path.home()/'.juliaup/bin/julia')),'--startup-file=no',
         '--project='+str(ROOT/'NumericalCampaign/Certification/jlenv_cluster'),
         str(Path(__file__).with_name('guarded_replay.jl')),str(inp.resolve()),str((a.output/'replayed.jsonl').resolve())]
    start=time.monotonic()
    with (a.output/'replay.log').open('x') as f:subprocess.run(cmd,env=env,stdout=f,stderr=subprocess.STDOUT,check=True)
    assert source_hashes()==sources,'Sources changed: discard this replay'
    replay=rows(a.output/'replayed.jsonl');index={(r['cell'],tuple(r['path'])):r for r in replay}
    assert len(index)==len(replay)==len(accepted)
    for r in accepted:
        rr=index[r['cell'],tuple(r['path'])]
        assert all(rr[k]==r[k] for k in ('theta','radius','method')) and rr['fasttm_sha256']==APPROVED
        assert type(rr['ok']) is bool
    ledger=a.output/'ledger';ledger.mkdir()
    for src in folders:
        dst=ledger/src.name;dst.mkdir()
        for name in ('header.json','done.json','second.jsonl'):shutil.copyfile(src/name,dst/name)
        cover=rows(src/'cover.jsonl');t2=rows(src/'t2.jsonl');side=rows(src/'sideleaf.jsonl');passed=[]
        for r in cover:
            if 'path' not in r:continue
            key=(r['cell'],tuple(r['path']))
            if key not in index:continue
            rr=index[key]
            if rr['ok']:passed.append(rr)
            else:
                r.update(status='open',method='guarded_replay_failed')
                t2.append(dict(cell=r['cell'],path=r['path'],result=None))
        for name,data in [('cover',cover),('t2',t2),('sideleaf',side),('replayed',passed)]:save(dst/(name+'.jsonl'),data)
    report=dict(status='GUARDED_REPLAY_COMPLETE',expected=len(accepted),passed=sum(r['ok'] for r in replay),
                failed=sum(not r['ok'] for r in replay),seconds=time.monotonic()-start,
                source_hashes_sha256=digest(a.output/'source_hashes.json'),replay_sha256=digest(a.output/'replayed.jsonl'),
                scope='Guarded acceptance on historical coordinates; ID migration and guarded inventory audit still required.')
    (a.output/'receipt.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report),flush=True)
if __name__=='__main__':main()
