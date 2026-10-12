"""Assemble the existing numerator from its eleven archived group expansions.

The former uncompiled direct-expression drafts are retained only in an audit
archive. This emits model adapters and closed checks, never polynomial arrays.
"""
from pathlib import Path
import argparse
import hashlib
import json
from reuse_preflight import require_reuse_review

parser = argparse.ArgumentParser()
parser.add_argument('--pilot', action='store_true', help='Only the expanded-sum midpoint18')
args = parser.parse_args()
scope = 'critical_zero_grouped_sum_pilot' if args.pilot else 'critical_zero_numerator_completion'
require_reuse_review(scope)
AUDIT = Path(__file__).resolve().parent
LEAN = AUDIT.parent / 'lean'
DEST = LEAN / 'NoFourMUBs/Step2/CriticalZero'
PREFIX = 'NoFourMUBs.Step2.CriticalZero.'
archive = json.loads((AUDIT / 'CRITICAL_ZERO_SCALAR_REUSE_MANIFEST.json').read_text())
records = []


def emit(name, text):
    path = DEST / (name + '.lean')
    if path.exists():
        assert path.read_text() == text, f'Preserve local edits: {path}'
    else:
        path.write_text(text)
    records.append({'module': PREFIX + name,
                    'active_path': str(path.relative_to(LEAN)),
                    'active_sha256': hashlib.sha256(path.read_bytes()).hexdigest()})


def nested_add(names):
    result = '[]'
    for name in reversed(names):
        result = f'ExprCoefficients.add {name} ({result})'
    return result


for i in range(11):
    name = f'CriticalZeroSumNumeratorGroupData{i:02}'
    row = next(r for r in archive['records'] if r['original_module'] == name)
    assert hashlib.sha256((LEAN / row['active_path']).read_bytes()).hexdigest() == row['active_sha256']
    records.append(row)

header = ('set_option autoImplicit false\nset_option maxRecDepth 100000\n'
          'set_option maxHeartbeats 1500000\n'
          'namespace CriticalZeroSumAssembly20261003\n'
          'open CriticalZeroSplitReduction20261003\n')
originals = [f'numeratorGroupOriginal_{i:02}' for i in range(11)]
expanded = [f'numeratorGroupExpanded_{i:02}' for i in range(11)]
imports = ''.join(f'import NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData{i:02}\n'
                  for i in range(11))
imports += 'import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCoefficients\n'
text = imports + '\n' + header + f'''
def groupedNumeratorOriginal : List HornerReflector.HExpr :=
  {nested_add(originals)}

def groupedNumeratorExpanded : List HornerReflector.HExpr :=
  {nested_add(expanded)}

def groupedNumeratorResidual : List DenseCoefficients.XY :=
  DenseCoefficients.add (DenseCoefficients.fromExpr groupedNumeratorExpanded)
    (DenseCoefficients.neg (DenseCoefficients.fromExpr rawNumeratorExprCoefficients))

noncomputable section
variable {{K : Type*}} [Field K] [CharZero K]

/-- Regroup the same66terms into the repository's11groups. -/
theorem groupedNumeratorOriginal_eval (X Y z : K) :
    Coefficients.eval z (ExprCoefficients.interpret X Y groupedNumeratorOriginal) =
      Coefficients.eval z (ExprCoefficients.interpret X Y allCommonExprCoefficients) := by
  have hnil : Coefficients.eval z (ExprCoefficients.interpret X Y []) = 0 := rfl
  simp only [groupedNumeratorOriginal, allCommonExprCoefficients,
    {', '.join(originals)},
    ExprCoefficients.interpret_add, Coefficients.eval_add, hnil, add_zero, add_assoc]

theorem groupedNumeratorResidual_interpret (X Y : K) :
    DenseCoefficients.interpret X Y groupedNumeratorResidual =
      Coefficients.add (ExprCoefficients.interpret X Y groupedNumeratorExpanded)
        (Coefficients.neg (ExprCoefficients.interpret X Y rawNumeratorExprCoefficients)) := by
  simp only [groupedNumeratorResidual, DenseCoefficients.interpret_add,
    DenseCoefficients.interpret_neg, DenseCoefficients.interpret_fromExpr]

end
end CriticalZeroSumAssembly20261003
'''
emit('NumeratorGroups', text)

for i in ([18] if args.pilot else range(37)):
    emit(f'NumeratorCheck{i:02}', 'import ' + PREFIX + 'NumeratorGroups\n\n' + header + f'''
theorem numerator_certificate_{i:02} :
    IntegerReflector.zeroII (groupedNumeratorResidual.getD {i} []) = true := by
  rfl

end CriticalZeroSumAssembly20261003
''')

if not args.pilot:
    imports = ''.join(f'import {PREFIX}NumeratorCheck{i:02}\n' for i in range(37))
    imports += 'import Lean.Elab.Tactic.Omega\n\n'
    text = imports + header + '''
theorem numerator_all_certificates (n : ℕ) (hn : n < groupedNumeratorResidual.length) :
    IntegerReflector.zeroII (groupedNumeratorResidual.getD n []) = true := by
  change n < 37 at hn
'''
    text += '  have hc : ' + ' ∨ '.join(f'n = {i}' for i in range(37)) + ' := by omega\n'
    text += '  rcases hc with ' + ' | '.join('h' for _ in range(37)) + '\n'
    text += ''.join(f'  · subst n\n    exact numerator_certificate_{i:02}\n' for i in range(37))
    text += '\nend CriticalZeroSumAssembly20261003\n'
    emit('NumeratorChecks', text)
    imports = ''.join(f'import {PREFIX}Group{i:02}Exact\n' for i in range(11))
    imports += f'import {PREFIX}NumeratorChecks\nimport {PREFIX}NumeratorBindings\n\n'
    text = imports + header + f'''
noncomputable section
variable {{K : Type*}} [Field K] [CharZero K]

/-- Assemble the same numerator from the checked archived groups. -/
theorem computed_coefficients_eq_rawNumerator (X Y z : K) :
    Coefficients.eval z (allCommonCoefficients X Y) = rawNumerator X Y z := by
  have hall : Coefficients.eval z (allCommonCoefficients X Y) =
      Coefficients.eval z (ExprCoefficients.interpret X Y groupedNumeratorExpanded) := by
    rw [← allCommonExprCoefficients_interpret, ← groupedNumeratorOriginal_eval]
    simp only [groupedNumeratorOriginal, groupedNumeratorExpanded,
      ExprCoefficients.interpret_add, Coefficients.eval_add,
      {', '.join(f'numerator_group{i:02}_eval_identity' for i in range(11))}]
  rw [hall]
  have h := DenseCoefficients.allZero_of_certificates X Y groupedNumeratorResidual
    numerator_all_certificates
  rw [groupedNumeratorResidual_interpret] at h
  have hv := Coefficients.eval_allZero z _ h
  rw [Coefficients.eval_add, Coefficients.eval_neg,
    rawNumeratorExprCoefficients_interpret] at hv
  exact sub_eq_zero.mp (by simpa only [rawNumerator, sub_eq_add_neg] using hv)

end
end CriticalZeroSumAssembly20261003
'''
    emit('NumeratorIdentity', text)

manifest = {'scope': scope, 'status': 'GENERATED_UNCOMPILED', 'records': records,
            'data_generated': False, 'atlas_certification': False,
            'coefficient_indices': [18] if args.pilot else list(range(37)),
            'remaining': 'All11group identities, all37sum coefficients and final assembly must compile.'}
suffix = '_PILOT' if args.pilot else ''
(AUDIT / f'CRITICAL_ZERO_NUMERATOR{suffix}_MANIFEST.json').write_text(json.dumps(manifest, indent=2) + '\n')
print('Generated grouped numerator ' + ('midpoint pilot' if args.pilot else 'assembly') + '; no new polynomial data.')
