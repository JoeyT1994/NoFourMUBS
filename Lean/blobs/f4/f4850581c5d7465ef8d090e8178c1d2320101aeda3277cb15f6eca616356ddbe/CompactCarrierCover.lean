import GoodSideBlocks
import SymmetryTransport
import Mathlib.LinearAlgebra.Matrix.Adjugate

/-! Explicit normalized physical side-block cover. -/
namespace Mub6.Classification.CompactCover
open scoped BigOperators
open Matrix Mub6.Numerical Mub6.Classification.GoodMinor
noncomputable section

abbrev Mat3 := Matrix (Fin 3) (Fin 3) ℂ
abbrev Mat6 := Matrix (Fin 6) (Fin 6) ℂ

def normalizingRows (H : Mat6) (r : Fin 6) : ℂ := H 0 0 * star (H r 0)
def normalizingCols (H : Mat6) (k : Fin 6) : ℂ := star (H 0 k)
def normalizeCarrier (H : Mat6) : Mat6 :=
  rephase (normalizingRows H) (normalizingCols H) H
def normalizedSideCarrier (H : Mat6) (k : Fin 20) : Mat6 :=
  normalizeCarrier (H.submatrix id (sidePermutation k))

theorem unit_star_mul {z : ℂ} (hz : Complex.normSq z = 1) : star z * z = 1 := by
  change (starRingEnd ℂ) z * z = 1
  rw [← Complex.normSq_eq_conj_mul_self, hz]
  rfl

theorem unit_mul_star {z : ℂ} (hz : Complex.normSq z = 1) : z * star z = 1 := by
  rw [mul_comm]
  exact unit_star_mul hz

theorem normalizingRows_unit {H : Mat6} (hH : PhaseHadamard H) (r : Fin 6) :
    Complex.normSq (normalizingRows H r) = 1 := by
  simp only [normalizingRows, Complex.normSq_mul, Complex.star_def,
    Complex.normSq_conj, hH.1 0 0, hH.1 r 0, one_mul]

theorem normalizingCols_unit {H : Mat6} (hH : PhaseHadamard H) (k : Fin 6) :
    Complex.normSq (normalizingCols H k) = 1 := by
  simpa only [normalizingCols, Complex.star_def, Complex.normSq_conj] using hH.1 0 k

theorem normalizingRows_zero {H : Mat6} (hH : PhaseHadamard H) :
    normalizingRows H 0 = 1 := unit_mul_star (hH.1 0 0)

theorem rephase_PhaseHadamard (d e : Fin 6 → ℂ)
    (hd : ∀ r, Complex.normSq (d r) = 1) (he : ∀ k, Complex.normSq (e k) = 1)
    {H : Mat6} (hH : PhaseHadamard H) : PhaseHadamard (rephase d e H) := by
  constructor
  · intro r k
    simp only [rephase, Complex.normSq_mul, hd r, he k, hH.1 r k, one_mul]
  · ext i j
    change overlap (rephase d e H) (rephase d e H) i j = _
    rw [overlap_rephase H H d e e hd i j]
    have h := congrArg (fun M : Mat6 => M i j) hH.2
    change overlap H H i j = _ at h
    rw [h]
    by_cases hij : i = j
    · subst j
      have hs := unit_star_mul (he i)
      simpa [Matrix.smul_apply, Matrix.one_apply, mul_assoc, mul_left_comm] using
        congrArg (fun z : ℂ => 6 * z) hs
    · simp [Matrix.smul_apply, Matrix.one_apply, hij]

theorem normalizeCarrier_PhaseHadamard {H : Mat6} (hH : PhaseHadamard H) :
    PhaseHadamard (normalizeCarrier H) :=
  rephase_PhaseHadamard _ _ (normalizingRows_unit hH) (normalizingCols_unit hH) hH

theorem normalizeCarrier_first_row {H : Mat6} (hH : PhaseHadamard H) (k : Fin 6) :
    normalizeCarrier H 0 k = 1 := by
  change normalizingRows H 0 * H 0 k * star (H 0 k) = 1
  rw [normalizingRows_zero hH, one_mul]
  exact unit_mul_star (hH.1 0 k)

theorem normalizeCarrier_first_column {H : Mat6} (hH : PhaseHadamard H) (r : Fin 6) :
    normalizeCarrier H r 0 = 1 := by
  change (H 0 0 * star (H r 0)) * H r 0 * star (H 0 0) = 1
  rw [mul_assoc (H 0 0), unit_star_mul (hH.1 r 0), mul_one]
  exact unit_mul_star (hH.1 0 0)

theorem rephase_det_normSq (A : Mat3) (d e : Fin 3 → ℂ)
    (hd : ∀ i, Complex.normSq (d i) = 1) (he : ∀ j, Complex.normSq (e j) = 1) :
    Complex.normSq (Matrix.det (fun i j => d i * A i j * e j)) = Complex.normSq A.det := by
  have hm : (fun i j => d i * A i j * e j) = Matrix.diagonal d * A * Matrix.diagonal e := by
    ext i j
    simp [Matrix.diagonal_mul, Matrix.mul_diagonal]
  rw [hm, Matrix.det_mul, Matrix.det_mul, Matrix.det_diagonal, Matrix.det_diagonal]
  simp only [Complex.normSq_mul, map_prod, hd, he, Finset.prod_const_one, one_mul, mul_one]

/-- Every minor determinant magnitude survives the explicit normalization. -/
theorem normalizeCarrier_minor_normSq {H : Mat6} (hH : PhaseHadamard H)
    (ρ κ : Fin 3 → Fin 6) :
    Complex.normSq ((normalizeCarrier H).submatrix ρ κ).det =
      Complex.normSq (H.submatrix ρ κ).det := by
  exact rephase_det_normSq (H.submatrix ρ κ)
    (fun i => normalizingRows H (ρ i)) (fun j => normalizingCols H (κ j))
    (fun i => normalizingRows_unit hH (ρ i))
    (fun j => normalizingCols_unit hH (κ j))

def NormalizedGoodSideCarrier (H : Mat6) : Prop :=
  PhaseHadamard H ∧ (∀ k, H 0 k = 1) ∧ (∀ r, H r 0 = 1) ∧
  (54 / 5 : ℝ) ≤ Complex.normSq (northeast H).det ∧
  (54 / 5 : ℝ) ≤ Complex.normSq (southwest H).det

/-- Actual physical carriers have a normalized member among twenty explicit maps. -/
theorem phaseHadamard_normalized_good_side_cover {H : Mat6} (hH : PhaseHadamard H) :
    ∃ k : Fin 20, NormalizedGoodSideCarrier (normalizedSideCarrier H k) := by
  obtain ⟨k, hp, hB, hC⟩ := phaseHadamard_good_side_blocks hH
  refine ⟨k, normalizeCarrier_PhaseHadamard hp, normalizeCarrier_first_row hp,
    normalizeCarrier_first_column hp, ?_, ?_⟩
  · change (54 / 5 : ℝ) ≤ Complex.normSq
      ((normalizeCarrier (H.submatrix id (sidePermutation k))).submatrix front back).det
    rwa [normalizeCarrier_minor_normSq hp]
  · change (54 / 5 : ℝ) ≤ Complex.normSq
      ((normalizeCarrier (H.submatrix id (sidePermutation k))).submatrix back front).det
    rwa [normalizeCarrier_minor_normSq hp]

theorem normalized_good_side_guards {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    (northeast H).det ≠ 0 ∧ (southwest H).det ≠ 0 ∧
    (54 / 5 : ℝ) ≤ (residualGram H).det.re ∧ (residualGram H).det.im = 0 := by
  refine ⟨good_det_ne_zero hH.2.2.2.1, good_det_ne_zero hH.2.2.2.2, ?_, ?_⟩
  · simpa only [residualGram_det hH.1, Complex.ofReal_re] using hH.2.2.2.1
  · simp only [residualGram_det hH.1, Complex.ofReal_im]

end
end Mub6.Classification.CompactCover

#print axioms Mub6.Classification.CompactCover.rephase_PhaseHadamard
#print axioms Mub6.Classification.CompactCover.normalizeCarrier_PhaseHadamard
#print axioms Mub6.Classification.CompactCover.normalizeCarrier_first_row
#print axioms Mub6.Classification.CompactCover.normalizeCarrier_first_column
#print axioms Mub6.Classification.CompactCover.rephase_det_normSq
#print axioms Mub6.Classification.CompactCover.normalizeCarrier_minor_normSq
#print axioms Mub6.Classification.CompactCover.phaseHadamard_normalized_good_side_cover
#print axioms Mub6.Classification.CompactCover.normalized_good_side_guards
