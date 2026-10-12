import NoFourMUBs.Step2.CriticalZero.ScalarSigns.Bernstein

set_option autoImplicit false
namespace NoFourMUBs.Step2.Critical.NonzeroScalar
open CriticalModulusDomain20261003
open CriticalNonzeroPolynomial20261003
noncomputable section

theorem quartic_low01_neg {k K : ℝ} (hk : 0<k) (hu : k<1) (hkap : kappa k≠0)
    (hL : minimum k≤K) (hR : K≤rootMinus k) : quartic k K<0 := by
  exact negative_on_interval (hL.trans hR) hL hR (low01_binding k)
    (low01_0_neg hk hkap) (low01_1_neg hk hkap)
    (low01_2_neg hk hkap hu) (low01_3_neg hk hkap hu)
    (low01_4_neg hk hkap hu.ne)

theorem quartic_low1inf_neg {k K : ℝ} (hk : 1<k)
    (hL : minimum k≤K) (hR : K≤root0 k) : quartic k K<0 := by
  have h0 : 0<k := by linarith
  have hn : k≠1/3 := by linarith
  exact negative_on_interval (hL.trans hR) hL hR (low1inf_binding k)
    (low01_0_neg h0 (ne_of_gt (kappa_pos hk)))
    (low1inf_1_neg h0 hk) (low1inf_2_neg h0 hk) (low1inf_3_neg h0 hk)
    (low1inf_4_neg h0 hk.ne' hn)

theorem quartic_high013_neg {k K : ℝ} (hk : 0<k) (hu : k<1) (hn : k≠1/3)
    (hL : rootPlus k≤K) (hR : K≤root0 k) : quartic k K<0 := by
  exact negative_on_interval (hL.trans hR) hL hR (high013_binding k)
    (high013_0_neg hk hn) (high013_1_neg hk hn)
    (high013_2_neg hk hu hn) (high013_3_neg hk hu hn)
    (low1inf_4_neg hk hu.ne hn)

theorem quartic_high131_neg {k K : ℝ} (hk : 0<k) (hu : k<1) (hn : k≠1/3)
    (hL : root0 k≤K) (hR : K≤rootPlus k) : quartic k K<0 := by
  have hf (t : ℝ) : quartic k ((1-t)*root0 k+t*rootPlus k) =
      blend (high013_4 k) (high013_3 k) (high013_2 k) (high013_1 k) (high013_0 k) t := by
    calc
      _ = quartic k ((1-(1-t))*rootPlus k+(1-t)*root0 k) := by congr 1; ring
      _ = _ := by rw [high013_binding, blend_reverse]
  exact negative_on_interval (hL.trans hR) hL hR hf
    (low1inf_4_neg hk hu.ne hn) (high013_3_neg hk hu hn)
    (high013_2_neg hk hu hn) (high013_1_neg hk hn) (high013_0_neg hk hn)

theorem quartic_high1inf_neg {k K : ℝ} (hk : 1<k)
    (hL : rootMinus k≤K) (hR : K≤rootPlus k) : quartic k K<0 := by
  have h0 : 0<k := by linarith
  have hn : k≠1/3 := by linarith
  exact negative_on_interval (hL.trans hR) hL hR (high1inf_binding k)
    (low01_4_neg h0 (ne_of_gt (kappa_pos hk)) hk.ne')
    (high1inf_1_neg h0 hk) (high1inf_2_neg h0 hk) (high1inf_3_neg h0 hk)
    (high013_0_neg h0 hn)

theorem low01_candidate {k K : ℝ} (hk : 0<k) (hu : k<1)
    (hL : minimum k≤K) (hR : K≤rootMinus k) (hQ : quartic k K=0) :
    kappa k=0 ∧ K=minimum k := by
  by_cases he : kappa k=0
  · have hd := minus_minimum_difference k
    have he' : 3*k^3+k^2+k-1=0 := by unfold kappa at he; linarith
    rw [he'] at hd
    simp only [zero_pow (by decide : 2≠0), mul_zero, zero_div] at hd
    exact ⟨he, by linarith⟩
  · have hn := quartic_low01_neg hk hu he hL hR
    rw [hQ] at hn
    exact (lt_irrefl 0 hn).elim

end
#print axioms quartic_low01_neg
#print axioms quartic_low1inf_neg
#print axioms quartic_high013_neg
#print axioms quartic_high131_neg
#print axioms quartic_high1inf_neg
#print axioms low01_candidate
end NoFourMUBs.Step2.Critical.NonzeroScalar
