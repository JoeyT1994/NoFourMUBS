"""Prepare the DAG of new reductions, reusing upstream projections verbatim.

This is finite certificate data, not a semantic proof. Its leaves are actual
exponent arrays and its edges are only the two rules in ReductionRules.lean.
"""
from pathlib import Path
from fractions import Fraction as Q
from functools import lru_cache
from math import lcm
import ast
import gzip
import json
import re
import runpy
from reuse_preflight import require_reuse_review

require_reuse_review('moment_normalization')

ROOT = Path(__file__).resolve().parents[1]
AUDIT = ROOT / 'audit/sos'
plan = json.loads((AUDIT / 'NORMALIZATION_PENDING_PLAN.json').read_text())
module = runpy.run_path(str(ROOT.parent / 'lean_proof_2026_10_09/verify_one_identity.py'),
                       run_name='normalization_dag_preparation')
canon = module['canon']
matrix = lambda A: tuple(map(tuple, A))
steps = {matrix(s['exponents']): s for s in plan['new_steps']}
upstream = ROOT / 'lean/vendor/fourier/OAI/Analysis/MutuallyUnbiased/PairSemantics'
nodes, values, old_codes = {}, {}, {}
for p in upstream.glob('Nodes*.lean'):
    for m in re.finditer(r'def node(\d+) : Matrix \(Fin \d+\) \(Fin \d+\) ℤ := (.*)', p.read_text()):
        nodes[matrix(ast.literal_eval(m[2].replace('!', '')))] = int(m[1])
for p in upstream.glob('Values*.lean'):
    for m in re.finditer(r'def value(\d+) : Sparse \(Fin 909\) := (.*)', p.read_text()):
        values[int(m[1])] = {int(i): Q(int(a), int(b)) for i,a,b in
                            re.findall(r'\((\d+), \((-?\d+) / (\d+)\)\)', m[2])}
for p in upstream.glob('Coordinates*.lean'):
    for m in re.finditer(r'def coordinate(\d+) : ExponentCode := ⟨\d+, \d+, (.*)⟩', p.read_text()):
        old_codes[int(m[1])] = matrix(ast.literal_eval(m[2].replace('!', '')))

coordinates = [matrix(A) for A in json.loads((AUDIT/'LEAN_ARITHMETIC_MANIFEST.json').read_text())['coordinates']]
number = {A:i for i,A in enumerate(coordinates)}
def insert(A):
    if A not in number:
        number[A] = len(coordinates)
        coordinates.append(A)
    return number[A]
old_embedding = [insert(old_codes[i]) for i in range(909)]
for A,s in steps.items():
    if s['kind'] == 'coordinate': insert(A)

ordered, in_progress = [], set()
@lru_cache(None)
def reduce(A):
    if A in nodes:
        return {old_embedding[j]: c for j,c in values[nodes[A]].items()}
    assert A not in in_progress, 'Cyclic normalization data'
    in_progress.add(A)
    s = steps[A]
    if s['kind'] == 'coordinate':
        answer = {number[A]: Q(1)}
    else:
        answer = {}
        for C in s['children']:
            for j,c in reduce(canon(matrix(C))).items():
                answer[j] = answer.get(j,Q(0)) + Q(s['factor'])*c
        answer = {j:c for j,c in answer.items() if c}
    in_progress.remove(A)
    ordered.append(A)
    return answer

for A in steps: reduce(A)
assert len(ordered) == len(steps)
records = []
for A in ordered:
    v = reduce(A)
    d = lcm(*(c.denominator for c in v.values()))
    records.append({**steps[A], 'projection': sorted((i,str(c)) for i,c in v.items()),
                    'denominator': d,
                    'integer_projection': sorted((i,int(c*d)) for i,c in v.items())})
output = {
    'status': 'EXACT_DAG_DATA_NOT_YET_A_SEMANTIC_LEAN_PROOF',
    'coordinates': coordinates, 'old_embedding': old_embedding,
    'steps_in_dependency_order': records,
    'counts': {'moment_coordinates':len(coordinates), 'new_steps':len(records),
               'projection_terms':sum(len(r['projection']) for r in records),
               'largest_projection':max(len(r['projection']) for r in records),
               'largest_denominator':max(r['denominator'] for r in records)},
}
with (AUDIT/'REDUCTION_DATA.json.gz').open('wb') as out:
    with gzip.GzipFile(filename='', fileobj=out, mode='wb', mtime=0) as z:
        z.write((json.dumps(output, separators=(',',':'))+'\n').encode())
print(output['counts'], flush=True)
