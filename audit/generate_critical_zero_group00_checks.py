"""Check an existing numerator group without generating polynomial data.

Group00 reuses the archived trip00 certificate; the other groups use the archived
dense common terms directly. No polynomial arrays or normalizer are generated.
"""
from pathlib import Path
import argparse
import hashlib
import json
import re
from reuse_preflight import require_reuse_review

parser = argparse.ArgumentParser()
parser.add_argument('--group', choices=[f'{i:02}' for i in range(11)], default='00')
parser.add_argument('--pilot', action='store_true', help='Only the midpoint18 check')
args = parser.parse_args()
if args.pilot:
    assert int(args.group) >= 2, 'Existing group00/01 pilots are already checked.'
    scope = 'critical_zero_remaining_group_pilots'
elif args.group == '00':
    scope = 'critical_zero_group_trip_checks'
elif args.group == '01':
    scope = 'critical_zero_group_dense_checks'
else:
    scope = f'critical_zero_group{args.group}_checks'
require_reuse_review(scope)
AUDIT = Path(__file__).resolve().parent
ROOT = AUDIT.parent
LEAN = ROOT / 'lean'
DEST = LEAN / 'NoFourMUBs/Step2/CriticalZero'
PREFIX = 'NoFourMUBs.Step2.CriticalZero.'
records = []
ordinals = ['first', 'second', 'third', 'fourth', 'fifth', 'sixth',
            'seventh', 'eighth', 'ninth', 'tenth', 'eleventh']


def group_name(name):
    return name.replace('Group00', f'Group{args.group}')


def group_text(text):
    if args.group == '00':
        return text
    replacements = [
        ('group00TripResidual_eval', 'group01DenseResidual_interpret'),
        ('group00TripResidual', 'group01DenseResidual'),
        ('group00_all_certificates', 'group01_all_certificates'),
        ('group00_coefficient_', 'group01_coefficient_'),
        ('numerator_group00_eval_identity', 'numerator_group01_eval_identity'),
        ('numeratorGroupOriginal_00', 'numeratorGroupOriginal_01'),
        ('numeratorGroupExpanded_00', 'numeratorGroupExpanded_01'),
        ('numeratorGroupResidual_00', 'numeratorGroupResidual_01'),
        ('CommonGroup00', 'CommonGroup01'),
        ('Group00Check', 'Group01Check'),
        ('original first group', 'original second group'),
    ]
    for before, after in replacements:
        after = after.replace('01', args.group).replace('second', ordinals[int(args.group)])
        text = text.replace(before, after)
    return text


def record(name):
    name = group_name(name)
    path = DEST / (name + '.lean')
    records.append({'module': PREFIX + name,
                    'active_path': str(path.relative_to(LEAN)),
                    'active_sha256': hashlib.sha256(path.read_bytes()).hexdigest()})


def save(name, text):
    name, text = group_name(name), group_text(text)
    path = DEST / (name + '.lean')
    if path.exists():
        assert path.read_text() == text, f'Preserve local edits: {path}'
    else:
        path.write_text(text)
    record(name)


if args.group != '00':
    reused = json.loads((AUDIT / 'CRITICAL_ZERO_SCALAR_REUSE_MANIFEST.json').read_text())
    terms = range(6 * int(args.group), 6 * int(args.group) + 6)
    bindings = sorted({n // 11 for n in terms})
    # Preserve the original group01 manifest and its checked receipts.
    recorded_bindings = [1] if args.group == '01' else bindings
    names = [f'CriticalZeroSumDenseCommonBindings{i:02}' for i in recorded_bindings]
    names.append(f'CriticalZeroSumNumeratorGroupData{args.group}')
    for name in names:
        row = next(r for r in reused['records'] if r['original_module'] == name)
        assert hashlib.sha256((LEAN / row['active_path']).read_bytes()).hexdigest() == row['active_sha256']
        records.append(row)
if int(args.group) >= 2:
    # The checked group01 adapter is a model/index template, not new arithmetic.
    template = (DEST / 'CommonGroup01.lean').read_text()
    template = template[template.index('set_option autoImplicit false'):]
    template = template.replace('group01', f'group{args.group}')
    template = template.replace('GroupOriginal_01', f'GroupOriginal_{args.group}')
    template = template.replace('GroupExpanded_01', f'GroupExpanded_{args.group}')
    template = template.replace('GroupResidual_01', f'GroupResidual_{args.group}')
    template = template.replace('second archived group', f'{ordinals[int(args.group)]} archived group')
    offset = 6 * int(args.group) - 6
    template = re.sub(r'(common(?:Dense|Expr)Coefficients_)(\d\d)',
                      lambda m: m[1] + f'{int(m[2]) + offset:02}', template)
    imports = [f'NoFourMUBs.Reuse.Archive.CriticalZeroSum{kind}CommonBindings{i:02}'
               for kind in ['Dense', 'Expr'] for i in bindings]
    imports.append(f'NoFourMUBs.Reuse.Archive.CriticalZeroSumNumeratorGroupData{args.group}')
    save('CommonGroup00', ''.join(f'import {m}\n' for m in imports) + '\n' + template)
else:
    record('CommonGroup00')
header = ('set_option autoImplicit false\n'
          'set_option maxRecDepth 100000\n'
          'set_option maxHeartbeats 1500000\n'
          'namespace CriticalZeroSumAssembly20261003\n'
          'open CriticalZeroSplitReduction20261003\n\n')
for n in ([18] if args.pilot else range(37)):
    save(f'Group00Check{n:02d}',
         'import ' + PREFIX + 'CommonGroup00\n\n' + header +
         f'theorem group00_coefficient_{n:02d} :\n'
         f'    IntegerReflector.zeroII (group00TripResidual.getD {n} []) = true := by\n'
         '  rfl\n\nend CriticalZeroSumAssembly20261003\n')

text = ''.join(f'import {PREFIX}Group00Check{n:02d}\n' for n in range(37))
text += 'import Lean.Elab.Tactic.Omega\n\n' + header
text += ('theorem group00_all_certificates (n : ℕ) (hn : n < group00TripResidual.length) :\n'
         '    IntegerReflector.zeroII (group00TripResidual.getD n []) = true := by\n'
         '  change n < 37 at hn\n'
         '  have hc : ' + ' ∨ '.join(f'n = {n}' for n in range(37)) + ' := by omega\n'
         '  rcases hc with ' + ' | '.join('h' for _ in range(37)) + '\n')
text += ''.join(f'  · subst n\n    exact group00_coefficient_{n:02d}\n' for n in range(37))
text += '''
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

/-- Evaluation of the original first group equals its archived expansion. -/
theorem numerator_group00_eval_identity (X Y z : K) :
    Coefficients.eval z (ExprCoefficients.interpret X Y numeratorGroupOriginal_00) =
      Coefficients.eval z (ExprCoefficients.interpret X Y numeratorGroupExpanded_00) := by
  have hz := Coefficients.eval_allZero z
    (DenseCoefficients.interpret X Y group00TripResidual)
    (DenseCoefficients.allZero_of_certificates X Y group00TripResidual group00_all_certificates)
  rw [group00TripResidual_eval, numeratorGroupResidual_00,
    ExprCoefficients.interpret_add, ExprCoefficients.interpret_neg,
    Coefficients.eval_add, Coefficients.eval_neg] at hz
  exact sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)

end
end CriticalZeroSumAssembly20261003
'''
if not args.pilot:
    save('Group00Exact', text)
manifest = {'scope': scope,
            'status': 'GENERATED_NOT_CHECKED',
            'records': records,
            'coefficient_count': 37,
            'data_generated': False,
            'reused_group_data': 'CriticalZeroSumNumeratorGroupData00',
            'reused_product': 'CriticalZeroSumTrip00Exact',
            'resource_pilots': ['CRITICAL_ZERO_GROUP_TRIP_PILOT.log',
                                'CRITICAL_ZERO_GROUP_TRIP_MIDPOINT_PILOT.log'],
            'remaining': 'The other10 groups and final numerator equality are still open.'}
if args.group != '00':
    manifest['reused_group_data'] = f'CriticalZeroSumNumeratorGroupData{args.group}'
    manifest.pop('reused_product')
    manifest['reused_dense_data'] = 'CriticalZeroSumDenseCommonData'
    manifest['resource_pilots'] = [f'CRITICAL_ZERO_GROUP{args.group}_PILOT_BUILD.log']
    manifest['remaining'] = f'All group{args.group} coefficients and assembly require checks; the complete numerator is still open.'
suffix = '_PILOT' if args.pilot else ''
if args.pilot:
    manifest['generated_coefficient_indices'] = [18]
(AUDIT / f'CRITICAL_ZERO_GROUP{args.group}{suffix}_MANIFEST.json').write_text(json.dumps(manifest, indent=2) + '\n')
print(f'Generated {"midpoint18 pilot" if args.pilot else "37closed checks and finite assembly"} for group{args.group}; archived polynomial data unchanged.')
