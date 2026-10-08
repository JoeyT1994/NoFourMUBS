import CriticalZeroReduction

set_option autoImplicit false
namespace CriticalScalarReduction20261003
noncomputable section

/-- Both square-root sheets are one signed compact real parameter; all boundary
values, including p=9 and z=0, are retained. -/
theorem zero_parameterization {p w : ℝ} (h0 : 0≤p) (h9 : p≤9)
    (hR : R p 0 w=0) :
    ∃ z : ℝ, -3≤z ∧ z≤3 ∧ p=9-z^2 ∧ w=z^2*(z+3)^2 := by
  have hs : (Real.sqrt (9-p))^2=9-p := Real.sq_sqrt (by linarith)
  have hn := Real.sqrt_nonneg (9-p)
  have hb : Real.sqrt (9-p)≤3 := by nlinarith
  rcases (zero_iff h9).mp hR with hw | hw
  · refine ⟨Real.sqrt (9-p),by linarith,hb,by linarith,?_⟩
    rw [hs]
    exact hw
  · refine ⟨-Real.sqrt (9-p),by linarith,by linarith,by nlinarith,?_⟩
    rw [hw,sq_neg,hs]
    ring

theorem zero_param_R (z : ℝ) : R (9-z^2) 0 (z^2*(z+3)^2)=0 := by
  unfold R
  ring

theorem zero_parameterization_iff {p w : ℝ} (h0 : 0≤p) (h9 : p≤9) :
    R p 0 w=0 ↔ ∃ z : ℝ, -3≤z ∧ z≤3 ∧ p=9-z^2 ∧ w=z^2*(z+3)^2 := by
  constructor
  · exact zero_parameterization h0 h9
  · rintro ⟨z,_,_,rfl,rfl⟩
    exact zero_param_R z

/-- With J=0 the literal chi is 6 z^3 and g=3 z^2. -/
theorem zero_param_chi (z : ℝ) :
    z^2*(z+3)^2-((9-z^2)-9)*((9-z^2)-18)=6*z^3 := by ring

theorem zero_param_chi_over_g {z : ℝ} (hz : z≠0) :
    (z^2*(z+3)^2-((9-z^2)-9)*((9-z^2)-18)) / (2*(27-3*(9-z^2))) = z := by
  rw [zero_param_chi]
  have hd : 2*(27-3*(9-z^2))≠0 := by nlinarith [sq_pos_of_ne_zero hz]
  apply (div_eq_iff hd).mpr
  ring

/-- The exceptional signed parameters are kept explicitly for the strip split. -/
theorem zero_parameter_boundary_values :
    (9-(-3:ℝ)^2=0 ∧ (-3:ℝ)^2*(-3+3)^2=0) ∧
    (9-(-2:ℝ)^2=5 ∧ (-2:ℝ)^2*(-2+3)^2=4) ∧
    (9-(0:ℝ)^2=9 ∧ (0:ℝ)^2*(0+3)^2=0) := by norm_num

end
#print axioms zero_parameterization
#print axioms zero_param_R
#print axioms zero_parameterization_iff
#print axioms zero_param_chi
#print axioms zero_param_chi_over_g
#print axioms zero_parameter_boundary_values
end CriticalScalarReduction20261003
