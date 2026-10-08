import PerturbTransport

namespace Mub6.Numerical
noncomputable section

/-- Near a physical amplitude of squared norm six, a quadratic bound is
smaller than the generic endpoint Lipschitz estimate for small radii. -/
theorem normSq_near_six_bound (a b : ℂ) {rho : ℝ} (hrho : 0≤rho)
    (ha : Complex.normSq a=6) (hab : ‖a-b‖≤rho) :
    |Complex.normSq b-6|≤5*rho+rho^2 := by
  have ha2 : ‖a‖^2=6 := by simpa only [Complex.normSq_eq_norm_sq] using ha
  have ha_le : ‖a‖≤(5:ℝ)/2 := by nlinarith [norm_nonneg a]
  have hd : |‖b‖-‖a‖|≤rho := by
    rw [abs_sub_comm]
    exact (abs_norm_sub_norm_le a b).trans hab
  have hb_le : ‖b‖≤‖a‖+rho := by
    have h := le_trans (le_abs_self (‖b‖-‖a‖)) hd
    linarith
  have hs : ‖b‖+‖a‖≤5+rho := by linarith
  have hs0 : 0≤‖b‖+‖a‖ := add_nonneg (norm_nonneg b) (norm_nonneg a)
  have heq : |Complex.normSq b-6|=|‖b‖-‖a‖|*(‖b‖+‖a‖) := by
    rw [Complex.normSq_eq_norm_sq,←ha2]
    rw [show ‖b‖^2-‖a‖^2=(‖b‖-‖a‖)*(‖b‖+‖a‖) by ring,
      abs_mul,abs_of_nonneg hs0]
  rw [heq]
  calc
    _ ≤ rho*(5+rho) := mul_le_mul hd hs hs0 hrho
    _ = 5*rho+rho^2 := by ring

/-- The reference ray need not have unit-disk coordinates. The carrier
reference entries do, and the actual ray supplies unit phases and normSq six. -/
theorem commonRay_sharp_reference_residual_le
    {H G : BasisMatrix} {z w : Vector} (k : Fin 6)
    {epsilon delta : ℝ} (he : 0≤epsilon) (hd : 0≤delta)
    (hz : IsRawCommonRay H z)
    (hG : ∀ r, ‖G r k‖≤1)
    (hHdist : ∀ r, ‖H r k-G r k‖≤epsilon)
    (hzdist : ∀ r, ‖z r-w r‖≤delta) :
    |Complex.normSq (carrierAmplitude G w k)-6|≤
      30*(epsilon+delta)+36*(epsilon+delta)^2 := by
  have hznorm : ∀ r, ‖z r‖≤1 := fun r =>
    le_of_eq (norm_one_of_normSq_one (hz.1.2 r))
  have hdiff := carrierAmplitude_uniform_diff_norm_le k he hd hHdist hznorm hG hzdist
  have hh := normSq_near_six_bound (carrierAmplitude H z k) (carrierAmplitude G w k)
    (rho:=6*(epsilon+delta)) (by positivity) (hz.2 k) hdiff
  convert hh using 1 <;> ring

theorem sharp_bound_le_generic {t : ℝ} (ht : 0≤t) (hsmall : t≤(7:ℝ)/6) :
    30*t+36*t^2≤72*t := by
  nlinarith [mul_nonneg ht (show 0≤(7:ℝ)/6-t by linarith)]

#print axioms normSq_near_six_bound
#print axioms commonRay_sharp_reference_residual_le
#print axioms sharp_bound_le_generic

end
end Mub6.Numerical
