import IntegerNormFloor

/-! Exact target used by the independent integer leaf semantics at Q = 2^26.
This checks integer square bracketing, not a native floating initializer. -/
set_option autoImplicit false
namespace Seed0024ClusterTube20261007

theorem supplier_target_square_brackets :
    (164382474 : ℕ)^2 ≤ 6*67108864^2 ∧
      6*67108864^2 < (164382474+1)^2 := by
  norm_num

theorem supplier_target_floor :
    Nat.sqrt (6*67108864^2) = 164382474 := by
  symm
  apply corrected_floor_eq
  · simpa only [pow_two] using supplier_target_square_brackets.1
  · simpa only [pow_two] using supplier_target_square_brackets.2

theorem supplier_target_real_error :
    0 ≤ (67108864 : ℝ)*Real.sqrt 6-164382474 ∧
      (67108864 : ℝ)*Real.sqrt 6-164382474 < 1 := by
  obtain ⟨hl,hu⟩ := nat_sqrt_real_bounds (6*67108864^2)
  rw [supplier_target_floor] at hl hu
  have hs : Real.sqrt ((6*67108864^2 : ℕ) : ℝ) =
      (67108864 : ℝ)*Real.sqrt 6 := by
    rw [show ((6*67108864^2 : ℕ) : ℝ) = (6 : ℝ)*(67108864 : ℝ)^2 by norm_num]
    rw [Real.sqrt_mul (by norm_num : (0 : ℝ) ≤ 6),
      Real.sqrt_sq (by norm_num : (0 : ℝ) ≤ 67108864)]
    ring
  rw [hs] at hl hu
  norm_num only [Nat.cast_ofNat] at hl hu
  constructor <;> linarith

#print axioms supplier_target_square_brackets
#print axioms supplier_target_floor
#print axioms supplier_target_real_error
end Seed0024ClusterTube20261007
