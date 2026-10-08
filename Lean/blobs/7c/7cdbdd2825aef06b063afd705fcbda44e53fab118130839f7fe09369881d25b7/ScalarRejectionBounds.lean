import ScalarRoundingBounds

/-! Sound rejection from actual midpoint and endpoint norm bounds.
The analytic variation bound and certified table/floor error bounds are
explicit inputs, to be supplied by the phase-cell and arithmetic modules. -/
set_option autoImplicit false
namespace Seed0024ClusterTube20261007

theorem amplitude_band_midpoint_bound (S S0 : ℂ) (rho tau : ℝ)
    (hband : |‖S‖-rho|≤tau) :
    |‖S0‖-rho|≤‖S-S0‖+tau := by
  have hn := abs_norm_sub_norm_le S0 S
  rw [norm_sub_rev] at hn
  have ht := abs_sub_le ‖S0‖ ‖S‖ rho
  linarith

theorem scaled_amplitude_band_midpoint_bound (S S0 : ℂ) (q rho tau var tol : ℝ)
    (hq : 0≤q) (hband : |‖S‖-rho|≤tau)
    (hvar : ‖S-S0‖≤var) (htol : q*tau≤tol) :
    q*|‖S0‖-rho|≤q*var+tol := by
  have h := amplitude_band_midpoint_bound S S0 rho tau hband
  have hs := mul_le_mul_of_nonneg_left (h.trans (add_le_add_right hvar tau)) hq
  nlinarith

theorem scalar_midpoint_rejection (S S0 s : ℂ) (q r target rho tau var tol err : ℝ)
    (hq : 0≤q) (happrox : ‖s-(q:ℂ)*S0‖<(15:ℝ)/2)
    (hfloor : |r-‖s‖|<1) (htarget : |target-q*rho|<1)
    (hvar : ‖S-S0‖≤var) (htol : q*tau≤tol) (herr : q*var≤err)
    (hreject : err+tol+10<|r-target|) :
    ¬ |‖S‖-rho|≤tau := by
  intro hband
  have hmid := scaled_amplitude_band_midpoint_bound S S0 q rho tau var tol
    hq hband hvar htol
  have hr := rounded_target_distance_error_lt S0 s q r target rho hq
    happrox hfloor htarget
  have hr' := (abs_lt.mp hr).2
  linarith

theorem scalar_endpoint_rejection (S S0 s E e : ℂ)
    (q r target rho tau tol er : ℝ)
    (hq : 0≤q) (happrox : ‖s-(q:ℂ)*S0‖<(15:ℝ)/2)
    (hfloor : |r-‖s‖|<1) (htarget : |target-q*rho|<1)
    (heapprox : ‖e-(q:ℂ)*E‖<15) (hefloor : |er-‖e‖|<1)
    (hvar : ‖S-S0‖≤‖E‖) (htol : q*tau≤tol)
    (hreject : er+tol+26<|r-target|) :
    ¬ |‖S‖-rho|≤tau := by
  intro hband
  have hmid := scaled_amplitude_band_midpoint_bound S S0 q rho tau ‖E‖ tol
    hq hband hvar htol
  have hr := rounded_target_distance_error_lt S0 s q r target rho hq
    happrox hfloor htarget
  have he := endpoint_floor_error_lt E e q er hq heapprox hefloor
  have hr' := (abs_lt.mp hr).2
  have he' := (abs_lt.mp he).1
  linarith

/-- Every endpoint is rejected, and the analytic box estimate supplies an
endpoint dominating the actual variation. No unrecorded endpoint is omitted. -/
theorem scalar_all_endpoints_rejection {ι : Type*} (S S0 s : ℂ)
    (E e : ι → ℂ) (er : ι → ℝ) (q r target rho tau tol : ℝ)
    (hq : 0≤q) (happrox : ‖s-(q:ℂ)*S0‖<(15:ℝ)/2)
    (hfloor : |r-‖s‖|<1) (htarget : |target-q*rho|<1)
    (heapprox : ∀i,‖e i-(q:ℂ)*E i‖<15)
    (hefloor : ∀i,|er i-‖e i‖|<1)
    (hvar : ∃i,‖S-S0‖≤‖E i‖) (htol : q*tau≤tol)
    (hreject : ∀i,er i+tol+26<|r-target|) :
    ¬ |‖S‖-rho|≤tau := by
  obtain ⟨i,hi⟩ := hvar
  exact scalar_endpoint_rejection S S0 s (E i) (e i) q r target rho tau tol (er i)
    hq happrox hfloor htarget (heapprox i) (hefloor i) hi htol (hreject i)

end Seed0024ClusterTube20261007
#print axioms Seed0024ClusterTube20261007.amplitude_band_midpoint_bound
#print axioms Seed0024ClusterTube20261007.scaled_amplitude_band_midpoint_bound
#print axioms Seed0024ClusterTube20261007.scalar_midpoint_rejection
#print axioms Seed0024ClusterTube20261007.scalar_endpoint_rejection
#print axioms Seed0024ClusterTube20261007.scalar_all_endpoints_rejection
