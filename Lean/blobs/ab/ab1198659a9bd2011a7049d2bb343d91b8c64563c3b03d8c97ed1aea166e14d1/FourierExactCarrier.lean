import FourierGraphProofBatch0000
import Mathlib.Analysis.Real.Sqrt

set_option autoImplicit false
namespace FourierExactCarrier20261003
open Mub6 Mub6.Numerical
noncomputable section

def omega : ℂ := ⟨-1/2,Real.sqrt 3/2⟩

/-- The tensor Fourier representative, with the literal column and row order
used by the complete common-ray cover. -/
def matrix : BasisMatrix :=
  ![![1,1,1,1,1,1],
    ![1,omega,star omega,1,omega,star omega],
    ![1,star omega,omega,1,star omega,omega],
    ![1,1,1,-1,-1,-1],
    ![1,omega,star omega,-1,-omega,-star omega],
    ![1,star omega,omega,-1,-star omega,-omega]]

theorem sqrt3_half_bounds :
    (476102500705/549755813888 : ℝ) ≤ Real.sqrt 3/2 ∧
      Real.sqrt 3/2 ≤ 1904410002821/2199023255552 := by
  have hs := Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 3)
  have hp := Real.sqrt_nonneg (3:ℝ)
  constructor <;> nlinarith

theorem first_row : ∀ j, matrix 0 j = 1 := by
  intro j
  fin_cases j <;> rfl

/-- Exact algebraic matrix containment, independent of approximate ray hints. -/
theorem enclosed : CarrierBox FourierPilot.carrier matrix := by
  obtain ⟨hl,hu⟩ := sqrt3_half_bounds
  intro i j
  fin_cases i <;> fin_cases j <;>
    norm_num [FourierPilot.carrier,MemRectangle,matrix,omega,Complex.star_def] <;>
    constructor <;> linarith

theorem primitive : Complex.normSq omega = 1 ∧ omega^2+omega+1=0 := by
  have hs := Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 3)
  constructor
  · simp only [omega,Complex.normSq_apply]
    nlinarith
  · apply Complex.ext <;> simp [omega,pow_two,Complex.mul_re,Complex.mul_im] <;> nlinarith

end
#print axioms sqrt3_half_bounds
#print axioms first_row
#print axioms enclosed
#print axioms primitive
end FourierExactCarrier20261003
