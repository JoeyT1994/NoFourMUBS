import Mathlib.Analysis.SpecialFunctions.Complex.Log
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-! The literal Fourier constant and existence of every required complex cube root. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.ElementaryFourier
noncomputable section

def reconstructionOmega : ℂ := Complex.exp (2 * (Real.pi : ℂ) * Complex.I / 3)

theorem reconstructionOmega_explicit :
    reconstructionOmega = (⟨-(1 / 2), Real.sqrt 3 / 2⟩ : ℂ) := by
  have harg : 2 * (Real.pi : ℂ) * Complex.I / 3 =
      (((2 * Real.pi / 3 : ℝ) : ℂ) * Complex.I) := by push_cast; ring
  have hc : Real.cos (2 * Real.pi / 3) = -(1 / 2) := by
    rw [show 2 * Real.pi / 3 = 2 * (Real.pi / 3) by ring, Real.cos_two_mul,
      Real.cos_pi_div_three]
    norm_num
  have hs : Real.sin (2 * Real.pi / 3) = Real.sqrt 3 / 2 := by
    rw [show 2 * Real.pi / 3 = 2 * (Real.pi / 3) by ring, Real.sin_two_mul,
      Real.sin_pi_div_three, Real.cos_pi_div_three]
    ring
  apply Complex.ext
  · simpa only [reconstructionOmega, harg, Complex.exp_ofReal_mul_I_re] using hc
  · simpa only [reconstructionOmega, harg, Complex.exp_ofReal_mul_I_im] using hs

#print axioms reconstructionOmega_explicit

theorem reconstructionOmega_unit_quadratic :
    Complex.normSq reconstructionOmega = 1 ∧
      reconstructionOmega ^ 2 + reconstructionOmega + 1 = 0 := by
  have hs : Real.sqrt 3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)
  rw [reconstructionOmega_explicit]
  constructor
  · norm_num [Complex.normSq_apply] <;> nlinarith
  · apply Complex.ext <;>
      simp [pow_two, Complex.mul_re, Complex.mul_im] <;> nlinarith

#print axioms reconstructionOmega_unit_quadratic

theorem complex_cube_root_exists (xi : ℂ) : ∃ w : ℂ, w ^ 3 = xi := by
  by_cases hxi : xi = 0
  · exact ⟨0, by simp [hxi]⟩
  · refine ⟨Complex.exp (Complex.log xi / 3), ?_⟩
    calc
      Complex.exp (Complex.log xi / 3)^3 =
          Complex.exp ((3 : ℂ) * (Complex.log xi / 3)) :=
        (Complex.exp_nat_mul (Complex.log xi / 3) 3).symm
      _ = Complex.exp (Complex.log xi) := by congr 1 <;> ring
      _ = xi := Complex.exp_log hxi

#print axioms complex_cube_root_exists
end
end StrictReconstruction20261007.ElementaryFourier

