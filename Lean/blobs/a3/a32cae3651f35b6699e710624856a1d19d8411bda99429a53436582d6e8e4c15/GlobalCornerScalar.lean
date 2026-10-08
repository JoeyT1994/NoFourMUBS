import GlobalCornerDomain
import ShoulderActualSideGate
import ShoulderSharedRadicand
import ShoulderStrictCompletion

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1000000
namespace Mub6.Classification.GlobalCornerDomain
open Mub6 Mub6.Numerical Matrix
open Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase FourPhaseWorker CanonicalCorners
noncomputable section

/-- Exact identification of the worker's real Gram polynomial with the
external-side gate's complex-valued polynomial. -/
theorem gram_g_complex (s t r : ℂ) :
    (FourierGramNumerators.g s t r : ℂ) = ShoulderPhaseGate20261002.g s t r := by
  apply Complex.ext <;>
    simp [FourierGramNumerators.g, ShoulderPhaseGate20261002.g,
      ShoulderPhaseGate20261002.X, ShoulderPhaseGate20261002.J,
      Complex.normSq_apply,pow_two,Complex.mul_re,Complex.mul_im,Complex.star_def] <;> ring

theorem gram_eta_complex (s t r : ℂ) :
    (FourierGramNumerators.eta s t r : ℂ) = ShoulderPhaseGate20261002.eta s t r := by
  apply Complex.ext <;>
    simp [FourierGramNumerators.eta, FourierGramNumerators.g,
      FourierGramNumerators.sigma, FourierGramNumerators.q,
      ShoulderPhaseGate20261002.eta, ShoulderPhaseGate20261002.X,
      ShoulderPhaseGate20261002.J,
      Complex.normSq_apply,pow_two,Complex.mul_re,Complex.mul_im,Complex.star_def] <;> ring

theorem gram_chi_complex (s t r : ℂ) :
    (FourierGramNumerators.chi s t r : ℂ) = ShoulderPhaseGate20261002.chi s t r := by
  apply Complex.ext <;>
    simp [FourierGramNumerators.chi, FourierGramNumerators.g,
      FourierGramNumerators.sigma, FourierGramNumerators.q,
      ShoulderPhaseGate20261002.chi, ShoulderPhaseGate20261002.X,
      ShoulderPhaseGate20261002.J,
      Complex.normSq_apply,pow_two,Complex.mul_re,Complex.mul_im,Complex.star_def] <;> ring

theorem gram_radicand_complex (s t r : ℂ) :
    (FourierRadicalGuards.radicand (FourierGramNumerators.g s t r)
      (FourierGramNumerators.chi s t r) (FourierGramNumerators.eta s t r) : ℂ) =
      ShoulderPhaseGate20261002.radicand s t r := by
  simp only [FourierRadicalGuards.radicand, Complex.ofReal_sub,
    Complex.ofReal_mul, Complex.ofReal_pow, Complex.ofReal_ofNat,
    gram_g_complex,gram_chi_complex,gram_eta_complex,
    ShoulderPhaseGate20261002.radicand]

/-- The two implementations have exactly the same score on four unit seeds. -/
theorem seed_radicand_complex (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    (FourierSeedBinding.radicand a b c d : ℂ) =
      ShoulderPhaseGate20261002.radicand (rowS a b) (rowT c d) (rowR a b c d) := by
  unfold FourierSeedBinding.radicand
  rw [g_gram_binding a b c d ha hb hc hd,
    chi_gram_binding a b c d ha hb hc hd,
    eta_gram_binding a b c d ha hb hc hd]
  exact gram_radicand_complex _ _ _

/-- No nonzero determinant or good-minor threshold is needed for positivity. -/
theorem physical_side_radicand_nonneg (A : CompactCover.Mat3)
    (hphase : ∀ i j, IsPhase (A i j)) :
    0 ≤ (ShoulderPhaseGate20261002.radicand (sideS A) (sideT A) (sideR A)).re := by
  have h := ShoulderPhaseGate20261002.physical_moment_branches
    (A 1 0) (A 1 1) (A 1 2) (A 2 0) (A 2 1) (A 2 2)
    (hphase 1 0) (hphase 1 1) (hphase 1 2)
    (hphase 2 0) (hphase 2 1) (hphase 2 2)
  exact h.1

/-- The normalized leading seed is literal, with no good-minor assumption. -/
theorem normalized_seed {H : CompactCover.Mat6} (hH : NormalizedCarrier H) :
    northwest H = seed (H 1 1) (H 1 2) (H 2 1) (H 2 2) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [northwest, front, Matrix.submatrix_apply, seed, hH.2.1, hH.2.2]

/-- Literal matrix-score binding for the strict reconstruction interface. -/
theorem normalized_score_matrixRadicand {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) :
    (score H : ℂ) = ShoulderSharedRadicand20261002.matrixRadicand (northwest H) := by
  rw [normalized_seed hH]
  let E := seed (H 1 1) (H 1 2) (H 2 1) (H 2 2)
  have hs : ShoulderActualSide20261002.seedS E = rowS (H 1 1) (H 1 2) := by
    change -(∑ k : Fin 3, E 1 k * star (E 0 k)) = _
    simp [E,seed,Fin.sum_univ_three,rowS]
  have ht : ShoulderActualSide20261002.seedT E = rowT (H 2 1) (H 2 2) := by
    change -(∑ k : Fin 3, E 2 k * star (E 0 k)) = _
    simp [E,seed,Fin.sum_univ_three,rowT]
  have hr : ShoulderActualSide20261002.seedR E =
      rowR (H 1 1) (H 1 2) (H 2 1) (H 2 2) := by
    change -(∑ k : Fin 3, E 2 k * star (E 1 k)) = _
    simp [E,seed,Fin.sum_univ_three,rowR]
  change (score H : ℂ) = ShoulderPhaseGate20261002.radicand
    (ShoulderActualSide20261002.seedS E) (ShoulderActualSide20261002.seedT E)
    (ShoulderActualSide20261002.seedR E)
  rw [hs,ht,hr]
  exact seed_radicand_complex (H 1 1) (H 1 2) (H 2 1) (H 2 2)
    (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2)

/-- Global strictness provides the actual seed determinant guard without the
54/5 good-side threshold. -/
theorem globalStrict_seedGram_unit {H : CompactCover.Mat6} (hH : GlobalStrict H) :
    IsUnit (ShoulderSeedCompletion20261002.seedGram (northwest H)).det := by
  apply ShoulderStrictCompletion20261002.strict_seedGram_unit
  · exact fun i j => hH.1.1.1.1 (front i) (front j)
  · have he := congrArg Complex.re (normalized_score_matrixRadicand hH.1.1)
    simp only [Complex.ofReal_re] at he
    change 0 < (ShoulderSharedRadicand20261002.matrixRadicand (northwest H)).re
    rw [← he]
    exact hH.2

/-- The existing strict completion is now attached to the actual numerical
carrier selected by the new global-max route. -/
theorem globalStrict_actual_seed_completion {H : CompactCover.Mat6}
    (hH : GlobalStrict H) :
    southeast H = -(southwest H * (ShoulderSeedCompletion20261002.seedGram
      (northwest H))⁻¹ * (northwest H)ᴴ * northeast H) := by
  exact ShoulderSeedCompletion20261002.actual_seed_completion
    (ClassificationCover.public_of_numerical hH.1.1.1) (globalStrict_seedGram_unit hH)

/-- Strictness gives g>0, but this theorem does not assert g>=54/5. -/
theorem normalized_strict_g_positive {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) (hR : 0 < score H) :
    0 < FourierSeedBinding.g (H 1 1) (H 1 2) (H 2 1) (H 2 2) :=
  strict_radicand_g_positive _ _ _ _
    (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2) hR

theorem normalized_horizontal_gram {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) :
    northeast H * (northeast H)ᴴ = gramH (H 1 1) (H 1 2) (H 2 1) (H 2 2) := by
  rw [← residualGram_eq_sideGram hH.1]
  unfold residualGram gramH
  rw [normalized_seed hH]

theorem normalized_g_horizontal_det {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) :
    FourierSeedBinding.g (H 1 1) (H 1 2) (H 2 1) (H 2 2) =
      Complex.normSq (northeast H).det := by
  unfold FourierSeedBinding.g
  rw [← normalized_horizontal_gram hH, det_mul_conjTranspose, Complex.ofReal_re]

theorem normalized_transpose {H : CompactCover.Mat6} (hH : NormalizedCarrier H) :
    NormalizedCarrier Hᵀ := ⟨phaseHadamard_transpose hH.1,hH.2.2,hH.2.1⟩

theorem normalized_g_vertical_det {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) :
    FourierSeedBinding.g (H 1 1) (H 1 2) (H 2 1) (H 2 2) =
      Complex.normSq ((southwest H)ᵀ).det := by
  have h := normalized_g_horizontal_det (normalized_transpose hH)
  simpa only [Matrix.transpose_apply,northeast_transpose,
    g_swap _ _ _ _ (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2)] using h

/-- Both physical side blocks of a strict seed are nonsingular, without the
old quantitative good-minor condition. -/
theorem normalized_strict_side_det_nonzero {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) (hR : 0 < score H) :
    (northeast H).det ≠ 0 ∧ (southwest H).det ≠ 0 := by
  have hg := normalized_strict_g_positive hH hR
  constructor
  · intro hz
    rw [normalized_g_horizontal_det hH,hz,Complex.normSq_zero] at hg
    exact (lt_irrefl 0) hg
  · intro hz
    rw [normalized_g_vertical_det hH,Matrix.det_transpose,hz,Complex.normSq_zero] at hg
    exact (lt_irrefl 0) hg

/-- Actual Gram equations identify the seed moments even at singular sides. -/
theorem normalized_horizontal_moments {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) :
    sideS (northeast H) = rowS (H 1 1) (H 1 2) ∧
    sideT (northeast H) = rowT (H 2 1) (H 2 2) ∧
    sideR (northeast H) = rowR (H 1 1) (H 1 2) (H 2 1) (H 2 2) := by
  apply side_moments_of_gram
    (fun j => hH.2.1 (back j)) (fun i j => hH.1.1 (front i) (back j))
    (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2)
  exact normalized_horizontal_gram hH

/-- Every normalized physical corner has nonnegative R, including all singular
and zero-score cases excluded by a strict reconstruction chart. -/
theorem normalized_score_nonneg {H : CompactCover.Mat6} (hH : NormalizedCarrier H) :
    0 ≤ score H := by
  obtain ⟨hs,ht,hr⟩ := normalized_horizontal_moments hH
  have h := physical_side_radicand_nonneg (northeast H)
    (fun i j => hH.1.1 (front i) (back j))
  rw [hs,ht,hr,← seed_radicand_complex _ _ _ _
    (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2)] at h
  exact h

/-- At global maximum zero, every ordered positional corner is exactly zero. -/
theorem globalZero_all_corners_zero {H : CompactCover.Mat6} (hH : GlobalZero H)
    (p q : Perm) : score (candidate H p q) = 0 := by
  apply le_antisymm
  · simpa only [hH.2] using hH.1.2 p q
  · exact normalized_score_nonneg (candidate_normalized hH.1.1.1 p q)

/-- Exact all-critical predicate; it is not a Fourier classification theorem. -/
def AllCritical (H : CompactCover.Mat6) : Prop :=
  NormalizedCarrier H ∧ ∀ p q : Perm, score (candidate H p q) = 0

theorem globalZero_allCritical {H : CompactCover.Mat6} (hH : GlobalZero H) :
    AllCritical H := ⟨hH.1.1, globalZero_all_corners_zero hH⟩

/-- Reduction of the zero branch to its precise classification/exclusion duty. -/
theorem noFour_of_globalStrict_and_allCritical
    (strict : ∀ H : CompactCover.Mat6, GlobalStrict H →
      ¬ OccursAsQuartetEdge (normalizedNumerical H))
    (critical : ∀ H : CompactCover.Mat6, AllCritical H →
      ¬ OccursAsQuartetEdge (normalizedNumerical H)) : NoFourMUB6 := by
  exact noFour_of_global_strict_and_zero strict
    (fun H hz => critical H (globalZero_allCritical hz))

end
end Mub6.Classification.GlobalCornerDomain

#print axioms Mub6.Classification.GlobalCornerDomain.gram_g_complex
#print axioms Mub6.Classification.GlobalCornerDomain.gram_eta_complex
#print axioms Mub6.Classification.GlobalCornerDomain.gram_chi_complex
#print axioms Mub6.Classification.GlobalCornerDomain.gram_radicand_complex
#print axioms Mub6.Classification.GlobalCornerDomain.seed_radicand_complex
#print axioms Mub6.Classification.GlobalCornerDomain.physical_side_radicand_nonneg
#print axioms Mub6.Classification.GlobalCornerDomain.normalized_seed
#print axioms Mub6.Classification.GlobalCornerDomain.normalized_score_matrixRadicand
#print axioms Mub6.Classification.GlobalCornerDomain.globalStrict_seedGram_unit
#print axioms Mub6.Classification.GlobalCornerDomain.normalized_horizontal_moments
#print axioms Mub6.Classification.GlobalCornerDomain.normalized_score_nonneg
#print axioms Mub6.Classification.GlobalCornerDomain.globalZero_all_corners_zero

#print axioms Mub6.Classification.GlobalCornerDomain.globalZero_allCritical
#print axioms Mub6.Classification.GlobalCornerDomain.noFour_of_globalStrict_and_allCritical

#print axioms Mub6.Classification.GlobalCornerDomain.normalized_strict_g_positive
#print axioms Mub6.Classification.GlobalCornerDomain.normalized_horizontal_gram
#print axioms Mub6.Classification.GlobalCornerDomain.normalized_g_horizontal_det
#print axioms Mub6.Classification.GlobalCornerDomain.normalized_transpose
#print axioms Mub6.Classification.GlobalCornerDomain.normalized_g_vertical_det
#print axioms Mub6.Classification.GlobalCornerDomain.normalized_strict_side_det_nonzero

#print axioms Mub6.Classification.GlobalCornerDomain.globalStrict_actual_seed_completion
