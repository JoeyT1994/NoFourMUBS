import NoFourMUBs.Step2.Reconstruction.ForcedRowNorms
import Hadamard6.BlockGram

set_option autoImplicit false
open Matrix Hadamard6
open scoped BigOperators

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment

/-- The entrywise squared-modulus defect, embedded in the complex matrices. -/
def flatnessDefect (D : Mat3) : Mat3 :=
  fun i j => (Complex.normSq (D i j) : ℂ) - 1

/-- Upstream's `bar(V) Δ bar(B)ᵀ`, in the existing coordinates `C = Vᵀ`. -/
def weightedDefect (B C D : Mat3) : Mat3 := Cᴴ * flatnessDefect D * Bᴴ

/-- Assemble the existing block identities before fourth-block flatness. -/
theorem candidate_completion_rowGram {E B C : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates E)
    (hC : C ∈ invertibleVerticalCandidates E) :
    completion E B C * (completion E B C)ᴴ = (6 : ℂ) • (1 : Mat6) := by
  have hcross := forcedD_row_cross E B C hB.2
  have hlower : C * Eᴴ + forcedD E B C * Bᴴ = 0 := by
    simpa [Matrix.conjTranspose_add] using congrArg Matrix.conjTranspose hcross
  rw [completion_rowGram_blocks, hB.1.2.2, hcross, hlower,
    forcedD_bottomRowGram hB.2 hC.2 hB.1.2.2 hC.1.2.2]
  ext i j
  rcases i with i | i <;> rcases j with j | j <;>
    simp [sixI3, Matrix.one_apply]

/-- The scaling argument in `hadamard_column_gram` needs only its Gram input. -/
theorem candidate_completion_columnGram {E B C : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates E)
    (hC : C ∈ invertibleVerticalCandidates E) :
    (completion E B C)ᴴ * completion E B C = (6 : ℂ) • (1 : Mat6) := by
  have hr := candidate_completion_rowGram hB hC
  have hi : completion E B C * ((6 : ℂ)⁻¹ • (completion E B C)ᴴ) = 1 := by
    rw [Matrix.mul_smul, hr, smul_smul]
    norm_num
  have hc := mul_eq_one_comm.mp hi
  have hs := congrArg (fun M : Mat6 => (6 : ℂ) • M) hc
  simpa [Matrix.smul_mul, smul_smul] using hs

theorem forcedD_column_norms {E B C : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates E)
    (hC : C ∈ invertibleVerticalCandidates E) :
    ∀ j, ∑ i, Complex.normSq (forcedD E B C i j) = 3 := by
  have hg := candidate_completion_columnGram hB hC
  rw [completion, Matrix.fromBlocks_conjTranspose, Matrix.fromBlocks_multiply] at hg
  have h22 := congrArg Matrix.toBlocks₂₂ hg
  rw [toBlocks₂₂_sixI] at h22
  change Bᴴ * B + (forcedD E B C)ᴴ * forcedD E B C = sixI3 at h22
  intro j
  have hb : ∀ i, Complex.normSq (B i j) = 1 := fun i => hB.1.1 i j
  have hj : 3 + (∑ i, Complex.normSq (forcedD E B C i j)) = 6 := by
    simpa [Matrix.mul_apply, Matrix.conjTranspose_apply, Complex.star_def,
      ← Complex.normSq_eq_conj_mul_self, sixI3, hb] using
      congrArg Complex.re (congrFun (congrFun h22 j) j)
  linarith

/-- Zero margins leave exactly the four nonconstant weighted coordinates. -/
theorem entrywiseUnit_of_four_weighted_defects {B C D : Mat3}
    (hB : IsUnit B.det) (hC : IsUnit C.det)
    (hB0 : ∀ j, B 0 j = 1) (hC0 : ∀ i, C i 0 = 1)
    (hrow : ∀ i, ∑ j, Complex.normSq (D i j) = 3)
    (hcol : ∀ j, ∑ i, Complex.normSq (D i j) = 3)
    (hfour : ∀ p q : Fin 3, p ≠ 0 → q ≠ 0 → weightedDefect B C D p q = 0) :
    EntrywiseUnit D := by
  have hr : ∀ i, ∑ j, flatnessDefect D i j = 0 := by
    intro i
    simp [flatnessDefect, Finset.sum_sub_distrib, ← Complex.ofReal_sum, hrow]
  have hc : ∀ j, ∑ i, flatnessDefect D i j = 0 := by
    intro j
    simp [flatnessDefect, Finset.sum_sub_distrib, ← Complex.ofReal_sum, hcol]
  have hw0 : ∀ q, weightedDefect B C D 0 q = 0 := by
    intro q
    simp [weightedDefect, Matrix.mul_apply, Matrix.conjTranspose_apply, hC0, hc]
  have hw1 : ∀ p, weightedDefect B C D p 0 = 0 := by
    intro p
    unfold weightedDefect
    rw [Matrix.mul_assoc]
    simp [Matrix.mul_apply,
      Matrix.conjTranspose_apply, hB0, hr]
  have hw : weightedDefect B C D = 0 := by
    ext p q
    by_cases hp : p = 0
    · subst p; exact hw0 q
    by_cases hq : q = 0
    · subst q; exact hw1 p
    exact hfour p q hp hq
  have hb : IsUnit Bᴴ.det := by
    rw [Matrix.det_conjTranspose]
    exact hB.map (starRingEnd ℂ)
  have hc' : IsUnit Cᴴ.det := by
    rw [Matrix.det_conjTranspose]
    exact hC.map (starRingEnd ℂ)
  have hd : flatnessDefect D = 0 := by
    have h := congrArg (fun M : Mat3 => (Cᴴ)⁻¹ * M * (Bᴴ)⁻¹) hw
    simpa only [weightedDefect, Matrix.mul_assoc, Matrix.mul_nonsing_inv Bᴴ hb,
      Matrix.mul_one, Matrix.nonsing_inv_mul_cancel_left Cᴴ _ hc',
      Matrix.mul_zero, Matrix.zero_mul] using h
  intro i j
  have h := congrFun (congrFun hd i) j
  have h' : (Complex.normSq (D i j) : ℂ) = 1 := sub_eq_zero.mp h
  exact_mod_cast h'

/-- The only flatness input still required is the four weighted identities. -/
theorem forcedD_entrywiseUnit_of_four_weighted_defects {E B C : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates E)
    (hC : C ∈ invertibleVerticalCandidates E)
    (hfour : ∀ p q : Fin 3, p ≠ 0 → q ≠ 0 →
      weightedDefect B C (forcedD E B C) p q = 0) :
    EntrywiseUnit (forcedD E B C) :=
  entrywiseUnit_of_four_weighted_defects hB.2 hC.2 hB.1.2.1 hC.1.2.1
    (forcedD_row_norms hB hC) (forcedD_column_norms hB hC) hfour

end NoFourMUBs.Step2.Reconstruction.ThirdMoment
