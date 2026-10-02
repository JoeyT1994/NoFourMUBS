"""Replay the tube on a closed partition with five coarse cells and three children bisected.

The default is a fresh search. --import-prefix recovers completed records
from the earlier, identical coarse search; --resume reuses this driver's
completed jobs. Source, trig-table and checkpoint hashes are retained.
"""
import argparse
from concurrent.futures import ThreadPoolExecutor
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import tempfile
import time
from verify import table, sha

HERE = Path(__file__).resolve().parent
PATTERN = re.compile(r'CELL (\d+) (\d+) (\d+) labels (\d+) cliques (\d+) max_good (\d+) result 1 tests (\d+)')


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--output-dir', type=Path, required=True)
    ap.add_argument('--import-prefix', type=Path)
    ap.add_argument('--resume', action='store_true')
    ap.add_argument('--workers', type=int, default=3)
    args = ap.parse_args()
    assert args.workers > 0
    out = args.output_dir.resolve()
    out.mkdir(parents=True, exist_ok=True)
    started = time.monotonic()
    sources = {f: sha(HERE / f) for f in ('tube.cpp', 'domain_audit.py', 'verify.py', 'verify_partition.py')}
    base = (HERE / 'tube.cpp').read_text()
    assert base.count('L/360') == 3
    fine = base.replace('L/360', 'L/720')
    fine_sha = hashlib.sha256(fine.encode()).hexdigest()
    finest = base.replace('L/360', 'L/1440')
    finest_sha = hashlib.sha256(finest.encode()).hexdigest()
    # Five hard 180-grid boxes are each replaced by their four
    # exact closed 360-grid children. No geometric inference from logs.
    coarse = {(a,b) for a in range(30) for b in range(a//2+2)}
    parents = {(28,0),(28,1),(29,0),(29,1),(29,2)}
    children = {(2*a+i,2*b+j) for a,b in parents for i in (0,1) for j in (0,1)}
    expected = {(180,a,b) for a,b in coarse-parents} | {(360,a,b) for a,b in children}
    second_parents={(360,58,0),(360,59,0),(360,59,1)}
    assert second_parents<=expected
    expected-=second_parents
    expected|={(720,2*a+i,2*b+j)for grid,a,b in second_parents for i in (0,1)for j in (0,1)}
    assert len(coarse) == 270 and len(expected) == 294
    with tempfile.TemporaryDirectory(prefix='fourier-partition-') as tmp:
        work = Path(tmp)
        trig = work/'trig.bin'
        trig_sha = table(trig)
        core = {k:sources[k] for k in ('tube.cpp','domain_audit.py')}
        input_record = dict(proof_source_sha256=core, trig_sha256=trig_sha,
                            refined_source_sha256=fine_sha,
                            refined_transformation="replace the three occurrences of 'L/360' by 'L/720'")
        if args.resume:
            assert json.loads((out/'inputs.json').read_text()) == input_record
        else:
            assert not (out/'inputs.json').exists(), 'Use --resume for existing output'
            (out/'inputs.json').write_text(json.dumps(input_record,indent=2)+'\n')
        domain = subprocess.check_output([os.sys.executable,'-B',str(HERE/'domain_audit.py')],text=True)
        (out/'domain.txt').write_text(domain)
        print(domain,end='',flush=True)
        (out/'refined.cpp').write_text(fine)
        (out/'refined_720.cpp').write_text(finest)
        imported = []
        if args.import_prefix:
            old=args.import_prefix.resolve()
            prior=json.loads((old/'inputs.json').read_text())
            assert prior['proof_source_sha256']==core and prior['trig_sha256']==trig_sha
            text=(old/'orientation_0.txt').read_text()
            assert 'INCONCLUSIVE' not in text
            records=[tuple(map(int,m.groups())) for line in text.splitlines() if (m:=PATTERN.fullmatch(line))]
            assert all(r[0]==0 for r in records)
            keys={(r[1],r[2]) for r in records}
            assert len(keys)==len(records) and keys <= coarse
            imported=[r for r in records if (r[1],r[2]) not in parents]
            (out/'imported_coarse.txt').write_text(text)
            history=out/'import_history';history.mkdir(exist_ok=True)
            for f in [old/'inputs.json',*old.glob('checkpoint_0_*.txt')]:
                shutil.copyfile(f,history/f.name)
            (out/'import.json').write_text(json.dumps(dict(
                source_directory=str(old),log_sha256=sha(out/'imported_coarse.txt'),
                records=imported,history_sha256={f.name:sha(f)for f in history.iterdir()}),indent=2)+'\n')
        elif args.resume and (out/'import.json').exists():
            receipt=json.loads((out/'import.json').read_text())
            assert sha(out/'imported_coarse.txt')==receipt['log_sha256']
            for name,digest in receipt['history_sha256'].items(): assert sha(out/'import_history'/name)==digest
            imported=receipt['records']
        done={(180,r[1],r[2]):r for r in imported}
        assert len(done)==len(imported) and set(done)<=expected
        compiler=shutil.which(os.environ.get('CXX','c++'));assert compiler
        binaries={}
        for grid,source in [(180,HERE/'tube.cpp'),(360,out/'refined.cpp'),(720,out/'refined_720.cpp')]:
            binary=work/f'tube_{grid}'
            subprocess.run([compiler,'-std=c++17','-O3',str(source),'-o',str(binary)],check=True)
            binaries[grid]=binary
        # Fresh full runs bundle the 238 easy leading cells into one process.
        jobs=[]
        leading={(180,a,b)for a,b in coarse if a<28}
        if not (set(done)&leading):jobs.append((180,0,28,-1,leading))
        for key in sorted(expected-set(done)- (leading if jobs else set())):
            grid,a,b=key;jobs.append((grid,a,a+1,b,{key}))
        print(f'{len(done)} imported cells; {len(jobs)} jobs; {len(expected)} leaf cells required',flush=True)
        def run(job):
            grid,lo,hi,b,keys=job
            name=f'grid_{grid}_a_{lo}_{hi}_b_{b}'
            log=out/(name+'.txt'); receipt=out/(name+'.json')
            def validate():
                txt=log.read_text();assert txt.endswith('PASS\n') and 'INCONCLUSIVE' not in txt
                assert 'ORTH 82630 shifted 322040\n' in txt
                rows=[tuple(map(int,m.groups()))for line in txt.splitlines()if(m:=PATTERN.fullmatch(line))]
                assert len(rows)==len(keys) and all(r[0]==0 for r in rows)
                assert {(grid,r[1],r[2])for r in rows}==keys
                return rows
            if args.resume and receipt.exists():
                old=json.loads(receipt.read_text());assert old['log_sha256']==sha(log)
                rows=validate()
            else:
                began=time.monotonic()
                with log.open('w')as handle:
                    proc=subprocess.run([str(binaries[grid]),str(trig),'0',str(lo),str(hi),str(b)],stdout=handle,stderr=subprocess.STDOUT)
                assert proc.returncode==0,log.read_text()[-3000:]
                rows=validate()
                receipt.write_text(json.dumps(dict(grid=grid,keys=sorted(keys),log_sha256=sha(log),
                    source_sha256={180:sources['tube.cpp'],360:fine_sha,720:finest_sha}[grid],
                    binary_sha256=sha(binaries[grid]),elapsed_seconds=round(time.monotonic()-began,3)),indent=2)+'\n')
            print('PASS',name,'cells',len(rows),flush=True)
            return {(grid,r[1],r[2]):r for r in rows}
        with ThreadPoolExecutor(max_workers=args.workers)as pool:
            for result in pool.map(run,jobs):
                assert not(set(done)&set(result));done.update(result)
        assert set(done)==expected
        report=dict(status='PASS',completed_at_utc=datetime.now(timezone.utc).isoformat(),
            radius='1/16384',raw_amplitude_tolerance='1/1000',coarse_parameter_cells=270,
            leaf_cells=294,refined_parents=sorted(parents),second_refined_parents=sorted(second_parents),orientations=[0],
            transpose='analytic stability factor < 5/2',source_sha256=sources,
            refined_source_sha256=fine_sha,refined_720_source_sha256=finest_sha,trig_sha256=trig_sha,
            imported_cells=len(imported),C_cliques=sum(r[4]for r in done.values()),
            max_retained_D_labels=max(r[5]for r in done.values()),
            compiler=compiler,compiler_version=subprocess.check_output([compiler,'--version'],text=True),
            elapsed_seconds=round(time.monotonic()-started,3),
            scope='Uniform matrix tube only; D0-restricted seed lifting remains separate.')
        (out/'summary.json').write_text(json.dumps(report,indent=2)+'\n')
        print(json.dumps(report,indent=2),flush=True)
        print('PASS: all 270 closed parent cells covered, including 29 refined leaves',flush=True)

if __name__=='__main__':main()
