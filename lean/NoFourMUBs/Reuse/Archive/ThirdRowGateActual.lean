import NoFourMUBs.Reuse.Archive.ThirdRowGateActualResiduals
import NoFourMUBs.Reuse.Archive.SideMatrixMoments

/-! The actual third-row phase gate, with both finite residuals discharged. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

theorem prescribed_third_row_reduced_gate {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) (hn : 0 < preRhoN s)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = prescribedDeltaRadicand s t r epsilon)
    (ho : 0 ≤ (prescribedDF s t r epsilon delta).re) :
    (t / 3) * conj (prescribedCPlus s t r epsilon delta) +
      prescribedCMinus s t r epsilon delta * conj (t / 3) +
      prescribedSigma s t r epsilon delta * prescribedCPlus s t r epsilon delta *
        conj (prescribedCMinus s t r epsilon delta) = 0 := by
  let mu := s / 3
  let nu := t / 3
  let k := reconstructionK s t r
  let n := preRhoN s
  let rho := prescribedRho s t r epsilon delta
  let u := prescribedU s t r epsilon
  let alpha := preRhoAlpha s t r epsilon
  let q := prescribedQ s t r epsilon delta
  let sigma := prescribedSigma s t r epsilon delta
  let A := preRhoNumerator s t r epsilon
  let c := conj (prescribedLambda2 s t r epsilon)
  let d : ℂ := (gramG s t r : ℂ) / 27
  have hr : 0 < rho := (prescribed_rho_guard hR hg hn he hd ho).1
  have hnc : (n : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt hn)
  have hrc : (rho : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt hr)
  have hdc : d ≠ 0 := div_ne_zero (by exact_mod_cast (ne_of_gt hg)) (by norm_num)
  have hu : Complex.normSq u = 1 := prescribedU_unit hR he
  have huu : u * conj u = 1 := by rw [Complex.mul_conj, hu]; rfl
  have hq : (rho : ℂ) * q = alpha := by
    change (rho : ℂ) * (alpha / (rho : ℂ)) = alpha
    field_simp [hrc]
  have hQ : (rho : ℂ) * conj q = conj alpha := by
    have h := congrArg (fun z : ℂ => conj z) hq
    simpa only [map_mul, Complex.conj_ofReal] using h
  have hb : (rho : ℂ) * (1 + q * conj q) = (n : ℂ) := by
    rw [Complex.mul_conj]
    exact_mod_cast (prescribed_rho_q_balance hR hg hn he hd ho)
  have hgate : mu + q * conj mu + sigma * conj q = 0 :=
    phase_gate_from_unit_balance mu u q rho hr hu hq
      (prescribed_rho_q_balance hR hg hn he hd ho)
  have hnform : (n : ℂ) = 1 - mu * conj mu := by
    rw [Complex.mul_conj]
    simp only [n, preRhoN, mu, Complex.ofReal_sub, Complex.ofReal_one]
  have hca : (n : ℂ) * conj mu + mu * conj alpha + conj u * alpha = 0 := by
    change (n : ℂ) * conj mu + mu * conj (mu ^ 2 - u * conj mu) +
      conj u * (mu ^ 2 - u * conj mu) = 0
    rw [hnform]
    simp only [map_sub, map_pow, map_mul, show conj (conj mu) = mu from by simp]
    linear_combination -conj mu * huu
  have hdn : delta * conj delta = d := by
    rw [Complex.mul_conj, (prescribed_delta_guard hR hg he hd).1]
    simp only [d, Complex.ofReal_div, Complex.ofReal_ofNat]
  have hd2 : delta ^ 2 = d * u * c := by
    simpa only [prescribedDeltaRadicand, d, u, c, prescribedU,
      Complex.ofReal_div, Complex.ofReal_ofNat, mul_assoc] using hd
  have hA : A = (2 * (rho : ℂ) - (n : ℂ)) * delta := prescribed_preRho_factor hR hg he hd
  have hAb : conj A = (2 * (rho : ℂ) - (n : ℂ)) * conj delta := by
    have h := congrArg (fun z : ℂ => conj z) hA
    simpa only [map_mul, map_sub, map_ofNat, Complex.conj_ofReal] using h
  obtain ⟨h0, h1⟩ := actual_third_row_geometry_zero hR he
  have h := ThirdRowGate.geometry_gate_of_residuals
    mu (conj mu) nu (conj nu) k (conj k) (n : ℂ) d u (conj u) alpha (conj alpha)
    q (conj q) sigma A (conj A) c delta (conj delta) (rho : ℂ)
    hnc hdc hrc huu hq hQ hb rfl hgate hca hdn hd2 hA hAb h0 h1
  simpa only [nu, k, n, q, sigma, prescribedCPlus, prescribedCMinus,
    map_div₀, map_add, map_sub, map_mul, map_ofNat, Complex.conj_ofReal,
    show conj (conj (prescribedQ s t r epsilon delta)) = prescribedQ s t r epsilon delta from by simp] using h

#print axioms prescribed_third_row_reduced_gate

theorem third_sigma_row_phase_gate (nu cp cm sigma : ℂ) (rho : ℝ)
    (hs : Complex.normSq sigma = rho)
    (hgate : nu * conj cp + cm * conj nu + sigma * cp * conj cm = 0) :
    sigma ^ 2 * (nu * conj (cp * sigma) + (cm * conj sigma) * conj nu) +
      (rho : ℂ) * (cp * sigma) * conj (cm * conj sigma) = 0 := by
  have hs' : sigma * conj sigma = (rho : ℂ) := by rw [Complex.mul_conj, hs]
  have hcc : conj (conj sigma) = sigma := by simp
  simp only [map_mul, hcc]
  calc
    _ = sigma * (sigma * conj sigma) * (nu * conj cp + cm * conj nu) +
      (rho : ℂ) * sigma ^ 2 * cp * conj cm := by ring
    _ = (rho : ℂ) * sigma * (nu * conj cp + cm * conj nu + sigma * cp * conj cm) := by
      rw [hs']; ring
    _ = 0 := by rw [hgate]; ring

#print axioms third_sigma_row_phase_gate

theorem prescribed_third_row_phase_gate {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) (hn : 0 < preRhoN s)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = prescribedDeltaRadicand s t r epsilon)
    (ho : 0 ≤ (prescribedDF s t r epsilon delta).re) :
    prescribedSigma s t r epsilon delta ^ 2 *
      ((t / 3) * conj (prescribedCPlus s t r epsilon delta * prescribedSigma s t r epsilon delta) +
        (prescribedCMinus s t r epsilon delta * conj (prescribedSigma s t r epsilon delta)) *
          conj (t / 3)) +
      (prescribedRho s t r epsilon delta : ℂ) *
        (prescribedCPlus s t r epsilon delta * prescribedSigma s t r epsilon delta) *
        conj (prescribedCMinus s t r epsilon delta * conj (prescribedSigma s t r epsilon delta)) = 0 :=
  third_sigma_row_phase_gate _ _ _ _ _ (prescribed_sigma_xi_guards hR hg hn he hd ho).1
    (prescribed_third_row_reduced_gate hR hg hn he hd ho)

#print axioms prescribed_third_row_phase_gate
end
end StrictReconstruction20261007

