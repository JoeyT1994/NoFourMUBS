#!/usr/bin/env python3
"""Independent bounded byte/archive audit; never executes Lean or enables network."""
import collections, hashlib, json, re, runpy, subprocess, sys, tempfile
from pathlib import Path
W=Path('/Users/mateo/Desktop/Quantum Physics Codex')
BASE=W/'mub6-numerical/runs/popeye-ring-2026-10-04.nosync/work'
S=BASE/'lean-complete-snapshot-20261008/source-collection'
OUT=Path(__file__).resolve().parent
DATALESS=0x40000000
errors=[]; checks={}; pins={}
def rd(p):
    assert not getattr(p.stat(),'st_flags',0)&DATALESS, 'Refuse dataless '+str(p)
    return p.read_bytes()
def sha(d): return hashlib.sha256(d).hexdigest()
def js(n): return json.loads(rd(S/n))
def rows(n): return [json.loads(l) for l in rd(S/n).splitlines()]
def check(condition,detail):
    if not condition: errors.append(detail)
source=rows('SOURCE_INDEX.jsonl'); blobrows=rows('BLOB_INDEX.jsonl'); blobs={r['sha256']:r for r in blobrows}; gitrows=rows('GIT_SOURCE_INDEX.jsonl')
summary=js('SUMMARY.json'); recovery=js('SOURCE_RECOVERY.json'); manifest=js('FILE_MANIFEST.json')
manifest_before=sha(rd(S/'FILE_MANIFEST.json'))
for n in ['FILE_MANIFEST.json','collect_sources.py','add_git_sources.py','verify_restore.py','README.md','SUMMARY.json','GAP_REPORT.json','SOURCE_INDEX.jsonl','BLOB_INDEX.jsonl','GIT_SOURCE_INDEX.jsonl','SOURCE_RECOVERY.json']:
    d=rd(S/n); pins[n]={'sha256':sha(d),'bytes':len(d)}
# Run the shipped verifier against the actual archive.
v=subprocess.run([sys.executable,str(S/'verify_restore.py')],capture_output=True,text=True)
check(v.returncode==0,'shipped_verifier_failed: '+v.stderr[-500:])
checks['shipped_verifier']=json.loads(v.stdout) if v.returncode==0 else None
# Bind Git paths to the pinned tree without invoking any transport.
repo=BASE/'github-publication-2026-10-06'; rev=summary['prior_git_revision']
tree=subprocess.check_output(['git','-c','protocol.allow=never','ls-tree','-r','-z',rev],cwd=repo)
lean={}
for ent in tree.split(b'\0'):
    if not ent: continue
    header,name=ent.split(b'\t',1); mode,kind,oid=header.decode().split(); name=name.decode()
    if name.endswith('.lean'):
        check(kind=='blob' and mode in {'100644','100755'},'nonregular_git_lean '+name)
        lean[name]=oid
check(set(lean)=={r['git_path'] for r in gitrows},'Git Lean path set mismatch')
for r in gitrows:
    d=rd(S/r['blob']); oid=hashlib.sha1(b'blob '+str(len(d)).encode()+b'\0'+d).hexdigest()
    check(oid==r['git_blob']==lean[r['git_path']],'git_oid_mismatch '+r['git_path'])
    check(r['git_revision']==rev,'git_revision_mismatch')
checks['prior_git_exact_paths']=len(gitrows)
# Independent original resident-source checks. Stat each first; never touch a cloud placeholder.
resident_count=0; resident_bytes=0; original_changed=[]
for r in source:
    if r['availability']!='resident': continue
    p=W/r['source_path']; st=p.stat()
    if getattr(st,'st_flags',0)&DATALESS:
        original_changed.append({'source_path':r['source_path'],'reason':'became_dataless_since_collection'}); continue
    d=rd(p)
    if sha(d)!=r['sha256'] or len(d)!=r['bytes']: original_changed.append({'source_path':r['source_path'],'reason':'resident_bytes_differ_since_collection'})
    resident_count+=1; resident_bytes+=len(d)
check(not original_changed,'original_source_changed '+str(len(original_changed)))
checks['original_resident_paths_rehashed']=resident_count; checks['original_resident_bytes_rehashed']=resident_bytes
# Reproduce exact evidence-location matching without treating breadcrumbs as RFC6901.
metadata_cache={}; evidence_count=0
records={r['source_path']:r for r in source}
def location(value,wanted,pointer=''):
    found=[]
    if pointer==wanted: found.append(value)
    if isinstance(value,dict):
        for k,v in value.items():
            if isinstance(v,(dict,list)): found+=location(v,wanted,pointer+'/'+str(k))
            elif pointer+'/'+str(k)==wanted: found.append((k,v))
    elif isinstance(value,list):
        for i,v in enumerate(value): found+=location(v,wanted,pointer+'/'+str(i))
    return found
def resolve(value,meta):
    p=Path(value); choices=[]
    if p.is_absolute():
        try: choices.append(p.relative_to(W).as_posix())
        except ValueError: pass
    else: choices=[value,(Path(meta).parent/p).as_posix()]
    return sorted({c for c in choices if c in records})
for rec in recovery:
    check(records[rec['source_path']]['sha256']==rec['sha256'],'recovery_index_mismatch')
    check(records[rec['source_path']]['availability']=='dataless_recovered_by_exact_pin','recovery_status_mismatch')
    for e in rec['pin_evidence']:
        m=e['metadata_path']
        if m not in metadata_cache:
            data=rd(W/m); metadata_cache[m]=(sha(data),json.loads(data))
        h,data=metadata_cache[m]; check(h==e['metadata_sha256'],'metadata_hash_mismatch '+m)
        if 'json_location_components' in e:
            val=data
            for part in e['json_location_components']: val=val[part]
            matches=[val]
        else:
            matches=location(data,e.get('json_location_breadcrumb',e.get('json_pointer','')))
        bound=False
        for val in matches:
            if 'source_field' in e and isinstance(val,dict):
                sf=e['source_field']; hashkeys=['source_sha256','original_sha256','sha256'] if sf.startswith(('source','original')) else ['source_sha256','sha256']
                chosen=next((val.get(k) for k in hashkeys if isinstance(val.get(k),str) and re.fullmatch('[0-9a-fA-F]{64}',val[k])),None)
                if isinstance(val.get(sf),str) and resolve(val[sf],m)==[rec['source_path']] and chosen and chosen.lower()==rec['sha256']==e['sha256']: bound=True
            elif isinstance(val,tuple):
                k,v=val
                if isinstance(v,str) and v.lower()==rec['sha256']==e['sha256'] and resolve(k,m)==[rec['source_path']]: bound=True
        check(bound,'recovery_evidence_binding_failed '+rec['source_path']+' '+m)
        evidence_count+=1
checks['exact_recovered_paths']=len(recovery); checks['exact_recovery_evidence_references']=evidence_count; checks['exact_recovery_metadata_files']=len(metadata_cache)
# Secret-pattern check on every source blob and copied provenance, without printing values.
patterns={
 'private_key_header':rb'-----BEGIN (?:RSA |EC |OPENSSH |DSA )?PRIVATE KEY-----',
 'github_token':rb'(?:gh[pousr]_[A-Za-z0-9]{30,}|github_pat_[A-Za-z0-9_]{50,})',
 'aws_access_key':rb'\b(?:AKIA|ASIA)[A-Z0-9]{16}\b',
 'openai_key':rb'\bsk-(?:proj-)?[A-Za-z0-9_-]{32,}',
 'credential_assignment':rb'(?i)(?:api[_-]?key|access[_-]?token|secret[_-]?key|password)\s*[=:]\s*["\x27][A-Za-z0-9_+/-]{20,}["\x27]'}
private_hits=[]; scan_paths=[r['blob'] for r in blobrows]+[r['file'] for r in js('PORTABLE_PROVENANCE_INDEX.json')+js('GIT_PROVENANCE_INDEX.json')]
for n in scan_paths:
    d=rd(S/n)
    for label,pattern in patterns.items():
        if re.search(pattern,d): private_hits.append({'file':n,'pattern':label})
check(not private_hits,'secret_pattern_matches '+str(len(private_hits)))
checks['privacy_scan_files']=len(scan_paths); checks['privacy_pattern_matches']=private_hits
# Check that listed manifest is complete, not merely a valid subset.
actual={p.relative_to(S).as_posix() for p in S.rglob('*') if p.is_file() and p.name!='FILE_MANIFEST.json'}
check(actual=={r['file'] for r in manifest['files']},'manifest_full_file_set_mismatch')
checks['manifest_file_count']=len(manifest['files'])
check(sha(rd(S/'FILE_MANIFEST.json'))==manifest_before,'manifest_changed_during_review')
result={'checks':checks,'errors':errors,'pins':pins,'original_changed':original_changed,'counts':summary['availability'],'scope':'Source archive availability/integrity only. No Lean executed; no mathematical admission.'}
(OUT/'INDEPENDENT_CHECKS.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
print(json.dumps({'checks':checks,'errors':errors,'manifest_sha256':manifest_before},indent=2))
