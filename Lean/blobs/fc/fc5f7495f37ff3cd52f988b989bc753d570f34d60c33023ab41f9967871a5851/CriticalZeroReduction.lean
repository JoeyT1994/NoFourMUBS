import CriticalScalarReduction
import Mathlib.Analysis.Real.Sqrt

set_option autoImplicit false
set_option maxHeartbeats 2000000
namespace CriticalScalarReduction20261003
noncomputable section

theorem zero_R_identity (p w : ℝ) :
    R p 0 w=36*(9-p)^3-(w-(9-p)*((9-p)+9))^2 := by
  unfold R
  ring

theorem zero_factor_identity (q t w : ℝ) :
    (w-q*(t+3)^2)*(w-q*(t-3)^2)=
      (w-q*(t^2+9))^2-36*q^2*t^2 := by ring

/-- Both zero-J branches, including the permanent-zero endpoint p=9.
There is no division by q, a determinant, or a permanent. -/
theorem zero_iff {p w : ℝ} (hp : p≤9) :
    R p 0 w=0 ↔
      w=(9-p)*(Real.sqrt (9-p)+3)^2 ∨
      w=(9-p)*(Real.sqrt (9-p)-3)^2 := by
  have hs : (Real.sqrt (9-p))^2=9-p := Real.sq_sqrt (by linarith)
  have hi := zero_factor_identity (9-p) (Real.sqrt (9-p)) w
  rw [hs] at hi
  rw [zero_R_identity]
  constructor
  · intro h
    have hz : (w-(9-p)*(Real.sqrt (9-p)+3)^2)*
        (w-(9-p)*(Real.sqrt (9-p)-3)^2)=0 := by nlinarith only [hi,h]
    rcases mul_eq_zero.mp hz with hz | hz
    · exact Or.inl (sub_eq_zero.mp hz)
    · exact Or.inr (sub_eq_zero.mp hz)
  · intro h
    have hz : (w-(9-p)*(Real.sqrt (9-p)+3)^2)*
        (w-(9-p)*(Real.sqrt (9-p)-3)^2)=0 := by
      rcases h with h | h
      · exact mul_eq_zero.mpr (Or.inl (sub_eq_zero.mpr h))
      · exact mul_eq_zero.mpr (Or.inr (sub_eq_zero.mpr h))
    nlinarith only [hi,hz]

#print axioms zero_R_identity
#print axioms zero_factor_identity
#print axioms zero_iff
end
end CriticalScalarReduction20261003
