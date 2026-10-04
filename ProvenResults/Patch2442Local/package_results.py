"""Assemble the partial research deliverable, recording any replay failure."""
import sys
sys.dont_write_bytecode=True
import json,gzip,time,traceback,hashlib,zipfile,shutil
from pathlib import Path
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE))

def main():
    (HERE/'results').mkdir(exist_ok=True)
    status={'scope':'PARTIAL: no full punctured-ball radius established','status':'FAIL','cpu_seconds':None}
    start=time.process_time()
    try:
        import checks,verify
        info,reduced=checks.factorization_checks()
        (HERE/'F52_reduced_polynomials.json').write_text(json.dumps(reduced,separators=(',',':'))+'\n')
        physical,frames=checks.physical_and_frame_checks()
        (HERE/'frame_matrices.json').write_text(json.dumps(frames,separators=(',',':'))+'\n')
        controls={'physical_and_symmetry':physical,'geometry':checks.geometry_controls(),'arithmetic':checks.arithmetic_checks(),'exact_ray':checks.ray_checks()}
        (HERE/'controls.json').write_text(json.dumps(controls,indent=2,default=str)+'\n')
        # There is no manifest during this first complete replay. It is built
        # after all immutable deliverables and receipts have been finalized.
        (HERE/'MANIFEST.sha256').unlink(missing_ok=True)
        receipt=verify.run()
        from geometry import classify
        src=HERE/'inputs/data/leaves_4174.jsonl.gz';dest=HERE/'results/leaves_4174_results.jsonl.gz'
        n=ok=0;reasons={};tbox=time.process_time()
        with gzip.open(src,'rt') as inp,gzip.open(dest,'wt') as out:
            for line in inp:
                rec=json.loads(line);ans=classify(rec);n+=1;ok+=int(ans['ok']);reasons[ans['reason']]=reasons.get(ans['reason'],0)+1
                out.write(json.dumps(ans,separators=(',',':'))+'\n')
        receipt['boxes']={'records':n,'accepted':ok,'inconclusive':n-ok,'reasons':reasons,'cpu_seconds':time.process_time()-tbox,'input_sha256':hashlib.sha256(src.read_bytes()).hexdigest(),'output_sha256':hashlib.sha256(dest.read_bytes()).hexdigest()}
        (HERE/'results/verification.json').write_text(json.dumps(receipt,indent=2,default=str)+'\n')
        status.update({'status':'PASS','verified_cone_leaves':receipt['cones']['leaves'],'radial_limit':'3/50','angular_cap_width':'1/200','boxes':receipt['boxes'],'verification_cpu_seconds':receipt['cpu_seconds']})
        # Keep prose leaf counts synchronized with the replayed certificate.
        p=HERE/'PROOF.md';text=p.read_text();cs=receipt['cones']['charts'];neg=next(c['leaves'] for c in cs if c['sign']==-1);pos=next(c['leaves'] for c in cs if c['sign']==1)
        text=text.replace('contains 104 accepted leaves: 16 for the negative chart and 88 for the positive chart',f'contains {neg+pos} accepted leaves: {neg} for the negative chart and {pos} for the positive chart')
        text+='\n## Executed replay summary\n\nThe packaged replay completed all exact/outward checks. Verification CPU time was '+str(receipt['cpu_seconds'])+' seconds. The supplied leaf adapter processed '+str(n)+' records, accepted '+str(ok)+', and returned '+str(n-ok)+' as inconclusive. These are partial angular-domain results, not full-ball or pilot closure. Detailed bounds, controls and timings are in `results/verification.json`.\n'
        p.write_text(text)
    except Exception as ex:
        status['error']=repr(ex);status['traceback']=traceback.format_exc()
        (HERE/'results/verification_failure.txt').write_text(status['traceback'])
        warning='**REPLAY STATUS: NOT VERIFIED.** The packaging replay failed; see `results/verification_failure.txt`. Do not register the proposed directional certificate as a proved result until that failure is resolved. The full-ball theorem is not claimed.\n\n'
        for name in ['README.md','PROOF.md']:
            p=HERE/name
            if p.exists():p.write_text(warning+p.read_text())
    status['cpu_seconds']=time.process_time()-start
    (HERE/'results/PACKAGING_STATUS.json').write_text(json.dumps(status,indent=2,default=str)+'\n')
    # Omit exploratory code not used by any delivered proof or verifier.
    for name in ['work','__pycache__']:
        shutil.rmtree(HERE/name,ignore_errors=True)
    for name in ['coupled.cpp','pilot.py','results_first.log','cones_certificate.partial.json.gz']:
        (HERE/name).unlink(missing_ok=True)
    for p in list(HERE.rglob('__pycache__')):shutil.rmtree(p,ignore_errors=True)
    (HERE/'results/replay_status.png').unlink(missing_ok=True)
    files=[p for p in HERE.rglob('*') if p.is_file() and p.name not in ['MANIFEST.sha256','Patch2442Local.zip']]
    manifest=''.join(hashlib.sha256(p.read_bytes()).hexdigest()+'  '+p.relative_to(HERE).as_posix()+'\n' for p in sorted(files))
    (HERE/'MANIFEST.sha256').write_text(manifest)
    archive=HERE/'Patch2442Local.zip'
    with zipfile.ZipFile(archive,'w',compression=zipfile.ZIP_DEFLATED,compresslevel=9) as out:
        for p in sorted(files+[HERE/'MANIFEST.sha256']):out.write(p,'ProvenResults/Patch2442Local/'+p.relative_to(HERE).as_posix())
    assert archive.is_file() and archive.stat().st_size>0
    # Final independent hash check does not mutate any manifested file.
    for line in (HERE/'MANIFEST.sha256').read_text().splitlines():
        h,name=line.split('  ',1);assert hashlib.sha256((HERE/name).read_bytes()).hexdigest()==h
    print(json.dumps({'status':status['status'],'scope':status['scope'],'archive':str(archive),'archive_bytes':archive.stat().st_size,'details':status},indent=2,default=str))
if __name__=='__main__':main()
