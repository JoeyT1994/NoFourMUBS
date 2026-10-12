"""Complete the first product, retaining every successful pilot certificate."""
from pathlib import Path
import hashlib
import json

from prepare_nonzero_polynomial_checks import DC,C,IR
from prepare_nonzero_sum_stage_pilot import ROOT,AUDIT,OUT,BASE,NS,EX,CA
from reuse_preflight import require_reuse_review


def main():
    require_reuse_review('critical_nonzero_raw_clearing')
    audit=json.loads((AUDIT/'KERNEL_AUDIT_CRITICAL_NONZERO_SUM_STAGE_PILOT_STATUS.json').read_text())
    assert audit['status']=='PASS'
    for path,digest in audit['source_hashes'].items():
        assert hashlib.sha256((ROOT/'lean'/path).read_bytes()).hexdigest()==digest
    pilot=json.loads((AUDIT/'CRITICAL_NONZERO_SUM_STAGE_PILOT_MANIFEST.json').read_text())
    records=pilot['records'].copy();endpoints=pilot['axiom_endpoints'].copy()
    length=pilot['expected_coefficients'];selected=set(pilot['selected_coefficients'])
    remaining=[j for j in range(length) if j not in selected]
    def header(imports):
        return '\n'.join('import '+x for x in imports)+f'''
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
noncomputable section
namespace {NS}
'''
    def save(name,source):
        p=OUT/(name+'.lean');assert not p.exists(),p
        p.write_text(source+'\nend '+NS+'\n')
        records.append({'module':BASE+name,'active_path':str(p.relative_to(ROOT/'lean')),
                        'active_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
                        'local_model_adapter':True,'review':'CRITICAL_NONZERO_SUM_STAGE_REUSE_REVIEW.json'})
    modules=[]
    for start in range(0,len(remaining),6):
        name=f'Stage0000Remaining{start//6:02d}';modules.append(BASE+name)
        source=header([BASE+'Stage0000Data',BASE+'Stage0000Factors'])
        for j in remaining[start:start+6]:
            endpoint=f'n0020_coefficient_{j:03d}'
            source+=f'''theorem {endpoint} :
    {IR}.zeroII ({C}.add2 ({CA}.mulAt n0017 n0019 {j})
      ({C}.neg2 (n0020.getD {j} []))) = true := by rfl
#print axioms {endpoint}
'''
            endpoints.append(NS+'.'+endpoint)
        save(name,source)
    source=header([BASE+'Stage0000Pilot']+modules+['Lean.Elab.Tactic.Omega'])
    source+=f'''theorem n0020_normalized_product_length :
    ({DC}.mul n0017 n0019).length = n0020.length := by rfl
theorem n0020_all (j : ℕ) (hj : j < n0020.length) :
    {IR}.zeroII ({C}.add2 ({CA}.mulAt n0017 n0019 j)
      ({C}.neg2 (n0020.getD j []))) = true := by
  rw [n0020_length] at hj
  have hc : '''+' ∨ '.join(f'j = {n}' for n in range(length))+''' := by omega
  rcases hc with '''+' | '.join('hj' for _ in range(length))+'\n'
    source+=''.join(f'  · subst j\n    exact n0020_coefficient_{j:03d}\n' for j in range(length))
    source+=f'''theorem n0020_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y n0020) = {EX}.v0020 X Y k := by
  have checked := {CA}.binary_eval_eq X Y k n0017 n0019 n0020
    n0020_normalized_product_length n0020_all
  simpa only [{EX}.v0020,n0017_eval,n0019_eval] using checked
#print axioms n0020_eval
'''
    endpoints += [NS+'.'+n for n in ['n0020_normalized_product_length','n0020_all','n0020_eval']]
    save('Stage0000',source)
    manifest={'scope':'critical_nonzero_raw_clearing','records':records,'axiom_endpoints':endpoints,
              'status':'PREPARED_NOT_COMPILED','completed_product_node':20,'coefficient_checks':length,
              'reused_pilot_coefficients':sorted(selected),'dependency_audits':['KERNEL_AUDIT_CRITICAL_NONZERO_SUM_DAG_STATUS.json'],
              'raw_numerator_identity_claimed':False,'atlas_certification':False}
    (AUDIT/'CRITICAL_NONZERO_SUM_STAGE0_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
    # Reuse only the source-pinned successful pilot receipts; the build tool
    # validates their tracked dependency closure again before accepting them.
    p=AUDIT/'CRITICAL_NONZERO_SUM_STAGE0_BUILD_STATUS.json';assert not p.exists()
    p.write_text((AUDIT/'CRITICAL_NONZERO_SUM_STAGE_PILOT_BUILD_STATUS.json').read_text())
    print(json.dumps({'modules':len(records),'endpoints':len(endpoints),'remaining_coefficients':len(remaining),'pilot_certificates_retained':len(selected)}))


if __name__=='__main__':main()
