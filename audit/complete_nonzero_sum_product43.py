"""Finish product43 with existing row checking and exact receipt reuse.

No polynomial data is generated. Coefficients44 and45 are reused unchanged.
Every other coefficient is checked, including all padded rows and zero rows.
"""
import hashlib
import json

from prepare_nonzero_polynomial_checks import DC,C,IR,CO
from prepare_nonzero_sum_stage_pilot import ROOT,AUDIT,OUT,BASE,NS,EX,CA
from reuse_preflight import require_reuse_review

CR='CriticalZeroSumAssembly20261003.CoefficientRow'


def main():
    require_reuse_review('critical_nonzero_raw_clearing')
    dependency_audits=['KERNEL_AUDIT_CRITICAL_NONZERO_SUM_ROW_CHECKER_STATUS.json',
                       'KERNEL_AUDIT_CRITICAL_NONZERO_SUM_PRODUCT0043_COEFFICIENT044_STATUS.json',
                       'KERNEL_AUDIT_CRITICAL_NONZERO_SUM_PRODUCT0043_ODD_PILOT_STATUS.json']
    for name in dependency_audits:
        d=json.loads((AUDIT/name).read_text());assert d['status']=='PASS'
        for path,digest in (d['source_hashes']|d.get('dependency_source_hashes',{})).items():
            assert hashlib.sha256((ROOT/'lean'/path).read_bytes()).hexdigest()==digest
    previous=[];previous_receipts=[]
    for stem in ['CRITICAL_NONZERO_SUM_PRODUCT0043_COEFFICIENT044','CRITICAL_NONZERO_SUM_PRODUCT0043_ODD_PILOT']:
        previous.append(json.loads((AUDIT/(stem+'_MANIFEST.json')).read_text()))
        previous_receipts.append(json.loads((AUDIT/(stem+'_BUILD_STATUS.json')).read_text()))
    records=[r for m in previous for r in m['records']]
    endpoints=[e for m in previous for e in m['axiom_endpoints']]
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
                        'local_model_adapter':True,'review':'CRITICAL_NONZERO_SUM_PRODUCT0043_REUSE_REVIEW.json'})
    source=header([BASE+'Product0043Inputs'])
    source+=f'''theorem n0043_input_width : {CR}.maxWidth n0041 + {CR}.maxWidth {EX}.e0042 ≤ 28 := by decide
theorem n0043_target_width : {CR}.maxWidth n0043 ≤ 28 := by decide
theorem n0043_eval_from_rows (X Y : ℂ) (n : ℕ)
    (hc : ∀ i : ℕ, i < 28 → {IR}.zeroI ({C}.add
      ({CR}.mulAtRow n0041 {EX}.e0042 n i)
      ({C}.neg ((n0043.getD n []).getD i []))) = true) :
    {IR}.evalII X Y ({CA}.mulAt n0041 {EX}.e0042 n) =
      {IR}.evalII X Y (n0043.getD n []) :=
  {CR}.coefficient_eq_of_rows X Y n0041 {EX}.e0042 n (n0043.getD n []) 28
    n0043_input_width (le_trans ({CR}.length_getD_le_maxWidth n0043 n) n0043_target_width) hc
theorem n0043_eval_from_whole (X Y : ℂ) (n : ℕ)
    (hc : {IR}.zeroII ({C}.add2 ({CA}.mulAt n0041 {EX}.e0042 n)
      ({C}.neg2 (n0043.getD n []))) = true) :
    {IR}.evalII X Y ({CA}.mulAt n0041 {EX}.e0042 n) =
      {IR}.evalII X Y (n0043.getD n []) := by
  have hz := {IR}.evalII_zero X Y _ hc
  rw [{IR}.evalII_add,{IR}.evalII_neg] at hz
  exact sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)
'''
    endpoints += [NS+'.'+x for x in ['n0043_input_width','n0043_target_width','n0043_eval_from_rows','n0043_eval_from_whole']]
    save('Product0043Bounds',source)
    # Check heavy cases first; the successful middle coefficient is retained.
    even=sorted((n for n in range(0,89,2) if n!=44),key=lambda n:abs(n-44))
    coefficient_modules=[]
    for n in even:
        row_modules=[]
        for start in range(0,28,7):
            name=f'Product0043Row{n:03d}Batch{start//7:02d}';row_modules.append(BASE+name)
            source=header([BASE+'Product0043Bounds'])
            for i in range(start,min(start+7,28)):
                endpoint=f'n0043_row_{n:03d}_{i:03d}'
                source+=f'''theorem {endpoint} :
    {IR}.zeroI ({C}.add ({CR}.mulAtRow n0041 {EX}.e0042 {n} {i})
      ({C}.neg ((n0043.getD {n} []).getD {i} []))) = true := by rfl
#print axioms {endpoint}
'''
                endpoints.append(NS+'.'+endpoint)
            save(name,source)
        name=f'Product0043Coefficient{n:03d}';coefficient_modules.append(BASE+name)
        source=header(row_modules+['Lean.Elab.Tactic.Omega'])
        source+=f'''theorem n0043_rows_{n:03d} (i : ℕ) (hi : i < 28) :
    {IR}.zeroI ({C}.add ({CR}.mulAtRow n0041 {EX}.e0042 {n} i)
      ({C}.neg ((n0043.getD {n} []).getD i []))) = true := by
  have hc : '''+' ∨ '.join(f'i = {j}' for j in range(28))+''' := by omega
  rcases hc with '''+' | '.join('hi' for _ in range(28))+'\n'
        source+=''.join(f'  · subst i\n    exact n0043_row_{n:03d}_{j:03d}\n' for j in range(28))
        source+=f'''theorem n0043_coefficient_{n:03d}_eval (X Y : ℂ) :
    {IR}.evalII X Y ({CA}.mulAt n0041 {EX}.e0042 {n}) =
      {IR}.evalII X Y (n0043.getD {n} []) :=
  n0043_eval_from_rows X Y {n} n0043_rows_{n:03d}
#print axioms n0043_coefficient_{n:03d}_eval
'''
        endpoints += [NS+f'.n0043_rows_{n:03d}',NS+f'.n0043_coefficient_{n:03d}_eval']
        save(name,source)
    odd=[n for n in range(1,89,2) if n!=45];odd_modules=[]
    for start in range(0,len(odd),12):
        name=f'Product0043Odd{start//12:02d}';odd_modules.append(BASE+name)
        source=header([BASE+'Product0043Bounds'])
        for n in odd[start:start+12]:
            endpoint=f'n0043_whole_{n:03d}'
            source+=f'''theorem {endpoint} :
    {IR}.zeroII ({C}.add2 ({CA}.mulAt n0041 {EX}.e0042 {n})
      ({C}.neg2 (n0043.getD {n} []))) = true := by rfl
#print axioms {endpoint}
'''
            endpoints.append(NS+'.'+endpoint)
        save(name,source)
    source=header(coefficient_modules+odd_modules+[BASE+'Product0043Coefficient044',BASE+'Product0043Whole045'])
    source+=f'''theorem n0043_coefficients_eval (X Y : ℂ) (n : ℕ) (hn : n < n0043.length) :
    {IR}.evalII X Y ({CA}.mulAt n0041 {EX}.e0042 n) =
      {IR}.evalII X Y (n0043.getD n []) := by
  rw [n0043_length] at hn
  have hc : '''+' ∨ '.join(f'n = {j}' for j in range(89))+''' := by omega
  rcases hc with '''+' | '.join('hn' for _ in range(89))+'\n'
    for n in range(89):
        proof=(f'n0043_coefficient_{n:03d}_eval X Y' if n%2==0 or n==45 else
               f'n0043_eval_from_whole X Y {n} n0043_whole_{n:03d}')
        source+=f'  · subst n\n    exact {proof}\n'
    source+=f'''theorem n0043_normalized_product_length :
    ({DC}.mul n0041 {EX}.e0042).length = n0043.length := by
  exact n0043_product_length
theorem n0043_interpret (X Y : ℂ) :
    {DC}.interpret X Y ({DC}.mul n0041 {EX}.e0042) =
      {DC}.interpret X Y n0043 := by
  apply {CA}.list_eq_of_getD
  · simpa only [{DC}.interpret_length] using n0043_normalized_product_length
  · intro n hn
    have hn' : n < n0043.length := by
      simpa only [{DC}.interpret_length,n0043_normalized_product_length] using hn
    rw [{DC}.interpret_mul,← {CA}.eval_mulAt,{DC}.interpret_getD]
    exact n0043_coefficients_eval X Y n hn'
theorem n0043_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y n0043) = {EX}.v0043 X Y k := by
  have he := congrArg ({C}.eval k) (n0043_interpret X Y)
  rw [{DC}.interpret_mul,{CO}.eval_mul,n0041_eval,{EX}.e0042_eval] at he
  exact he.symm
#print axioms n0043_eval
'''
    endpoints += [NS+'.'+x for x in ['n0043_coefficients_eval','n0043_normalized_product_length','n0043_interpret','n0043_eval']]
    save('Product0043',source)
    manifest={'scope':'critical_nonzero_raw_clearing','records':records,'axiom_endpoints':endpoints,
              'status':'PREPARED_NOT_COMPILED','dependency_audits':dependency_audits,
              'reused_complete_coefficients':[44,45],'new_row_checks':44*28,'new_whole_checks':len(odd),
              'raw_numerator_identity_claimed':False,'atlas_certification':False}
    (AUDIT/'CRITICAL_NONZERO_SUM_PRODUCT0043_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
    seeded={'completed_modules':[m for d in previous_receipts for m in d['completed_modules']],
            'source_hashes':{p:h for d in previous_receipts for p,h in d['source_hashes'].items()},
            'complete':False,'returncode':0,'reused_receipts_only':True}
    p=AUDIT/'CRITICAL_NONZERO_SUM_PRODUCT0043_BUILD_STATUS.json';assert not p.exists()
    p.write_text(json.dumps(seeded,indent=2)+'\n')
    print(json.dumps({'modules':len(records),'endpoints':len(endpoints),'existing_coefficients_reused':[44,45],
                      'new_row_checks':44*28,'new_whole_checks':len(odd)}))


if __name__=='__main__':main()
