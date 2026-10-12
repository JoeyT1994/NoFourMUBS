"""Emit the direct SOS arithmetic using the EXISTING sparse-merge checker.

No new arithmetic checker or rank theorem is introduced. These Lean modules
only prove a linear consequence for arbitrary real vectors. Actual moment
semantics, row validity and target interpretation must still be supplied.
"""
from pathlib import Path
from fractions import Fraction as Q
import gzip
import hashlib
import json
import math
from reuse_preflight import require_reuse_review

require_reuse_review('sos_witness')

ROOT = Path(__file__).resolve().parents[1]
INPUT = ROOT / 'audit' / 'sos'
source = INPUT / 'unprojected_system.json.gz'
system = json.load(gzip.open(source, 'rt'))
witness = system
selected = [(i, Q(c)) for i, c in witness['coefficients']]
raw_rows = [{j: Q(v) for j, v in system['rows'][i]} for i, _ in selected]
coordinates = sorted(set().union(*(set(r) for r in raw_rows)))
index = {old: new for new, old in enumerate(coordinates)}
divisors = [math.lcm(*(c.denominator for c in row.values())) for row in raw_rows]
L = math.lcm(*(int((c / d).denominator) for (_, c), d in zip(selected, divisors)),
             *(Q(c).denominator for _, c in system['target']))
rows = [{index[j]: int(c * d) for j, c in row.items()}
        for row, d in zip(raw_rows, divisors)]
coefficients = [int(c / d * L) for (_, c), d in zip(selected, divisors)]
assert all(Q(c / d * L).denominator == 1 for (_, c), d in zip(selected, divisors))
target = {index[j]: int(Q(c) * L) for j, c in system['target']}
n, m = len(coordinates), len(rows)
directory = ROOT / 'lean' / 'NoFourMUBs' / 'Step2' / 'SOS'
directory.mkdir(exist_ok=True)
prefix = 'NoFourMUBs.Step2.SOS'
ns = 'NoFourMUBs.Step2.SOS.Arithmetic'


def sparse(row):
    return '[' + ', '.join(f'({i}, {c})' for i, c in sorted(row.items()) if c) + ']'


header = ('/-! Generated from the existing exact SOS equations. The arithmetic\n'
          'is kernel-checked; actual-Hadamard semantics are a separate obligation. -/\n'
          'set_option maxRecDepth 10000\n'
          'set_option maxHeartbeats 800000\n'
          f'namespace {ns}\n'
          'open OAI.MUB6.Certificate\n\n')
data = 'import OAI.Analysis.MutuallyUnbiased.Certificate.IntegerMerge\n\n' + header
for k, row in enumerate(rows):
    original = selected[k][0]
    data += f'-- Original primitive equation {original}, multiplied by {divisors[k]}.\n'
    data += f'def row{k} : Integer.Sparse (Fin {n}) := {sparse(row)}\n\n'
data += f'def rows (k : Fin {m}) : Integer.Sparse (Fin {n}) :=\n  match k.val with\n'
for k in range(m - 1):
    data += f'  | {k} => row{k}\n'
data += f'  | _ => row{m - 1}\n\n'
data += f'def target : Integer.Sparse (Fin {n}) := {sparse(target)}\n\n'
data += f'end {ns}\n'
(directory / 'Data.lean').write_text(data)

# Build a balanced merge tree. No eliminator or untrusted native evaluation is
# used by the resulting Lean proof: each literal merge uses `decide +kernel`.
active = [({'expr': f'(Integer.Sparse.scale ({c}) (rows {k}))', 'node': None},
           {i: c * a for i, a in row.items()})
          for k, (row, c) in enumerate(zip(rows, coefficients))]
nodes = []
while len(active) > 1:
    following = []
    for i in range(0, len(active), 2):
        if i + 1 == len(active):
            following.append(active[i])
            continue
        left, a = active[i]
        right, b = active[i + 1]
        merged = dict(a)
        for j, c in b.items():
            merged[j] = merged.get(j, 0) + c
        merged = {j: c for j, c in merged.items() if c}
        number = len(nodes)
        nodes.append((left, right, merged))
        following.append(({'expr': f'merged{number}', 'node': number}, merged))
    active = following
assert active[0][1] == target

blocks = []
for start in range(0, len(nodes), 32):
    block = start // 32
    previous = f'{prefix}.Data' if block == 0 else f'{prefix}.Merge{block - 1:02d}'
    content = f'import {previous}\n\n' + header
    for i in range(start, min(start + 32, len(nodes))):
        left, right, row = nodes[i]
        content += f'def merged{i} : Integer.Sparse (Fin {n}) := {sparse(row)}\n\n'
        content += (f'theorem check{i} : merged{i} = Integer.Sparse.merge '
                    f'{left["expr"]} {right["expr"]} := by decide +kernel\n\n')
        content += (f'theorem zero{i} (x : Fin {n} → ℝ)\n'
                    f'    (h : ∀ k, Integer.Sparse.eval (rows k) x = 0) :\n'
                    f'    Integer.Sparse.eval merged{i} x = 0 := by\n'
                    f'  rw [check{i}, Integer.Sparse.eval_merge]\n')
        for side in [left, right]:
            if side['node'] is not None:
                content += f'  rw [zero{side["node"]} x h]\n'
        if left['node'] is not None and right['node'] is not None:
            content += '  exact zero_add 0\n\n'
        else:
            content += '  simp only [Integer.Sparse.eval_scale, h, mul_zero, add_zero]\n\n'
    content += f'end {ns}\n'
    filename = f'Merge{block:02d}.lean'
    (directory / filename).write_text(content)
    blocks.append(filename)

last = len(nodes) - 1
main = f'import {prefix}.{Path(blocks[-1]).stem}\n\n' + header
main += (f'theorem target_eq : target = merged{last} := by decide +kernel\n\n'
         f'/-- Only the arithmetic implication: the actual moment equations must\n'
         f'still be proved before this yields the conditional SOS identity. -/\n'
         f'theorem consequence (x : Fin {n} → ℝ)\n'
         f'    (h : ∀ k, Integer.Sparse.eval (rows k) x = 0) :\n'
         f'    Integer.Sparse.eval target x = 0 := by\n'
         f'  rw [target_eq]\n'
         f'  exact zero{last} x h\n\nend {ns}\n')
(directory / 'Arithmetic.lean').write_text(main)

manifest = {
    'source_system_sha256': hashlib.sha256(source.read_bytes()).hexdigest(),
    'witness_source': 'unprojected_system.json.gz:coefficients',
    'common_multiplier': L,
    'coordinates': [system['coordinates'][i] for i in coordinates],
    'source_coordinate_ids': coordinates,
    'source_equation_ids': [i for i, _ in selected],
    'row_multipliers': divisors,
    'combination_coefficients': coefficients,
    'files': {name: hashlib.sha256((directory / name).read_bytes()).hexdigest()
              for name in ['Data.lean', *blocks, 'Arithmetic.lean']},
    'semantic_status': 'NOT_YET_PROVED',
}
(INPUT / 'LEAN_ARITHMETIC_MANIFEST.json').write_text(json.dumps(manifest, indent=2) + '\n')
print(f'Generated {len(manifest["files"])} Lean files; {m} equations; {n} coordinates; multiplier {L}.')
