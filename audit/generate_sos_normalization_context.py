"""Extend the selected moment vector by only the missing upstream coordinates.

No moment is redefined: every entry is an existing ExponentCode. The finite
coordinate comparisons and their interpretations are checked in Lean.
"""
from pathlib import Path
import gzip
import json
from reuse_preflight import require_reuse_review

require_reuse_review('moment_normalization')

ROOT = Path(__file__).resolve().parents[1]
data = json.load(gzip.open(ROOT/'audit/sos/REDUCTION_DATA.json.gz', 'rt'))
old_embedding = data['old_embedding']
n = len(data['coordinates'])
assert n == 1613
assert set(old_embedding) | set(range(1400)) == set(range(n))
prefix = 'NoFourMUBs.Step2.SOS'
old = 'OAI.MUB6.Certificate.PairSemantics'
source = f'''import {prefix}.MomentData
import {prefix}.Normalization
import {prefix}.ReuseProjection

namespace {prefix}.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

/-- The 1,400 active coordinates followed by 213 reused OAI coordinates. -/
def coordinates (i : Fin {n}) : ExponentCode :=
  if h : i.val < 1400 then Semantics.code ⟨i.val, h⟩ else
  match i.val - 1400 with
'''
extra_old = {j:i for i,j in enumerate(old_embedding) if j >= 1400}
for j in range(1400,n-1):
    source += f'  | {j-1400} => {old}.coordinate{extra_old[j]}\n'
source += f'  | _ => {old}.coordinate{extra_old[n-1]}\n\n'
source += f'''noncomputable def momentVector (H : CMatrix) (i : Fin {n}) : ℝ :=
  (coordinates i).moment H

def activeEmbedding : Fin 1400 → Fin {n} := Fin.castLE (by decide)

theorem active_moment (H : CMatrix) (i : Fin 1400) :
    momentVector H (activeEmbedding i) = Semantics.momentVector H i := by
  simp [momentVector, coordinates, activeEmbedding, Semantics.momentVector, i.isLt]

def oldEmbedding (i : Fin 909) : Fin {n} :=
  (#['''
source += ', '.join(map(str,old_embedding))
source += f'''])[i.val]!

end {prefix}.Normalization
'''
dst = ROOT/'lean/NoFourMUBs/Step2/SOS'
(dst/'NormalizationContextData.lean').write_text(source)
chunk_names = []
for j in range(29):
    name = f'NormalizationContextCheck{j:02d}'
    chunk_names.append(name)
    text = f'''import {prefix}.NormalizationContextData

namespace {prefix}.Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

theorem old_coordinates_{j} : ∀ i : Fin 909,
    {j*32} ≤ i.val ∧ i.val < {(j+1)*32} →
      coordinates (oldEmbedding i) = {old}.coordinates i := by decide +kernel

end {prefix}.Normalization
'''
    (dst/(name+'.lean')).write_text(text)
source = ''.join(f'import {prefix}.{name}\n' for name in chunk_names)
source += f'''
namespace {prefix}.Normalization
open OAI.MUB6 OAI.MUB6.Certificate

theorem old_coordinates (i : Fin 909) :
    coordinates (oldEmbedding i) = {old}.coordinates i := by
  have hb := i.isLt
  have hblocks (j : Fin 29)
      (hj : j.val * 32 ≤ i.val ∧ i.val < (j.val + 1) * 32) :
      coordinates (oldEmbedding i) = {old}.coordinates i := by
    fin_cases j
'''
for j in range(29):
    source += f'    · exact old_coordinates_{j} i hj\n'
source += f'''
  exact hblocks ⟨i.val / 32, by omega⟩ (by dsimp; omega)

theorem old_moment (H : CMatrix) (i : Fin 909) :
    momentVector H (oldEmbedding i) = {old}.momentVector H i :=
  congrArg (fun A : ExponentCode => A.moment H) (old_coordinates i)

end {prefix}.Normalization
'''
(dst/'NormalizationContext.lean').write_text(source)
print({'coordinates':n,'new_coordinates':0,'reused_upstream_coordinates_added':n-1400})
