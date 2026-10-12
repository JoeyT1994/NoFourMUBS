"""Complete one large coefficient using the archived row certificate.

The passed pilot row is reused directly. No coefficient or target data is
generated; the remaining rows are checked against the existing product table.
"""
import hashlib
import json

from prepare_nonzero_polynomial_checks import DC,C,IR
from prepare_nonzero_sum_stage_pilot import ROOT,AUDIT,OUT,BASE,NS,EX,CA
from reuse_preflight import require_reuse_review

CR='CriticalZeroSumAssembly20261003.CoefficientRow'


def main():
    require_reuse_review('critical_nonzero_raw_clearing')
    audit=json.loads((AUDIT/'KERNEL_AUDIT_CRITICAL_NONZERO_SUM_PRODUCT0043_ROW_PILOT_STATUS.json').read_text())
    assert audit['status']=='PASS'
    for path,digest in audit['source_hashes'].items():
        assert hashlib.sha256((ROOT/'lean'/path).read_bytes()).hexdigest()==digest
    pilot=json.loads((AUDIT/'CRITICAL_NONZERO_SUM_PRODUCT0043_ROW_PILOT_MANIFEST.json').read_text())
    records=pilot['records'].copy();endpoints=pilot['axiom_endpoints'].copy()
    missing=[i for i in range(28) if i!=14]
    def header(imports):
        return '\n'.join('import '+x for x in imports)+f'''
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
namespace {NS}
'''
    def save(name,source):
        p=OUT/(name+'.lean');assert not p.exists(),p
        p.write_text(source+'\nend '+NS+'\n')
        records.append({'module':BASE+name,'active_path':str(p.relative_to(ROOT/'lean')),
                        'active_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
                        'local_model_adapter':True,'review':'CRITICAL_NONZERO_SUM_ROW_CHECKER_REUSE_REVIEW.json'})
    modules=[]
    for start in range(0,len(missing),3):
        name=f'Product0043Row044Remaining{start//3:02d}';modules.append(BASE+name)
        source=header([BASE+'Product0043Inputs'])
        for i in missing[start:start+3]:
            endpoint=f'n0043_row_044_{i:03d}'
            source+=f'''theorem {endpoint} :
    {IR}.zeroI ({C}.add ({CR}.mulAtRow n0041 {EX}.e0042 44 {i})
      ({C}.neg ((n0043.getD 44 []).getD {i} []))) = true := by rfl
#print axioms {endpoint}
'''
            endpoints.append(NS+'.'+endpoint)
        save(name,source)
    source=header([BASE+'Product0043Row044_014']+modules+['Lean.Elab.Tactic.Omega'])
    source+=f'''theorem n0043_rows_044 (i : ℕ) (hi : i < 28) :
    {IR}.zeroI ({C}.add ({CR}.mulAtRow n0041 {EX}.e0042 44 i)
      ({C}.neg ((n0043.getD 44 []).getD i []))) = true := by
  have hc : '''+' ∨ '.join(f'i = {j}' for j in range(28))+''' := by omega
  rcases hc with '''+' | '.join('hi' for _ in range(28))+'\n'
    source+=''.join(f'  · subst i\n    exact n0043_row_044_{j:03d}\n' for j in range(28))
    source+=f'''theorem n0043_coefficient_044_eval (X Y : ℂ) :
    {IR}.evalII X Y ({CA}.mulAt n0041 {EX}.e0042 44) =
      {IR}.evalII X Y (n0043.getD 44 []) := by
  apply {CR}.coefficient_eq_of_rows X Y n0041 {EX}.e0042 44 (n0043.getD 44 []) 28
  · decide
  · decide
  · exact n0043_rows_044
#print axioms n0043_coefficient_044_eval
'''
    endpoints += [NS+'.n0043_rows_044',NS+'.n0043_coefficient_044_eval']
    save('Product0043Coefficient044',source)
    manifest={'scope':'critical_nonzero_raw_clearing','records':records,'axiom_endpoints':endpoints,
              'status':'PREPARED_NOT_COMPILED','product_node':43,'coefficient':44,'row_checks':28,
              'dependency_audits':['KERNEL_AUDIT_CRITICAL_NONZERO_SUM_ROW_CHECKER_STATUS.json'],
              'raw_numerator_identity_claimed':False,'atlas_certification':False}
    (AUDIT/'CRITICAL_NONZERO_SUM_PRODUCT0043_COEFFICIENT044_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
    p=AUDIT/'CRITICAL_NONZERO_SUM_PRODUCT0043_COEFFICIENT044_BUILD_STATUS.json';assert not p.exists()
    p.write_text((AUDIT/'CRITICAL_NONZERO_SUM_PRODUCT0043_ROW_PILOT_BUILD_STATUS.json').read_text())
    print(json.dumps({'modules':len(records),'endpoints':len(endpoints),'new_row_checks':len(missing),'reused_row':14}))


if __name__=='__main__':main()
