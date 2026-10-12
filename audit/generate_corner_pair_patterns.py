"""Encode the existing target's 34 overlaps of two injective triples.

This is the finite sampling table already used by verify_one_identity.py.
It does not discover a witness or recompute any target coefficient.
"""
from pathlib import Path
from itertools import product
import hashlib
import json
from reuse_preflight import require_reuse_review

require_reuse_review('corner_pair_sampling')
ROOT = Path(__file__).resolve().parents[1]
source = ROOT.parent/'lean_proof_2026_10_09/verify_one_identity.py'
assert hashlib.sha256(source.read_bytes()).hexdigest() == '507f465f740fa9c30d0cee1f7b2e5cd39dc3ef7ef038b1ad0f106362ad925573'
patterns = [p for p in product(range(-1, 3), repeat=3)
            if len({x for x in p if x >= 0}) == sum(x >= 0 for x in p)]
assert len(patterns) == 34
rows = []
for p in patterns:
    new = iter(range(3, 6))
    rows.append((0, 1, 2) + tuple(x if x >= 0 else next(new) for x in p))


def vector(xs):
    return '![' + ', '.join(map(str, xs)) + ']'


text = '''import OAI.Analysis.MutuallyUnbiased.Moments.SmallPartitions

/-! The 34 overlap patterns already used by the selected SOS target.
Each triple is injective; the two triples may overlap in any positions.
The OAI equality-pattern representation is reused unchanged. -/

namespace NoFourMUBs.Step2.SOS.CornerPairs
open OAI.MUB6.EqualityPatterns
set_option maxRecDepth 20000
set_option maxHeartbeats 5000000

'''
text += f'def blocks : Fin 34 → ℕ := {vector(max(r)+1 for r in rows)}\n\n'
text += f'def raw : Fin 34 → Fin 6 → ℕ := {vector(vector(r) for r in rows)}\n\n'
text += '''def label (p : Fin 34) (i : Fin 6) : Fin (blocks p) :=
  ⟨raw p i, by fin_cases p <;> fin_cases i <;> decide +kernel⟩

def family : Family (Fin 6) (Fin 34) where
  blocks := blocks
  label := label
  onto := by decide +kernel
  unique := by decide +kernel

theorem first_injective (p : Fin 34) :
    Function.Injective (fun i : Fin 3 => family.label p (Fin.castAdd 3 i)) := by
  revert p
  decide +kernel

theorem second_injective (p : Fin 34) :
    Function.Injective (fun i : Fin 3 => family.label p (Fin.natAdd 3 i)) := by
  revert p
  decide +kernel

theorem covers_injective_halves {B : Type*} (f : Fin 6 → B)
    (hfirst : Function.Injective (fun i : Fin 3 => f (Fin.castAdd 3 i)))
    (hsecond : Function.Injective (fun i : Fin 3 => f (Fin.natAdd 3 i))) :
    ∃ p, ∀ i j, family.label p i = family.label p j ↔ f i = f j := by
  classical
'''
for offset, proof in [(0, 'hfirst'), (3, 'hsecond')]:
    for i in range(3):
        for j in range(i):
            text += (f'  have h{i+offset}{j+offset} : f {i+offset} ≠ f {j+offset} := fun h =>\n'
                     f'    (by decide : ({i} : Fin 3) ≠ {j}) ({proof} h)\n')

leaves = []


def branch(k, assigned, depth):
    global text
    pad = ' ' * depth
    if k == 6:
        p = tuple(assigned[i] for i in range(3, 6))
        n = patterns.index(p)
        leaves.append(n)
        row = vector(rows[n])
        text += (pad + f'refine ⟨{n}, ?_⟩\n' +
                 pad + 'simp only [family, label, Fin.mk.injEq]\n' +
                 pad + f'change ∀ i j, ({row} : Fin 6 → ℕ) i = {row} j ↔ f i = f j\n' +
                 pad + 'intro i j\n' +
                 pad + 'fin_cases i <;> fin_cases j <;>\n' +
                 pad + '  simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)\n')
        return
    used = {a: i for i, a in assigned.items() if a >= 0}
    for a, i in sorted(used.items()):
        text += (pad + f'have h{k}{a} : f {k} ≠ f {a} := fun h =>\n' +
                 pad + f'  h{k}{i} (h.trans h{i}{a}.symm)\n')
    remaining = [a for a in range(3) if a not in used]

    def choose(options, indent):
        nonlocal assigned
        global text
        q = ' ' * indent
        if not options:
            branch(k + 1, assigned | {k: -1}, indent)
            return
        a, *rest = options
        text += q + f'by_cases h{k}{a} : f {k} = f {a}\n' + q + '·\n'
        branch(k + 1, assigned | {k: a}, indent + 2)
        text += q + '·\n'
        choose(rest, indent + 2)

    choose(remaining, depth)


branch(3, {}, 2)
assert sorted(leaves) == list(range(34))
text += '\nend NoFourMUBs.Step2.SOS.CornerPairs\n'
path = ROOT/'lean/NoFourMUBs/Step2/SOS/CornerPairPatterns.lean'
path.write_text(text)
manifest = {'status': 'GENERATED_NOT_YET_KERNEL_CHECKED', 'patterns': patterns,
            'rows': rows, 'complete_case_leaves': sorted(leaves),
            'source_sha256': hashlib.sha256(source.read_bytes()).hexdigest(),
            'output_sha256': hashlib.sha256(path.read_bytes()).hexdigest()}
(ROOT/'audit/sos/CORNER_PAIR_PATTERN_MANIFEST.json').write_text(json.dumps(manifest, indent=2)+'\n')
print(f'Encoded {len(patterns)} existing overlap patterns; {len(leaves)} distinct completeness cases.')
