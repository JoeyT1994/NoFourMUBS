"""Bind the checked physical target to the SAME existing integer target.

No canonicalization, contraction, projection, or SOS witness is discovered here.
All raw-array and endpoint names come from PHYSICAL_TARGET_REUSE_PLAN.json.
The generated Lean adapters check array equality and reuse those named proofs.
"""
from collections import defaultdict
from fractions import Fraction as Q
from itertools import product
from math import lcm, prod
from pathlib import Path
import argparse
import ast
import hashlib
import json
import re
import generate_sos_reductions as g
from reuse_preflight import require_reuse_review

require_reuse_review('physical_target_projection')
PFX = g.PFX
NS = PFX + '.Semantics'
plan_path = g.AUDIT/'PHYSICAL_TARGET_REUSE_PLAN.json'
plan = json.loads(plan_path.read_text())
assert plan['status'] == 'EXACT_EXISTING_TARGET_REUSE_PASS'
records = {g.matrix(r['exponents']): r for r in plan['records']}
assert len(records) == plan['unique_raw_inputs'] == 4477
arithmetic = json.loads((g.AUDIT/'LEAN_ARITHMETIC_MANIFEST.json').read_text())
data_text = (g.DEST/'MomentExponentData.lean').read_text()
psi = ast.literal_eval(re.search(r'def psiExponent[^\n]* := (.*)',data_text)[1].replace('!',''))
coeff = ast.literal_eval(re.search(r'def psiCoefficient[^\n]* := (.*)',data_text)[1].replace('!',''))
pattern_text = (g.DEST/'CornerPairPatterns.lean').read_text()
labels = ast.literal_eval(re.search(r'def raw[^\n]* := (.*)',pattern_text)[1].replace('!',''))
assert len(psi) == len(coeff) == 55 and len(labels) == 34

manifest = {'status':'GENERATED_NOT_YET_KERNEL_CHECKED', 'files':{}, 'rows':{},
            'reuse_plan_sha256':hashlib.sha256(plan_path.read_bytes()).hexdigest(),
            'existing_raw_inputs':4477, 'existing_projection_endpoints':
            len({r['projection'] for r in records.values()}),
            'source_sha256':plan['source_sha256'],
            'common_multiplier':arithmetic['common_multiplier']}
header = (f'noncomputable section\nnamespace {NS}\nopen scoped BigOperators\n'
          'open OAI.MUB6 OAI.MUB6.Certificate Normalization\n'
          'set_option maxRecDepth 30000\nset_option maxHeartbeats 12000000\n\n')

def save(name, imports, body):
    text = ''.join('import '+m+'\n' for m in sorted(imports))+'\n'+header+body+f'end {NS}\n'
    path = g.DEST/(name+'.lean')
    if not path.exists() or path.read_text() != text: path.write_text(text)
    manifest['files'][path.name] = hashlib.sha256(text.encode()).hexdigest()

def clean(v): return {j:n for j,n in v.items() if n}
def sparse(v): return '['+', '.join(f'({j}, {n})' for j,n in sorted(clean(v).items()))+']'
def add(v, u, c=1):
    for j,n in u.items(): v[j] += c*n

def endpoint(r):
    name = r['projection']
    if name.startswith('oldProjection'):
        d = g.old_manifest['records'][name.removeprefix('oldProjection')]
        assert d['denominator'] == r['denominator']
        return dict(d['projection'])
    i = int(name.removeprefix('reductionProjection'))
    assert g.steps[i]['denominator'] == r['denominator']
    return dict(g.steps[i]['integer_projection'])

def embed(A, offset=0):
    B = [[0]*6 for _ in range(6)]
    for i,j in product(range(3),repeat=2): B[i+offset][j+offset] = A[i][j]
    return g.matrix(B)

def combine(A,B,sign=1):
    return tuple(tuple(a+sign*b for a,b in zip(x,y)) for x,y in zip(A,B))

def overlap(A,B,p,q):
    M = [[0]*6 for _ in range(6)]
    for i,j in product(range(3),repeat=2):
        M[labels[p][i]][labels[q][j]] += A[i][j]
        M[labels[p][i+3]][labels[q][j+3]] += B[i][j]
    return g.matrix(M)

def binding(expr, A, imports, name, dims=None):
    r = records[A]
    imports.update(r['dependencies'])
    raw, sound, pr, ps, d = [r[k] for k in
        ['raw','canonical_soundness','projection','projection_soundness','denominator']]
    arr = expr
    prefix = ''
    if dims:
        p,q = dims
        code = f'(⟨{p}, {q}, {expr}⟩ : ExponentCode)'
        hp = f'(by change {p} ≤ 6; decide +kernel)'
        hq = f'(by change {q} ≤ 6; decide +kernel)'
        arr = f'(tailPad6 {code} {hp} {hq})'
        prefix = f'((tailPad6_moment {code} {hp} {hq} H).symm).trans '
    text = (f'  have he{name} : {arr} = {raw} := by\n'
            '    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel\n'
            f'  have hh{name} : ({d} : ℝ) * injectiveMoment H {expr} =\n'
            f'      Integer.Sparse.eval {pr} (Normalization.momentVector H) := by\n')
    chain = f'congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he{name}'
    if prefix: chain = f'{prefix}({chain})'
    if sound: chain = f'({chain}).trans ({sound} hH)'
    text += f'    exact (congrArg (fun x : ℝ => ({d} : ℝ) * x) ({chain})).trans ({ps} hH)\n'
    return r,text

def collect(name, z, ds, prs, values, thms, imports, target_name=None):
    """Only instantiate the already checked integer_projection collection rule."""
    D = lcm(*ds)
    target = defaultdict(int)
    for d,v in zip(ds,values): add(target,v,D//d)
    target = clean(target)
    target_name = target_name or name+'Projection'
    n = len(ds)
    vs,ps,ws = g.vec(ds),g.vec(prs),g.vec(D//d for d in ds)
    body = f'def {target_name} : Integer.Sparse (Fin 1613) := {sparse(target)}\n\n'
    body += (f'theorem {name} {{H : CMatrix}} (hH : IsHadamard H) :\n'
             f'    ({D} : ℝ) * (∑ i : Fin {n}, {z} i) =\n'
             f'      Integer.Sparse.eval {target_name} (Normalization.momentVector H) := by\n'
             f'  have hc : ∀ i : Fin {n}, (({vs} : Fin {n} → ℤ) i : ℝ) * ({z} i) =\n'
             f'      Integer.Sparse.eval ({ps} i) (Normalization.momentVector H) := by\n'
             '    intro i\n    fin_cases i\n')
    for i,(d,th,pr) in enumerate(zip(ds,thms,prs)):
        if d == 1:
            body += (f'    · change ((1 : ℤ) : ℝ) * ({z} {i}) =\n'
                     f'        Integer.Sparse.eval {pr} (Normalization.momentVector H)\n'
                     f'      rw [Int.cast_one]\n      exact {th} hH\n')
        else:
            body += f'    · exact {th} hH\n'
    body += (f'  exact integer_projection (Normalization.momentVector H) (∑ i, {z} i) {z}\n'
             f'    (-1) {D} {D} (-1) {vs} {ws} {target_name} {ps}\n'
             f'    (by decide +kernel) (by decide +kernel)\n'
             f'    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)\n\n')
    return body,(D,target_name,target,name)

terms = '''def targetPsiTerm (H : CMatrix) (k l : Fin 55) : ℝ :=
  (2 * (psiCoefficient k : ℝ) * (psiCoefficient l : ℝ)) *
    (injectiveMoment H
      (blockExponent (psiExponent k) false - blockExponent (psiExponent l) false) -
     injectiveMoment H
      (blockExponent (psiExponent k) false + blockExponent (psiExponent l) true))

def targetCornerTerm (H : CMatrix) (p q : Fin 34) : ℝ :=
  450 * CornerPairs.weight p * CornerPairs.weight q *
    (injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent p q) +
     injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) p q))

'''
save('TargetProjectionTerms',{PFX+'.MomentExponentData',PFX+'.CornerPairMoments',
      PFX+'.TailPadding',PFX+'.PrimitiveRows'},terms)

T = ((-2,1,1),(1,-2,1),(1,1,-2))
negT = tuple(tuple(-x for x in row) for row in T)
groups = {}
for kind,count,inner in [('Psi',55,55),('Corner',34,34)]:
    groups[kind] = []
    for i in range(count):
        require_reuse_review('physical_target_projection')
        imports = {PFX+'.TargetProjectionTerms'}
        body = ''
        ds,prs,values,thms = [],[],[],[]
        for j in range(inner):
            if kind == 'Psi':
                arrays = [combine(embed(psi[i]),embed(psi[j]),-1),
                          combine(embed(psi[i]),embed(psi[j],3))]
                exprs = [f'(blockExponent (psiExponent {i}) false - blockExponent (psiExponent {j}) false)',
                         f'(blockExponent (psiExponent {i}) false + blockExponent (psiExponent {j}) true)']
                c, sign, dims = Q(2*coeff[i]*coeff[j]), -1, None
            else:
                arrays = [overlap(T,T,i,j),overlap(T,negT,i,j)]
                exprs = [f'(CornerPairs.overlapExponent cubicExponent cubicExponent {i} {j})',
                         f'(CornerPairs.overlapExponent cubicExponent (-cubicExponent) {i} {j})']
                def weight(p):
                    n = max(labels[p])-2
                    return Q(prod(range(4-n,4)),120)
                c, sign = 450*weight(i)*weight(j), 1
                dims = (f'(CornerPairs.blocks {i})',f'(CornerPairs.blocks {j})')
            left,lt = binding(exprs[0],arrays[0],imports,'0',dims)
            right,rt = binding(exprs[1],arrays[1],imports,'1',dims)
            D = lcm((c/left['denominator']).denominator,(c/right['denominator']).denominator)
            wl,wr = int(c*D/left['denominator']),int(sign*c*D/right['denominator'])
            v = defaultdict(int); add(v,endpoint(left),wl); add(v,endpoint(right),wr)
            name = f'target{kind}Child{i}_{j}'
            pr = name+'Projection'
            body += (f'def {pr} : Integer.Sparse (Fin 1613) :=\n'
                     f'  Integer.Sparse.merge (Integer.Sparse.scale ({wl}) {left["projection"]})\n'
                     f'    (Integer.Sparse.scale ({wr}) {right["projection"]})\n\n'
                     f'theorem {name} {{H : CMatrix}} (hH : IsHadamard H) :\n'
                     f'    ({D} : ℝ) * target{kind}Term H {i} {j} =\n'
                     f'      Integer.Sparse.eval {pr} (Normalization.momentVector H) := by\n'+lt+rt)
            if kind == 'Psi':
                body += (f'  change ({D} : ℝ) * ((2 * (({coeff[i]} : ℤ) : ℝ) * '
                         f'(({coeff[j]} : ℤ) : ℝ)) * (_ - _)) = _\n')
            else:
                body += (f'  have hw : 450 * CornerPairs.weight {i} * CornerPairs.weight {j} =\n'
                         f'      ({c.numerator} : ℝ) / {c.denominator} := by\n'
                         f'    change (450 : ℝ) * ((({int(120*weight(i))} : ℕ) : ℝ) / 120) * '
                         f'((({int(120*weight(j))} : ℕ) : ℝ) / 120) = _\n'
                         '    norm_num\n'
                         '  rw [targetCornerTerm, hw]\n')
            body += (f'  rw [{pr}, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]\n'
                     f'  linear_combination ({wl} : ℝ) * hh0 + ({wr} : ℝ) * hh1\n\n')
            ds.append(D); prs.append(pr); values.append(clean(v)); thms.append(name)
        name = f'target{kind}Row{i}'
        collection,group = collect(name,f'(target{kind}Term H {i})',ds,prs,values,thms,imports)
        body += collection
        module = f'Target{kind}Row{i:02d}'
        save(module,imports,body)
        groups[kind].append((*group,PFX+'.'+module))
        manifest['rows'][f'{kind}:{i}']={'module':PFX+'.'+module,'terms':inner,
                                       'denominator':group[0], 'dependencies':sorted(imports)}

upper = {}
for kind in ['Psi','Corner']:
    rows = groups[kind]
    ds,prs,values,thms,mods = zip(*rows)
    imports = set(mods)
    body,upper[kind] = collect(f'target{kind}Sum',f'(fun i => ∑ j, target{kind}Term H i j)',
                              ds,prs,values,thms,imports)
    save(f'Target{kind}Sum',imports,body)

imports = {PFX+'.TargetProjectionTerms'}
r,bind = binding('cubicExponent',embed(T),imports,'0',('3','3'))
d = r['denominator']; v = defaultdict(int)
add(v,endpoint(r),-180); v[0] += 9*d
tail = clean(v)
body = (f'def targetTailProjection : Integer.Sparse (Fin 1613) := {sparse(tail)}\n\n'
        f'theorem targetTail {{H : CMatrix}} (hH : IsHadamard H) :\n'
        f'    ({d} : ℝ) * (-180 * injectiveMoment H cubicExponent + 9) =\n'
        f'      Integer.Sparse.eval targetTailProjection (Normalization.momentVector H) := by\n'+bind+
        '  have h0 : Normalization.momentVector H 0 = 1 := by\n'
        '    change injectiveMoment H (![] : Matrix (Fin 0) (Fin 0) ℤ) = 1\n'
        '    norm_num [injectiveMoment, exponentMonomial, average_const]\n'
        f'  have hc : targetTailProjection = Integer.Sparse.merge\n'
        f'      (Integer.Sparse.scale (-180) {r["projection"]}) [(0, {9*d})] := by decide +kernel\n'
        '  rw [hc, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale]\n'
        '  simp only [Integer.Sparse.eval, List.map_cons, List.map_nil, List.sum_cons, List.sum_nil, add_zero] at *\n'
        '  rw [h0]\n'
        '  linear_combination (-180 : ℝ) * hh0\n\n')
save('TargetTail',imports,body)

D = arithmetic['common_multiplier']
allrows = [upper['Psi'],upper['Corner'],(d,'targetTailProjection',tail,'targetTail')]
assembled = defaultdict(int)
for d,pr,v,th in allrows:
    assert D % d == 0
    add(assembled,v,D//d)
existing = ast.literal_eval(re.search(r'def target[^\n]* := (.*)',(g.DEST/'Data.lean').read_text())[1])
assert clean(assembled) == dict(existing), 'Must equal the existing target without any coefficient change.'
body = (f'theorem physical_target_projection {{H : CMatrix}} (hH : IsHadamard H) :\n'
        f'    ({D} : ℝ) * physicalTargetMoment H =\n'
        '      Integer.Sparse.eval Arithmetic.target (Semantics.momentVector H) := by\n'
        '  rw [← extendRow_eval Arithmetic.target H]\n')
for i,(_,_,_,th) in enumerate(allrows):body += f'  have h{i} := {th} hH\n'
scaled = [f'(Integer.Sparse.scale {D//d} {pr})' for d,pr,_,_ in allrows]
body += ('  have hc : extendRow Arithmetic.target =\n'
         f'      Integer.Sparse.merge {scaled[0]} (Integer.Sparse.merge {scaled[1]} {scaled[2]}) := by decide +kernel\n'
         '  have hf : physicalTargetMoment H =\n'
         '      (∑ i, ∑ j, targetPsiTerm H i j) + (∑ i, ∑ j, targetCornerTerm H i j) +\n'
         '        (-180 * injectiveMoment H cubicExponent + 9) := by\n'
         '    simp only [physicalTargetMoment, targetPsiTerm, targetCornerTerm, Finset.mul_sum]\n'
         '    ring\n'
         '  rw [hf, hc, Integer.Sparse.eval_merge, Integer.Sparse.eval_merge]\n'
         '  simp only [Integer.Sparse.eval_scale]\n'
         '  linear_combination '+ ' + '.join(f'({D//d} : ℝ) * h{i}' for i,(d,_,_,_) in enumerate(allrows))+'\n\n')
save('TargetProjection',{PFX+'.PhysicalTarget',PFX+'.TargetPsiSum',PFX+'.TargetCornerSum',
      PFX+'.TargetTail',PFX+'.Data'},body)
(g.AUDIT/'TARGET_PROJECTION_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
print(f'Generated adapters for 89 target rows and their assembly; all 138 final coefficients unchanged.')
