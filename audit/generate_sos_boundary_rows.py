"""Connect only the boundary equations not already supplied by OAI.

Use the selected witness arrays, the existing normalization DAG, and OAI's
seven-row theorem. There is no boundary-equation discovery or new witness.
The first batch emitted by --limit is the first batch of the final files.
"""
from collections import defaultdict
from fractions import Fraction
from math import lcm
import argparse
import ast
import gzip
import hashlib
import json
import re
import generate_sos_reductions as g
from reuse_preflight import require_reuse_review

require_reuse_review('moment_normalization')
PFX = g.PFX
BATCH = 8
system = json.load(gzip.open(g.AUDIT/'unprojected_system.json.gz', 'rt'))
arithmetic = json.loads((g.AUDIT/'LEAN_ARITHMETIC_MANIFEST.json').read_text())
reused = set(json.loads((g.AUDIT/'SEMANTIC_BRIDGES.json').read_text())['planned_source_row_ids'])
assert arithmetic['source_equation_ids'] == list(range(len(system['rows'])))
assert arithmetic['source_coordinate_ids'] == list(range(len(system['coordinates'])))
old_values = {}
for p in (g.VENDOR/'PairSemantics').glob('Values*.lean'):
    for m in re.finditer(r'def value(\d+) : Sparse \(Fin 909\) := (.*)', p.read_text()):
        old_values[int(m[1])] = {g.data['old_embedding'][int(j)]: Fraction(int(a),int(b))
            for j,a,b in re.findall(r'\((\d+), \((-?\d+) / (\d+)\)\)', m[2])}
old_boundary_inputs = set()
for p in (g.VENDOR/'PairSemantics').glob('Boundary*.lean'):
    for m in re.finditer(r'def boundary(?:Matrix|Original)\d+ : Matrix \(Fin 7\) \(Fin \d+\) ℤ := (.*)', p.read_text()):
        old_boundary_inputs.add(g.matrix(ast.literal_eval(m[1].replace('!', ''))))


def child_matrix(A, j):
    return A[1:j+1]+(tuple(x+y for x,y in zip(A[0],A[j+1])),)+A[j+2:]


def dependencies(i):
    imports = set()
    A = g.matrix(system['witnesses'][i]['seven_row_array'])
    for j in range(6):
        _, _, C = g.canonical(child_matrix(A,j), imports)
        g.projection(C, imports)
    latest = max((int(m.rsplit('Reductions',1)[1]) for m in imports if '.Reductions' in m),default=-1)
    return latest, i


pending = sorted((dependencies(i) for i,w in enumerate(system['witnesses'])
                  if i not in reused and 'seven_row_array' in w))


def emit(i, imports):
    assert i not in reused
    A = g.matrix(system['witnesses'][i]['seven_row_array'])
    assert A not in old_boundary_inputs, 'Reuse the existing boundary input and theorem first.'
    q = len(A[0])
    name = f'boundaryInput{i}'
    v, w = A[0].index(1), A[0].index(-1)
    assert A[0] == tuple(int(j==v)-int(j==w) for j in range(q))
    child = lambda j: f'mergeFirst {name} ({j} : Fin 6)'
    children = []
    total = defaultdict(Fraction)
    for j in range(6):
        raw, sound, C = g.canonical(child_matrix(A,j), imports)
        cp, cd, cs = g.projection(C, imports)
        children.append((raw,sound,cp,cd,cs))
        projected = old_values[g.old_nodes[C]] if C in g.old_nodes else \
            {k:Fraction(c) for k,c in g.steps[g.indices[C]]['projection']}
        for k,c in projected.items(): total[k] += c
    total = {k:c for k,c in total.items() if c}
    assert total == {j:Fraction(c) for j,c in system['rows'][i]}, ('projection mismatch',i)
    d = arithmetic['row_multipliers'][i]
    L = lcm(*(c[3] for c in children))
    denoms = g.vec(c[3] for c in children)
    weights = g.vec(-d*L//c[3] for c in children)
    projections = g.vec(c[2] for c in children)
    text = f'def {name} : Matrix (Fin 7) (Fin {q}) ℤ := {g.literal(A)}\n\n'
    text += (f'theorem rowSound{i} {{H : CMatrix}} (hH : IsHadamard H) :\n'
             f'    Integer.Sparse.eval (Arithmetic.rows {i}) (momentVector H) = 0 := by\n'
             f'  change Integer.Sparse.eval Arithmetic.row{i} (momentVector H) = 0\n'
             f'  rw [← extendRow_eval Arithmetic.row{i} H]\n'
             f'  have hshape : {name} 0 = Pi.single ({v} : Fin {q}) 1 - Pi.single {w} 1 := by\n'
             '    exact funext (by decide +kernel)\n'
             f'  have hr := injectiveMoment_seven_row_boundary hH {name} {v} {w} (by decide) hshape\n'
             f'  have hchildren : ∀ j : Fin 6,\n'
             f'      (({denoms} : Fin 6 → ℤ) j : ℝ) * injectiveMoment H ({child("j")}) =\n'
             f'        Integer.Sparse.eval ({projections} j) (Normalization.momentVector H) := by\n'
             '    intro j\n    fin_cases j\n')
    for j,(raw,sound,cp,cd,cs) in enumerate(children):
        text += (f'    · have he : ({child(j)}) = {raw} := by\n'
                 '        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel\n'
                 f'      change (({cd} : ℤ) : ℝ) * injectiveMoment H ({child(j)}) =\n'
                 f'        Integer.Sparse.eval {cp} (Normalization.momentVector H)\n'
                 f'      have hh : ({cd} : ℝ) * injectiveMoment H ({child(j)}) =\n'
                 f'          Integer.Sparse.eval {cp} (Normalization.momentVector H) := by\n')
        chain = f'congrArg (fun M : Matrix (Fin 6) (Fin {q}) ℤ => injectiveMoment H M) he'
        if sound: chain = f'({chain}).trans ({sound} hH)'
        text += (f'        exact (congrArg (fun x : ℝ => ({cd} : ℝ) * x) ({chain})).trans ({cs} hH)\n'
                 '      simpa only [Int.cast_one, Int.cast_ofNat] using hh\n')
    text += (f'  exact projected_zero (Normalization.momentVector H)\n'
             f'    (fun j : Fin 6 => injectiveMoment H ({child("j")}))\n'
             f'    {d} {L} {denoms} {weights} (extendRow Arithmetic.row{i}) {projections}\n'
             '    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)\n\n')
    return text


def generate(limit_request=None):
    selected = pending[:limit_request] if limit_request else pending
    manifest = {'status':'GENERATED_NOT_YET_KERNEL_CHECKED',
                'existing_boundary_proofs_reused':len(reused),
                'remaining_boundary_equations':len(pending),
                'emitted_equations':len(selected),'files':{},'records':{}}
    for start in range(0,len(selected),BATCH):
        require_reuse_review('moment_normalization')
        name = f'BoundaryRows{start//BATCH:03d}'
        imports = {PFX+'.PrimitiveRows',PFX+'.Data'}
        group = selected[start:start+BATCH]
        body = ''.join(emit(i,imports) for _,i in group)
        content = ''.join('import '+m+'\n' for m in sorted(imports))
        content += (f'\nnamespace {PFX}.Semantics\nopen scoped BigOperators\n'
                    'open OAI.MUB6 OAI.MUB6.Certificate Normalization\n'
                    'set_option maxRecDepth 10000\nset_option maxHeartbeats 2000000\n\n')
        content += body+f'end {PFX}.Semantics\n'
        p = g.DEST/(name+'.lean')
        if not p.exists() or p.read_text()!=content: p.write_text(content)
        manifest['files'][p.name] = hashlib.sha256(content.encode()).hexdigest()
        for _,i in group: manifest['records'][str(i)] = {'module':PFX+'.'+name}
        print(name,len(group),flush=True)
    (g.AUDIT/'BOUNDARY_ROW_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--limit',type=int)
    generate(parser.parse_args().limit)
