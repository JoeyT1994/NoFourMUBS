import NoFourMUBs.Step2.CriticalZero.GeometricMoments
import Hadamard6.SimultaneousFourierNormalization
import OAI.Analysis.MutuallyUnbiased.Fourier.Characters
import Mathlib.Logic.Equiv.Fintype
import Mathlib.Logic.Equiv.Fin.Basic

/-! Selected generic Worker12 interfaces in the existing current matrix model.
The source blocks and omitted unrelated routes are pinned in the reuse review. -/

set_option autoImplicit false
noncomputable section
namespace Worker12
open Hadamard6
open scoped BigOperators

abbrev splitIndex := NoFourMUBs.Step2.FourierBridge.coordinates
abbrev splitMatrix := NoFourMUBs.Step2.FourierBridge.fromOAI
abbrev unsplitMatrix := NoFourMUBs.Step2.FourierBridge.toOAI
abbrev PrimitiveCubicPhase := Hadamard6.IsPrimitiveCubicPhase
abbrev phaseVector := Hadamard6.fourierParameters

noncomputable def embeddingPermutation {α β : Type*} [Fintype α] [Fintype β]
    [DecidableEq β] (r s : α ↪ β) : Equiv.Perm β := by
  classical
  exact (r.toEquivRange.symm.trans s.toEquivRange).extendSubtype

theorem embeddingPermutation_apply {α β : Type*} [Fintype α] [Fintype β]
    [DecidableEq β] (r s : α ↪ β) (i : α) :
    embeddingPermutation r s (r i) = s i := by
  classical
  unfold embeddingPermutation
  rw [Equiv.extendSubtype_apply_of_mem _ _ (Set.mem_range_self i)]
  simp

def splitEmbedding (r : Fin 3 ↪ Fin 6) : Hadamard6.I3 ↪ Hadamard6.I6 :=
  r.trans splitIndex.symm.toEmbedding

def leftEmbedding : Hadamard6.I3 ↪ Hadamard6.I6 := Function.Embedding.inl

noncomputable def selectedPermutation (r : Fin 3 ↪ Fin 6) : Equiv.Perm Hadamard6.I6 :=
  embeddingPermutation leftEmbedding (splitEmbedding r)

theorem selectedPermutation_apply (r : Fin 3 ↪ Fin 6) (i : Fin 3) :
    selectedPermutation r (Sum.inl i) = splitIndex.symm (r i) :=
  embeddingPermutation_apply leftEmbedding (splitEmbedding r) i

theorem splitMatrix_isHadamard {H : OAI.MUB6.CMatrix}
    (hH : OAI.MUB6.IsHadamard H) : Hadamard6.IsHadamard (splitMatrix H) := by
  refine ⟨fun i j ↦ hH.1 (splitIndex i) (splitIndex j), ?_⟩
  ext i j
  change (∑ k, H (splitIndex i) (splitIndex k) *
      star (H (splitIndex j) (splitIndex k))) = _
  rw [splitIndex.sum_comp (fun k ↦ H (splitIndex i) k * star (H (splitIndex j) k))]
  have h := congrArg (fun M : OAI.MUB6.CMatrix ↦ M (splitIndex i) (splitIndex j)) (CriticalRowSum20261003.row_gram hH)
  simpa [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.smul_apply,
    Matrix.one_apply, splitIndex.injective.eq_iff] using h

def fourier3 (ω : ℂ) : Hadamard6.Mat3 :=
  !![1, 1, 1; 1, ω, ω ^ 2; 1, ω ^ 2, ω]

/-- Block representative [F, D(p,q)F; F, -D(p,q)F]. Its binding to a
published Fourier representative is a separate exact equivalence obligation. -/
def fourierPhase (ω p q : ℂ) : OAI.MUB6.CMatrix :=
  let F := fourier3 ω
  let DF : Hadamard6.Mat3 := fun i j ↦ phaseVector p q i * F i j
  unsplitMatrix (Matrix.fromBlocks F DF F (-DF))

theorem equivalent_unsplit {H K : Hadamard6.Mat6} (h : Equivalent H K) :
    OAI.MUB6.Equivalent (unsplitMatrix H) (unsplitMatrix K) := by
  rcases h with ⟨σ, τ, r, c, hr, hc, heq⟩
  refine ⟨(splitIndex.symm.trans σ).trans splitIndex,
    (splitIndex.symm.trans τ).trans splitIndex,
    (fun i ↦ r (splitIndex.symm i)), (fun j ↦ c (splitIndex.symm j)),
    (fun i ↦ hr _), (fun j ↦ hc _), ?_⟩
  intro i j
  simpa [unsplitMatrix, NoFourMUBs.Step2.FourierBridge.toOAI, splitIndex]
    using heq (splitIndex.symm i) (splitIndex.symm j)

theorem literal_fourier3_isHadamard {ω : ℂ}
    (hu : Complex.normSq ω = 1) (hq : ω ^ 2 + ω + 1 = 0) :
    Hadamard6.IsHadamard3 (Worker12.fourier3 ω) := by
  have h3 : ω ^ 3 = 1 := Hadamard6.cubic_of_quadratic hq
  have h4 : ω ^ 4 = ω := by calc
    ω ^ 4 = ω * ω ^ 3 := by ring
    _ = ω := by rw [h3, mul_one]
  have hs := Hadamard6.star_eq_square_of_quadratic_unit hu hq
  have hs2 := Hadamard6.star_square_eq_of_quadratic_unit hu hq
  have hsc : (starRingEnd ℂ) ω = ω ^ 2 := hs
  have hs2c : (starRingEnd ℂ) (ω ^ 2) = ω := hs2
  constructor
  · intro i j
    fin_cases i <;> fin_cases j <;> simp [Worker12.fourier3, map_pow, hu]
  · ext i j
    fin_cases i <;> fin_cases j <;>
      simp [Worker12.fourier3, Matrix.mul_apply, Matrix.conjTranspose_apply,
        Fin.sum_univ_three, Matrix.smul_apply, Matrix.one_apply, hs, hs2, hsc, hs2c] <;>
      ring_nf <;> (try simp [h3, h4]) <;> (try ring) <;> linear_combination hq

#print axioms embeddingPermutation_apply
#print axioms selectedPermutation_apply
#print axioms splitMatrix_isHadamard
#print axioms equivalent_unsplit
#print axioms literal_fourier3_isHadamard
end Worker12

namespace CriticalFourierRouting20261003
open Worker12
def FourierOrTranspose (H : OAI.MUB6.CMatrix) : Prop :=
  ∃ ω p q : ℂ, PrimitiveCubicPhase ω ∧
    Complex.normSq p = 1 ∧ Complex.normSq q = 1 ∧
    (OAI.MUB6.Equivalent H (fourierPhase ω p q) ∨
     OAI.MUB6.Equivalent H (Matrix.transpose (fourierPhase ω p q)))

end CriticalFourierRouting20261003
