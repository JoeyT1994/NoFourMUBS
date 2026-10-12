"""Assemble the checked half-table and existing involution, without new data."""
from pathlib import Path
import hashlib
import json
import re

from prepare_nonzero_moment_clearing import CTX, FACTORS, fmpq_mpoly
from reuse_preflight import require_reuse_review

ROOT = Path(__file__).resolve().parent.parent
AUDIT = ROOT / 'audit'


def opposite(tag):
    return '_'.join(('m'+s[1:] if s[0] == 'p' else 'p'+s[1:])
                    if s[1:] != '0' else s for s in tag.split('_'))


def nonzero_proof(den):
    names = {'X': 'hX', 'Y': 'hY', 'h k': 'hh',
             'plusFactor X k': 'hFXp', 'minusFactor X k': 'hFXm',
             'plusFactor Y k': 'hFYp', 'minusFactor Y k': 'hFYm',
             'thirdPlusFactor X Y k': 'hFZp', 'thirdMinusFactor X Y k': 'hFZm'}
    unit, fs = den.factor()
    proofs = [] if unit == 1 else ['(by norm_num)']
    for f, e in fs:
        name, = [name for name, value in FACTORS.items() if value == f]
        proof = names[name]
        proofs.append(proof if e == 1 else f'(pow_ne_zero {e} {proof})')
    result = proofs[0]
    for proof in proofs[1:]:
        result = f'(mul_ne_zero {result} {proof})'
    return result


def main():
    require_reuse_review('critical_nonzero_raw_clearing')
    candidates = json.loads((AUDIT/'CRITICAL_NONZERO_PAIRED_COEFFICIENT_CANDIDATES.json').read_text())['records']
    records = []
    for name in ['RAW', 'EXISTING']:
        records.extend(json.loads((AUDIT/f'CRITICAL_NONZERO_{name}_CLEARING_MANIFEST.json').read_text())['records'])
    records.extend(json.loads((AUDIT/'CRITICAL_NONZERO_OPPOSITE_MANIFEST.json').read_text())['records'])
    records.extend(json.loads((AUDIT/'CRITICAL_NONZERO_COMPACT_SIDE_MANIFEST.json').read_text())['records'])
    for r in records:
        assert hashlib.sha256((ROOT/'lean'/r['active_path']).read_bytes()).hexdigest() == r['active_sha256']
    s = '\n'.join('import '+r['module'] for r in records) + '\n\n'
    s += '''/-! The existing involution supplies the other half of the cleared moment table.
This is a lookup/model adapter; it generates no polynomial coefficients. -/
set_option autoImplicit false
set_option maxHeartbeats 3000000
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
open CriticalNonzeroMoments20261003 CriticalNonzeroNumerator20261003 CriticalQuadProgram20261003

def representativeCoefficients (m : MomentTag) (X Y k : ℂ) :
    Quad (R2 X Y k) (R1 Y k) :=
  match m with
'''
    for tag in candidates:
        s += f'  | .{tag} => ⟨numerator_{tag}_a X Y k / denominator_{tag}_a X Y k,\n'
        s += f'      numerator_{tag}_b X Y k / denominator_{tag}_b X Y k⟩\n'
    s += '''  | _ => 0

def reflectedCoefficients (m : MomentTag) (X Y k : ℂ) :
    Quad (R2 X Y k) (R1 Y k) :=
  let u := representativeCoefficients m X Y k
  let w := X^(degrees m).1 * Y^(degrees m).2
  ⟨w*(u.a + R1 Y k*u.b), -(w*u.b)⟩

def rationalCoefficients (m : MomentTag) (X Y k : ℂ) :
    Quad (R2 X Y k) (R1 Y k) :=
  match m with
'''
    for tag in candidates:
        s += f'  | .{opposite(tag)} => reflectedCoefficients .{tag} X Y k\n'
    s += '''  | _ => representativeCoefficients m X Y k

theorem pairedCoefficient_eq_rationalCoefficients (X Y k : ℂ)
    (hX : X ≠ 0) (hY : Y ≠ 0) (hh : h k ≠ 0)
    (hXp : pole k 1 X ≠ 0) (hXm : pole k (-1) X ≠ 0)
    (hYp : pole k 1 Y ≠ 0) (hYm : pole k (-1) Y ≠ 0)
    (hZp : pole k 1 (p k-X-Y) ≠ 0) (hZm : pole k (-1) (p k-X-Y) ≠ 0)
    (m : MomentTag) : pairedCoefficient m X Y k = rationalCoefficients m X Y k := by
  have hs : (h k)^2/(2 : ℂ) ≠ 0 :=
    div_ne_zero (pow_ne_zero 2 hh) (by norm_num)
'''
    for label, factor, args, guard, sign in [
            ('Xp', 'plusFactor', 'X k', 'hXp', 1),
            ('Xm', 'minusFactor', 'X k', 'hXm', -1),
            ('Yp', 'plusFactor', 'Y k', 'hYp', 1),
            ('Ym', 'minusFactor', 'Y k', 'hYm', -1),
            ('Zp', 'thirdPlusFactor', 'X Y k', 'hZp', -1),
            ('Zm', 'thirdMinusFactor', 'X Y k', 'hZm', 1)]:
        nz = 'hs' if sign == 1 else '(neg_ne_zero.mpr hs)'
        s += f'''  have hF{label} : {factor} {args} ≠ 0 := by
    rw [{factor}_pole {args} hh]
    exact mul_ne_zero {nz} {guard}
'''
    s += '''  have recover (u : Quad (R2 X Y k) (R1 Y k)) (a b d e : ℂ)
      (hd : d ≠ 0) (he : e ≠ 0) (hu : u.a*d=a ∧ u.b*e=b) :
      u = ⟨a/d, b/e⟩ := by
    exact congrArg₂ (fun a b => (⟨a,b⟩ : Quad (R2 X Y k) (R1 Y k)))
      ((eq_div_iff hd).mpr hu.1) ((eq_div_iff he).mpr hu.2)
'''
    for tag, data in candidates.items():
        args = 'hX hY hh hXp hXm hYp hYm hZp hZm'
        if tag == 'p1_p1':
            args = 'hX hh hZp hZm'
        elif tag == 'p2_m1':
            args = 'hX hY hh hYp hYm'
        elif tag == 'p1_m2':
            args = 'hX hY hh hXp hXm'
        s += f'''  have h_{tag} : pairedCoefficient .{tag} X Y k =
      representativeCoefficients .{tag} X Y k := by
    apply recover (pairedQuad_{tag} X Y k)
      (numerator_{tag}_a X Y k) (numerator_{tag}_b X Y k)
      (denominator_{tag}_a X Y k) (denominator_{tag}_b X Y k)
'''
        for component in ['a', 'b']:
            proof = nonzero_proof(fmpq_mpoly(data[component]['denominator'], CTX))
            s += f'''    · dsimp only [denominator_{tag}_{component}]
      exact {proof}
'''
        s += f'    · exact cleared_{tag} X Y k {args}\n'
    s += '''  have reflect (m : MomentTag)
      (hu : pairedCoefficient m X Y k = representativeCoefficients m X Y k) :
      pairedCoefficient (opposite m) X Y k = reflectedCoefficients m X Y k := by
    simpa only [hu, reflectedCoefficients] using
      pairedCoefficient_opposite_coefficients X Y k hX hY m
  cases m with
'''
    for tag in candidates:
        s += f'  | {tag} => exact h_{tag}\n'
        s += f'  | {opposite(tag)} => exact reflect .{tag} h_{tag}\n'
    s += '''
theorem sumCoefficients_via_rationalTable (X Y k : ℂ)
    (hX : X ≠ 0) (hY : Y ≠ 0) (hh : h k ≠ 0)
    (hXp : pole k 1 X ≠ 0) (hXm : pole k (-1) X ≠ 0)
    (hYp : pole k 1 Y ≠ 0) (hYm : pole k (-1) Y ≠ 0)
    (hZp : pole k 1 (p k-X-Y) ≠ 0) (hZm : pole k (-1) (p k-X-Y) ≠ 0) :
    sumCoefficients X Y k = coefficients (fun m => rationalCoefficients m X Y k) program66 := by
  unfold sumCoefficients
  have ht : (fun m => pairedCoefficient m X Y k) =
      (fun m => rationalCoefficients m X Y k) := by
    funext m
    exact pairedCoefficient_eq_rationalCoefficients X Y k hX hY hh hXp hXm hYp hYm hZp hZm m
  rw [ht]

#print axioms pairedCoefficient_eq_rationalCoefficients
#print axioms sumCoefficients_via_rationalTable
end NoFourMUBs.Step2.Critical.NonzeroClearing
'''
    p = ROOT/'lean/NoFourMUBs/Step2/CriticalZero/NonzeroRationalTable.lean'
    p.write_text(s)
    record = {'module': 'NoFourMUBs.Step2.CriticalZero.NonzeroRationalTable',
              'active_path': str(p.relative_to(ROOT/'lean')),
              'active_sha256': hashlib.sha256(p.read_bytes()).hexdigest(),
              'local_model_adapter': True, 'review': 'CRITICAL_NONZERO_RAW_CLEARING_REVIEW.json'}
    manifest = {'scope': 'critical_nonzero_raw_clearing', 'records': [record],
                'status': 'PREPARED_NOT_COMPILED',
                'dependency_pins': records,
                'mathematical_scope': 'Reuse 18 cleared representatives and the existing involution to bind all36 original moment inputs. No new polynomial data.'}
    (AUDIT/'CRITICAL_NONZERO_TABLE_MANIFEST.json').write_text(json.dumps(manifest, indent=2)+'\n')
    print('Prepared the36moment lookup adapter; all coefficients reused unchanged.')


if __name__ == '__main__':
    main()
