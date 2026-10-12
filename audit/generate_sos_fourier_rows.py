"""Bind the selected 13 Fourier equations to existing Lean primitives.

Reuse the published four-point partition cover and weights, the existing
Fourier contraction, and the same normalization DAG used by boundary rows.
The input equations compile independently of the long reduction replay.
"""
from collections import defaultdict
from fractions import Fraction as Q
from math import lcm
import ast
import gzip
import hashlib
import json
import re
import generate_sos_reductions as g
from reuse_preflight import require_reuse_review

require_reuse_review('moment_normalization')
PFX = g.PFX
system = json.load(gzip.open(g.AUDIT/'unprojected_system.json.gz','rt'))
arithmetic = json.loads((g.AUDIT/'LEAN_ARITHMETIC_MANIFEST.json').read_text())
partitions_source = g.VENDOR/'Moments/SmallPartitions.lean'
m = re.search(r'def raw4 : Fin 15 → Fin 4 → ℕ := (.*)',partitions_source.read_text())
patterns = ast.literal_eval(m[1].replace('!',''))
assert len(patterns)==15
old_values = {}
for path in (g.VENDOR/'PairSemantics').glob('Values*.lean'):
    for m in re.finditer(r'def value(\d+) : Sparse \(Fin 909\) := (.*)',path.read_text()):
        old_values[int(m[1])] = {g.data['old_embedding'][int(j)]:Q(int(a),int(b))
            for j,a,b in re.findall(r'\((\d+), \((-?\d+) / (\d+)\)\)',m[2])}


def real(c):
    return f'(({c.numerator} : ℝ) / {c.denominator})'


def terms(i):
    w=system['witnesses'][i]
    name=f'fourierInput{i}'
    if 'fourier_contraction_array' in w:
        A=g.matrix(w['fourier_contraction_array']);B=tuple(zip(*A));p=len(B)-1
        items=[(Q(6-p),A,name)]
        for j in range(p):
            C=B[1:j+1]+(tuple(x+y for x,y in zip(B[0],B[j+1])),)+B[j+2:]
            items.append((Q(1),C,f'mergeFirst {name}.transpose ({j} : Fin {p})'))
        return A,items
    beta=w['fourier_square_beta']
    alpha=(1,1,1,-1,-1,-1)
    A=tuple((a,b,-a,-b) for a,b in zip(alpha,beta))
    items=[]
    for j,labels in enumerate(patterns):
        k=max(labels)+1
        C=tuple(tuple(sum(a[t] for t in range(4) if labels[t]==u) for u in range(k)) for a in A)
        fall=1
        for u in range(k):fall*=6-u
        items.append((Q(fall,6**4),C,f'groupedColumns {name} (EqualityPatterns.family4.label {j})'))
    return A,items


header=(f'namespace {PFX}.Semantics\nopen scoped BigOperators\n'
        'open OAI.MUB6 OAI.MUB6.Certificate Normalization\n'
        'set_option maxRecDepth 10000\nset_option maxHeartbeats 2000000\n\n')
hypotheses=('    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)\n'
            '    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0)')
inputs=('import '+PFX+'.FourierProducts\n'
        'import OAI.Analysis.MutuallyUnbiased.PairTargets.PartitionRules\n\n'+
        header.replace(' Normalization',''))
for i in range(13):
    A,items=terms(i);name=f'fourierInput{i}'
    z=g.vec(f'{real(c)} * injectiveMoment H ({expr})' for c,_,expr in items)
    inputs+=(f'def {name} : Matrix (Fin {len(A)}) (Fin {len(A[0])}) ℤ := {g.literal(A)}\n\n'
             f'theorem fourierInputZero{i} {{H : CMatrix}} (hH : IsHadamard H)\n'+hypotheses+' :\n'
             f'    (∑ j : Fin {len(items)}, ({z} j)) = 0 := by\n')
    if i>=8:
        p=len(A[0])-1
        inputs+=(f'  have hshape : {name}.transpose 0 = alpha := by\n'
                 '    exact funext (by decide +kernel)\n'
                 f'  have hr := fourier_contraction (by decide : {p} < 6) hH hF hFt {name}.transpose hshape\n'
                 '  rw [injectiveMoment_transpose] at hr\n'
                 '  convert hr using 1 <;> norm_num [Fin.sum_univ_succ] <;> rfl\n\n')
    else:
        inputs+=(f'  have hshape : (fun i => {name} i 0) = alpha := by\n'
                 '    exact funext (by decide +kernel)\n'
                 f'  have hr := fourier_products_partition_zero hH hF hFt {name} 0 hshape\n'
                 '    EqualityPatterns.family4 EqualityPatterns.covers4\n'
                 '  rw [PairTargetSemantics.sum_fin_fifteen] at hr\n'
                 '  simp only ['+', '.join(f'PairTargetSemantics.partitionWeight4_{j}' for j in range(15))+'] at hr\n'
                 '  convert hr using 1 <;> norm_num [Fin.sum_univ_succ] <;> ring\n\n')
inputs+=f'end {PFX}.Semantics\n'
path=g.DEST/'FourierRowInputs.lean'
if not path.exists() or path.read_text()!=inputs:path.write_text(inputs)
manifest={'status':'GENERATED_NOT_YET_KERNEL_CHECKED','equations':13,
          'partition_source_sha256':hashlib.sha256(partitions_source.read_bytes()).hexdigest(),
          'files':{path.name:hashlib.sha256(inputs.encode()).hexdigest()},'records':{}}

for i in range(13):
    require_reuse_review('moment_normalization')
    A,items=terms(i);imports={PFX+'.FourierRowInputs',PFX+'.PrimitiveRows',PFX+'.Data'}
    children=[];total=defaultdict(Q)
    for c,B,expr in items:
        raw,sound,C=g.canonical(B,imports)
        cp,cd,cs=g.projection(C,imports)
        children.append((c,B,expr,raw,sound,cp,cd,cs))
        projected=old_values[g.old_nodes[C]] if C in g.old_nodes else \
            {j:Q(a) for j,a in g.steps[g.indices[C]]['projection']}
        for j,a in projected.items():total[j]+=c*a
    assert {j:a for j,a in total.items() if a}=={j:Q(a) for j,a in system['rows'][i]},i
    ds=[c.denominator*cd for c,_,_,_,_,_,cd,_ in children]
    ps=[f'(Integer.Sparse.scale {c.numerator} {cp})' for c,_,_,_,_,cp,_,_ in children]
    denoms=g.vec(ds);projections=g.vec(ps);L=lcm(*ds);d=arithmetic['row_multipliers'][i]
    weights=g.vec(-d*L//dd for dd in ds)
    z=g.vec(f'{real(c)} * injectiveMoment H ({expr})' for c,_,expr in items)
    body=(f'theorem rowSound{i} {{H : CMatrix}} (hH : IsHadamard H)\n'+hypotheses+' :\n'
          f'    Integer.Sparse.eval (Arithmetic.rows {i}) (momentVector H) = 0 := by\n'
          f'  change Integer.Sparse.eval Arithmetic.row{i} (momentVector H) = 0\n'
          f'  rw [← extendRow_eval Arithmetic.row{i} H]\n'
          f'  have hchildren : ∀ j : Fin {len(items)},\n'
          f'      (({denoms} : Fin {len(items)} → ℤ) j : ℝ) * ({z} j) =\n'
          f'        Integer.Sparse.eval ({projections} j) (Normalization.momentVector H) := by\n'
          '    intro j\n    fin_cases j\n')
    for j,(c,B,expr,raw,sound,cp,cd,cs) in enumerate(children):
        body+=(f'    · have he : ({expr}) = {raw} := by\n'
               '        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel\n'
               f'      have hh : ({cd} : ℝ) * injectiveMoment H ({expr}) =\n'
               f'          Integer.Sparse.eval {cp} (Normalization.momentVector H) := by\n')
        chain=f'congrArg (fun M : Matrix (Fin {len(B)}) (Fin {len(B[0])}) ℤ => injectiveMoment H M) he'
        if sound:chain=f'({chain}).trans ({sound} hH)'
        body+=(f'        exact (congrArg (fun x : ℝ => ({cd} : ℝ) * x) ({chain})).trans ({cs} hH)\n'
               f'      change (({ds[j]} : ℤ) : ℝ) * ({real(c)} * injectiveMoment H ({expr})) =\n'
               f'        Integer.Sparse.eval {ps[j]} (Normalization.momentVector H)\n'
               '      rw [Integer.Sparse.eval_scale]\n'
               f'      convert congrArg (fun t : ℝ => ({c.numerator} : ℝ) * t) hh using 1 <;> norm_num <;> ring\n')
    body+=(f'  exact projected_zero (Normalization.momentVector H) {z}\n'
           f'    {d} {L} {denoms} {weights} (extendRow Arithmetic.row{i}) {projections}\n'
           f'    (by decide +kernel) (by decide +kernel) (fourierInputZero{i} hH hF hFt)\n'
           '    hchildren (by decide +kernel)\n\n')
    content=''.join('import '+m+'\n' for m in sorted(imports))+'\n'+header+body+f'end {PFX}.Semantics\n'
    path=g.DEST/f'FourierRows{i:02d}.lean'
    if not path.exists() or path.read_text()!=content:path.write_text(content)
    manifest['files'][path.name]=hashlib.sha256(content.encode()).hexdigest()
    manifest['records'][str(i)]={'module':PFX+'.'+path.stem}
(g.AUDIT/'FOURIER_ROW_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('13 Fourier row adapters generated from the selected witness; no new partition or normalization certificates.')
