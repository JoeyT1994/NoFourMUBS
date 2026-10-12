"""Read-only exact-value diagnostic for the existing archived expressions.

This is not a Lean certificate and never generates replacement polynomial data.
Only the explicitly supported prefix expression constructors are interpreted.
"""
from functools import lru_cache
from pathlib import Path
import hashlib
import json
import re

AUDIT = Path(__file__).resolve().parent
ROOT = AUDIT.parent
plan = json.loads((AUDIT / 'CRITICAL_ZERO_SCALAR_REUSE_PLAN.json').read_text())
definitions = {}
hashes = {}
for record in plan['selected'].values():
    path = ROOT / record['file']
    raw = path.read_bytes()
    assert hashlib.sha256(raw).hexdigest() == record['sha256']
    hashes[path.name] = record['sha256']
    for name, expression in re.findall(r'^def (\w+) : (?:List HExpr|HExpr) := (.+)$', raw.decode(), re.M):
        assert name not in definitions or definitions[name] == expression
        definitions[name] = expression

arity = {'.lit': 1, '.x': 0, '.y': 0, '.add': 2, '.neg': 1,
         '.mul': 2, '.pow': 2, '.mulX': 2, '.mulY': 2,
         'ExprCoefficients.add': 2, 'ExprCoefficients.neg': 1,
         'ExprCoefficients.scale': 2, 'ExprCoefficients.shift': 2,
         'ExprCoefficients.mul': 2, 'ExprCoefficients.pow': 2}
token = re.compile(r'\s*(?:([A-Za-z_.][A-Za-z_0-9.]*)|(-?\d+)|([()[\],]))')


@lru_cache(None)
def parse_name(name):
    source = definitions[name]
    tokens = []
    position = 0
    while position < len(source):
        match = token.match(source, position)
        assert match is not None, (name, source[position:position+50])
        tokens.append(next(x for x in match.groups() if x is not None))
        position = match.end()
    i = 0

    def parse():
        nonlocal i
        t = tokens[i]
        i += 1
        if t == '(':
            value = parse()
            assert tokens[i] == ')'
            i += 1
            return value
        if t == '[':
            values = []
            while tokens[i] != ']':
                values.append(parse())
                if tokens[i] == ',':
                    i += 1
                else:
                    assert tokens[i] == ']'
            i += 1
            return ('list', *values)
        if re.fullmatch(r'-?\d+', t):
            return int(t)
        if t in arity:
            return (t, *(parse() for _ in range(arity[t])))
        assert t in definitions, (name, t)
        return ('ref', t)

    result = parse()
    assert i == len(tokens), (name, tokens[i:])
    return result


def evaluate_at(x, y, z):
    @lru_cache(None)
    def named(name):
        return evaluate(parse_name(name))

    def evaluate(node):
        if isinstance(node, int):
            return node
        op, *children = node
        if op == 'ref':
            return named(children[0])
        values = [evaluate(child) for child in children]
        if op == 'list':
            return sum(a * z**i for i, a in enumerate(values))
        if op == '.x': return x
        if op == '.y': return y
        if op == '.lit': return values[0]
        if op in ('.add', 'ExprCoefficients.add'): return values[0] + values[1]
        if op in ('.neg', 'ExprCoefficients.neg'): return -values[0]
        if op in ('.mul', 'ExprCoefficients.mul', 'ExprCoefficients.scale'): return values[0] * values[1]
        if op in ('.pow', 'ExprCoefficients.pow'): return values[0] ** values[1]
        if op == '.mulX': return values[0] * x**values[1]
        if op == '.mulY': return values[0] * y**values[1]
        if op == 'ExprCoefficients.shift': return z**values[0] * values[1]
        raise AssertionError(op)

    return named('numeratorExprResidual'), named('denominatorExprResidual')


points = [(1, 2, 3), (2, 5, -2), (0, 0, 1), (3, -1, 0), (7, 11, -3), (-2, 4, 5)]
results = []
for point in points:
    numerator, denominator = evaluate_at(*point)
    results.append({'point': point, 'numerator_residual': str(numerator),
                    'denominator_residual': str(denominator)})
    print(point, 'numerator zero:', numerator == 0, 'denominator zero:', denominator == 0, flush=True)
receipt = {'status': 'EXACT_VALUE_DIAGNOSTIC_NOT_A_PROOF', 'points': results,
           'source_hashes': hashes, 'parsed_definitions': parse_name.cache_info().currsize}
(AUDIT / 'CRITICAL_ZERO_NUMERATOR_VALUE_DIAGNOSTIC.json').write_text(json.dumps(receipt, indent=2) + '\n')
