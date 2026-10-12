"""Independent axiom/type audit after the staged original moment theorem builds."""
from pathlib import Path
import datetime
import hashlib
import json
import re
import subprocess
import time

ROOT=Path(__file__).resolve().parent.parent
AUDIT=ROOT/'audit'


def main(manifest_name='CRITICAL_NONZERO_STAGED_FINAL_MANIFEST.json',
         build_name='CRITICAL_NONZERO_STAGED_FINAL_BUILD_STATUS.json',
         audit_stem='KERNEL_AUDIT_CRITICAL_NONZERO_STAGED',
         pair='p2_m4', dependency_audits=(), entry_module=None,
         checked_endpoint=None, scope=None):
    manifest_path=AUDIT/manifest_name
    manifest=json.loads(manifest_path.read_text())
    build=json.loads((AUDIT/build_name).read_text())
    assert build['complete'] and build['returncode']==0
    expected_modules={r['module'] for r in manifest['records']}
    assert set(build['completed_modules'])==expected_modules
    hashes={r['active_path']:r['active_sha256'] for r in manifest['records']}
    assert build['source_hashes']==hashes
    dependency_hashes={r['active_path']:r['active_sha256']
                       for r in manifest.get('dependency_pins',[])}
    for path,digest in hashes.items():
        assert hashlib.sha256((ROOT/'lean'/path).read_bytes()).hexdigest()==digest
    for path,digest in dependency_hashes.items():
        assert hashlib.sha256((ROOT/'lean'/path).read_bytes()).hexdigest()==digest
    endpoints=manifest['axiom_endpoints']
    assert len(endpoints)==len(set(endpoints))
    dependencies={}
    for name in dependency_audits:
        path=AUDIT/name
        dependency=json.loads(path.read_text())
        assert dependency['status']=='PASS'
        for rel,digest in dependency['source_hashes'].items():
            assert hashlib.sha256((ROOT/'lean'/rel).read_bytes()).hexdigest()==digest
        dependencies[name]=hashlib.sha256(path.read_bytes()).hexdigest()
    theorem=checked_endpoint or 'NoFourMUBs.Step2.Critical.NonzeroClearing.cleared_'+pair
    module=entry_module or 'NoFourMUBs.Step2.CriticalZero.ClearedMoments.Pair_'+pair
    source='import '+module+'\n\n'
    source+='#check '+theorem+'\n'
    source+=''.join('#print axioms '+name+'\n' for name in endpoints)
    script=AUDIT/(audit_stem+'.lean')
    script.write_text(source)
    log=AUDIT/(audit_stem+'.log')
    t=time.monotonic()
    with log.open('w') as out:
        result=subprocess.run(['/Users/mateo2/.elan/bin/lake','env','lean','-j2',
                               '../audit/'+script.name],cwd=ROOT/'lean',
                              stdout=out,stderr=subprocess.STDOUT)
    (AUDIT/(audit_stem+'_EXIT.json')).write_text(json.dumps(
        {'returncode':result.returncode,'elapsed_seconds':time.monotonic()-t},indent=2)+'\n')
    text=log.read_text()
    assert result.returncode==0 and 'error:' not in text
    assert 'sorryAx' not in text and 'ofReduceBool' not in text
    parsed={name:[a.strip() for a in axioms.split(',') if a.strip()]
            for name,axioms in re.findall(r"'([^']+)' depends on axioms:\s*\[([^\]]*)\]",text)}
    parsed.update({name:[] for name in re.findall(r"'([^']+)' does not depend on any axioms",text)})
    assert set(parsed)==set(endpoints),(set(endpoints)-set(parsed),set(parsed)-set(endpoints))
    assert all(set(axioms)<={'propext','Classical.choice','Quot.sound'} for axioms in parsed.values())
    for path,digest in hashes.items():
        assert hashlib.sha256((ROOT/'lean'/path).read_bytes()).hexdigest()==digest
    for path,digest in dependency_hashes.items():
        assert hashlib.sha256((ROOT/'lean'/path).read_bytes()).hexdigest()==digest
    for name,digest in dependencies.items():
        assert hashlib.sha256((AUDIT/name).read_bytes()).hexdigest()==digest
        for rel,source_digest in json.loads((AUDIT/name).read_text())['source_hashes'].items():
            assert hashlib.sha256((ROOT/'lean'/rel).read_bytes()).hexdigest()==source_digest
    status={'status':'PASS','checked_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
            'modules':len(expected_modules),'axiom_endpoints':parsed,'source_hashes':hashes,
            'manifest_sha256':hashlib.sha256(manifest_path.read_bytes()).hexdigest(),
            'audit_log_sha256':hashlib.sha256(log.read_bytes()).hexdigest(),
            'scope':scope or f'The original {pair} paired moment, both cleared coefficients, with all original nonzero and six pole guards retained.',
            'dependency_audits':dependencies,
            'dependency_source_hashes':dependency_hashes,
            'atlas_certification':False}
    (AUDIT/(audit_stem+'_STATUS.json')).write_text(json.dumps(status,indent=2)+'\n')
    print(json.dumps({'status':'PASS','endpoints':len(parsed),'theorem':theorem}),flush=True)


if __name__=='__main__':
    main()
