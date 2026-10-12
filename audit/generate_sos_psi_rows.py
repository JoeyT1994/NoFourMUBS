"""Bind the nine existing complementary-Psi rows to their physical meaning.

The selected witness, its coefficients, and its normalization DAG are reused.
This emits only model adapters, with ten term projections per module.
"""
from collections import defaultdict, Counter
from fractions import Fraction as Q
from itertools import permutations, product
from math import lcm
import ast
import gzip
import hashlib
import json
import re
import generate_sos_reductions as g
from reuse_preflight import require_reuse_review

require_reuse_review('signature_semantics')
require_reuse_review('moment_normalization')
PFX = g.PFX
source = g.ROOT.parent/'lean_proof_2026_10_09/verify_one_identity.py'
tree = ast.parse(source.read_text())
scope = {'Counter':Counter, 'permutations':permutations, 'product':product}
function = next(n for n in tree.body if isinstance(n,ast.FunctionDef) and n.name=='psi')
exec(compile(ast.Module(body=[function],type_ignores=[]),str(source),'exec'),scope)
psi = list(scope['psi']().items())
system = json.load(gzip.open(g.AUDIT/'unprojected_system.json.gz','rt'))
arithmetic = json.loads((g.AUDIT/'LEAN_ARITHMETIC_MANIFEST.json').read_text())
old_values = {}
for path in (g.VENDOR/'PairSemantics').glob('Values*.lean'):
    for m in re.finditer(r'def value(\d+) : Sparse \(Fin 909\) := (.*)',path.read_text()):
        old_values[int(m[1])] = {g.data['old_embedding'][int(j)]:Q(int(a),int(b))
            for j,a,b in re.findall(r'\((\d+), \((-?\d+) / (\d+)\)\)',m[2])}

def embed(a, rs, cs):
    B = [[0]*6 for _ in range(6)]
    for i,r in enumerate(rs):
        for j,c in enumerate(cs): B[r][c] = a[3*i+j]
    return g.matrix(B)

def positions(bits):
    front,back = iter(range(3)),iter(range(3,6))
    return [next(front) if b else next(back) for b in bits]

header = (f'namespace {PFX}.Semantics\nopen scoped BigOperators\n'
          'open OAI.MUB6 OAI.MUB6.Certificate Normalization\n'
          'set_option maxRecDepth 20000\nset_option maxHeartbeats 4000000\n\n')
manifest = {'status':'GENERATED_NOT_YET_KERNEL_CHECKED','equations':9,
            'files':{},'records':{},'term_records':{},
            'psi_source_sha256':hashlib.sha256(source.read_bytes()).hexdigest()}

def save(name,imports,body):
    local_header = header.replace(' OAI.MUB6.Certificate Normalization','') if name=='PsiRowInputs' else header
    text = ''.join('import '+m+'\n' for m in sorted(imports))+'\n'+local_header+body+f'end {PFX}.Semantics\n'
    path = g.DEST/(name+'.lean')
    if not path.exists() or path.read_text()!=text: path.write_text(text)
    manifest['files'][path.name] = hashlib.sha256(text.encode()).hexdigest()

inputs = ''
seeds = {}
for i,w in enumerate(system['witnesses']):
    if 'seed' not in w: continue
    T = embed(w['seed'],positions(w['row_membership']),positions(w['column_membership']))
    seeds[i] = T
    inputs += f'def psiInput{i} : Matrix Coord Coord ℤ := {g.literal(T)}\n\n'
assert len(seeds)==9
save('PsiRowInputs',{PFX+'.MomentExponentData'},inputs)

for row,T in seeds.items():
    require_reuse_review('moment_normalization')
    ds,ps,theorems = [],[],[]
    total = defaultdict(Q)
    chunks = []
    for first in range(0,55,10):
        imports = {PFX+'.PsiRowInputs',PFX+'.PrimitiveRows'}
        body = ''
        for k in range(first,min(first+10,55)):
            a,c = psi[k]
            children = []
            for b in [False,True]:
                idx = range(3,6) if b else range(3)
                A = embed(a,idx,idx)
                B = tuple(tuple(x-y for x,y in zip(u,v)) for u,v in zip(A,T))
                raw,sound,C = g.canonical(B,imports)
                cp,cd,cs = g.projection(C,imports)
                expr = f'(blockExponent (psiExponent {k}) {str(b).lower()} - psiInput{row})'
                children.append((expr,raw,sound,cp,cd,cs))
                projected = old_values[g.old_nodes[C]] if C in g.old_nodes else \
                    {j:Q(n) for j,n in g.steps[g.indices[C]]['projection']}
                for j,n in projected.items(): total[j] += (-c if b else c)*n
            dl,dr = children[0][4],children[1][4]
            D = lcm(dl,dr); wl,wr = c*D//dl,-c*D//dr
            paired = (f'(Integer.Sparse.merge (Integer.Sparse.scale ({wl} : ℤ) {children[0][3]}) '
                      f'(Integer.Sparse.scale ({wr} : ℤ) {children[1][3]}))')
            ds.append(D);ps.append(paired)
            z = (f'((psiCoefficient {k} : ℝ) * (injectiveMoment H {children[0][0]} - '
                 f'injectiveMoment H {children[1][0]}))')
            name = f'psiChild{row}_{k}'
            theorems.append(name)
            body += (f'theorem {name} {{H : CMatrix}} (hH : IsHadamard H) :\n'
                     f'    ({D} : ℝ) * {z} =\n'
                     f'      Integer.Sparse.eval {paired} (Normalization.momentVector H) := by\n')
            for n,(expr,raw,sound,cp,cd,cs) in enumerate(children):
                body += (f'  have he{n} : {expr} = {raw} := by\n'
                         '    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel\n'
                         f'  have hh{n} : ({cd} : ℝ) * injectiveMoment H {expr} =\n'
                         f'      Integer.Sparse.eval {cp} (Normalization.momentVector H) := by\n')
                chain = f'congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he{n}'
                if sound: chain = f'({chain}).trans ({sound} hH)'
                body += f'    exact (congrArg (fun x : ℝ => ({cd} : ℝ) * x) ({chain})).trans ({cs} hH)\n'
            body += (f'  change ({D} : ℝ) * (({c} : ℤ) : ℝ) * _ = _\n'
                     '  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]\n'
                     f'  linear_combination ({wl} : ℝ) * hh0 + ({wr} : ℝ) * hh1\n\n')
            # Keep the original association; conversion below only unfolds the coefficient.
            body = body.replace(f'  change ({D} : ℝ) * (({c} : ℤ) : ℝ) * _ = _\n',
                f'  change ({D} : ℝ) * ((({c} : ℤ) : ℝ) * _) = _\n')
            manifest['term_records'][f'{row}:{k}'] = {'module':PFX+f'.PsiTerms{row}_{first//10:02d}'}
        name = f'PsiTerms{row}_{first//10:02d}'
        save(name,imports,body)
        chunks.append(PFX+'.'+name)
    assert {j:n for j,n in total.items() if n} == {j:Q(n) for j,n in system['rows'][row]},row
    D = arithmetic['row_multipliers'][row]; L = lcm(*ds)
    denoms,projections = g.vec(ds),g.vec(ps)
    weights = g.vec(-D*L//d for d in ds)
    z = (f'(fun k : Fin 55 => (psiCoefficient k : ℝ) * '
         f'(injectiveMoment H (blockExponent (psiExponent k) false - psiInput{row}) - '
         f'injectiveMoment H (blockExponent (psiExponent k) true - psiInput{row})))')
    body = (f'theorem rowSound{row} {{H : CMatrix}} (hH : IsHadamard H)\n'
            '    (hC : ComplementarySignatures H) :\n'
            f'    Integer.Sparse.eval (Arithmetic.rows {row}) (momentVector H) = 0 := by\n'
            f'  change Integer.Sparse.eval Arithmetic.row{row} (momentVector H) = 0\n'
            f'  rw [← extendRow_eval Arithmetic.row{row} H]\n'
            f'  have hchildren : ∀ k : Fin 55,\n'
            f'      (({denoms} : Fin 55 → ℤ) k : ℝ) * ({z} k) =\n'
            f'        Integer.Sparse.eval ({projections} k) (Normalization.momentVector H) := by\n'
            '    intro k\n    fin_cases k\n')
    for d,name in zip(ds,theorems):
        if d == 1:
            body += f'    · change ((1 : ℤ) : ℝ) * _ = _\n      rw [Int.cast_one]\n      exact {name} hH\n'
        else:
            body += f'    · exact {name} hH\n'
    body += (f'  exact projected_zero (Normalization.momentVector H) {z}\n'
             f'    {D} {L} {denoms} {weights} (extendRow Arithmetic.row{row}) {projections}\n'
             f'    (by decide +kernel) (by intro k; fin_cases k <;> decide +kernel)\n'
             f'    (complementary_moments hH hC psiInput{row}) hchildren (by decide +kernel)\n\n')
    save(f'PsiRows{row}',set(chunks)|{PFX+'.Data',PFX+'.ComplementaryMoments'},body)
    manifest['records'][str(row)] = {'module':PFX+f'.PsiRows{row}'}
(g.AUDIT/'PSI_ROW_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('Nine existing Psi rows, with 495 paired projection adapters; no new SOS witness.')
