"""Serialize the saved companion and check its first defining coefficient.

No symbolic inversion, coefficient discovery, or universal norm is recomputed.
The emitted equality is only a target until Lean and its axiom audit pass.
"""
from pathlib import Path
from fractions import Fraction
import hashlib
import json

from prepare_matched_base_coefficients import polynomial
from reuse_preflight import require_reuse_review

ROOT = Path(__file__).resolve().parent.parent
AUDIT = ROOT / 'audit'
OUT = ROOT / 'lean/NoFourMUBs/Step2/Reconstruction/Companion'
BASE = 'NoFourMUBs.Step2.Reconstruction.Companion.'
NS = 'NoFourMUBs.Step2.Reconstruction.Companion'
SETTINGS = '''set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
noncomputable section
namespace ''' + NS + '\n'


def main():
    require_reuse_review('matched_companion_kernel')
    review = json.loads((AUDIT/'MATCHED_COMPANION_KERNEL_REUSE_REVIEW.json').read_text())
    for path, digest in review['source_pins'].items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest() == digest
    work = json.loads((AUDIT/'MATCHED_UNIVERSAL_NORM_WORK_CACHE.json').read_text())
    raw = work['values']['vertical_companion']
    if isinstance(raw, dict):
        data = (AUDIT/raw['file']).read_bytes()
        assert hashlib.sha256(data).hexdigest() == raw['sha256']
        raw = json.loads(data)
    coefficients = [x for q in raw for x in q]
    fact = json.loads((AUDIT/'MATCHED_COMPANION_DENOMINATOR_FACTORS.json').read_text())
    assert fact['source_sha256'] == hashlib.sha256(
        (AUDIT/'MATCHED_UNIVERSAL_NORM_WORK_CACHE.json').read_bytes()).hexdigest()
    shifts = fact['six_monomial_shifts']
    core = coefficients[0][1]
    assert len(core) == 3826 and shifts[0] == [0,0,0,0]
    for (num, den), shift in zip(coefficients, shifts):
        reduced = {tuple(e-s for e,s in zip(es,shift)):Fraction(c) for es,c in den}
        assert reduced == {tuple(es):Fraction(c) for es,c in core}
    OUT.mkdir(exist_ok=True)
    records = []

    def save(name, source):
        path = OUT/(name+'.lean')
        if path.exists():
            assert path.read_text() == source, 'Preserve existing source: '+str(path)
        else:
            path.write_text(source)
        records.append({'module':BASE+name, 'active_path':str(path.relative_to(ROOT/'lean')),
                        'active_sha256':hashlib.sha256(path.read_bytes()).hexdigest(),
                        'local_model_adapter':True,
                        'review':'MATCHED_COMPANION_KERNEL_REUSE_REVIEW.json'})

    for module, name, terms in [('Core','denominatorCore',core)] + [
            (f'Numerator{i}{j}',f'num{i}{j}',raw[i][j][0]) for i in range(3) for j in range(2)]:
        source = 'import Mathlib.Data.Complex.Basic\n'+SETTINGS
        source += f'def {name} (a b c d : ℂ) : ℂ := '+polynomial(terms)+'\n'
        save(module, source+'\nend '+NS+'\n')

    source = ''.join('import '+r['module']+'\n' for r in records)
    source += '''import NoFourMUBs.Step2.Reconstruction.CubicEvaluation
import NoFourMUBs.Step2.Reconstruction.BaseCoefficients.Centered
import Hadamard6.QuotientAlgebra
'''+SETTINGS+'''open BaseCoefficients CriticalMomentQuad20261003
abbrev Q (a b c d : ℂ) := Quad (-cachedV a b c d) (cachedU a b c d)
abbrev C (a b c d : ℂ) := CubicEvaluation.Cubic (-cachedV a b c d) (cachedU a b c d)

def kappa (a b c d : ℂ) : ℂ :=
  cachedDelta a c b d * cachedC6 a b c d / (cachedDelta a b c d * cachedC6 a c b d)
def verticalProduct (a b c d : ℂ) : Q a b c d :=
  ⟨(cachedU a c b d + kappa a b c d*cachedU a b c d)/2,-kappa a b c d⟩
def modulus (a b c d : ℂ) : C a b c d :=
  ⟨verticalProduct a b c d,
   -(verticalProduct a b c d * scalar (-(1+a⁻¹+c⁻¹))),scalar (-(1+a+c))⟩
def companion (a b c d : ℂ) : C a b c d :=
'''
    pairs = []
    for i in range(3):
        parts = []
        for j in range(2):
            shift = shifts[2*i+j]
            factors = ['denominatorCore a b c d'] + [
                v if e==1 else f'{v}^{e}' for v,e in zip('abcd',shift) if e]
            parts.append(f'num{i}{j} a b c d / ('+'*'.join(factors)+')')
        pairs.append('⟨'+','.join(parts)+'⟩')
    source += '  ⟨'+',\n   '.join(pairs)+'⟩\n'
    source += '''
def reducePoly {A B : ℂ} (m : CubicEvaluation.Cubic A B) (c0 c1 c2 c3 : ℂ) :
    CubicEvaluation.Cubic A B :=
  ⟨scalar c0+scalar c3*m.c0,scalar c1+scalar c3*m.c1,scalar c2+scalar c3*m.c2⟩
def reducedA (a b c d : ℂ) : C a b c d :=
  let s := -(1+a+c)
  let S := -(1+a⁻¹+c⁻¹)
  let t := -(1+b+d)
  let T := -(1+b⁻¹+d⁻¹)
  let r := -(1+b/a+d/c)
  let R := -(1+a/b+c/d)
  let delta := r*R-t*T
  reducePoly (modulus a b c d) 0 (2*s*delta) (-(s*S+3)*delta) (2*S*delta)
def reducedB (a b c d : ℂ) : C a b c d :=
  let s := -(1+a+c)
  let S := -(1+a⁻¹+c⁻¹)
  let t := -(1+b+d)
  let T := -(1+b⁻¹+d⁻¹)
  let r := -(1+b/a+d/c)
  let R := -(1+a/b+c/d)
  reducePoly (modulus a b c d) (Hadamard6.eliminantBeta0 s t T R)
    (Hadamard6.eliminantBeta1 s S t T r R) (Hadamard6.eliminantBeta2 s S t T r R)
    (Hadamard6.eliminantBeta3 S T r R)
def residual (a b c d : ℂ) : C a b c d :=
  CubicEvaluation.add (reducedA a b c d)
    (CubicEvaluation.mul (modulus a b c d) (reducedB a b c d) (companion a b c d))
'''
    save('Model',source+'\nend '+NS+'\n')
    save('ComponentRules', (OUT/'ComponentRules.lean').read_text())
    source = 'import '+BASE+'Model\nimport '+BASE+'ComponentRules\nimport Mathlib.Tactic.FieldSimp\n'+SETTINGS
    source += '''open BaseCoefficients StrictReconstruction20261007
attribute [local irreducible] denominatorCore num00 num01 num10 num11 num20 num21
theorem residual_c0_a (a b c d : ℂ)
    (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0) (hd : d ≠ 0)
    (hden : denominatorCore a b c d ≠ 0)
    (hdelta : cachedDelta a b c d ≠ 0)
    (hPh : (normData a b c d).a.p0bar * (normData a b c d).a.p1 ≠ 0)
    (hPv : (normData a c b d).a.p0bar * (normData a c b d).a.p1 ≠ 0) :
    (residual a b c d).c0.a = 0 := by
  run_tac Lean.logInfo "COMPANION_STAGE: start"
  have hU := cachedU_eq a b c d ha hb hc hd hPh
  have hV := cachedV_eq a b c d ha hb hc hd hPh
  have hvU := cachedU_eq a c b d ha hc hb hd hPv
  dsimp only at hU hV hvU
  have hdelta' := hdelta
  rw [cachedDelta_eq a b c d ha hb hc hd] at hdelta'
  obtain ⟨hP0,hP1⟩ := mul_ne_zero_iff.mp hPh
  obtain ⟨hvP0,hvP1⟩ := mul_ne_zero_iff.mp hPv
  run_tac Lean.logInfo "COMPANION_STAGE: guards"
  dsimp [residual,reducedA,reducedB,reducePoly,modulus,verticalProduct,kappa,companion,
    CubicEvaluation.add,CubicEvaluation.mul,CriticalMomentQuad20261003.scalar]
  run_tac Lean.logInfo "COMPANION_STAGE: cubic unfolded"
  simp only [quad_mk_add,quad_mk_mul,quad_mk_neg,zero_mul,mul_zero,zero_add,add_zero]
  run_tac Lean.logInfo "COMPANION_STAGE: quadratic unfolded"
  rw [hU,hV,hvU,cachedC6_eq a b c d ha hb hc hd,
    cachedC6_eq a c b d ha hc hb hd,cachedDelta_eq a b c d ha hb hc hd,
    cachedDelta_eq a c b d ha hc hb hd]
  run_tac Lean.logInfo "COMPANION_STAGE: parameters rewritten"
  field_simp [ha,hb,hc,hd,hden,hdelta',hP0,hP1,hvP0,hvP1]
  run_tac Lean.logInfo "COMPANION_STAGE: first denominators cleared"
  dsimp only [normData,PreRhoNorm.gramData,PreRhoAlignment.gramData,
    Hadamard6.eliminantBeta0,Hadamard6.eliminantBeta1,
    Hadamard6.eliminantBeta2,Hadamard6.eliminantBeta3,
    denominatorCore,num00,num01,num10,num11,num20,num21]
  run_tac Lean.logInfo "COMPANION_STAGE: saved polynomials unfolded"
  field_simp [ha,hb,hc,hd]
  run_tac Lean.logInfo "COMPANION_STAGE: phase denominators cleared"
  all_goals ring
  run_tac Lean.logInfo "COMPANION_STAGE: ring finished"
'''
    save('Pilot00',source+'\nend '+NS+'\n')
    manifest = {'scope':'matched_companion_kernel','records':records,
                'axiom_endpoints':[NS+'.'+n for n in ['quad_mk_add','quad_mk_mul','quad_mk_neg','residual_c0_a']],
                'dependency_pins':[{'active_path':f.removeprefix('lean/'),'active_sha256':h}
                    for f,h in review['source_pins'].items() if f.startswith('lean/')],
                'dependency_audits':['KERNEL_AUDIT_MATCHED_CUBIC_EVALUATOR_STATUS.json',
                    'KERNEL_AUDIT_MATCHED_BASE_BINDING_STATUS.json'],
                'atlas_certification':False,
                'scope_note':'Pilot: first of six companion defining-relation coefficients only.'}
    (AUDIT/'MATCHED_COMPANION_PILOT_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({'modules':len(records),'endpoints':1,
        'source_bytes':sum((ROOT/'lean'/r['active_path']).stat().st_size for r in records),
        'saved_coefficients_reused':True,'atlas_certification':False}))


if __name__ == '__main__':
    main()
