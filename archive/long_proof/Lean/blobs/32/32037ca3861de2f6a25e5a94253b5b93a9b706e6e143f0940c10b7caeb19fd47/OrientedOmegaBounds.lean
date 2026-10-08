import TightOmegaSeedMoments

/-! Bounds for the actual principal-log Fourier root. These statements specialize
the imported `omega`; they make no arbitrary choice between its two algebraic
conjugates. The historical symmetric rectangle is unchanged. -/
set_option autoImplicit false

namespace Mub6.Classification.OrientedOmegaBounds
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.TightOmegaSeedMoments
open Hadamard6Extensions.FourPhaseRoots
noncomputable section

/-- The sign comes from `arg (-3) = π` in the existing principal logarithm. -/
theorem squareRoot_neg_three_im_pos : 0 < (squareRoot (-3)).im := by
  have harg : Complex.arg (-3 : ℂ) = Real.pi := by
    simpa using Complex.arg_ofReal_of_neg (show (-3 : ℝ) < 0 by norm_num)
  rw [squareRoot, if_neg (by norm_num : (-3 : ℂ) ≠ 0), Complex.exp_im]
  have him : (Complex.log (-3 : ℂ) / 2).im = Real.pi / 2 := by
    simp [Complex.log_im, harg]
  rw [him, Real.sin_pi_div_two, mul_one]
  exact Real.exp_pos _

/-- The fixed imported root has positive imaginary part. -/
theorem omega_im_pos : 0 < omega.im := by
  have hi := squareRoot_neg_three_im_pos
  dsimp [omega]
  simp only [Complex.div_im, Complex.add_re, Complex.add_im,
    Complex.neg_re, Complex.neg_im, Complex.one_re, Complex.one_im]
  norm_num
  linarith

theorem omega_coordinates : omega.re = -1/2 ∧ omega.im^2 = 3/4 :=
  quadratic_omega_coordinates omega_quadratic

/-- Any rational square certificates enclose the positive fixed root. -/
theorem omega_rational_im_bounds {l u : ℚ}
    (hl : (l : ℝ)^2 ≤ 3/4) (hu0 : (0 : ℝ) ≤ u)
    (hu : (3/4 : ℝ) ≤ (u : ℝ)^2) :
    (l : ℝ) ≤ omega.im ∧ omega.im ≤ (u : ℝ) := by
  have hi := omega_coordinates.2
  have hpos := omega_im_pos
  constructor <;> nlinarith

/-- An oriented dyadic rectangle for the actual imported root. -/
def omegaRectangle : RationalRectangle := ⟨-1/2,-1/2,886/1024,887/1024⟩

theorem fixed_omega_rectangle : MemRectangle omegaRectangle omega := by
  obtain ⟨hr,hi⟩ := omega_coordinates
  have hb := omega_rational_im_bounds (l := 886/1024) (u := 887/1024)
    (by norm_num) (by norm_num) (by norm_num)
  dsimp [MemRectangle,omegaRectangle]
  norm_num at hb ⊢
  exact ⟨by linarith,by linarith,hb⟩

#print axioms Mub6.Classification.OrientedOmegaBounds.squareRoot_neg_three_im_pos
#print axioms Mub6.Classification.OrientedOmegaBounds.omega_im_pos
#print axioms Mub6.Classification.OrientedOmegaBounds.omega_coordinates
#print axioms Mub6.Classification.OrientedOmegaBounds.omega_rational_im_bounds
#print axioms Mub6.Classification.OrientedOmegaBounds.fixed_omega_rectangle
end
end Mub6.Classification.OrientedOmegaBounds
