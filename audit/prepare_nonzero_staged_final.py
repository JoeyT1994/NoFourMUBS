"""Join the staged p2_m4 checks to the unchanged numerator and cleared goal."""
from pathlib import Path
import hashlib
import json

from prepare_nonzero_staged_checks import ROOT, AUDIT, OUT, BASE, header
from prepare_nonzero_polynomial_checks import NS, DC, C, IR
from reuse_preflight import require_reuse_review


def main():
    require_reuse_review('critical_nonzero_raw_clearing')
    dag = json.loads((AUDIT/'CRITICAL_NONZERO_POLYNOMIAL_EXPRESSION_DAG.json').read_text())
    staged = json.loads((AUDIT/'CRITICAL_NONZERO_STAGED_MANIFEST.json').read_text())
    records = list(staged['records'])
    endpoints = []

    def save(name, text):
        p=OUT/(name+'.lean')
        p.write_text(text+'\nend '+NS+'\n')
        rel=str(p.relative_to(ROOT/'lean'))
        records.append({'module':BASE+name,'active_path':rel,
                        'active_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
                        'local_model_adapter':True,
                        'review':'CRITICAL_NONZERO_RAW_CLEARING_REVIEW.json'})

    source=header(['P2M4Staged'])
    for component,r in dag['roots'].items():
        source+=f'''theorem staged_residual_{component}_length :
    staged_residual_{component}.length = {r['length']} := by rfl
'''
    save('P2M4FinalData',source)
    checks=[]
    for component,r in dag['roots'].items():
        for start in range(0,r['length'],4):
            name=f'P2M4FinalCheck{component.upper()}{start//4:02d}'
            checks.append(name)
            source=header(['P2M4FinalData'])
            for j in range(start,min(start+4,r['length'])):
                theorem=f'staged_coefficient_{component}_{j:02d}'
                source+=f'''theorem {theorem} :
    {IR}.zeroII (staged_residual_{component}.getD {j} []) = true := by rfl
#print axioms {theorem}
'''
                endpoints.append(NS+'.'+theorem)
            save(name,source)

    source=header(checks).replace('set_option autoImplicit false',
        'import Lean.Elab.Tactic.Omega\nset_option autoImplicit false',1)
    for component,r in dag['roots'].items():
        source+=f'''theorem staged_{component}_all (n : ℕ)
    (hn : n < staged_residual_{component}.length) :
    {IR}.zeroII (staged_residual_{component}.getD n []) = true := by
  rw [staged_residual_{component}_length] at hn
'''
        source+='  have hc : '+' ∨ '.join(f'n = {j}' for j in range(r['length']))+' := by omega\n'
        source+='  rcases hc with '+' | '.join('hn' for _ in range(r['length']))+'\n'
        source+=''.join(f'  · subst n\n    exact staged_coefficient_{component}_{j:02d}\n' for j in range(r['length']))
        source+=f'''theorem polynomial_{component} (X Y k : F) :
    v{r['lhs']:03d} X Y k = v{r['factor']:03d} X Y k *
      {C}.eval k ({DC}.interpret X Y numerator_p2_m4_{component}_coefficients) := by
  have hz := {C}.eval_allZero k _
    ({DC}.allZero_of_certificates X Y staged_residual_{component} staged_{component}_all)
  rw [staged_residual_{component}_eval] at hz
  exact sub_eq_zero.mp hz
#print axioms polynomial_{component}
'''
        endpoints.append(NS+'.polynomial_'+component)
    source+='''
theorem polynomial_a_scaled (X Y k : F) :
    v231 X Y k = Y*X*CriticalNonzeroLight20261003.h k*2^3*numerator_p2_m4_a X Y k := by
  rw [polynomial_a]
  have scale (a : F) : 2*X*Y*CriticalNonzeroLight20261003.h k*a =
      Y*X*CriticalNonzeroLight20261003.h k*2^3*(a/4) := by ring
  exact scale _

theorem polynomial_b_scaled (X Y k : F) :
    v274 X Y k = Y*X^2*(CriticalNonzeroLight20261003.h k)^4*2^3*numerator_p2_m4_b X Y k := by
  rw [polynomial_b]
  have scale (a : F) : 4*X^2*Y*(CriticalNonzeroLight20261003.h k)^4*a =
      Y*X^2*(CriticalNonzeroLight20261003.h k)^4*2^3*(a/2) := by ring
  exact scale _

#print axioms polynomial_a_scaled
#print axioms polynomial_b_scaled
'''
    endpoints += [NS+'.polynomial_a_scaled',NS+'.polynomial_b_scaled']
    save('P2M4Final',source)
    clearing=json.loads((AUDIT/'CRITICAL_NONZERO_RAW_CLEARING_MANIFEST.json').read_text())
    for record in clearing['records']:
        if record['module'].endswith('.Pair_p2_m4'):
            path=ROOT/'lean'/record['active_path']
            assert hashlib.sha256(path.read_bytes()).hexdigest()==record['active_sha256']
            if 'import '+BASE+'P2M4Final\n' in path.read_text():
                records.append(record)
                endpoints.append('NoFourMUBs.Step2.Critical.NonzeroClearing.cleared_p2_m4')
    manifest={'scope':'critical_nonzero_raw_clearing','records':records,
              'status':'PREPARED_NOT_COMPILED','axiom_endpoints':staged['axiom_endpoints']+endpoints,
              'final_coefficient_checks':sum(r['length'] for r in dag['roots'].values()),
              'atlas_certification':False,'numerator_data_unchanged':True}
    (AUDIT/'CRITICAL_NONZERO_STAGED_FINAL_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({'modules':len(records),'new_final_checks':manifest['final_coefficient_checks']}))


if __name__ == '__main__':
    main()
