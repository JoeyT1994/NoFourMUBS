import Step1.Generated_interior_core

/-!
# Ordered algebra consequences of the small interior certificates

These theorems assemble the signs and identities into the algebraic ambient
saddle obstruction.  They do not assume that any geometric coordinate chart
or local maximum has already been formalized.  Compilation status is recorded
in `LEAN_NOTES.md`; this file is uncompiled in the delivery environment.
-/

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 4096

namespace Step1

open interior_core

/-- The negative-coordinate obstruction has a strictly positive term `6*d²`.
The three unused coordinate arguments are fixed to zero for readability. -/
theorem interior_W_positive (h d : ℝ) (hh : 0 ≤ h) (hd : 0 < d) :
    0 < d_nonnegative_sum 0 0 0 h d := by
  simp only [d_nonnegative_sum]
  positivity

/-- The reduced stationary equations force positive real coordinate, negative
`C`, and a strictly positive Cartesian transverse second derivative. -/
theorem interior_scalar_stationary
    (x v : ℝ) (hDomain : 2 * x ^ 2 < v)
    (hfx : d_fx x 0 v 0 0 = 0)
    (hfv : d_fv x 0 v 0 0 = 0) :
    0 < x ∧ d_c x 0 v 0 0 < 0 ∧ 0 < d_fyy x 0 v 0 0 := by
  let d : ℝ := v - 2 * x ^ 2
  have hd : 0 < d := by dsimp [d]; linarith
  have hx : 0 < x := by
    by_contra hnot
    have hh : 0 ≤ -x := by linarith
    have hW := interior_W_positive (-x) d hh hd
    have hG : 0 < d_negative_g 0 0 0 (-x) d := by
      simp only [d_negative_g]
      positivity
    have hNegativeFx : d_negative_fx 0 0 0 (-x) d = 0 := by
      calc
        _ = d_fx x 0 v 0 0 := by
          simp only [d, d_negative_fx, d_negative_g, d_negative_c,
            d_negative_cx, d_fx, d_g0, d_c, d_cx] <;> ring
        _ = 0 := hfx
    have hNegativeFv : d_negative_fv 0 0 0 (-x) d = 0 := by
      calc
        _ = d_fv x 0 v 0 0 := by
          simp only [d, d_negative_fv, d_negative_g, d_negative_c,
            d_negative_cv, d_fv, d_g0, d_c, d_cv] <;> ring
        _ = 0 := hfv
    have hIdentity := identity_negative_x_derivative_obstruction 0 0 0 (-x) d
    rw [hNegativeFx, hNegativeFv] at hIdentity
    have hProduct := mul_pos hG hW
    nlinarith
  have hC : d_c x 0 v 0 0 < 0 := by
    have hIdentity : d_fv x 0 v 0 0 =
        4 * (x ^ 2 + 2 * d) * (x ^ 2 + 6 * d) +
          2 * d_c x 0 v 0 0 * (d + 2 * x + 6) := by
      simp only [d, d_fv, d_g0, d_cv] <;> ring
    have hFirst : 0 < 4 * (x ^ 2 + 2 * d) * (x ^ 2 + 6 * d) := by
      positivity
    have hCoefficient : 0 < d + 2 * x + 6 := by positivity
    by_contra hnot
    have hNonnegative : 0 ≤ d_c x 0 v 0 0 := by linarith
    have hSecond : 0 ≤ 2 * d_c x 0 v 0 0 * (d + 2 * x + 6) :=
      mul_nonneg (mul_nonneg (by norm_num) hNonnegative) hCoefficient.le
    nlinarith
  have hv : 0 < v := by nlinarith [sq_nonneg x]
  have hCurvature : 0 < d_fyy x 0 v 0 0 := by
    have hIdentity := identity_cartesian_transverse_curvature x 0 v 0 0
    rw [hfx] at hIdentity
    have hPositive : 0 < 4 * v * (-d_c x 0 v 0 0) :=
      mul_pos (mul_pos (by norm_num) hv) (neg_pos.mpr hC)
    have hProduct : 0 < x * d_fyy x 0 v 0 0 := by nlinarith
    by_contra hnot
    have hNonpositive : d_fyy x 0 v 0 0 ≤ 0 := by linarith
    have := mul_nonpos_of_nonneg_of_nonpos hx.le hNonpositive
    nlinarith
  exact ⟨hx, hC, hCurvature⟩

/-- Full ordered-algebra statement behind the ambient saddle theorem.
No root isolation, resultant, or Hessian determinant is required. -/
theorem interior_positive_stationary
    (x y v : ℝ)
    (hPositive : 0 < d_H x y v 0 0)
    (hHx : d_Hx x y v 0 0 = 0)
    (hHy : d_Hy x y v 0 0 = 0)
    (hHv : d_Hv x y v 0 0 = 0) :
    0 < x ∧ y = 0 ∧ d_C x y v 0 0 < 0 ∧
      0 < d_Hyy x y v 0 0 := by
  have hFormula : d_H x y v 0 0 =
      4 * (d_g x y v 0 0) ^ 2 * d_eta x y v 0 0 -
        (d_C x y v 0 0) ^ 2 := by
    simp only [d_H] <;> ring
  rw [hFormula] at hPositive
  have hEta : 0 < d_eta x y v 0 0 := by
    by_contra hnot
    have hNonpositive : d_eta x y v 0 0 ≤ 0 := by linarith
    have hProduct := mul_nonpos_of_nonneg_of_nonpos
      (show 0 ≤ 4 * (d_g x y v 0 0) ^ 2 by positivity) hNonpositive
    nlinarith [sq_nonneg (d_C x y v 0 0)]
  have hU : 0 ≤ d_u x y v 0 0 := by simp only [d_u]; positivity
  have hG : 0 < d_g x y v 0 0 := by
    have := identity_positive_value_forces_g_positive x y v (0 : ℝ) 0
    linarith
  have hV : 0 < v := by
    have hIdentity : v = 2 * d_u x y v 0 0 + d_eta x y v 0 0 := by
      simp only [d_eta] <;> ring
    linarith
  have hAmplitude : 0 < 6 * v - 11 * d_u x y v 0 0 := by
    have := identity_positive_amplitude_factor x y v (0 : ℝ) 0
    linarith
  have hCNonzero : d_C x y v 0 0 ≠ 0 := by
    intro hZero
    have hFirst : 0 < 4 * d_g x y v 0 0 * (6 * v - 11 * d_u x y v 0 0) :=
      mul_pos (mul_pos (by norm_num) hG) hAmplitude
    have hIdentity : d_Hv x y v 0 0 =
        4 * d_g x y v 0 0 * (6 * v - 11 * d_u x y v 0 0) -
          2 * d_C x y v 0 0 * d_Cv x y v 0 0 := by
      simp only [d_Hv] <;> ring
    rw [hHv, hZero] at hIdentity
    nlinarith
  have hy : y = 0 := by
    have hIdentity := identity_cartesian_phase_stationarity x y v (0 : ℝ) 0
    rw [hHx, hHy] at hIdentity
    have hProduct : 4 * v * y * d_C x y v 0 0 = 0 := by nlinarith
    have hFourV : 4 * v ≠ 0 := ne_of_gt (mul_pos (by norm_num) hV)
    rcases mul_eq_zero.mp hProduct with hProduct | hZero
    · exact (mul_eq_zero.mp hProduct).resolve_left hFourV
    · exact (hCNonzero hZero).elim
  subst y
  have hDomain : 2 * x ^ 2 < v := by
    have hIdentity : d_eta x 0 v 0 0 = v - 2 * x ^ 2 := by
      simp only [d_eta, d_u] <;> ring
    rw [hIdentity] at hEta
    linarith
  have hfx : d_fx x 0 v 0 0 = 0 := by
    calc
      _ = d_Hx x 0 v 0 0 := by
        simp only [d_fx, d_g0, d_c, d_cx, d_Hx, d_g, d_u, d_C, d_Cx, d_K] <;> ring
      _ = 0 := hHx
  have hfv : d_fv x 0 v 0 0 = 0 := by
    calc
      _ = d_Hv x 0 v 0 0 := by
        simp only [d_fv, d_g0, d_c, d_cv, d_Hv, d_g, d_u, d_C, d_Cv] <;> ring
      _ = 0 := hHv
  obtain ⟨hx, hc, hyy⟩ := interior_scalar_stationary x v hDomain hfx hfv
  have hCIdentity : d_C x 0 v 0 0 = d_c x 0 v 0 0 := by
    simp only [d_C, d_u, d_c] <;> ring
  have hYYIdentity : d_Hyy x 0 v 0 0 = d_fyy x 0 v 0 0 := by
    simp only [d_Hyy, d_fyy, d_g0, d_c] <;> ring
  refine ⟨hx, rfl, ?_, ?_⟩
  · rw [hCIdentity]
    exact hc
  · rw [hYYIdentity]
    exact hyy

end Step1
