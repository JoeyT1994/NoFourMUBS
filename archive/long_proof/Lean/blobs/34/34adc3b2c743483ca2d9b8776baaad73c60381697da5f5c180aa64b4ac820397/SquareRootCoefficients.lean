import Mathlib.Data.Real.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-! Exact coefficients of the supplier PM::root loop. The cutoff is arbitrary;
no asymptotic or output-error assumption is part of these coefficient facts. -/
set_option autoImplicit false
namespace Centiradian20261006.RadialSquareRoot20261008
open scoped BigOperators
noncomputable section

def sqrtCoefficient : ℕ → ℝ
  | 0 => 1
  | k+1 => sqrtCoefficient k * ((1/2 : ℝ)-k) / (k+1)

def sqrtPartial (m : ℕ) (x : ℝ) : ℝ :=
  ∑ k ∈ Finset.range (m+1), sqrtCoefficient k*x^k

theorem sqrtCoefficient_zero : sqrtCoefficient 0=1 := rfl

/-- At supplier loop index k+1, 1.5-(k+1)=0.5-k. -/
theorem supplier_coefficient_update (k : ℕ) :
    sqrtCoefficient (k+1) =
      sqrtCoefficient k*((3/2 : ℝ)-(k+1))/(k+1) := by
  rw [sqrtCoefficient]
  congr 1
  ring

theorem sqrtCoefficient_abs_succ_le (k : ℕ) :
    |sqrtCoefficient (k+1)|≤|sqrtCoefficient k| := by
  have hk : (0 : ℝ)≤k := Nat.cast_nonneg k
  have hd : (0 : ℝ)<k+1 := by positivity
  have hr : |(1/2 : ℝ)-k|/(k+1)≤1 := by
    apply (div_le_one hd).2
    apply abs_le.mpr
    constructor <;> linarith
  calc
    _ = |sqrtCoefficient k| *(|(1/2 : ℝ)-k|/(k+1)) := by
      rw [sqrtCoefficient,abs_div,abs_mul,abs_of_pos hd]
      ring
    _ ≤ |sqrtCoefficient k| *1 := mul_le_mul_of_nonneg_left hr (abs_nonneg _)
    _ = _ := mul_one _

theorem sqrtCoefficient_abs_tail_le (m k : ℕ) :
    |sqrtCoefficient (k+(m+1))|≤|sqrtCoefficient (m+1)| := by
  induction k with
  | zero => simp
  | succ k ih =>
    simpa only [Nat.succ_add,Nat.succ_eq_add_one] using
      (sqrtCoefficient_abs_succ_le (k+(m+1))).trans ih

theorem sqrtPartial_succ (m : ℕ) (x : ℝ) :
    sqrtPartial (m+1) x = sqrtPartial m x+sqrtCoefficient (m+1)*x^(m+1) := by
  exact Finset.sum_range_succ _ (m+1)

theorem sqrtPartial_at_zero (m : ℕ) : sqrtPartial m 0=1 := by
  induction m with
  | zero => simp [sqrtPartial,sqrtCoefficient]
  | succ m ih => rw [sqrtPartial_succ,ih]; simp

end
end Centiradian20261006.RadialSquareRoot20261008
#print axioms Centiradian20261006.RadialSquareRoot20261008.sqrtCoefficient_zero
#print axioms Centiradian20261006.RadialSquareRoot20261008.supplier_coefficient_update
#print axioms Centiradian20261006.RadialSquareRoot20261008.sqrtCoefficient_abs_succ_le
#print axioms Centiradian20261006.RadialSquareRoot20261008.sqrtCoefficient_abs_tail_le
#print axioms Centiradian20261006.RadialSquareRoot20261008.sqrtPartial_succ
#print axioms Centiradian20261006.RadialSquareRoot20261008.sqrtPartial_at_zero
