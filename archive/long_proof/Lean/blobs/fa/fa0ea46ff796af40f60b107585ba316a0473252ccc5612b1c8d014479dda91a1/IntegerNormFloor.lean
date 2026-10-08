import FormalCore
import Mathlib.Data.Nat.Sqrt
import Mathlib.Analysis.Complex.Norm

/-! Unbounded integer semantics for the corrected norm square root in the
pinned arithmetic.hpp. No machine-overflow or floating sqrt assumption is
used: Nat.sqrt supplies the exact integer floor, with actual complex meaning. -/
set_option autoImplicit false
namespace Seed0024ClusterTube20261007

def integerNormSq (x y : ℤ) : ℕ := (x*x+y*y).toNat

def integerNormFloor (x y : ℤ) : ℤ := Nat.sqrt (integerNormSq x y)

def integerComplex (x y : ℤ) : ℂ := ⟨(x : ℝ),(y : ℝ)⟩

theorem integerNormSq_cast (x y : ℤ) :
    (integerNormSq x y : ℝ) = (x : ℝ)^2+(y : ℝ)^2 := by
  have hn : (0:ℤ) ≤ x*x+y*y := add_nonneg (mul_self_nonneg x) (mul_self_nonneg y)
  change ((↑(x*x+y*y).toNat : ℤ) : ℝ) = (x : ℝ)^2+(y : ℝ)^2
  rw [Int.toNat_of_nonneg hn]
  push_cast
  ring

theorem integerComplex_norm_sq (x y : ℤ) :
    ‖integerComplex x y‖^2 = (integerNormSq x y : ℝ) := by
  rw [← Complex.normSq_eq_norm_sq,Complex.normSq_apply,integerNormSq_cast]
  simp [integerComplex,pow_two]

theorem nat_sqrt_real_bounds (n : ℕ) :
    (Nat.sqrt n : ℝ) ≤ Real.sqrt (n : ℝ) ∧
      Real.sqrt (n : ℝ) < (Nat.sqrt n : ℝ)+1 := by
  have hlow : (Nat.sqrt n : ℝ)^2 ≤ (n : ℝ) := by exact_mod_cast Nat.sqrt_le' n
  have hupp : (n : ℝ) < ((Nat.sqrt n : ℝ)+1)^2 := by
    exact_mod_cast Nat.lt_succ_sqrt' n
  have hr := Real.sq_sqrt (show (0:ℝ)≤(n:ℝ) by positivity)
  have hpos := Real.sqrt_nonneg (n : ℝ)
  have hn : (0:ℝ)≤(Nat.sqrt n : ℝ) := by positivity
  constructor
  · nlinarith
  · nlinarith

theorem integerNormFloor_nonneg (x y : ℤ) : 0≤integerNormFloor x y := by
  unfold integerNormFloor
  positivity

theorem integerNormFloor_bounds (x y : ℤ) :
    (integerNormFloor x y : ℝ) ≤ ‖integerComplex x y‖ ∧
      ‖integerComplex x y‖ < (integerNormFloor x y : ℝ)+1 := by
  have he : Real.sqrt (integerNormSq x y : ℝ)=‖integerComplex x y‖ := by
    rw [←integerComplex_norm_sq,Real.sqrt_sq (norm_nonneg _)]
  simpa [integerNormFloor,he] using nat_sqrt_real_bounds (integerNormSq x y)

theorem integerNormFloor_error (x y : ℤ) :
    0≤‖integerComplex x y‖-(integerNormFloor x y : ℝ) ∧
      ‖integerComplex x y‖-(integerNormFloor x y : ℝ)<1 := by
  obtain ⟨hl,hu⟩ := integerNormFloor_bounds x y
  constructor <;> linarith

theorem integerNormFloor_abs_error (x y : ℤ) :
    |‖integerComplex x y‖-(integerNormFloor x y : ℝ)|<1 := by
  obtain ⟨hl,hu⟩ := integerNormFloor_error x y
  rwa [abs_of_nonneg hl]

/-- The two corrected-square-root postconditions uniquely identify Nat.sqrt. -/
theorem corrected_floor_eq (n r : ℕ) (hl : r*r≤n) (hu : n<(r+1)*(r+1)) :
    r=Nat.sqrt n := (Nat.eq_sqrt).2 ⟨hl,hu⟩

theorem corrected_norm_floor_error (x y : ℤ) (r : ℕ)
    (hl : r*r≤integerNormSq x y) (hu : integerNormSq x y<(r+1)*(r+1)) :
    0≤‖integerComplex x y‖-(r : ℝ) ∧ ‖integerComplex x y‖-(r : ℝ)<1 := by
  rw [corrected_floor_eq _ _ hl hu]
  simpa [integerNormFloor] using integerNormFloor_error x y

#print axioms integerNormSq_cast
#print axioms integerComplex_norm_sq
#print axioms nat_sqrt_real_bounds
#print axioms integerNormFloor_nonneg
#print axioms integerNormFloor_bounds
#print axioms integerNormFloor_error
#print axioms integerNormFloor_abs_error
#print axioms corrected_floor_eq
#print axioms corrected_norm_floor_error
end Seed0024ClusterTube20261007
