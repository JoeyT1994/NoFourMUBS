import AdjugateReconstruction
import SeedInvariants
import PhysicalSideRational

/-! Necessary seed data of the two actual good side blocks of a physical carrier. -/
namespace Mub6.Classification.FourPhase
open scoped BigOperators
open Matrix Mub6.Numerical Mub6.Classification.GoodMinor
open Mub6.Classification.CompactCover FourierSeedBinding
noncomputable section

def seedParameters (H : Mat6) : ℂ × ℂ × ℂ × ℂ :=
  (H 1 1, H 1 2, H 2 1, H 2 2)

def actualSide (x y : Fin 3 → ℂ) : Mat3 :=
  FourierPhysicalSide.side (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)

def sideS (A : Mat3) : ℂ := FourierPhysicalSide.s (A 1 0) (A 1 1) (A 1 2)
def sideT (A : Mat3) : ℂ := FourierPhysicalSide.t (A 2 0) (A 2 1) (A 2 2)
def sideR (A : Mat3) : ℂ :=
  FourierPhysicalSide.r (A 1 0) (A 1 1) (A 1 2) (A 2 0) (A 2 1) (A 2 2)

theorem phaseHadamard_transpose {H : Mat6} (hH : PhaseHadamard H) :
    PhaseHadamard Hᵀ := by
  refine ⟨fun i j => hH.1 j i, ?_⟩
  ext i j
  have h := congrArg (fun M : Mat6 => star (M i j)) (phaseHadamard_rowGram hH)
  by_cases hij : i = j <;>
    simpa [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.transpose_apply,
      Matrix.smul_apply, Matrix.one_apply, star_sum, StarMul.star_mul, hij, mul_comm] using h

theorem northwest_transpose (H : Mat6) : northwest Hᵀ = (northwest H)ᵀ := rfl
theorem northeast_transpose (H : Mat6) : northeast Hᵀ = (southwest H)ᵀ := rfl
theorem southwest_transpose (H : Mat6) : southwest Hᵀ = (northeast H)ᵀ := rfl

theorem normalizedGoodSideCarrier_transpose {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) : NormalizedGoodSideCarrier Hᵀ := by
  refine ⟨phaseHadamard_transpose hH.1, hH.2.2.1, hH.2.1, ?_, ?_⟩
  · simpa only [northeast_transpose, Matrix.det_transpose] using hH.2.2.2.2
  · simpa only [southwest_transpose, Matrix.det_transpose] using hH.2.2.2.1

theorem normalized_northwest_seed {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    northwest H = seed (H 1 1) (H 1 2) (H 2 1) (H 2 2) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [northwest, front, Matrix.submatrix_apply, seed, hH.2.1, hH.2.2.1]

theorem seed_entries_phase {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    IsPhase (H 1 1) ∧ IsPhase (H 1 2) ∧ IsPhase (H 2 1) ∧ IsPhase (H 2 2) :=
  ⟨hH.1.1 1 1, hH.1.1 1 2, hH.1.1 2 1, hH.1.1 2 2⟩

theorem horizontal_first_row {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (j : Fin 3) : northeast H 0 j = 1 := hH.2.1 (back j)

theorem vertical_first_row {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (j : Fin 3) : (southwest H)ᵀ 0 j = 1 := hH.2.2.1 (back j)

theorem horizontal_phase {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (i j : Fin 3) : IsPhase (northeast H i j) := hH.1.1 (front i) (back j)

theorem vertical_phase {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (i j : Fin 3) : IsPhase ((southwest H)ᵀ i j) := hH.1.1 (back j) (front i)

theorem actualSide_of_first_row {A : Mat3} (hA : ∀ j, A 0 j = 1) :
    actualSide (A 1) (A 2) = A := by
  ext i j
  fin_cases i <;> fin_cases j <;> simp [actualSide, FourierPhysicalSide.side, hA]

theorem horizontal_actualSide {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    actualSide (northeast H 1) (northeast H 2) = northeast H :=
  actualSide_of_first_row (horizontal_first_row hH)

theorem vertical_actualSide {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    actualSide ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) = (southwest H)ᵀ :=
  actualSide_of_first_row (vertical_first_row hH)

theorem horizontal_gram_seed {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    northeast H * (northeast H)ᴴ = gramH (H 1 1) (H 1 2) (H 2 1) (H 2 2) := by
  rw [← residualGram_eq_sideGram hH.1]
  unfold residualGram gramH
  rw [normalized_northwest_seed hH]

theorem vertical_gram_seed {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    (southwest H)ᵀ * ((southwest H)ᵀ)ᴴ =
      gramV (H 1 1) (H 1 2) (H 2 1) (H 2 2) := by
  rw [gramV_eq_gramH_swap]
  exact horizontal_gram_seed (normalizedGoodSideCarrier_transpose hH)

theorem actualSide_gram {A : Mat3} (hrow : ∀ j, A 0 j = 1)
    (hphase : ∀ i j, IsPhase (A i j)) :
    A * Aᴴ = FourierGramNumerators.gram (sideS A) (sideT A) (sideR A) := by
  have h := FourierPhysicalSide.actual_gram (A 1 0) (A 1 1) (A 1 2)
    (A 2 0) (A 2 1) (A 2 2)
    (hphase 1 0) (hphase 1 1) (hphase 1 2) (hphase 2 0) (hphase 2 1) (hphase 2 2)
  change actualSide (A 1) (A 2) * (actualSide (A 1) (A 2))ᴴ = _ at h
  simpa only [actualSide_of_first_row hrow] using h

theorem side_moments_of_gram {A : Mat3} {a b c d : ℂ}
    (hrow : ∀ j, A 0 j = 1) (hphase : ∀ i j, IsPhase (A i j))
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d)
    (hgram : A * Aᴴ = gramH a b c d) :
    sideS A = rowS a b ∧ sideT A = rowT c d ∧ sideR A = rowR a b c d := by
  rw [actualSide_gram hrow hphase, gramH_entries a b c d ha hb hc hd] at hgram
  exact ⟨congrArg (fun M : Mat3 => M 1 0) hgram,
    congrArg (fun M : Mat3 => M 2 0) hgram,
    congrArg (fun M : Mat3 => M 2 1) hgram⟩

theorem horizontal_moments {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    sideS (northeast H) = rowS (H 1 1) (H 1 2) ∧
    sideT (northeast H) = rowT (H 2 1) (H 2 2) ∧
    sideR (northeast H) = rowR (H 1 1) (H 1 2) (H 2 1) (H 2 2) := by
  exact side_moments_of_gram (horizontal_first_row hH) (horizontal_phase hH)
    (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2) (horizontal_gram_seed hH)

theorem vertical_moments {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    sideS ((southwest H)ᵀ) = rowS (H 1 1) (H 2 1) ∧
    sideT ((southwest H)ᵀ) = rowT (H 1 2) (H 2 2) ∧
    sideR ((southwest H)ᵀ) = rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2) :=
  horizontal_moments (normalizedGoodSideCarrier_transpose hH)

theorem horizontal_det_guard {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    (54 / 5 : ℝ) ≤ Complex.normSq (northeast H).det := hH.2.2.2.1

theorem vertical_det_guard {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    (54 / 5 : ℝ) ≤ Complex.normSq ((southwest H)ᵀ).det := by
  simpa only [Matrix.det_transpose] using hH.2.2.2.2

theorem horizontal_det_ne_zero {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    (northeast H).det ≠ 0 := good_det_ne_zero (horizontal_det_guard hH)

theorem vertical_det_ne_zero {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    ((southwest H)ᵀ).det ≠ 0 := good_det_ne_zero (vertical_det_guard hH)

theorem seed_g_horizontal_det {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    g (H 1 1) (H 1 2) (H 2 1) (H 2 2) = Complex.normSq (northeast H).det := by
  unfold g
  rw [← horizontal_gram_seed hH, det_mul_conjTranspose, Complex.ofReal_re]

theorem seed_g_vertical_det {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    g (H 1 1) (H 1 2) (H 2 1) (H 2 2) = Complex.normSq ((southwest H)ᵀ).det := by
  have h := seed_g_horizontal_det (normalizedGoodSideCarrier_transpose hH)
  simpa only [Matrix.transpose_apply, northeast_transpose,
    g_swap _ _ _ _ (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2)] using h

theorem seed_g_lower_bound {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    (54 / 5 : ℝ) ≤ g (H 1 1) (H 1 2) (H 2 1) (H 2 2) := by
  rw [seed_g_horizontal_det hH]
  exact horizontal_det_guard hH

end
end Mub6.Classification.FourPhase
#check Mub6.Classification.FourPhase.phaseHadamard_transpose
#print axioms Mub6.Classification.FourPhase.phaseHadamard_transpose
#check Mub6.Classification.FourPhase.northwest_transpose
#print axioms Mub6.Classification.FourPhase.northwest_transpose
#check Mub6.Classification.FourPhase.northeast_transpose
#print axioms Mub6.Classification.FourPhase.northeast_transpose
#check Mub6.Classification.FourPhase.southwest_transpose
#print axioms Mub6.Classification.FourPhase.southwest_transpose
#check Mub6.Classification.FourPhase.normalizedGoodSideCarrier_transpose
#print axioms Mub6.Classification.FourPhase.normalizedGoodSideCarrier_transpose
#check Mub6.Classification.FourPhase.normalized_northwest_seed
#print axioms Mub6.Classification.FourPhase.normalized_northwest_seed
#check Mub6.Classification.FourPhase.seed_entries_phase
#print axioms Mub6.Classification.FourPhase.seed_entries_phase
#check Mub6.Classification.FourPhase.horizontal_first_row
#print axioms Mub6.Classification.FourPhase.horizontal_first_row
#check Mub6.Classification.FourPhase.vertical_first_row
#print axioms Mub6.Classification.FourPhase.vertical_first_row
#check Mub6.Classification.FourPhase.horizontal_phase
#print axioms Mub6.Classification.FourPhase.horizontal_phase
#check Mub6.Classification.FourPhase.vertical_phase
#print axioms Mub6.Classification.FourPhase.vertical_phase
#check Mub6.Classification.FourPhase.actualSide_of_first_row
#print axioms Mub6.Classification.FourPhase.actualSide_of_first_row
#check Mub6.Classification.FourPhase.horizontal_actualSide
#print axioms Mub6.Classification.FourPhase.horizontal_actualSide
#check Mub6.Classification.FourPhase.vertical_actualSide
#print axioms Mub6.Classification.FourPhase.vertical_actualSide
#check Mub6.Classification.FourPhase.horizontal_gram_seed
#print axioms Mub6.Classification.FourPhase.horizontal_gram_seed
#check Mub6.Classification.FourPhase.vertical_gram_seed
#print axioms Mub6.Classification.FourPhase.vertical_gram_seed
#check Mub6.Classification.FourPhase.actualSide_gram
#print axioms Mub6.Classification.FourPhase.actualSide_gram
#check Mub6.Classification.FourPhase.side_moments_of_gram
#print axioms Mub6.Classification.FourPhase.side_moments_of_gram
#check Mub6.Classification.FourPhase.horizontal_moments
#print axioms Mub6.Classification.FourPhase.horizontal_moments
#check Mub6.Classification.FourPhase.vertical_moments
#print axioms Mub6.Classification.FourPhase.vertical_moments
#check Mub6.Classification.FourPhase.horizontal_det_guard
#print axioms Mub6.Classification.FourPhase.horizontal_det_guard
#check Mub6.Classification.FourPhase.vertical_det_guard
#print axioms Mub6.Classification.FourPhase.vertical_det_guard
#check Mub6.Classification.FourPhase.horizontal_det_ne_zero
#print axioms Mub6.Classification.FourPhase.horizontal_det_ne_zero
#check Mub6.Classification.FourPhase.vertical_det_ne_zero
#print axioms Mub6.Classification.FourPhase.vertical_det_ne_zero
#check Mub6.Classification.FourPhase.seed_g_horizontal_det
#print axioms Mub6.Classification.FourPhase.seed_g_horizontal_det
#check Mub6.Classification.FourPhase.seed_g_vertical_det
#print axioms Mub6.Classification.FourPhase.seed_g_vertical_det
#check Mub6.Classification.FourPhase.seed_g_lower_bound
#print axioms Mub6.Classification.FourPhase.seed_g_lower_bound
