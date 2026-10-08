import SymmetryTransport
import Mathlib.Data.Complex.Norm
import Mathlib.Analysis.Normed.Ring.Basic

/-! Quantitative transport of carrier amplitudes and squared residuals.
Bounds are uniform in the six coordinates, with explicit hypotheses on both
endpoints. They are an enclosure interface, not a region exclusion. -/

namespace Mub6.Numerical

open scoped BigOperators

theorem norm_one_of_normSq_one {a : ℂ} (ha : Complex.normSq a = 1) :
    ‖a‖ = 1 := by
  have hs := Complex.normSq_eq_norm_sq a
  rw [ha] at hs
  nlinarith [norm_nonneg a]

theorem conjugate_product_diff_norm_le (a c b d : ℂ) :
    ‖star a * b - star c * d‖ ≤
      ‖a - c‖ * ‖b‖ + ‖c‖ * ‖b - d‖ := by
  have hrew : star a * b - star c * d =
      star (a - c) * b + star c * (b - d) := by
    simp only [Complex.star_def, map_sub]
    ring
  rw [hrew]
  calc
    ‖star (a - c) * b + star c * (b - d)‖ ≤
        ‖star (a - c) * b‖ + ‖star c * (b - d)‖ := norm_add_le _ _
    _ = _ := by simp [norm_mul, Complex.star_def]

theorem carrierAmplitude_diff_norm_le (H G : BasisMatrix) (z w : Vector)
    (k : Fin 6) :
    ‖carrierAmplitude H z k - carrierAmplitude G w k‖ ≤
      ∑ r : Fin 6,
        (‖H r k - G r k‖ * ‖z r‖ + ‖G r k‖ * ‖z r - w r‖) := by
  have hsum : carrierAmplitude H z k - carrierAmplitude G w k =
      ∑ r : Fin 6, (star (H r k) * z r - star (G r k) * w r) := by
    simp only [carrierAmplitude, Finset.sum_sub_distrib]
  rw [hsum]
  calc
    ‖∑ r : Fin 6, (star (H r k) * z r - star (G r k) * w r)‖ ≤
        ∑ r : Fin 6, ‖star (H r k) * z r - star (G r k) * w r‖ := by
          simpa using norm_sum_le Finset.univ
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro r _
      exact conjugate_product_diff_norm_le (H r k) (G r k) (z r) (w r)

theorem amplitude_norm_le_six {H : BasisMatrix} {z : Vector} (k : Fin 6)
    (hH : ∀ r, ‖H r k‖ ≤ 1) (hz : ∀ r, ‖z r‖ ≤ 1) :
    ‖carrierAmplitude H z k‖ ≤ 6 := by
  calc
    ‖carrierAmplitude H z k‖ ≤
        ∑ r : Fin 6, ‖star (H r k) * z r‖ := by
          simpa [carrierAmplitude] using
            (norm_sum_le Finset.univ (fun r : Fin 6 => star (H r k) * z r))
    _ ≤ ∑ _r : Fin 6, (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro r _
      rw [norm_mul, Complex.star_def, Complex.norm_conj]
      exact mul_le_one₀ (by positivity) (hH r) (hz r)
    _ = 6 := by norm_num

theorem carrierAmplitude_uniform_diff_norm_le
    {H G : BasisMatrix} {z w : Vector} (k : Fin 6)
    {ε δ : ℝ} (hε : 0 ≤ ε) (hδ : 0 ≤ δ)
    (hH : ∀ r, ‖H r k - G r k‖ ≤ ε)
    (hz : ∀ r, ‖z r‖ ≤ 1)
    (hG : ∀ r, ‖G r k‖ ≤ 1)
    (hw : ∀ r, ‖z r - w r‖ ≤ δ) :
    ‖carrierAmplitude H z k - carrierAmplitude G w k‖ ≤ 6 * (ε + δ) := by
  calc
    _ ≤ ∑ r : Fin 6,
      (‖H r k - G r k‖ * ‖z r‖ + ‖G r k‖ * ‖z r - w r‖) :=
        carrierAmplitude_diff_norm_le H G z w k
    _ ≤ ∑ _r : Fin 6, (ε + δ) := by
      apply Finset.sum_le_sum
      intro r _
      have h1 : ‖H r k - G r k‖ * ‖z r‖ ≤ ε :=
        (mul_le_mul_of_nonneg_left (hz r) (norm_nonneg _)).trans (by simpa using hH r)
      have h2 : ‖G r k‖ * ‖z r - w r‖ ≤ δ :=
        (mul_le_mul_of_nonneg_right (hG r) (norm_nonneg _)).trans (by simpa using hw r)
      linarith
    _ = 6 * (ε + δ) := by norm_num

theorem normSq_diff_abs_le (a b : ℂ) {M ρ : ℝ}
    (hM : 0 ≤ M) (hρ : 0 ≤ ρ)
    (ha : ‖a‖ ≤ M) (hb : ‖b‖ ≤ M) (hab : ‖a - b‖ ≤ ρ) :
    |Complex.normSq a - Complex.normSq b| ≤ 2 * M * ρ := by
  have hnorm : |‖a‖ - ‖b‖| ≤ ρ := (abs_norm_sub_norm_le a b).trans hab
  have hfac0 : 0 ≤ ‖a‖ + ‖b‖ := add_nonneg (norm_nonneg _) (norm_nonneg _)
  have hfac : ‖a‖ + ‖b‖ ≤ 2 * M := by linarith
  rw [Complex.normSq_eq_norm_sq, Complex.normSq_eq_norm_sq]
  have heq : |‖a‖ ^ 2 - ‖b‖ ^ 2| =
      |‖a‖ - ‖b‖| * (‖a‖ + ‖b‖) := by
    rw [← sub_mul_add, abs_mul, abs_of_nonneg hfac0]
  rw [heq]
  calc
    |‖a‖ - ‖b‖| * (‖a‖ + ‖b‖) ≤ ρ * (2 * M) :=
      mul_le_mul hnorm hfac hfac0 hρ
    _ = 2 * M * ρ := by ring

/-- A six-term amplitude residual is 72-Lipschitz in the combined entry and
ray radii when both endpoint coordinate norms are at most one. -/
theorem carrierAmplitude_normSq_uniform_diff_le
    {H G : BasisMatrix} {z w : Vector} (k : Fin 6)
    {ε δ : ℝ} (hε : 0 ≤ ε) (hδ : 0 ≤ δ)
    (hHnorm : ∀ r, ‖H r k‖ ≤ 1)
    (hGnorm : ∀ r, ‖G r k‖ ≤ 1)
    (hznorm : ∀ r, ‖z r‖ ≤ 1)
    (hwnorm : ∀ r, ‖w r‖ ≤ 1)
    (hHdist : ∀ r, ‖H r k - G r k‖ ≤ ε)
    (hzdist : ∀ r, ‖z r - w r‖ ≤ δ) :
    |Complex.normSq (carrierAmplitude H z k) -
      Complex.normSq (carrierAmplitude G w k)| ≤ 72 * (ε + δ) := by
  have ha := amplitude_norm_le_six k hHnorm hznorm
  have hb := amplitude_norm_le_six k hGnorm hwnorm
  have hd := carrierAmplitude_uniform_diff_norm_le k hε hδ hHdist hznorm hGnorm hzdist
  have h := normSq_diff_abs_le (carrierAmplitude H z k)
    (carrierAmplitude G w k) (M := 6) (ρ := 6 * (ε + δ))
    (by norm_num) (by positivity) ha hb hd
  convert h using 1 <;> ring

/-- A physical common ray supplies the exact 6 at one endpoint. The other
endpoint can be any unit-disk reference carrier and ray. -/
theorem commonRay_reference_residual_le
    {H G : BasisMatrix} {z w : Vector} (k : Fin 6)
    {ε δ : ℝ} (hε : 0 ≤ ε) (hδ : 0 ≤ δ)
    (hH : PhaseHadamard H) (hz : IsRawCommonRay H z)
    (hGnorm : ∀ r, ‖G r k‖ ≤ 1)
    (hwnorm : ∀ r, ‖w r‖ ≤ 1)
    (hHdist : ∀ r, ‖H r k - G r k‖ ≤ ε)
    (hzdist : ∀ r, ‖z r - w r‖ ≤ δ) :
    |Complex.normSq (carrierAmplitude G w k) - 6| ≤ 72 * (ε + δ) := by
  have hHnorm (r : Fin 6) : ‖H r k‖ ≤ 1 :=
    le_of_eq (norm_one_of_normSq_one (hH.1 r k))
  have hznorm (r : Fin 6) : ‖z r‖ ≤ 1 :=
    le_of_eq (norm_one_of_normSq_one (hz.1.2 r))
  have h := carrierAmplitude_normSq_uniform_diff_le k hε hδ hHnorm hGnorm
    hznorm hwnorm hHdist hzdist
  rw [hz.2 k] at h
  simpa [abs_sub_comm] using h

#print axioms norm_one_of_normSq_one
#print axioms conjugate_product_diff_norm_le
#print axioms carrierAmplitude_diff_norm_le
#print axioms amplitude_norm_le_six
#print axioms carrierAmplitude_uniform_diff_norm_le
#print axioms normSq_diff_abs_le
#print axioms carrierAmplitude_normSq_uniform_diff_le
#print axioms commonRay_reference_residual_le

end Mub6.Numerical
