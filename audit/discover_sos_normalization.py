"""Inventory only the additional moment normalization needed by the ONE SOS.

Reuse the upstream node/coordinate/soundness data whenever present. The output
is a proof-generation plan, not a claim that the new semantic lemmas are proved.
All reduced rows and the target are compared exactly with the selected system.
"""
from pathlib import Path
from fractions import Fraction as Q
from functools import lru_cache
import ast
import argparse
import collections
import gzip
import json
import re
import runpy
import textwrap
from reuse_preflight import require_reuse_review

require_reuse_review('moment_normalization')

parser = argparse.ArgumentParser()
parser.add_argument('--pending-only', action='store_true',
                    help='Exclude equations already supplied by upstream boundary lemmas.')
args = parser.parse_args()

ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT.parent / 'lean_proof_2026_10_09' / 'verify_one_identity.py'
module = runpy.run_path(str(SOURCE), run_name='sos_normalization_discovery')
ns = module['ns']
canon, tr, order, lin, add = (module[k] for k in ('canon', 'tr', 'order', 'lin', 'add'))
data = json.load(gzip.open(ROOT / 'audit/sos/unprojected_system.json.gz', 'rt'))
upstream = ROOT / 'lean/vendor/fourier/OAI/Analysis/MutuallyUnbiased/PairSemantics'


def matrix(s):
    return tuple(map(tuple, ast.literal_eval(s.replace('!', ''))))


nodes, values, coordinates, canonical_raw = {}, {}, {}, {}
for p in upstream.glob('Nodes*.lean'):
    for m in re.finditer(r'def node(\d+) : Matrix \(Fin \d+\) \(Fin \d+\) ℤ := (.*)', p.read_text()):
        nodes[matrix(m[2])] = int(m[1])
for p in upstream.glob('Values*.lean'):
    for m in re.finditer(r'def value(\d+) : Sparse \(Fin 909\) := (.*)', p.read_text()):
        values[int(m[1])] = {int(i): Q(int(a), int(b)) for i, a, b in
                            re.findall(r'\((\d+), \((-?\d+) / (\d+)\)\)', m[2])}
for p in upstream.glob('Coordinates*.lean'):
    for m in re.finditer(r'def coordinate(\d+) : ExponentCode := ⟨\d+, \d+, (.*)⟩', p.read_text()):
        coordinates[int(m[1])] = matrix(m[2])
for p in upstream.glob('Canonical*.lean'):
    for m in re.finditer(r'def raw(\d+) : Matrix \(Fin \d+\) \(Fin \d+\) ℤ := (.*)', p.read_text()):
        canonical_raw[matrix(m[2])] = int(m[1])

steps, raw_inputs, reused = {}, set(), set()


@lru_cache(None)
def reduce(A):
    assert canon(A) == A
    if A in nodes:
        i = nodes[A]
        reused.add(i)
        return {coordinates[j]: c for j, c in values[i].items()}
    for orientation, B in enumerate((A, tr(A))):
        for i, a in enumerate(B):
            if order(a) != 1:
                continue
            C = B[:i] + B[i+1:]
            children = [C[:j] + (tuple(x+y for x,y in zip(a,b)),) + C[j+1:]
                        for j,b in enumerate(C)]
            factor = -Q(1, 7-len(B))
            steps[A] = {'kind': 'degree_one', 'transpose': bool(orientation),
                        'row': i, 'children': children, 'factor': str(factor)}
            output = {}
            for child in children:
                add(output, moment(child), factor)
            return output
    for orientation, B in enumerate((A, tr(A))):
        if len(B) != 6:
            continue
        for i,a in enumerate(B):
            if order(a) != 2:
                continue
            p = next(j for j,x in enumerate(a) if x > 0)
            m = next(j for j,x in enumerate(a) if x < 0)
            u = tuple(int(j==p)-int(j==m) for j in range(len(a)))
            v = tuple(x-y for x,y in zip(a,u))
            rest = B[:i] + B[i+1:]
            children = [(v,) + rest[:j] + (tuple(x+y for x,y in zip(b,u)),) + rest[j+1:]
                        for j,b in enumerate(rest)]
            steps[A] = {'kind': 'six_row_split', 'transpose': bool(orientation),
                        'row': i, 'positive': p, 'negative': m,
                        'children': children, 'factor': '-1'}
            output = {}
            for child in children:
                add(output, moment(child), -1)
            return output
    steps[A] = {'kind': 'coordinate'}
    return {A: Q(1)}


def moment(A):
    raw_inputs.add(A)
    return reduce(canon(A))


def merged(B, j):
    return B[1:j+1] + (tuple(x+y for x,y in zip(B[0], B[j+1])),) + B[j+2:]


def primitive(w):
    if 'seven_row_array' in w:
        B = tuple(map(tuple, w['seven_row_array']))
        output = {}
        for j in range(6): add(output, moment(merged(B,j)))
        return output
    if 'fourier_contraction_array' in w:
        A = tuple(map(tuple, w['fourier_contraction_array']))
        B = tr(A)
        output = {a: (7-len(B))*c for a,c in moment(A).items()}
        for j in range(len(B)-1): add(output, moment(merged(B,j)))
        return output
    if 'fourier_square_beta' in w:
        b = tuple(w['fourier_square_beta'])
        A = tr((ns['alpha'], b, ns['neg'](ns['alpha']), ns['neg'](b)))
        output = {}
        for labels in ns['partition'](4):
            k = max(labels)+1
            B = tuple(tuple(sum(x for label,x in zip(labels,a) if label==i)
                            for i in range(k)) for a in A)
            add(output, moment(B), Q(ns['fall'](6,k),6**4))
        return output
    return n_equation(w)


# Reuse the existing complementary-Psi equation and target expansion verbatim.
scope = {**module, 'moment': moment}
poly = module['psi']()
scope['poly'] = poly
scope['left'] = [(module['embedded'](a,range(3),range(3)),c) for a,c in poly.items()]
scope['right'] = [(module['embedded'](a,range(3,6),range(3,6)),c) for a,c in poly.items()]
tree = ast.parse(SOURCE.read_text())
main = next(n for n in tree.body if isinstance(n,ast.FunctionDef) and n.name=='main')
node = next(n for n in main.body if isinstance(n,ast.FunctionDef) and n.name=='n_equation')
exec(compile(ast.Module(body=[node], type_ignores=[]), str(SOURCE), 'exec'), scope)
n_equation = scope['n_equation']
expected_coordinates = [tuple(map(tuple,A)) for A in data['coordinates']]
decode = lambda row: {expected_coordinates[i]: Q(c) for i,c in row}
reused_rows = set()
if args.pending_only:
    bridges = json.loads((ROOT / 'audit/sos/SEMANTIC_BRIDGES.json').read_text())
    reused_rows = set(bridges['planned_source_row_ids'])
for i, (w, expected) in enumerate(zip(data['witnesses'], data['rows'])):
    if i in reused_rows:
        continue
    assert primitive(w) == decode(expected), ('Row mismatch', i)
source = SOURCE.read_text()
a = source.index('    # Direct scalar construction,')
b = source.index('    residual=final(v)', a)
exec(compile(textwrap.dedent(source[a:b]), str(SOURCE)+':target', 'exec'), scope)
assert scope['v'] == decode(data['target'])

new_canonical = sorted(A for A in raw_inputs if A != canon(A) and A not in canonical_raw)
output = {
    'status': 'EXACT_NORMALIZATION_PLAN_NOT_A_SEMANTIC_LEAN_PROOF',
    'new_steps': [{'exponents': A, **s} for A,s in sorted(steps.items())],
    'reused_upstream_sound_lemmas': sorted(reused),
    'reused_upstream_canonical_lemmas': sorted({canonical_raw[A] for A in raw_inputs if A in canonical_raw}),
    'new_canonical_inputs': new_canonical,
    'counts': {
        'upstream_boundary_equations_excluded': len(reused_rows),
        'new_reduction_kinds': dict(collections.Counter(s['kind'] for s in steps.values())),
        'reused_sound_lemmas': len(reused),
        'raw_matrices': len(raw_inputs),
        'new_canonical_traces': len(new_canonical),
        'upstream_canonical_traces': sum(A in canonical_raw for A in raw_inputs),
    },
}
name = 'NORMALIZATION_PENDING_PLAN.json' if args.pending_only else 'NORMALIZATION_PLAN.json'
path = ROOT / 'audit/sos' / name
path.write_text(json.dumps(output, separators=(',',':'))+'\n')
print(json.dumps(output['counts']), flush=True)
