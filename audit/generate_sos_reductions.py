"""Connect only the missing normalization nodes to existing contraction lemmas.

The selected DAG is retained. Existing node projections, canonical equalities,
exponent arrays and all required pivot permutations are referenced directly.
Python supplies finite data; Lean checks every matrix and sparse-vector equality.
--limit emits an initial dependency-closed part of the same final proof files.
"""
from pathlib import Path
from math import lcm
import argparse
import ast
import gzip
import hashlib
import json
import re
import runpy
from reuse_preflight import require_reuse_review

require_reuse_review('moment_normalization')
ROOT = Path(__file__).resolve().parents[1]
AUDIT = ROOT / 'audit/sos'
DEST = ROOT / 'lean/NoFourMUBs/Step2/SOS'
VENDOR = ROOT / 'lean/vendor/fourier/OAI/Analysis/MutuallyUnbiased'
PFX = 'NoFourMUBs.Step2.SOS'
PS = 'OAI.MUB6.Certificate.PairSemantics'
PT = 'OAI.MUB6.Certificate.PairTargetSemantics'
OPFX = 'OAI.Analysis.MutuallyUnbiased'
BATCH = 32
data = json.load(gzip.open(AUDIT/'REDUCTION_DATA.json.gz', 'rt'))
plan = json.loads((AUDIT/'NORMALIZATION_PENDING_PLAN.json').read_text())
old_manifest = json.loads((AUDIT/'OLD_PROJECTION_MANIFEST.json').read_text())
source = ROOT.parent/'lean_proof_2026_10_09/verify_one_identity.py'
assert hashlib.sha256(source.read_bytes()).hexdigest() == \
    '507f465f740fa9c30d0cee1f7b2e5cd39dc3ef7ef038b1ad0f106362ad925573'
canon = runpy.run_path(str(source), run_name='normalization_dag_adapter')['canon']
matrix = lambda A: tuple(map(tuple, A))
steps = data['steps_in_dependency_order']
indices = {matrix(s['exponents']): i for i, s in enumerate(steps)}
coordinates = {matrix(A): i for i, A in enumerate(data['coordinates'])}
nodes, old_nodes, old_raw, permutations = {}, {}, {}, {}


def vec(items):
    return '![' + ', '.join(map(str, items)) + ']'


def literal(A):
    return vec([vec(row) for row in A])


for path in sorted((VENDOR/'PairSemantics').glob('Nodes*.lean')):
    for m in re.finditer(r'def node(\d+) : Matrix \(Fin (\d+)\) \(Fin (\d+)\) ℤ := (.*)', path.read_text()):
        A = matrix(ast.literal_eval(m[4].replace('!', '')))
        old_nodes[A] = int(m[1])
        nodes[A] = (f'(⟨{m[2]}, {m[3]}, {PS}.node{m[1]}⟩ : ExponentCode)', OPFX+'.PairSemantics.'+path.stem)
for path in sorted((VENDOR/'PairSemantics').glob('Canonical*.lean')):
    for m in re.finditer(r'def raw(\d+) : Matrix \(Fin \d+\) \(Fin \d+\) ℤ := (.*)', path.read_text()):
        A = matrix(ast.literal_eval(m[2].replace('!', '')))
        old_raw[A] = (f'{PS}.raw{m[1]}', f'{PS}.canonical{m[1]}', OPFX+'.PairSemantics.'+path.stem)
for i, A in enumerate(json.loads((AUDIT/'LEAN_ARITHMETIC_MANIFEST.json').read_text())['coordinates']):
    nodes.setdefault(matrix(A), (f'{PFX}.Semantics.code{i}', f'{PFX}.MomentCodes{i//64:02d}'))
for path in sorted(DEST.glob('NormalizationNodes*.lean')):
    for m in re.finditer(r'def (normalNode\d+) : ExponentCode := ⟨\d+, \d+, (.*)⟩', path.read_text()):
        A = matrix(ast.literal_eval(m[2].replace('!', '')))
        nodes.setdefault(A, (m[1], PFX+'.'+path.stem))

# Prefer existing shared permutation modules over data inside a soundness file.
paths = sorted(VENDOR.rglob('*.lean'), key=lambda p: ('Permutations' not in p.name, str(p)))
for path in paths:
    text = path.read_text()
    for m in re.finditer(r'def (\w+) : Equiv.Perm \(Fin (\d+)\) where\s+toFun := (!\[[^\n]+)', text):
        if path.parent.name not in ('PairSemantics', 'PairTargets'):
            continue
        p = tuple(ast.literal_eval(m[3].replace('!', '')))
        ns = PS if path.parent.name == 'PairSemantics' else PT
        mod = OPFX+'.'+str(path.relative_to(VENDOR)).removesuffix('.lean').replace('/', '.')
        permutations.setdefault(p, (ns+'.'+m[1], mod))

new_raw = {matrix(A): i for i, A in enumerate(plan['new_canonical_inputs'])}
manifest = {'status': 'GENERATED_NOT_YET_KERNEL_CHECKED', 'full_nodes': len(steps),
            'emitted_nodes': 0, 'new_permutations': 0, 'reused_permutations': {},
            'records': {}, 'files': {}}


def projection(A, imports):
    if A in old_nodes:
        n = old_nodes[A]
        r = old_manifest['records'][str(n)]
        imports.add(r['module'])
        return f'oldProjection{n}', r['denominator'], f'oldProjectionSound{n}'
    i = indices[A]
    imports.add(f'{PFX}.Reductions{i//BATCH:03d}')
    return f'reductionProjection{i}', steps[i]['denominator'], f'reductionSound{i}'


def canonical(A, imports):
    B = canon(A)
    if A == B:
        node, mod = nodes[B]
        imports.add(mod)
        return f'({node}).entries', None, B
    if A in old_raw:
        raw, sound, mod = old_raw[A]
    else:
        i = new_raw[A]
        raw, sound, mod = f'canonicalInput{i}.entries', f'canonicalSound{i}', f'{PFX}.Canonical{i//64:03d}'
    imports.add(mod)
    return raw, sound, B


def emit(i, imports):
    s = steps[i]
    A = matrix(s['exponents'])
    assert A not in old_nodes, 'Never regenerate an existing node proof.'
    node, mod = nodes[A]
    imports.add(mod)
    pr = f'reductionProjection{i}'
    d = s['denominator']
    target = '['+', '.join(f'({j}, {a})' for j, a in s['integer_projection'])+']'
    text = f'def {pr} : Integer.Sparse (Fin 1613) := {target}\n\n'
    if s['kind'] != 'coordinate':
        B = tuple(zip(*A)) if s['transpose'] else A
        r, q, row = len(B), len(B[0]), s['row']
        order = (row,)+tuple(j for j in range(r) if j != row)
        perm, pm = permutations[order]
        imports.add(pm)
        manifest['reused_permutations'][str(order)] = {'name': perm, 'module': pm}
        pivot = tuple(B[j] for j in order)
        text += f'def reductionPivot{i} : Matrix (Fin {r}) (Fin {q}) ℤ := {literal(pivot)}\n\n'
    text += (f'theorem reductionSound{i} {{H : CMatrix}} (hH : IsHadamard H) :\n'
             f'    ({d} : ℝ) * ({node}).moment H =\n'
             f'      Integer.Sparse.eval {pr} (momentVector H) := by\n')
    if s['kind'] == 'coordinate':
        j = coordinates[A]
        text += (f'  have hc : coordinates ({j} : Fin 1613) = ({node}) := by decide +kernel\n'
                 f'  have hm := congrArg (fun C : ExponentCode => C.moment H) hc\n'
                 f'  simpa only [{pr}, Integer.Sparse.eval, List.map_cons, List.map_nil,\n'
                 f'    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,\n'
                 f'    add_zero, momentVector] using hm.symm\n\n')
        return text
    pv = f'reductionPivot{i}'
    oriented = f'({node}).entries'+('.transpose' if s['transpose'] else '')
    text += (f'  have heq : {pv} = (fun u v => {oriented} ({perm} u) v) := by\n'
             '    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel\n'
             f'  have hm : ({node}).moment H = injectiveMoment H {pv} := by\n'
             f'    have hh := congrArg (fun M : Matrix (Fin {r}) (Fin {q}) ℤ => injectiveMoment H M) heq\n')
    chain = f'hh.trans (injectiveMoment_row_permutation H {oriented} {perm})'
    if s['transpose']:
        chain = f'({chain}).trans (injectiveMoment_transpose H ({node}).entries)'
    text += f'    exact ({chain}).symm\n'
    if s['kind'] == 'degree_one':
        v, w = pivot[0].index(1), pivot[0].index(-1)
        m = r-1
        child = lambda j: f'mergeFirst {pv} ({j} : Fin {m})'
        c = 7-r
        text += (f'  have hshape : {pv} 0 = Pi.single ({v} : Fin {q}) 1 - Pi.single {w} 1 := by\n'
                 '    exact funext (by decide +kernel)\n'
                 f'  have hr := injectiveMoment_first_row_contraction (by decide : {m} < 6)\n'
                 f'    hH {pv} {v} {w} (by decide) hshape\n'
                 '  rw [← hm] at hr\n')
    else:
        assert s['kind'] == 'six_row_split' and r == 6
        v, w = s['positive'], s['negative']
        m, c = 5, 1
        child = lambda j: f'mergeFirst (splitFirst {pv} (Pi.single ({v} : Fin {q}) 1 - Pi.single {w} 1)) ({j} : Fin 5).succ'
        text += (f'  have hr := six_row_reduction hH {pv} {v} {w} (by decide)\n'
                 '  rw [← hm] at hr\n')
    children = []
    for C in map(matrix, s['children']):
        raw, sound, B = canonical(C, imports)
        assert B in old_nodes or indices[B] < i
        cp, cd, cs = projection(B, imports)
        children.append((raw, sound, nodes[B][0], cp, cd, cs))
    denoms = vec([t[4] for t in children])
    projs = vec([t[3] for t in children])
    L = lcm(d, *(t[4] for t in children))
    k = c*L//d
    weights = vec([L//t[4] for t in children])
    z = f'(fun j : Fin {m} => injectiveMoment H ({child("j")}))'
    text += (f'  have hchildren : ∀ j : Fin {m},\n'
             f'      (({denoms} : Fin {m} → ℤ) j : ℝ) * {z} j =\n'
             f'        Integer.Sparse.eval ({projs} j) (momentVector H) := by\n'
             '    intro j\n    fin_cases j\n')
    for j, (raw, sound, cn, cp, cd, cs) in enumerate(children):
        text += (f'    · have he : ({child(j)}) = {raw} := by\n'
                 '        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel\n'
                 f'      change (({cd} : ℤ) : ℝ) * injectiveMoment H ({child(j)}) =\n'
                 f'        Integer.Sparse.eval {cp} (momentVector H)\n'
                 f'      have hh : ({cd} : ℝ) * injectiveMoment H ({child(j)}) =\n'
                 f'          Integer.Sparse.eval {cp} (momentVector H) := by\n')
        cr = len(s['children'][j])
        cq = len(s['children'][j][0])
        chain = f'congrArg (fun M : Matrix (Fin {cr}) (Fin {cq}) ℤ => injectiveMoment H M) he'
        if sound:
            chain = f'({chain}).trans ({sound} hH)'
        text += (f'        exact (congrArg (fun x : ℝ => ({cd} : ℝ) * x) ({chain})).trans ({cs} hH)\n'
                 '      simpa only [Int.cast_one, Int.cast_ofNat] using hh\n')
    text += (f'  have hrelation : ({c} : ℝ) * ({node}).moment H + ∑ j : Fin {m}, {z} j = 0 := by\n')
    if s['kind'] == 'degree_one':
        text += '    convert hr using 1 <;> norm_num\n'
    else:
        text += '    linarith [hr]\n'
    text += (f'  simpa only [Int.cast_one, Int.cast_ofNat] using\n'
             f'    (integer_projection (momentVector H) (({node}).moment H) {z}\n'
             f'      {c} {d} {L} {k} {denoms} {weights} {pr} {projs}\n'
             '      (by decide +kernel) (by decide +kernel) (by decide +kernel)\n'
             '      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)\n'
             '      hchildren (by decide +kernel))\n\n')
    return text


def generate(limit_request=None):
    limit = min(limit_request or len(steps), len(steps))
    assert limit > 0
    for start in range(0, limit, BATCH):
        require_reuse_review('moment_normalization')
        name = f'Reductions{start//BATCH:03d}'
        imports = {PFX+'.NormalizationContext', PFX+'.ReductionRules', PFX+'.IntegerProjection'}
        body = ''.join(emit(i, imports) for i in range(start, min(start+BATCH, limit)))
        imports.discard(PFX+'.'+name)
        content = ''.join('import '+m+'\n' for m in sorted(imports))
        content += (f'\nnamespace {PFX}.Normalization\nopen scoped BigOperators\n'
                    'open OAI.MUB6 OAI.MUB6.Certificate\n'
                    'set_option maxRecDepth 10000\nset_option maxHeartbeats 2000000\n\n')
        content += body+f'end {PFX}.Normalization\n'
        path = DEST/(name+'.lean')
        if not path.exists() or path.read_text() != content:
            path.write_text(content)
        manifest['files'][path.name] = hashlib.sha256(content.encode()).hexdigest()
        for i in range(start, min(start+BATCH, limit)):
            manifest['records'][str(i)] = {'module':PFX+'.'+name,'denominator':steps[i]['denominator']}
        manifest['emitted_nodes'] = min(start+BATCH, limit)
        print(name, manifest['emitted_nodes'], flush=True)
    (AUDIT/'REDUCTION_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--limit', type=int)
    generate(parser.parse_args().limit)
