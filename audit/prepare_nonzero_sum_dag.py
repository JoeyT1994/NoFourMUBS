"""Bind the checked 66 factored terms to the existing polynomial evaluator.

No polynomial is expanded and no coefficient certificate is generated here.
Identical subexpressions reuse the previously checked moment DAGs. Every new
composition and its connection to the original term must be checked by Lean.
"""
from pathlib import Path
import hashlib
import json
import re

from prepare_nonzero_polynomial_checks import DC, C, IR, CO
from prepare_nonzero_sum_clearing import monomial
from reuse_preflight import require_reuse_review

ROOT = Path(__file__).resolve().parent.parent
AUDIT = ROOT / 'audit'
OUT = ROOT / 'lean/NoFourMUBs/Step2/CriticalZero/SumClearing'
BASE = 'NoFourMUBs.Step2.CriticalZero.SumClearing.'
NS = 'NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions'
OLD = 'NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.'
RAW = 'NoFourMUBs.Step2.Critical.NonzeroRawNumerator'


def freeze(x):
    return tuple(map(freeze, x)) if isinstance(x, (list, tuple)) else x


def main():
    require_reuse_review('critical_nonzero_raw_clearing')
    review = json.loads((AUDIT / 'CRITICAL_NONZERO_SUM_DAG_REUSE_REVIEW.json').read_text())
    for path, digest in review['source_pins'].items():
        assert hashlib.sha256((ROOT / path).read_bytes()).hexdigest() == digest
    for name in review['dependency_audits']:
        d = json.loads((AUDIT / name).read_text())
        assert d['status'] == 'PASS'
        for path, digest in (d['source_hashes'] | d.get('dependency_source_hashes', {})).items():
            assert hashlib.sha256((ROOT / 'lean' / path).read_bytes()).hexdigest() == digest
    expressions = json.loads((AUDIT / 'CRITICAL_NONZERO_SUM_CLEARING_EXPRESSIONS.json').read_text())
    bindings = json.loads((AUDIT / 'CRITICAL_NONZERO_SUM_PRIMITIVE_BINDINGS.json').read_text())
    old = json.loads((AUDIT / 'CRITICAL_NONZERO_P2P2_EXPRESSION_DAG.json').read_text())
    scalar_keys = {'X': 'X', 'Y': 'Y', 'k': 'k', 'h k': 'H',
                   'plusFactor X k': 'FXp', 'minusFactor X k': 'FXm',
                   'plusFactor Y k': 'FYp', 'minusFactor Y k': 'FYm',
                   'thirdPlusFactor X Y k': 'FZp', 'thirdMinusFactor X Y k': 'FZm'}
    scalar_values = {v: k for k, v in scalar_keys.items()}
    scalar_values['two'] = '(2 : ℂ)'
    old_keys, available = [], {}
    for i, node in enumerate(old['nodes']):
        kind = node['kind']
        if kind == 'leaf':
            scalar = node['scalar']
            if scalar in scalar_keys:
                key = ('leaf', scalar_keys[scalar])
            else:
                m = re.fullmatch(r'\((-?\d+) : F\)', scalar)
                assert m, scalar
                key = ('int', int(m[1]))
        elif kind in ['neg', 'pow']:
            key = (kind, old_keys[node['a']])
            if kind == 'pow':
                key += (node['exponent'],)
        else:
            key = (kind, old_keys[node['a']], old_keys[node['b']])
        old_keys.append(key)
        owner = 'P2M4' if i < old['original_count'] else 'P2P2'
        available.setdefault(key, {'old_index': i, 'dense': OLD + owner + f'.s{i:03d}',
                                  'scalar_ref': OLD + owner + f'.v{i:03d}',
                                  'eval': OLD + owner + f'.s{i:03d}_eval',
                                  'length': node['length']})

    nodes, known, reused = [], {}, []

    def intern(term):
        term = freeze(term)
        if term in known:
            return known[term]
        kind = term[0]
        n = {'ast': term, 'kind': kind}
        if term in available:
            n.update(available[term], kind='reuse')
            reused.append(n['old_index'])
        elif kind == 'leaf':
            key = term[1]
            n.update(bindings[key], key=key)
            n['scalar'] = ('integerNumerator_' + key[2:] + ' X Y k') if key.startswith('N_') else scalar_values[key]
        elif kind == 'int':
            n['integer'] = term[1]
        else:
            n['a'] = intern(term[1])
            if kind == 'pow':
                n['exponent'] = term[2]
            elif kind != 'neg':
                assert kind in ['add', 'mul']
                n['b'] = intern(term[2])
        i = len(nodes)
        known[term] = i
        nodes.append(n)
        return i

    roots = [intern(t) for t in expressions['scaled_terms']]
    multiplier = intern(monomial(expressions['integer_multiplier']))
    records, endpoints = [], []

    def header(imports):
        return '\n'.join('import ' + x for x in imports) + f'''
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace {NS}
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
'''

    def save(name, source):
        p = OUT / (name + '.lean')
        assert not p.exists(), p
        p.write_text(source + '\nend ' + NS + '\n')
        records.append({'module': BASE + name, 'active_path': str(p.relative_to(ROOT / 'lean')),
                        'active_sha256': hashlib.sha256(p.read_bytes()).hexdigest(),
                        'local_model_adapter': True, 'review': 'CRITICAL_NONZERO_SUM_DAG_REUSE_REVIEW.json'})

    def definition(i):
        n = nodes[i]
        kind, name, value = n['kind'], f'e{i:04d}', f'v{i:04d}'
        if kind == 'reuse':
            dense, scalar = n['dense'], n['scalar_ref'] + ' X Y k'
            proof = 'exact ' + n['eval'] + ' X Y k'
        elif kind == 'leaf':
            dense, scalar = n['dense'], n['scalar']
            proof = 'exact ' + n['eval'] + ' X Y k'
        elif kind == 'int':
            dense, scalar = f'[[[{n["integer"]}]]]', f'({n["integer"]} : ℂ)'
            proof = f'norm_num [{name},{value},{DC}.interpret,{C}.eval,{IR}.evalII,{IR}.evalI]'
        else:
            a = n['a']
            da, va, ea = f'e{a:04d}', f'v{a:04d} X Y k', f'e{a:04d}_eval'
            if kind == 'neg':
                dense, scalar = f'{DC}.neg {da}', f'-({va})'
                lemmas = [f'{DC}.interpret_neg', f'{C}.eval_neg', ea]
            elif kind == 'pow':
                dense, scalar = f'{DC}.pow {da} {n["exponent"]}', f'({va})^{n["exponent"]}'
                lemmas = [f'{DC}.interpret_pow', f'{CO}.eval_pow', ea]
            else:
                b = n['b']
                db, vb, eb = f'e{b:04d}', f'v{b:04d} X Y k', f'e{b:04d}_eval'
                dense = f'{DC}.{kind} {da} {db}'
                scalar = f'({va})' + ('+' if kind == 'add' else '*') + f'({vb})'
                lemmas = [f'{DC}.interpret_{kind}', f'{C if kind == "add" else CO}.eval_{kind}', ea, eb]
            proof = 'simp only [' + ','.join(dict.fromkeys([name, value] + lemmas)) + ']'
        endpoints.append(NS + '.' + name + '_eval')
        return f'''def {name} : List {DC}.XY := {dense}
def {value} (X Y k : ℂ) : ℂ := {scalar}
theorem {name}_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y {name}) = {value} X Y k := by
  {proof}
'''

    previous = [BASE + 'Primitives',
                'NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Final']
    for start in range(0, len(nodes), 48):
        name = f'Expressions{start // 48:02d}'
        source = header(previous)
        for i in range(start, min(start + 48, len(nodes))):
            source += definition(i)
        save(name, source)
        previous = [BASE + name]

    source = header(previous + [BASE + 'Assembly', 'NoFourMUBs.Step2.CriticalZero.RawNumerator.Data'])
    for j, i in enumerate(roots):
        name = f'term{j:02d}_expression_eval'
        source += f'''theorem {name} (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y e{i:04d}) = scaledTerm{j:02d} X Y k :=
  e{i:04d}_eval X Y k
'''
        endpoints.append(NS + '.' + name)
    summed = f'e{roots[0]:04d}'
    for i in roots[1:]:
        summed = f'({DC}.add {summed} e{i:04d})'
    source += f'''def sumExpression : List {DC}.XY := {summed}
theorem sumExpression_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y sumExpression) = computedNumerator X Y k := by
  simp only [sumExpression,computedNumerator,{DC}.interpret_add,{C}.eval_add,
    ''' + ',\n    '.join(f'term{j:02d}_expression_eval' for j in range(66)) + ''']
'''
    source += f'''theorem multiplierExpression_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y e{multiplier:04d}) = integerMultiplier X Y k :=
  e{multiplier:04d}_eval X Y k
def targetExpression : List {DC}.XY := {DC}.mul e{multiplier:04d} {RAW}.coefficients
theorem targetExpression_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y targetExpression) =
      integerMultiplier X Y k * {RAW}.rawIntegerNumerator X Y k := by
  simp only [targetExpression,{DC}.interpret_mul,{CO}.eval_mul,
    multiplierExpression_eval,{RAW}.rawIntegerNumerator]
'''
    endpoints += [NS + '.' + x for x in ['sumExpression_eval', 'multiplierExpression_eval', 'targetExpression_eval']]
    save('Expressions', source)
    pins = {}
    for path, digest in review['source_pins'].items():
        if path.startswith('lean/'):
            pins[path[5:]] = digest
    manifest = {'scope': 'critical_nonzero_raw_clearing', 'records': records,
                'axiom_endpoints': endpoints,
                'dependency_pins': [{'active_path': p, 'active_sha256': d} for p, d in pins.items()],
                'dependency_audits': review['dependency_audits'],
                'status': 'PREPARED_NOT_COMPILED', 'atlas_certification': False,
                'raw_numerator_identity_claimed': False, 'expanded_polynomial_data': False,
                'reused_exact_subexpressions': sorted(set(reused)), 'new_nodes': len(nodes)}
    (AUDIT / 'CRITICAL_NONZERO_SUM_DAG_MANIFEST.json').write_text(json.dumps(manifest, indent=2) + '\n')
    (AUDIT / 'CRITICAL_NONZERO_SUM_DAG.json').write_text(json.dumps({'nodes': nodes, 'roots': roots, 'multiplier': multiplier}, indent=2) + '\n')
    print(json.dumps({'modules': len(records), 'endpoints': len(endpoints), 'nodes': len(nodes), 'reused': len(set(reused))}))


if __name__ == '__main__':
    main()
