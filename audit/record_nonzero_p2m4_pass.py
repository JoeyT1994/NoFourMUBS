"""Retain the audited p2_m4 build in the existing representative-moment ledger."""
from pathlib import Path
import datetime
import hashlib
import json

ROOT=Path(__file__).resolve().parent.parent
AUDIT=ROOT/'audit'


def main(pair='p2_m4', audit_name='KERNEL_AUDIT_CRITICAL_NONZERO_STAGED_STATUS.json',
         final_name='CRITICAL_NONZERO_STAGED_FINAL_BUILD_STATUS.json', count=16):
    label=pair.replace('_','').upper()
    audit_path=AUDIT/audit_name
    checked=json.loads(audit_path.read_text())
    module='NoFourMUBs.Step2.CriticalZero.ClearedMoments.Pair_'+pair
    endpoint='NoFourMUBs.Step2.Critical.NonzeroClearing.cleared_'+pair
    assert checked['status']=='PASS' and endpoint in checked['axiom_endpoints']
    final_path=AUDIT/final_name
    final=json.loads(final_path.read_text())
    assert final['complete'] and final['returncode']==0
    assert module in final['completed_modules']
    manifest=json.loads((AUDIT/'CRITICAL_NONZERO_RAW_CLEARING_MANIFEST.json').read_text())
    records={r['module']:r for r in manifest['records']}
    hashes={r['active_path']:r['active_sha256'] for r in manifest['records']}
    for path,digest in hashes.items():
        assert hashlib.sha256((ROOT/'lean'/path).read_bytes()).hexdigest()==digest
    for path,digest in checked['source_hashes'].items():
        assert hashlib.sha256((ROOT/'lean'/path).read_bytes()).hexdigest()==digest
    assert checked['source_hashes']==final['source_hashes']
    proof_path=records[module]['active_path']
    assert final['source_hashes'][proof_path]==hashes[proof_path]
    raw_path=AUDIT/'CRITICAL_NONZERO_RAW_CLEARING_BUILD_STATUS.json'
    raw=json.loads(raw_path.read_text())
    if module in raw['completed_modules']:
        assert raw['source_hashes'][proof_path]==hashes[proof_path]
        print('The audited moment receipt is already retained.')
        return
    for old in raw['completed_modules']:
        path=records[old]['active_path']
        assert raw['source_hashes'][path]==hashes[path]
    before=AUDIT/('CRITICAL_NONZERO_RAW_CLEARING_BEFORE_'+label+'_PASS.json')
    assert not before.exists()
    before.write_bytes(raw_path.read_bytes())
    now=datetime.datetime.now(datetime.timezone.utc).isoformat()
    done=sorted(set(raw['completed_modules'])|{module})
    raw.update({'completed_modules':done,'completed_files':len(done),
                'total_files':len(records),'complete':len(done)==len(records),
                'last_module':module,'returncode':0,'last_log':final['last_log'],
                'source_hashes':hashes,
                'receipt_merge':'CRITICAL_NONZERO_'+label+'_RECEIPT_MERGE.json',
                'deferred_modules':[x for x in raw.get('deferred_modules',[]) if x!=module]})
    if raw['complete'] and 'last_failure' in raw:
        raw['resolved_historical_failure']=raw.pop('last_failure')
        raw['resolution_audit']=audit_path.name
    raw_path.write_text(json.dumps(raw,indent=2)+'\n')
    receipt={'status':'HASH_PINNED_AUDITED_RECEIPT_REUSED','checked_utc':now,
             'adopted_module':module,'endpoint':endpoint,'previous_receipt':before.name,
             'build_receipt':final_path.name,'axiom_audit':audit_path.name,
             'build_receipt_sha256':hashlib.sha256(final_path.read_bytes()).hexdigest(),
             'axiom_audit_sha256':hashlib.sha256(audit_path.read_bytes()).hexdigest(),
             'source_sha256':hashes[proof_path],
             'original_statement_and_guards_preserved':True,
             'representative_moment_identities_now':count,'required':18,
             'atlas_certification':False}
    (AUDIT/('CRITICAL_NONZERO_'+label+'_RECEIPT_MERGE.json')).write_text(json.dumps(receipt,indent=2)+'\n')
    print(json.dumps({'status':'PASS','representative_moments':f'{count}/18','raw_manifest_files':len(done)}),flush=True)


if __name__=='__main__':
    main()
