import NoFourMUBs.Step2.Reconstruction.SignatureFromPermanent
import NoFourMUBs.Step2.Reconstruction.SideRecipe
import NoFourMUBs.Reuse.Archive.FourierPhaseData

set_option autoImplicit false
open Matrix Hadamard6 NoFourMUBs.Side StrictReconstruction20261007
open Hadamard6Extensions.FourierSide
open scoped ComplexConjugate

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction

/-- The repository's forward Fourier permanent identity in matrix notation. -/
theorem phaseFourier_permanent (M : Mat3) (omega w : ℂ)
    (hquad : omega ^ 2 + omega + 1 = 0) (hw : Complex.normSq w = 1)
    (h0 : M 0 0 = 1) (h1 : M 0 1 = 0) (h2 : M 0 2 = 0) :
    permanent3 (phaseFourierMatrix M omega w) =
      6 * M 1 0 * M 2 0 - 3 * (M 1 1 * M 2 2 + M 1 2 * M 2 1) := by
  have hrow (i : Fin 3) : phaseFourierMatrix M omega w i =
      fourierRow (3 * M i 0) (M i 1 * conj w) (M i 2 * w) omega := by
    funext j
    obtain ⟨e0, e1, e2⟩ := phaseFourier_row_entries M omega w hquad i
    fin_cases j <;>
      simp [fourierRow, e0, e1, e2, SideDFT.dft₀, SideDFT.dft₁, SideDFT.dft₂] <;> ring
  have hfirst := phaseFourier_first_row M omega w hquad h0 h1 h2
  have hp : permanentSide
      (fourierRow (3 * M 1 0) (M 1 1 * conj w) (M 1 2 * w) omega)
      (fourierRow (3 * M 2 0) (M 2 1 * conj w) (M 2 2 * w) omega) =
        permanent3 (phaseFourierMatrix M omega w) := by
    rw [← hrow 1, ← hrow 2, permanent3_expand]
    simp only [permanentSide, hfirst, one_mul]
    ring
  have hgamma := phase_gamma (3 * M 1 0) (3 * M 2 0)
    (M 1 1 * conj w) (M 1 2 * w) (M 2 1 * conj w) (M 2 2 * w) omega hquad
  have he : (M 1 1 * conj w) * (M 2 2 * w) + (M 1 2 * w) * (M 2 1 * conj w) =
      (M 1 1 * M 2 2 + M 1 2 * M 2 1) * (w * conj w) := by ring
  rw [hp, he, Complex.mul_conj, hw, Complex.ofReal_one, mul_one] at hgamma
  linear_combination (-1 / 3 : ℂ) * hgamma

/-- Substitute the prescribed coefficients into the existing mixed permanent. -/
theorem prescribed_side_permanent {s t r : ℂ}
    (hR : 0 < Centiradian20261006.gramInvariant s t r)
    (hg : 0 < gramG s t r) (hn : 0 < preRhoN s)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = prescribedDeltaRadicand s t r epsilon)
    (ho : 0 ≤ (prescribedDF s t r epsilon delta).re)
    {w : ℂ} (hw3 : w ^ 3 = prescribedXi s t r epsilon delta) :
    permanent3 (prescribedSide s t r epsilon delta w) =
      sideZ s t r epsilon * prescribedLambda0 s t r epsilon := by
  have hguards := prescribed_sigma_xi_guards hR hg hn he hd ho
  have hw := cube_root_of_unit_is_unit _ _ hguards.2.2 hw3
  have hp := phaseFourier_permanent (prescribedMatrix s t r epsilon delta)
    ElementaryFourier.reconstructionOmega w
    ElementaryFourier.reconstructionOmega_unit_quadratic.2 hw rfl rfl rfl
  change permanent3 (prescribedSide s t r epsilon delta w) =
    6 * (s / 3) * (t / 3) - 3 *
      (prescribedSigma s t r epsilon delta *
        (prescribedCMinus s t r epsilon delta * conj (prescribedSigma s t r epsilon delta)) +
       (prescribedQ s t r epsilon delta * conj (prescribedSigma s t r epsilon delta)) *
        (prescribedCPlus s t r epsilon delta * prescribedSigma s t r epsilon delta)) at hp
  have hsigma : prescribedSigma s t r epsilon delta * conj (prescribedSigma s t r epsilon delta) =
      (prescribedRho s t r epsilon delta : ℂ) := by
    rw [Complex.mul_conj, hguards.1]
  rw [hp]
  calc
    _ = 6 * (s / 3) * (t / 3) - 3 * (prescribedRho s t r epsilon delta : ℂ) *
        (prescribedCMinus s t r epsilon delta +
          prescribedQ s t r epsilon delta * prescribedCPlus s t r epsilon delta) := by
      linear_combination (-3 * (prescribedCMinus s t r epsilon delta +
        prescribedQ s t r epsilon delta * prescribedCPlus s t r epsilon delta)) * hsigma
    _ = _ := prescribed_mixed_permanent hR hg hn he hd ho

/-- The constructed side has the prescribed branch, with no Hadamard completion
or fourth-block flatness assumption. -/
theorem prescribed_side_signature {s t r : ℂ}
    (hR : 0 < Centiradian20261006.gramInvariant s t r)
    (hg : 0 < gramG s t r) (hn : 0 < preRhoN s)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = prescribedDeltaRadicand s t r epsilon)
    (ho : 0 ≤ (prescribedDF s t r epsilon delta).re)
    {w : ℂ} (hw3 : w ^ 3 = prescribedXi s t r epsilon delta) :
    sideSignature (prescribedSide s t r epsilon delta w) =
      (gramG s t r : ℂ) * sideZ s t r epsilon := by
  obtain ⟨hu, hfirst, hgram⟩ := prescribed_side_conditions hR hg hn he hd ho hw3
  obtain ⟨hs, ht, hr⟩ := gram_rows (prescribedSide s t r epsilon delta w) hfirst
  rw [hgram] at hs ht hr
  exact sideSignature_of_prescribed_permanent hu hfirst
    (by simpa [reconstructionGram] using hs.symm)
    (by simpa [reconstructionGram] using ht.symm)
    (by simpa [reconstructionGram] using hr.symm)
    hR he (prescribed_side_permanent hR hg hn he hd ho hw3)

/-- Either signed side exists for every strict seed. This is the side part of
matched existence; it makes no claim about the assembled fourth block. -/
theorem strict_seed_signed_side_exists (p : StrictSeed)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    ∃ B : Mat3, EntrywiseUnit B ∧ (∀ j, B 0 j = 1) ∧
      B * Bᴴ = sixI3 - seedCorner p.1 * (seedCorner p.1)ᴴ ∧
      2 * sideSignature B = (seedChi p.1 : ℂ) +
        (epsilon : ℂ) * (Real.sqrt (seedR p.1) : ℂ) * Complex.I := by
  obtain ⟨delta, w, hd, ho, hw, hB, hfirst, hgram⟩ := strict_seed_recipe_exists p he
  obtain ⟨hs, ht, hr⟩ := seed_correlations p.1
  have hE := seedCorner_entrywiseUnit p.1
  have hR0 := strict_seed_invariant_pos p
  have hR : 0 < Centiradian20261006.gramInvariant (seedS p.1) (seedT p.1) (seedRho p.1) := by
    simpa only [hs, ht, hr] using hR0
  have hg := (strict_seed_initial_guards (seedCorner p.1) hE hR0).1
  rw [hs, ht, hr] at hg
  have hfinal := strict_seed_final_guards (seedCorner p.1) hE hR0 he
    (by simpa only [hs, ht, hr] using hd) (by simpa only [hs, ht, hr] using ho)
  rw [hs, ht, hr] at hfinal
  have hsign := prescribed_side_signature hR hg hfinal.1 he hd ho hw
  refine ⟨prescribedSide (seedS p.1) (seedT p.1) (seedRho p.1) epsilon delta w,
    hB, hfirst, hgram, ?_⟩
  have hchi : gramChi (seedS p.1) (seedT p.1) (seedRho p.1) = seedChi p.1 := rfl
  have hinv : Centiradian20261006.gramInvariant (seedS p.1) (seedT p.1) (seedRho p.1) =
      seedR p.1 := rfl
  have hg0 : (gramG (seedS p.1) (seedT p.1) (seedRho p.1) : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (ne_of_gt hg)
  rw [hsign, sideZ, hchi, hinv]
  simp only [Complex.ofReal_mul, Complex.ofReal_ofNat]
  field_simp [hg0] <;> ring

end NoFourMUBs.Step2.Reconstruction
