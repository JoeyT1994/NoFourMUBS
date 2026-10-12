"""Reify the printed final goals in the existing dense coefficient operations.

No new normalizer and no new numerator witness. Lean must check both the
interpretation of these expressions and every requested coefficient equality.
"""
from pathlib import Path
import ast
import hashlib
import json
import re

from prepare_nonzero_moment_clearing import CTX, FACTORS, integer_coefficients
from reuse_preflight import require_reuse_review

ROOT = Path(__file__).resolve().parent.parent
AUDIT = ROOT / 'audit'
DC = 'CriticalZeroSumAssembly20261003.DenseCoefficients'
C = 'CriticalZeroSplitReduction20261003.Coefficients'
IR = 'CriticalZeroSplitReduction20261003.IntegerReflector'
CO = 'CriticalZeroSumAssembly20261003.Coefficients'
NS = 'NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4'


def main():
    require_reuse_review('critical_nonzero_raw_clearing')
    log_path = AUDIT/'NONZERO_COMPACT_CLEARED_GOAL_FULL.log'
    log = log_path.read_text()
    review = json.loads((AUDIT/'CRITICAL_NONZERO_LARGE_GOAL_EXACT_DIAGNOSTIC.json').read_text())
    assert hashlib.sha256(log_path.read_bytes()).hexdigest() == review['log_sha256']
    assert '⋯' not in log
    errors = [line for line in log.splitlines() if 'error:' in line]
    assert len(errors) == 2 and all('Diagnostic stop before large polynomial check' in e for e in errors)
    aliases = {name: 'f'+str(i) for i, name in enumerate(FACTORS) if name not in ['X', 'Y']}
    leaf_values = {'X': 'X', 'Y': 'Y', 'k': 'k'}
    leaf_polys = dict(zip(['X', 'Y', 'k'], CTX.gens()[:3]))
    for name, alias in aliases.items():
        leaf_values[alias] = name
        leaf_polys[alias] = FACTORS[name]

    def parse(text):
        for name, alias in sorted(aliases.items(), key=lambda p: -len(p[0])):
            text = re.sub(r'\b'+r'\s+'.join(map(re.escape, name.split()))+r'\b', alias, text)
        return ast.parse(' '.join(text.split()).replace('^', '**'), mode='eval').body

    nodes = []
    known = {}

    def intern(node):
        key = ast.dump(node)
        if key in known:
            return known[key]
        record = {'ast': key}
        if isinstance(node, ast.Name):
            assert node.id in leaf_values
            scale, rows = integer_coefficients(leaf_polys[node.id])
            assert scale == 1
            record.update(kind='leaf', scalar=leaf_values[node.id], rows=rows, length=len(rows))
        elif isinstance(node, ast.Constant):
            assert type(node.value) is int
            record.update(kind='leaf', scalar=f'({node.value} : F)', rows=[[[node.value]]], length=1)
        elif isinstance(node, ast.UnaryOp):
            assert isinstance(node.op, ast.USub)
            a = intern(node.operand)
            record.update(kind='neg', a=a, length=nodes[a]['length'])
        else:
            assert isinstance(node, ast.BinOp)
            a = intern(node.left)
            if isinstance(node.op, ast.Pow):
                assert isinstance(node.right, ast.Constant) and type(node.right.value) is int and node.right.value >= 0
                record.update(kind='pow', a=a, exponent=node.right.value,
                              length=node.right.value*(nodes[a]['length']-1)+1)
            else:
                b = intern(node.right)
                kind = {ast.Add: 'add', ast.Sub: 'sub', ast.Mult: 'mul'}[type(node.op)]
                length = nodes[a]['length']+nodes[b]['length']-1 if kind == 'mul' else max(nodes[a]['length'], nodes[b]['length'])
                record.update(kind=kind, a=a, b=b, length=length)
        i = len(nodes)
        known[key] = i
        nodes.append(record)
        return i

    roots = {}
    for component, block in zip(['a', 'b'], log.split('⊢')[1:]):
        goal = block.split('../audit/', 1)[0].strip()
        assert goal.count('=') == 1
        lhs, rhs = goal.split('=')
        roots[component] = {'lhs': intern(parse(lhs)), 'rhs_printed': rhs.strip()}
    roots['a']['factor'] = intern(parse('2 * X * Y * h k'))
    roots['b']['factor'] = intern(parse('4 * X ^ 2 * Y * h k ^ 4'))

    header = f'''import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Data_p2_m4
import NoFourMUBs.Reuse.Archive.CriticalZeroSumBinaryCertificate

/-! Static expression adapter for the exact final denominator-clearing goals.
The existing dense operations and their soundness lemmas do all arithmetic. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
noncomputable section
namespace {NS}
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
variable {{F : Type*}} [Field F] [CharZero F]

'''
    source = header
    eval_names = []
    for i, node in enumerate(nodes):
        name = f'e{i:03d}'
        value = f'v{i:03d}'
        kind = node['kind']
        if kind == 'leaf':
            dense = json.dumps(node['rows'], separators=(',', ':'))
            scalar = node['scalar']
            proof = f'''  simp only [{name}, {value}, {DC}.interpret, {C}.eval,
    {IR}.evalII, {IR}.evalI, Int.cast_ofNat, Int.cast_neg, Int.cast_zero,
    Int.cast_one, mul_zero, zero_mul, add_zero, zero_add, mul_one]
  try dsimp only [h, plusFactor, minusFactor, thirdPlusFactor, thirdMinusFactor]
  <;> ring
'''
        else:
            a = node['a']
            da, va, ea = f'e{a:03d}', f'v{a:03d} X Y k', f'e{a:03d}_eval'
            if kind == 'neg':
                dense = f'{DC}.neg {da}'
                scalar = f'-({va})'
                lemmas = [f'{DC}.interpret_neg', f'{C}.eval_neg', ea]
            elif kind == 'pow':
                dense = f'{DC}.pow {da} {node["exponent"]}'
                scalar = f'({va})^{node["exponent"]}'
                lemmas = [f'{DC}.interpret_pow', f'{CO}.eval_pow', ea]
            else:
                b = node['b']
                db, vb, eb = f'e{b:03d}', f'v{b:03d} X Y k', f'e{b:03d}_eval'
                if kind == 'sub':
                    dense = f'{DC}.add {da} ({DC}.neg {db})'
                    scalar = f'({va})-({vb})'
                    lemmas = [f'{DC}.interpret_add', f'{DC}.interpret_neg', f'{C}.eval_add', f'{C}.eval_neg', ea, eb, 'sub_eq_add_neg']
                elif kind == 'add':
                    dense = f'{DC}.add {da} {db}'
                    scalar = f'({va})+({vb})'
                    lemmas = [f'{DC}.interpret_add', f'{C}.eval_add', ea, eb]
                else:
                    dense = f'{DC}.mul {da} {db}'
                    scalar = f'({va})*({vb})'
                    lemmas = [f'{DC}.interpret_mul', f'{CO}.eval_mul', ea, eb]
            proof = '  simp only ['+', '.join([name, value]+list(dict.fromkeys(lemmas)))+']\n'
        source += f'''def {name} : List {DC}.XY := {dense}
def {value} (X Y k : F) : F := {scalar}
theorem {name}_eval (X Y k : F) :
    {C}.eval k ({DC}.interpret X Y {name}) = {value} X Y k := by
{proof}
'''
        eval_names.append(NS+'.'+name+'_eval')

    for component, r in roots.items():
        lhs, factor = f'e{r["lhs"]:03d}', f'e{r["factor"]:03d}'
        data = f'numerator_p2_m4_{component}_coefficients'
        source += f'''def target_{component} : List {DC}.XY :=
  {DC}.mul {factor} {data}
def residual_{component} : List {DC}.XY :=
  {DC}.add {lhs} ({DC}.neg target_{component})

theorem residual_{component}_eval (X Y k : F) :
    {C}.eval k ({DC}.interpret X Y residual_{component}) =
      v{r['lhs']:03d} X Y k - v{r['factor']:03d} X Y k *
        {C}.eval k ({DC}.interpret X Y {data}) := by
  simp only [residual_{component}, target_{component}, {DC}.interpret_add,
    {DC}.interpret_neg, {DC}.interpret_mul, {C}.eval_add,
    {C}.eval_neg, {CO}.eval_mul, {lhs}_eval, {factor}_eval, sub_eq_add_neg]

'''
        # The input data has no trailing zero rows. Every static expression list
        # is nonempty, so add/mul lengths follow max and sum-minus-one.
        denominator_scale, rows = integer_coefficients(
            __import__('prepare_nonzero_moment_clearing').fmpq_mpoly(
                json.loads((AUDIT/'CRITICAL_NONZERO_PAIRED_COEFFICIENT_CANDIDATES.json').read_text())['records']['p2_m4'][component]['numerator'], CTX))
        r['integer_scale'] = denominator_scale
        r['length'] = max(nodes[r['lhs']]['length'], nodes[r['factor']]['length']+len(rows)-1)
    source += '\n#print axioms residual_a_eval\n#print axioms residual_b_eval\nend '+NS+'\n'
    out = ROOT/'lean/NoFourMUBs/Step2/CriticalZero/ClearedMoments/PolynomialChecks'
    out.mkdir(exist_ok=True)
    p = out/'P2M4.lean'
    p.write_text(source)
    pilot = out/'P2M4CheckA22.lean'
    pilot.write_text(f'''import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace {NS}
theorem coefficient_a_22 :
    {IR}.zeroII (residual_a.getD 22 []) = true := by
  rfl
#print axioms coefficient_a_22
end {NS}
''')
    records = []
    for path in [p, pilot]:
        rel = str(path.relative_to(ROOT/'lean'))
        records.append({'module': rel.removesuffix('.lean').replace('/', '.'), 'active_path': rel,
                        'active_sha256': hashlib.sha256(path.read_bytes()).hexdigest(),
                        'local_model_adapter': True, 'review': 'CRITICAL_NONZERO_RAW_CLEARING_REVIEW.json'})
    manifest = {'scope': 'critical_nonzero_raw_clearing', 'records': records,
                'status': 'PREPARED_NOT_COMPILED', 'nodes': len(nodes), 'roots': roots,
                'original_goal_log_sha256': review['log_sha256'], 'axiom_endpoints': eval_names,
                'atlas_certification': False}
    (AUDIT/'CRITICAL_NONZERO_POLYNOMIAL_PILOT_MANIFEST.json').write_text(json.dumps(manifest, indent=2)+'\n')
    (AUDIT/'CRITICAL_NONZERO_POLYNOMIAL_EXPRESSION_DAG.json').write_text(json.dumps({'nodes': nodes, 'roots': roots}, indent=2)+'\n')
    print(json.dumps({'nodes': len(nodes), 'roots': roots, 'new_numerator_data': False}))


if __name__ == '__main__':
    main()
