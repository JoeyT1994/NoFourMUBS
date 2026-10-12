"""Interpret the existing psi() polynomial; do not discover an SOS witness."""
from pathlib import Path
from collections import Counter
from itertools import permutations, product
import ast
import hashlib
import json
from reuse_preflight import require_reuse_review

require_reuse_review('signature_semantics')
ROOT = Path(__file__).resolve().parents[1]
source = ROOT.parent/'lean_proof_2026_10_09/verify_one_identity.py'
expected = '507f465f740fa9c30d0cee1f7b2e5cd39dc3ef7ef038b1ad0f106362ad925573'
assert hashlib.sha256(source.read_bytes()).hexdigest() == expected
tree = ast.parse(source.read_text())
function = next(n for n in tree.body if isinstance(n, ast.FunctionDef) and n.name == 'psi')
scope = {'Counter':Counter, 'permutations':permutations, 'product':product}
exec(compile(ast.Module(body=[function], type_ignores=[]), str(source), 'exec'), scope)
terms = list(scope['psi']().items())
assert len(terms) == 55
def vec(xs): return '!['+', '.join(map(str,xs))+']'
def mat(a): return vec(vec(a[3*i:3*i+3]) for i in range(3))

text = '''import NoFourMUBs.Step2.SOS.MomentExponentData
import NoFourMUBs.Step2.MatchedUnique
import OAI.Analysis.MutuallyUnbiased.Moments.MomentSymmetry

/-! The existing certificate's 55 Laurent terms, interpreted on a phase block.
Only entry inverses occur; no determinant or exceptional parameter is inverted. -/

noncomputable section
open scoped BigOperators ComplexConjugate
open Hadamard6 OAI.MUB6
namespace NoFourMUBs.Step2.SOS
set_option maxRecDepth 20000
set_option maxHeartbeats 5000000

'''
data_path = ROOT/'lean/NoFourMUBs/Step2/SOS/MomentExponentData.lean'
data_text = data_path.read_text()
assert 'def psiExponent : Fin 55 → Matrix (Fin 3) (Fin 3) ℤ := '+vec(mat(a) for a,c in terms)+'\n\n' in data_text
assert 'def psiCoefficient : Fin 55 → ℤ := '+vec(c for a,c in terms)+'\n\n' in data_text
text += '''theorem psiExponent_lower_bound (k : Fin 55) (i j : Fin 3) :
    -1 ≤ psiExponent k i j := by
  fin_cases k <;> fin_cases i <;> fin_cases j
TABLE_LOWER_BOUND

/-- Clear the nine entry denominators to get a polynomial identity. -/
theorem psi_polynomial (B : Mat3) :
    permanent3 B * B.det ^ 2 =
      ∑ k : Fin 55, (psiCoefficient k : ℂ) *
        ∏ i, ∏ j, B i j ^ (psiExponent k i j + 1).toNat := by
  rw [permanent3_expand, Matrix.det_fin_three]
  have hsum (f : Fin 55 → ℂ) : (∑ k, f k) = SUM_FIFTYFIVE := by
    simp only [Fin.sum_univ_succ, Fin.sum_univ_zero, add_zero] <;> rfl
  rw [hsum]
  simp only [Fin.prod_univ_succ, Fin.prod_univ_zero, mul_one]
  change _ = POSITIVE_POLYNOMIAL
  norm_num
  ring

/-- Restore the denominators using the existing unit-entry inverse lemma. -/
theorem sideSignature_laurent (B : Mat3)
    (hB : ∀ i j, Complex.normSq (B i j) = 1) :
    sideSignature B = -(∑ k : Fin 55, (psiCoefficient k : ℂ) *
      ∏ i, ∏ j, B i j ^ psiExponent k i j) := by
  have hterm (k : Fin 55) :
      (∏ i, ∏ j, B i j ^ (psiExponent k i j + 1).toNat) *
        (∏ i, ∏ j, star (B i j)) = ∏ i, ∏ j, B i j ^ psiExponent k i j := by
    rw [← Finset.prod_mul_distrib]
    apply Finset.prod_congr rfl
    intro i _
    rw [← Finset.prod_mul_distrib]
    apply Finset.prod_congr rfl
    intro j _
    have hb := psiExponent_lower_bound k i j
    have hp : 0 ≤ psiExponent k i j + 1 := by omega
    rw [← zpow_natCast, Int.toNat_of_nonneg hp]
    change B i j ^ (psiExponent k i j + 1) * conj (B i j) = _
    rw [← unit_inv_eq_conj (hB i j), ← zpow_neg_one,
      ← zpow_add₀ (unit_ne_zero (hB i j))]
    congr 1
    omega
  calc
    sideSignature B = -((permanent3 B * B.det ^ 2) *
        (∏ i, ∏ j, star (B i j))) := by unfold sideSignature; ring
    _ = -((∑ k : Fin 55, (psiCoefficient k : ℂ) *
        ∏ i, ∏ j, B i j ^ (psiExponent k i j + 1).toNat) *
        (∏ i, ∏ j, star (B i j))) := by rw [psi_polynomial]
    _ = _ := by
      congr 1
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro k _
      rw [mul_assoc, hterm]

end NoFourMUBs.Step2.SOS
'''
def chain(xs, op):
    xs = list(xs)
    return xs[0] if len(xs) == 1 else '('+xs[0]+' '+op+' '+chain(xs[1:],op)+')'
positive = []
for a,c in terms:
    rows = [chain((f'B {i} {j} ^ ({a[3*i+j]+1} : ℕ)' for j in range(3)), '*') for i in range(3)]
    positive.append(f'(({c} : ℤ) : ℂ) * '+chain(rows, '*'))
text = text.replace('TABLE_LOWER_BOUND', '\n'.join(f'  · change (-1 : ℤ) ≤ ({v} : ℤ); norm_num' for a,c in terms for v in a))
text = text.replace('SUM_FIFTYFIVE', chain((f'f {k}' for k in range(55)), '+'))
text = text.replace('POSITIVE_POLYNOMIAL', chain(positive, '+'))
path = ROOT/'lean/NoFourMUBs/Step2/SOS/SignatureLaurent.lean'
if not path.exists() or path.read_text() != text: path.write_text(text)
manifest = {'status':'GENERATED_NOT_YET_KERNEL_CHECKED', 'source':str(source),
            'source_sha256':expected, 'terms':55,
            'output_sha256':hashlib.sha256(text.encode()).hexdigest(),
            'data_module_sha256':hashlib.sha256(data_path.read_bytes()).hexdigest()}
(ROOT/'audit/sos/SIGNATURE_LAURENT_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('Interpreted the 55 existing psi terms; no new witness generated.')
