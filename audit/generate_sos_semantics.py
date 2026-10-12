"""Give the single arithmetic certificate its existing actual-moment semantics.

Reuse upstream coordinate definitions and the already-proved boundary equations.
No new proof of any upstream boundary equation is generated.
"""
from pathlib import Path
from fractions import Fraction as Q
import ast
import gzip
import hashlib
import json
import re
from reuse_preflight import require_reuse_review

require_reuse_review('moment_normalization')

ROOT = Path(__file__).resolve().parents[1]
AUDIT = ROOT / 'audit/sos'
manifest = json.loads((AUDIT / 'LEAN_ARITHMETIC_MANIFEST.json').read_text())
system = json.load(gzip.open(AUDIT / 'unprojected_system.json.gz', 'rt'))
upstream = ROOT / 'lean/vendor/fourier/OAI/Analysis/MutuallyUnbiased/PairSemantics'
destination = ROOT / 'lean/NoFourMUBs/Step2/SOS'
old_coordinates, old_rows, old_row_modules = {}, {}, {}
for p in upstream.glob('Coordinates*.lean'):
    for m in re.finditer(r'def coordinate(\d+) : ExponentCode := ⟨\d+, \d+, (.*)⟩', p.read_text()):
        A = tuple(map(tuple, ast.literal_eval(m[2].replace('!', ''))))
        old_coordinates[A] = int(m[1])
for p in upstream.glob('Boundary*.lean'):
    for m in re.finditer(r'def boundaryRow(\d+) : Integer.Sparse \(Fin 909\) := (.*)', p.read_text()):
        old_rows[int(m[1])] = dict(ast.literal_eval(m[2]))
        old_row_modules[int(m[1])] = p.stem

coordinates = [tuple(map(tuple,A)) for A in manifest['coordinates']]
n = len(coordinates)
prefix = 'NoFourMUBs.Step2.SOS'
ns = prefix + '.Semantics'
old_ns = 'OAI.MUB6.Certificate.PairSemantics'
header = (f'namespace {ns}\n'
          'open OAI.MUB6 OAI.MUB6.Certificate\n'
          'set_option maxRecDepth 10000\n'
          'set_option maxHeartbeats 800000\n\n')


def vector(A):
    return '![' + ', '.join('![' + ', '.join(map(str,row)) + ']' for row in A) + ']'


files = []
for start in range(0,n,64):
    name = f'MomentCodes{start//64:02d}.lean'
    content = 'import OAI.Analysis.MutuallyUnbiased.PairSemantics.Coordinates\n\n' + header
    for i in range(start,min(start+64,n)):
        A = coordinates[i]
        if A in old_coordinates:
            code = f'{old_ns}.coordinate{old_coordinates[A]}'
        else:
            code = f'⟨{len(A)}, {len(A[0]) if A else 0}, {vector(A)}⟩'
        content += f'def code{i} : ExponentCode := {code}\n\n'
    content += f'end {ns}\n'
    (destination/name).write_text(content)
    files.append(name)

content = ''.join(f'import {prefix}.{Path(name).stem}\n' for name in files) + '\n' + header
content += f'def code (i : Fin {n}) : ExponentCode :=\n  match i.val with\n'
for i in range(n-1): content += f'  | {i} => code{i}\n'
content += f'  | _ => code{n-1}\n\n'
content += f'noncomputable def momentVector (H : CMatrix) (i : Fin {n}) : ℝ :=\n  (code i).moment H\n\n'
for i,A in enumerate(coordinates):
    if A in old_coordinates:
        old = old_coordinates[A]
        content += (f'theorem oldMoment{i} (H : CMatrix) : momentVector H {i} =\n'
                    f'    {old_ns}.momentVector H {old} := rfl\n\n')
content += f'end {ns}\n'
(destination/'MomentData.lean').write_text(content)
files.append('MomentData.lean')

reuses = json.loads((AUDIT/'UPSTREAM_BOUNDARY_REUSE.json').read_text())
source_to_local = {source: i for i,source in enumerate(manifest['source_equation_ids'])}
relations = []
for source, _, old in reuses:
    i = source_to_local[source]
    d = manifest['row_multipliers'][i]
    desired = {j: int(Q(c)*d) for j,c in system['rows'][source]}
    # The unprojected system and arithmetic generator preserve coordinate order.
    assert manifest['source_coordinate_ids'] == list(range(n))
    old_form = {old_coordinates[coordinates[j]]: c for j,c in desired.items()}
    known = old_rows[old]
    assert set(known)==set(old_form)
    first = next(iter(known))
    ratio = Q(old_form[first],known[first])
    assert all(Q(old_form[j]) == ratio*known[j] for j in known)
    relations.append((i,old,ratio,sorted(desired)))

row_files = []
for start in range(0,len(relations),16):
    group = relations[start:start+16]
    name = f'ReusedRows{start//16:02d}.lean'
    imports = sorted({old_row_modules[old] for _,old,_,_ in group})
    content = (f'import {prefix}.MomentData\nimport {prefix}.Data\n' +
               ''.join(f'import OAI.Analysis.MutuallyUnbiased.PairSemantics.{m}\n' for m in imports) +
               '\n' + header)
    for i,old,ratio,indices in group:
        factor = f'(({ratio.numerator} : ℝ) / {ratio.denominator})'
        content += (f'/-- Reuse upstream boundarySound{old}; only coordinates and scaling change. -/\n'
                    f'theorem rowSound{i} {{H : CMatrix}} (hH : IsHadamard H) :\n'
                    f'    Integer.Sparse.eval (Arithmetic.rows {i}) (momentVector H) = 0 := by\n'
                    f'  change Integer.Sparse.eval Arithmetic.row{i} (momentVector H) = 0\n'
                    f'  have heq : Integer.Sparse.eval Arithmetic.row{i} (momentVector H) =\n'
                    f'      {factor} * Integer.Sparse.eval {old_ns}.boundaryRow{old}\n'
                    f'        ({old_ns}.momentVector H) := by\n'
                    f'    norm_num [Arithmetic.row{i}, {old_ns}.boundaryRow{old}, Integer.Sparse.eval,\n'
                    f'      '+', '.join(f'oldMoment{j}' for j in indices)+'] <;> ring\n'
                    f'  rw [heq, {old_ns}.boundarySound{old} hH, mul_zero]\n\n')
    content += f'end {ns}\n'
    (destination/name).write_text(content)
    row_files.append(name)
files += row_files
summary = {
    'status': 'GENERATED_SEMANTIC_BRIDGES_BUILD_PENDING',
    'moment_coordinates':n,
    'reused_coordinates':sum(A in old_coordinates for A in coordinates),
    'reused_boundary_equations':len(relations),
    'planned_source_row_ids':[i for i,_,_,_ in relations],
    'files':{name:hashlib.sha256((destination/name).read_bytes()).hexdigest() for name in files},
    'not_claimed':'The remaining primitive rows and the actual SOS target are not yet proved.',
}
(AUDIT/'SEMANTIC_BRIDGES.json').write_text(json.dumps(summary,indent=2)+'\n')
print(json.dumps({k:v for k,v in summary.items() if k not in ['files','planned_source_row_ids']}))
