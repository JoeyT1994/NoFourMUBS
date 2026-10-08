import CompactCarrierCover

/-! Reconstruction uses only an adjugate and one guarded scalar division. -/
namespace Mub6.Classification.CompactCover
open scoped BigOperators
open Matrix Mub6.Numerical Mub6.Classification.GoodMinor
noncomputable section

def gram (E : Mat3) : Mat3 := (6 : ℂ) • 1 - E * Eᴴ
def gramAdjugateQuotient (E : Mat3) : Mat3 := (gram E).det⁻¹ • (gram E).adjugate
def forcedD (E B C : Mat3) : Mat3 := -(C * Eᴴ * gramAdjugateQuotient E * B)

theorem gram_mul_quotient (E : Mat3) (hg : (gram E).det ≠ 0) :
    gram E * gramAdjugateQuotient E = 1 := by
  rw [gramAdjugateQuotient, Matrix.mul_smul, Matrix.mul_adjugate, smul_smul,
    inv_mul_cancel₀ hg, one_smul]

theorem side_sandwich_identity (E B : Mat3) (hG : gram E = B * Bᴴ)
    (hg : (gram E).det ≠ 0) : Bᴴ * gramAdjugateQuotient E * B = 1 := by
  have hi : B * (Bᴴ * gramAdjugateQuotient E) = 1 := by
    rw [← Matrix.mul_assoc, ← hG]
    exact gram_mul_quotient E hg
  exact Matrix.mul_eq_one_comm.mp hi

theorem back_ne_front (i j : Fin 3) : back i ≠ front j := by
  intro h
  have hv := congrArg Fin.val h
  change 3 + i.val = j.val at hv
  omega

theorem bottom_left_rowGram {H : Mat6} (hH : PhaseHadamard H) :
    southwest H * (northwest H)ᴴ + southeast H * (northeast H)ᴴ = 0 := by
  ext i j
  have h := congrArg (fun M : Mat6 => M (back i) (front j)) (phaseHadamard_rowGram hH)
  simp only [Matrix.mul_apply, Matrix.conjTranspose_apply] at h
  rw [Fin.sum_univ_add (a := 3) (b := 3)] at h
  simpa only [southwest, northwest, southeast, northeast, Matrix.add_apply,
    Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.submatrix_apply,
    Matrix.smul_apply, smul_eq_mul, Matrix.one_apply, back_ne_front, if_false,
    mul_zero, Matrix.zero_apply, front, back] using h

/-- The physical lower-right block is forced by E, B, C when the Gram determinant is nonzero. -/
theorem phaseHadamard_forcedD {H : Mat6} (hH : PhaseHadamard H)
    (hg : (gram (northwest H)).det ≠ 0) :
    southeast H = forcedD (northwest H) (northeast H) (southwest H) := by
  have hG : gram (northwest H) = northeast H * (northeast H)ᴴ :=
    residualGram_eq_sideGram hH
  have hs := side_sandwich_identity (northwest H) (northeast H) hG hg
  have hc : southeast H * (northeast H)ᴴ = -(southwest H * (northwest H)ᴴ) := by
    exact eq_neg_of_add_eq_zero_right (bottom_left_rowGram hH)
  have hm := congrArg (fun X : Mat3 => X * gramAdjugateQuotient (northwest H) * northeast H) hc
  simpa only [Matrix.mul_assoc, hs, Matrix.mul_one, Matrix.neg_mul, forcedD] using hm

theorem normalized_gram_ne_zero {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    (gram (northwest H)).det ≠ 0 := by
  change (residualGram H).det ≠ 0
  rw [residualGram_det hH.1]
  apply Complex.ofReal_ne_zero.mpr
  have h := hH.2.2.2.1
  linarith

theorem normalized_good_side_reconstruction {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) :
    southeast H = forcedD (northwest H) (northeast H) (southwest H) :=
  phaseHadamard_forcedD hH.1 (normalized_gram_ne_zero hH)

def blockCarrier (E B C D : Mat3) : Mat6 :=
  Fin.addCases (fun i => Fin.addCases (E i) (B i))
    (fun i => Fin.addCases (C i) (D i))

def reconstructedCarrier (E B C : Mat3) : Mat6 := blockCarrier E B C (forcedD E B C)

theorem blockCarrier_blocks (E B C D : Mat3) :
    northwest (blockCarrier E B C D) = E ∧ northeast (blockCarrier E B C D) = B ∧
    southwest (blockCarrier E B C D) = C ∧ southeast (blockCarrier E B C D) = D := by
  constructor
  · ext i j; simp [northwest, blockCarrier, front]
  constructor
  · ext i j; simp [northeast, blockCarrier, front, back]
  constructor
  · ext i j; simp [southwest, blockCarrier, front, back]
  · ext i j; simp [southeast, blockCarrier, back]

theorem blockCarrier_self (H : Mat6) :
    blockCarrier (northwest H) (northeast H) (southwest H) (southeast H) = H := by
  ext i j
  refine Fin.addCases (fun a => ?_) (fun a => ?_) i <;>
    refine Fin.addCases (fun b => ?_) (fun b => ?_) j <;>
    simp [blockCarrier, northwest, northeast, southwest, southeast, front, back]

theorem normalized_reconstructedCarrier {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    H = reconstructedCarrier (northwest H) (northeast H) (southwest H) := by
  rw [reconstructedCarrier, ← normalized_good_side_reconstruction hH]
  exact (blockCarrier_self H).symm

/-- Every physical carrier reaches an explicit adjugate reconstruction with both guards. -/
theorem phaseHadamard_complete_reconstruction {H : Mat6} (hH : PhaseHadamard H) :
    ∃ k : Fin 20, let K := normalizedSideCarrier H k
      NormalizedGoodSideCarrier K ∧
      K = reconstructedCarrier (northwest K) (northeast K) (southwest K) ∧
      (54 / 5 : ℝ) ≤ (gram (northwest K)).det.re ∧
      (gram (northwest K)).det.im = 0 := by
  obtain ⟨k, hk⟩ := phaseHadamard_normalized_good_side_cover hH
  exact ⟨k, hk, normalized_reconstructedCarrier hk,
    (normalized_good_side_guards hk).2.2⟩

end
end Mub6.Classification.CompactCover

#print axioms Mub6.Classification.CompactCover.gram_mul_quotient
#print axioms Mub6.Classification.CompactCover.side_sandwich_identity
#print axioms Mub6.Classification.CompactCover.bottom_left_rowGram
#print axioms Mub6.Classification.CompactCover.phaseHadamard_forcedD
#print axioms Mub6.Classification.CompactCover.normalized_gram_ne_zero
#print axioms Mub6.Classification.CompactCover.normalized_good_side_reconstruction
#print axioms Mub6.Classification.CompactCover.blockCarrier_blocks
#print axioms Mub6.Classification.CompactCover.blockCarrier_self
#print axioms Mub6.Classification.CompactCover.normalized_reconstructedCarrier
#print axioms Mub6.Classification.CompactCover.phaseHadamard_complete_reconstruction
