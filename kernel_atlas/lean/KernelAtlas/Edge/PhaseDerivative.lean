import KernelAtlas.Edge.Smooth

/-! The derivative of a continuous real phase lift, without choosing a logarithm branch. -/

open Complex Filter Topology NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

/-- A continuous lift of a differentiable unit-circle path has derivative `Im (z'/z)`. -/
theorem hasDerivAt_phase_lift {φ : ℝ → ℝ} {z : ℝ → ℂ} {dz : ℂ} {t : ℝ}
    (hφ : ContinuousAt φ t) (hz : HasDerivAt z dz t)
    (he : ∀ᶠ s in 𝓝 t, exp ((φ s : ℂ)*I) = z s) :
    HasDerivAt φ (dz / z t).im t := by
  let a := exp ((φ t : ℂ)*I)
  have ha : a ≠ 0 := Complex.exp_ne_zero _
  let L : ℂ →L[ℝ] ℝ := Complex.imCLM ∘L (a⁻¹ • ContinuousLinearMap.id ℝ ℂ)
  have hd : HasDerivAt (fun x : ℝ => exp ((x : ℂ)*I)) (I*a) (φ t) := by
    have hc := (Complex.ofRealCLM.hasFDerivAt.comp_hasDerivAt (φ t) (hasDerivAt_id (φ t))).mul_const I
    have H := hc.cexp
    refine (H.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun x => ?_)
    · simp [a, mul_comm]
    · simp
  have hleft : Function.LeftInverse L (ContinuousLinearMap.toSpanSingleton ℝ (I*a)) := by
    intro x
    change (a⁻¹ * ((x : ℂ) * (I*a))).im = x
    have h : a⁻¹ * ((x : ℂ) * (I*a)) = (x : ℂ)*I := by field_simp
    rw [h]
    simp
  have H := HasFDerivAt.of_comp_of_leftInverse hφ hd.hasFDerivAt hz.hasFDerivAt he hleft
  have H' := H.hasDerivAt
  have he0 := he.self_of_nhds
  apply H'.congr_deriv
  simp [L, a, div_eq_mul_inv, he0] <;> ring

/-- The same immersion argument gives Fréchet differentiability for a phase lift on any
real normed parameter space. -/
theorem differentiableAt_phase_lift {X : Type*} [NormedAddCommGroup X] [NormedSpace ℝ X]
    {φ : X → ℝ} {z : X → ℂ} {t : X}
    (hφ : ContinuousAt φ t) (hz : DifferentiableAt ℝ z t)
    (he : ∀ᶠ s in 𝓝 t, exp ((φ s : ℂ)*I) = z s) : DifferentiableAt ℝ φ t := by
  let a := exp ((φ t : ℂ)*I)
  have ha : a ≠ 0 := Complex.exp_ne_zero _
  let L : ℂ →L[ℝ] ℝ := Complex.imCLM ∘L (a⁻¹ • ContinuousLinearMap.id ℝ ℂ)
  have hd : HasDerivAt (fun x : ℝ => exp ((x : ℂ)*I)) (I*a) (φ t) := by
    have hc := (Complex.ofRealCLM.hasFDerivAt.comp_hasDerivAt (φ t) (hasDerivAt_id (φ t))).mul_const I
    have H := hc.cexp
    refine (H.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun x => ?_)
    · simp [a, mul_comm]
    · simp
  have hleft : Function.LeftInverse L (ContinuousLinearMap.toSpanSingleton ℝ (I*a)) := by
    intro x
    change (a⁻¹ * ((x : ℂ) * (I*a))).im = x
    have h : a⁻¹ * ((x : ℂ) * (I*a)) = (x : ℂ)*I := by field_simp
    rw [h]
    simp
  exact (HasFDerivAt.of_comp_of_leftInverse hφ hd.hasFDerivAt hz.hasFDerivAt he hleft).differentiableAt

end NoFourMUBs.KernelAtlas.Edge
