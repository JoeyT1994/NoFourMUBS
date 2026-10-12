"""Complete original node29 with the existing row checker and passed pilot.

No arrays are produced. Passed coefficient0, coefficient57 and row58/14 are
retained. The smaller paired factor remains the first convolution input.
"""
import hashlib
import json

from prepare_nonzero_polynomial_checks import DC,C,IR
from prepare_nonzero_sum_stage_pilot import ROOT,AUDIT,OUT,BASE,NS,EX,CA
from prepare_nonzero_product29 import CR
from reuse_preflight import require_reuse_review


def main():
    require_reuse_review('critical_nonzero_raw_clearing')
    a=json.loads((AUDIT/'KERNEL_AUDIT_CRITICAL_NONZERO_SUM_PRODUCT0029_PILOT_STATUS.json').read_text())
    assert a['status']=='PASS'
    for p,h in (a['source_hashes']|a.get('dependency_source_hashes',{})).items():
        assert hashlib.sha256((ROOT/'lean'/p).read_bytes()).hexdigest()==h
    pilot=json.loads((AUDIT/'CRITICAL_NONZERO_SUM_PRODUCT0029_PILOT_MANIFEST.json').read_text())
    records=pilot['records'].copy();endpoints=pilot['axiom_endpoints'].copy()
    def header(imports):
        return '\n'.join('import '+x for x in imports)+f'''
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace {NS}
'''
    def save(name,text):
        p=OUT/(name+'.lean');assert not p.exists(),p;p.write_text(text+'\nend '+NS+'\n')
        records.append({'module':BASE+name,'active_path':str(p.relative_to(ROOT/'lean')),
                        'active_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
                        'local_model_adapter':True,'review':'CRITICAL_NONZERO_PAIRED_DENOMINATOR_REUSE_REVIEW.json'})
    text=header([BASE+'Product0029Pilot'])
    text+=f'''theorem n0029_input_width : {CR}.maxWidth denPairZ5+{CR}.maxWidth n0023≤30 := by decide
theorem n0029_target_width : {CR}.maxWidth n0029≤30 := by decide
theorem n0029_eval_from_rows (X Y : ℂ) (n : ℕ)
    (hc : ∀ i : ℕ, i<30 → {IR}.zeroI ({C}.add
      ({CR}.mulAtRow denPairZ5 n0023 n i)
      ({C}.neg ((n0029.getD n []).getD i [])))=true) :
    {IR}.evalII X Y ({CA}.mulAt denPairZ5 n0023 n) =
      {IR}.evalII X Y (n0029.getD n []) :=
  {CR}.coefficient_eq_of_rows X Y denPairZ5 n0023 n (n0029.getD n []) 30
    n0029_input_width (le_trans ({CR}.length_getD_le_maxWidth n0029 n) n0029_target_width) hc
theorem n0029_eval_from_whole (X Y : ℂ) (n : ℕ)
    (hc : {IR}.zeroII ({C}.add2 ({CA}.mulAt denPairZ5 n0023 n)
      ({C}.neg2 (n0029.getD n [])))=true) :
    {IR}.evalII X Y ({CA}.mulAt denPairZ5 n0023 n) =
      {IR}.evalII X Y (n0029.getD n []) := by
  have hz := {IR}.evalII_zero X Y _ hc
  rw [{IR}.evalII_add,{IR}.evalII_neg] at hz
  exact sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)
'''
    endpoints += [NS+'.'+n for n in ['n0029_input_width','n0029_target_width','n0029_eval_from_rows','n0029_eval_from_whole']]
    save('Product0029Bounds',text)
    coefficients=[];row_count=0
    for n in sorted(range(2,115,2),key=lambda n:abs(n-58)):
        rows=[i for i in range(30) if (n,i)!=(58,14)];modules=[]
        for start in range(0,len(rows),10):
            name=f'Product0029Row{n:03d}Batch{start//10:02d}';modules.append(BASE+name)
            text=header([BASE+'Product0029Bounds'])
            for i in rows[start:start+10]:
                proof=f'n0029_row_{n:03d}_{i:03d}'
                text+=f'''theorem {proof} :
    {IR}.zeroI ({C}.add ({CR}.mulAtRow denPairZ5 n0023 {n} {i})
      ({C}.neg ((n0029.getD {n} []).getD {i} [])))=true := by rfl
#print axioms {proof}
'''
                endpoints.append(NS+'.'+proof);row_count+=1
            save(name,text)
        name=f'Product0029Coefficient{n:03d}';coefficients.append(BASE+name)
        text=header(modules+['Lean.Elab.Tactic.Omega'])
        text+=f'''theorem n0029_rows_{n:03d} (i : ℕ) (hi : i<30) :
    {IR}.zeroI ({C}.add ({CR}.mulAtRow denPairZ5 n0023 {n} i)
      ({C}.neg ((n0029.getD {n} []).getD i [])))=true := by
  have hc : '''+' ∨ '.join(f'i={j}' for j in range(30))+''' := by omega
  rcases hc with '''+' | '.join('hi' for _ in range(30))+'\n'
        text+=''.join(f'  · subst i\n    exact n0029_row_{n:03d}_{j:03d}\n' for j in range(30))
        text+=f'''theorem n0029_coefficient_{n:03d}_eval (X Y : ℂ) :
    {IR}.evalII X Y ({CA}.mulAt denPairZ5 n0023 {n}) =
      {IR}.evalII X Y (n0029.getD {n} []) :=
  n0029_eval_from_rows X Y {n} n0029_rows_{n:03d}
#print axioms n0029_coefficient_{n:03d}_eval
'''
        endpoints += [NS+f'.n0029_rows_{n:03d}',NS+f'.n0029_coefficient_{n:03d}_eval'];save(name,text)
    odd=[n for n in range(1,115,2) if n!=57];odd_modules=[]
    for start in range(0,len(odd),16):
        name=f'Product0029Odd{start//16:02d}';odd_modules.append(BASE+name)
        text=header([BASE+'Product0029Bounds'])
        for n in odd[start:start+16]:
            proof=f'n0029_whole_{n:03d}'
            text+=f'''theorem {proof} :
    {IR}.zeroII ({C}.add2 ({CA}.mulAt denPairZ5 n0023 {n})
      ({C}.neg2 (n0029.getD {n} [])))=true := by rfl
#print axioms {proof}
'''
            endpoints.append(NS+'.'+proof)
        save(name,text)
    text=header(coefficients+odd_modules)
    text+=f'''theorem n0029_coefficients_eval (X Y : ℂ) (n : ℕ) (hn : n<n0029.length) :
    {IR}.evalII X Y ({CA}.mulAt denPairZ5 n0023 n) =
      {IR}.evalII X Y (n0029.getD n []) := by
  rw [n0029_length] at hn
  have hc : '''+' ∨ '.join(f'n={n}' for n in range(115))+''' := by omega
  rcases hc with '''+' | '.join('hn' for _ in range(115))+'\n'
    for n in range(115):
        proof=(f'n0029_coefficient_{n:03d}_eval X Y' if n>0 and n%2==0 else
               f'n0029_eval_from_whole X Y {n} n0029_whole_{n:03d}')
        text+=f'  · subst n\n    exact {proof}\n'
    text+=f'''theorem n0029_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y n0029) = {EX}.v0029 X Y k := by
  have checked := product_eval_eq_of_coefficients X Y k denPairZ5 n0023 n0029
    n0029_product_length (n0029_coefficients_eval X Y)
  rw [denPairZ5_eval,n0023_eval] at checked
  calc
    _ = ({EX}.v0025 X Y k * {EX}.v0028 X Y k) * {EX}.v0023 X Y k := checked
    _ = {EX}.v0029 X Y k := by
      dsimp only [{EX}.v0029,{EX}.v0026]
      ring
#print axioms n0029_eval
'''
    endpoints += [NS+'.n0029_coefficients_eval',NS+'.n0029_eval'];save('Product0029',text)
    m={'scope':'critical_nonzero_raw_clearing','status':'PREPARED_NOT_COMPILED','records':records,
       'axiom_endpoints':endpoints,'dependency_pins':pilot['dependency_pins'],
       'dependency_audits':['KERNEL_AUDIT_CRITICAL_NONZERO_SUM_PRODUCT0029_PILOT_STATUS.json'],
       'new_row_checks':row_count,'new_whole_checks':len(odd),'node':29,
       'retained_pilot_row':[58,14],'retained_whole_coefficients':[0,57],
       'raw_numerator_identity_claimed':False,'atlas_certification':False}
    (AUDIT/'CRITICAL_NONZERO_SUM_PRODUCT0029_MANIFEST.json').write_text(json.dumps(m,indent=2)+'\n')
    p=AUDIT/'CRITICAL_NONZERO_SUM_PRODUCT0029_BUILD_STATUS.json';assert not p.exists()
    p.write_text((AUDIT/'CRITICAL_NONZERO_SUM_PRODUCT0029_PILOT_BUILD_STATUS.json').read_text())
    print(json.dumps({'modules':len(records),'endpoints':len(endpoints),'new_row_checks':row_count,'new_whole_checks':len(odd)}))


if __name__=='__main__':main()
