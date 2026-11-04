import NoFourMUBs.Basic

/-!
# The skeleton of the minimal proof

`PROOF.md` proves *no four MUBs in `ℂ⁶`* in four steps.  This file states the final implication from explicitly named
inputs, so that the target is fixed in Lean and each input can be discharged by its own module:

* `taoExcluded`   — Tao's class is not a quartet edge (Remark 3.3: a zero-dimensional Record);
* `covered`       — every non-Tao Hadamard is, after an operation of `Γ = {id, conj, ᵀ, conj ∘ ᵀ}`, equivalent to a
                     matrix in some certified Record ball (Steps 1, 2 and 4: connectedness + open-closed atlas);
* `excluded`      — no Hadamard in a certified Record ball is a quartet edge (Step 3: normal bound + Stage C).

The invariance lemmas proved here (quartet edges are preserved by equivalence and by entrywise conjugation) are what make
`covered` sufficient.  Transposition is reduced to conjugation composed with `H ↦ Hᴴ` (`Invariance`).
-/

open Matrix Hadamard6

namespace NoFourMUBs

/-- Entrywise complex conjugation of a `6 × 6` matrix. -/
def conjM (A : Mat6) : Mat6 := A.map (starRingEnd ℂ)

lemma conjM_mul (A B : Mat6) : conjM (A * B) = conjM A * conjM B := by
  ext i j; simp [conjM, Matrix.mul_apply, map_sum]

lemma conjM_conjTranspose (A : Mat6) : conjM Aᴴ = (conjM A)ᴴ := by
  ext i j; simp [conjM]

lemma conjM_one : conjM (1 : Mat6) = 1 := by
  ext i j; by_cases h : i = j <;> simp [conjM, Matrix.one_apply, h]

lemma conjM_smul (c : ℂ) (A : Mat6) : conjM (c • A) = (starRingEnd ℂ c) • conjM A := by
  ext i j; simp [conjM]

lemma isUnitary_conjM {U : Mat6} (h : IsUnitary U) : IsUnitary (conjM U) := by
  refine ⟨?_, ?_⟩
  · rw [← conjM_conjTranspose, ← conjM_mul, h.1, conjM_one]
  · rw [← conjM_conjTranspose, ← conjM_mul, h.2, conjM_one]

lemma unbiased_conjM {U V : Mat6} (h : Unbiased U V) : Unbiased (conjM U) (conjM V) := by
  intro i j
  rw [← conjM_conjTranspose, ← conjM_mul]
  simpa [conjM, Complex.normSq_conj] using h i j

/-- Quartet edges are preserved by entrywise conjugation. -/
theorem quartetEdge_conjM {H : Mat6} (h : QuartetEdge H) : QuartetEdge (conjM H) := by
  obtain ⟨K, L, hK, hL, h1K, h1L, hHK, hHL, hKL⟩ := h
  have hs : (starRingEnd ℂ) (((Real.sqrt 6 : ℝ) : ℂ))⁻¹ = (((Real.sqrt 6 : ℝ) : ℂ))⁻¹ := by
    simp [Complex.conj_ofReal]
  refine ⟨conjM K, conjM L, isUnitary_conjM hK, isUnitary_conjM hL, ?_, ?_, ?_, ?_, unbiased_conjM hKL⟩
  · simpa [conjM_one] using unbiased_conjM h1K
  · simpa [conjM_one] using unbiased_conjM h1L
  · have := unbiased_conjM hHK; rwa [conjM_smul, hs] at this
  · have := unbiased_conjM hHL; rwa [conjM_smul, hs] at this

/-- `G` is the image of `H` under an element of `Γ = {id, conj, ᵀ, conj ∘ ᵀ}`. -/
def InGamma (H G : Mat6) : Prop := G = H ∨ G = conjM H ∨ G = Hᵀ ∨ G = conjM Hᵀ

/-- The inputs of the minimal proof, stated as hypotheses (each to be discharged by its own module). -/
structure Inputs (Ball : Mat6 → Prop) : Prop where
  /-- Remark 3.3: Tao's class contains no quartet edge. -/
  taoExcluded : ∀ H, Hadamard6.IsHadamard H → IsTaoOrbit H → ¬ QuartetEdge H
  /-- Steps 1, 2, 4: every non-Tao class meets a certified Record ball after an operation of `Γ`. -/
  covered : ∀ H, Hadamard6.IsHadamard H → ¬ IsTaoOrbit H →
    ∃ G K, InGamma H G ∧ Ball K ∧ Equivalent G K
  /-- Step 3: certified Record balls contain no quartet edge. -/
  excluded : ∀ K, Ball K → Hadamard6.IsHadamard K → ¬ QuartetEdge K

/-- Entrywise conjugation preserves the Hadamard property. -/
lemma isHadamard_conjM {H : Mat6} (h : Hadamard6.IsHadamard H) : Hadamard6.IsHadamard (conjM H) := by
  refine ⟨fun i j => by simpa [conjM, Complex.normSq_conj] using h.1 i j, ?_⟩
  rw [← conjM_conjTranspose, ← conjM_mul, h.2, conjM_smul, conjM_one, map_ofNat]

end NoFourMUBs
