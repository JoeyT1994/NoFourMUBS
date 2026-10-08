"""Guard provenance rejection and coordinate-bound migration controls."""
import copy,hashlib,json,subprocess,sys,tempfile
from pathlib import Path
from audit import require_guarded_replay,APPROVED_FASTTM
ROOT=Path(__file__).resolve().parents[3]
HERE=Path(__file__).parent
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
    record=dict(ok=True,method='R_out',fasttm_sha256=APPROVED_FASTTM,guarded_models=10,
                guard_max_order=8,guard_max_norm=100.,failure='')
    require_guarded_replay(record)
    for change in ({'fasttm_sha256':'historical'},{'guarded_models':0},{'guard_max_order':13},
                   {'guard_max_norm':float('inf')},{'failure':'invariant violation'},{'ok':False}):
        bad=dict(record,**change)
        try:require_guarded_replay(bad)
        except ValueError:pass
        else:raise AssertionError(('Unsafe provenance accepted',change))
    source=ROOT/'Verification/BranchLayer_guarded_20260930a/replay_selected/ledger'
    cases=[]
    for folder in sorted(source.iterdir()):
        if not folder.is_dir():continue
        row=json.loads((folder/'second.jsonl').read_text())
        if row['certificate']['ok']:cases.append(row)
        if len(cases)==2:break
    assert len(cases)==2
    with tempfile.TemporaryDirectory(prefix='branch-rekey-controls-') as tmp:
        tmp=Path(tmp);old=tmp/'old';inv=tmp/'inventory';old.mkdir();inv.mkdir()
        for r in cases:
            dst=old/str(r['cell']);dst.mkdir()
            for name,data in [('second',[r]),('cover',[]),('t2',[]),('sideleaf',[]),('replayed',[])]:
                (dst/(name+'.jsonl')).write_text(''.join(json.dumps(x)+'\n' for x in data))
            (dst/'done.json').write_text('{"cells":1}')
        new=[dict(cases[1],cell=900001),dict(cases[0],cell=900003)]
        extra=copy.deepcopy(cases[0]);extra.update(cell=900002,job=987654321);new.insert(1,extra)
        def line(r):return ' '.join(map(str,[r['cell'],r['job'],r['level'],*r['theta']]))+'\n'
        (inv/'survivors.txt').write_text(''.join(map(line,new)));(inv/'sample.txt').write_bytes((inv/'survivors.txt').read_bytes())
        manifest=dict(survivors=3,survivors_sha256=sha(inv/'survivors.txt'),sample_sha256=sha(inv/'sample.txt'),sample_ids=[r['cell'] for r in new],
                      run_of_record='guarded_2026-09-29',fasttm_sha256=APPROVED_FASTTM,guarded_package_manifest_sha256='fixture_only')
        (inv/'manifest.json').write_text(json.dumps(manifest))
        run=lambda *args:subprocess.run([sys.executable,'-B',*map(str,args)],capture_output=True,text=True)
        result=run(HERE/'rekey_guarded.py',old,inv,tmp/'new');assert result.returncode==0,result.stderr
        result=run(HERE/'audit.py',inv,tmp/'new',tmp/'audit','--replay');assert result.returncode==2,result.stderr
        receipt=json.loads((tmp/'audit/audit.json').read_text());assert receipt['closed']==2 and receipt['open']==1
        mapping=tmp/'bad_map.tsv';mapping.write_text('old_id\tnew_id\n'+str(cases[0]['cell'])+'\t900001\n'+str(cases[1]['cell'])+'\t900003\n')
        result=run(HERE/'rekey_guarded.py',old,inv,tmp/'bad','--id-map',mapping);assert result.returncode!=0
        # One binary64 coordinate change must prevent certificate transfer.
        new[0]['theta'][0]+=2**-40;(inv/'survivors.txt').write_text(''.join(map(line,new)))
        manifest['survivors_sha256']=sha(inv/'survivors.txt');(inv/'manifest.json').write_text(json.dumps(manifest))
        result=run(HERE/'rekey_guarded.py',old,inv,tmp/'changed');assert result.returncode==0,result.stderr
        assert json.loads((tmp/'changed/migration.json').read_text())['transferred']==1
    print('PASS: guarded provenance controls, ID permutation, missing-cell OPEN, wrong map and exact coordinate mismatch')
if __name__=='__main__':main()
