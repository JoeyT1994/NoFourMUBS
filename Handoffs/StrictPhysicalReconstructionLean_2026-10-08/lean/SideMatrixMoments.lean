import SideMatrixMomentAlgebra
import SideMatrixScalar

/-! Actual mixed moment and second-row phase gate of the prescribed construction. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

def prescribedGamma (s t r : ℂ) (epsilon : ℝ) : ℂ :=
  2 * (s / 3) * (t / 3) - sideZ s t r epsilon * prescribedLambda0 s t r epsilon / 3

theorem prescribed_preRho_factor {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = prescribedDeltaRadicand s t r epsilon) :
    preRhoNumerator s t r epsilon =
      (2 * (prescribedRho s t r epsilon delta : ℂ) - (preRhoN s : ℂ)) * delta := by
  have him := (prescribed_dF_real_discriminant hR hg he hd).1
  have hnorm := (prescribed_delta_guard hR hg he hd).1
  have hre : ((prescribedDF s t r epsilon delta).re : ℂ) =
      prescribedDF s t r epsilon delta := by
    apply Complex.ext <;> simp [him]
  have hr : 2 * (prescribedRho s t r epsilon delta : ℂ) - (preRhoN s : ℂ) =
      prescribedDF s t r epsilon delta := by
    rw [← hre]
    simp only [prescribedRho, Complex.ofReal_div, Complex.ofReal_add, Complex.ofReal_ofNat]
    ring
  rw [hr]
  calc
    _ = ((27 / gramG s t r : ℝ) : ℂ) * preRhoNumerator s t r epsilon *
        (delta * conj delta) := by
      rw [Complex.mul_conj, hnorm]
      have hc : ((27 / gramG s t r : ℝ) : ℂ) * ((gramG s t r / 27 : ℝ) : ℂ) = 1 := by
        have hrinv : (27 / gramG s t r : ℝ) * (gramG s t r / 27) = 1 := by
          field_simp [ne_of_gt hg]
        exact_mod_cast hrinv
      linear_combination -preRhoNumerator s t r epsilon * hc
    _ = prescribedDF s t r epsilon delta * delta := by unfold prescribedDF; ring

#print axioms prescribed_preRho_factor

theorem prescribed_coefficient_determinant {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) (hn : 0 < preRhoN s)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = prescribedDeltaRadicand s t r epsilon)
    (ho : 0 ≤ (prescribedDF s t r epsilon delta).re) :
    (prescribedRho s t r epsilon delta : ℂ) *
      (prescribedCMinus s t r epsilon delta -
        prescribedQ s t r epsilon delta * prescribedCPlus s t r epsilon delta) = delta :=
  two_coefficient_determinant _ _ _ _ _ hn (prescribed_rho_q_balance hR hg hn he hd ho)

#print axioms prescribed_coefficient_determinant

theorem prescribed_mixed_permanent {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) (hn : 0 < preRhoN s)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = prescribedDeltaRadicand s t r epsilon)
    (ho : 0 ≤ (prescribedDF s t r epsilon delta).re) :
    6 * (s / 3) * (t / 3) -
      3 * (prescribedRho s t r epsilon delta : ℂ) *
        (prescribedCMinus s t r epsilon delta +
          prescribedQ s t r epsilon delta * prescribedCPlus s t r epsilon delta) =
      sideZ s t r epsilon * prescribedLambda0 s t r epsilon := by
  have hr := (prescribed_rho_guard hR hg hn he hd ho).1
  have hrc : (prescribedRho s t r epsilon delta : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt hr)
  have hq : (prescribedRho s t r epsilon delta : ℂ) * prescribedQ s t r epsilon delta =
      preRhoAlpha s t r epsilon := by
    unfold prescribedQ
    field_simp [hrc]
  have ha : (preRhoN s : ℂ) * prescribedGamma s t r epsilon -
      2 * preRhoAlpha s t r epsilon * reconstructionK s t r =
      (2 * (prescribedRho s t r epsilon delta : ℂ) - (preRhoN s : ℂ)) * delta := by
    simpa only [preRhoNumerator, preRhoWithLambdas, preRhoN, preRhoAlpha,
      prescribedGamma, reconstructionK] using prescribed_preRho_factor hR hg he hd
  have hm := two_coefficient_mixed (reconstructionK s t r) delta
    (prescribedQ s t r epsilon delta) (preRhoAlpha s t r epsilon)
    (prescribedGamma s t r epsilon) (preRhoN s) (prescribedRho s t r epsilon delta)
    hn (prescribed_rho_q_balance hR hg hn he hd ho) hq ha
  change (prescribedRho s t r epsilon delta : ℂ) *
    (prescribedCMinus s t r epsilon delta +
      prescribedQ s t r epsilon delta * prescribedCPlus s t r epsilon delta) =
    prescribedGamma s t r epsilon at hm
  rw [show 3 * (prescribedRho s t r epsilon delta : ℂ) *
      (prescribedCMinus s t r epsilon delta +
        prescribedQ s t r epsilon delta * prescribedCPlus s t r epsilon delta) =
      3 * prescribedGamma s t r epsilon by rw [mul_assoc, hm]]
  unfold prescribedGamma
  ring

#print axioms prescribed_mixed_permanent

theorem prescribed_second_row_phase_gate {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) (hn : 0 < preRhoN s)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = prescribedDeltaRadicand s t r epsilon)
    (ho : 0 ≤ (prescribedDF s t r epsilon delta).re) :
    prescribedSigma s t r epsilon delta ^ 2 *
      ((s / 3) * conj (prescribedSigma s t r epsilon delta) +
        (prescribedQ s t r epsilon delta * conj (prescribedSigma s t r epsilon delta)) *
          conj (s / 3)) +
      (prescribedRho s t r epsilon delta : ℂ) * prescribedSigma s t r epsilon delta *
        conj (prescribedQ s t r epsilon delta * conj (prescribedSigma s t r epsilon delta)) = 0 := by
  have hr := (prescribed_rho_guard hR hg hn he hd ho).1
  have hrc : (prescribedRho s t r epsilon delta : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt hr)
  have hq : (prescribedRho s t r epsilon delta : ℂ) * prescribedQ s t r epsilon delta =
      (s / 3) ^ 2 - prescribedU s t r epsilon * conj (s / 3) := by
    change (prescribedRho s t r epsilon delta : ℂ) *
      (preRhoAlpha s t r epsilon / (prescribedRho s t r epsilon delta : ℂ)) =
      preRhoAlpha s t r epsilon
    field_simp [hrc]
  apply sigma_row_phase_gate _ _ _ _ (prescribed_sigma_xi_guards hR hg hn he hd ho).1
  exact phase_gate_from_unit_balance _ _ _ _ hr (prescribedU_unit hR he) hq
    (prescribed_rho_q_balance hR hg hn he hd ho)

#print axioms prescribed_second_row_phase_gate

end
end StrictReconstruction20261007

