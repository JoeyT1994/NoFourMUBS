import Mathlib.Data.Real.Basic
import Mathlib.Algebra.Order.GroupWithZero.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-! Algebraic propagation of radial model errors. This file proves the three
mixed remainder terms used by the supplier's PM multiplication. The separate
total-degree module supplies the discarded-polynomial bound. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.RadialProduct20261008
noncomputable section

theorem radial_add_error (k : ℕ) {f g p q a b h : ℝ}
    (hf : |f-p| ≤ a*h^k) (hg : |g-q| ≤ b*h^k) :
    |(f+g)-(p+q)| ≤ (a+b)*h^k := by
  calc
    _ = |(f-p)+(g-q)| := by congr 1; ring
    _ ≤ |f-p|+|g-q| := abs_add_le _ _
    _ ≤ a*h^k+b*h^k := add_le_add hf hg
    _ = _ := by ring

theorem radial_scale_error (k : ℕ) (c : ℝ) {f p a h : ℝ}
    (hf : |f-p| ≤ a*h^k) : |c*f-c*p| ≤ (|c| *a)*h^k := by
  calc
    _ = |c| *|f-p| := by rw [← mul_sub, abs_mul]
    _ ≤ |c| *(a*h^k) := mul_le_mul_of_nonneg_left hf (abs_nonneg c)
    _ = _ := by ring

/-- Exact error identity. The two input errors refer to the same evaluation
point, and the truncation error is the literal p*q-r. -/
theorem product_error_identity (f g p q r : ℝ) :
    f*g-r = (p*q-r)+p*(g-q)+q*(f-p)+(f-p)*(g-q) := by ring

/-- Tail arithmetic in PM::operator*. The power k may be m+1; h=0 is retained.
No desired output-error bound is an input. -/
theorem radial_product_error (k : ℕ) {f g p q r A B ta tb tr h : ℝ}
    (hh : 0 ≤ h) (hh1 : h ≤ 1) (hA : 0 ≤ A) (hB : 0 ≤ B)
    (hta : 0 ≤ ta) (htb : 0 ≤ tb)
    (hp : |p| ≤ A) (hq : |q| ≤ B)
    (hf : |f-p| ≤ ta*h^k) (hg : |g-q| ≤ tb*h^k)
    (ht : |p*q-r| ≤ tr*h^k) :
    |f*g-r| ≤ (tr+A*tb+B*ta+ta*tb)*h^k := by
  let d := h^k
  have hd0 : 0 ≤ d := pow_nonneg hh _
  have hd1 : d ≤ 1 := pow_le_one₀ hh hh1
  have hdd : d*d ≤ d := by nlinarith
  have he1 : |p*(g-q)| ≤ (A*tb)*d := by
    rw [abs_mul]
    calc
      _ ≤ A*(tb*d) := mul_le_mul hp hg (abs_nonneg (g-q)) hA
      _ = _ := by ring
  have he2 : |q*(f-p)| ≤ (B*ta)*d := by
    rw [abs_mul]
    calc
      _ ≤ B*(ta*d) := mul_le_mul hq hf (abs_nonneg (f-p)) hB
      _ = _ := by ring
  have he3 : |(f-p)*(g-q)| ≤ (ta*tb)*d := by
    rw [abs_mul]
    calc
      _ ≤ (ta*d)*(tb*d) :=
        mul_le_mul hf hg (abs_nonneg (g-q)) (mul_nonneg hta hd0)
      _ = (ta*tb)*(d*d) := by ring
      _ ≤ (ta*tb)*d := mul_le_mul_of_nonneg_left hdd (mul_nonneg hta htb)
  have htriangle (x y z w : ℝ) : |x+y+z+w| ≤ |x|+|y|+|z|+|w| := by
    calc
      _ ≤ |x+y+z|+|w| := abs_add_le _ _
      _ ≤ (|x+y|+|z|)+|w| := add_le_add (abs_add_le _ _) (le_refl _)
      _ ≤ _ := add_le_add (add_le_add (abs_add_le _ _) (le_refl _)) (le_refl _)
  calc
    _ = |(p*q-r)+p*(g-q)+q*(f-p)+(f-p)*(g-q)| := by
      rw [product_error_identity f g p q r]
    _ ≤ |p*q-r|+|p*(g-q)|+|q*(f-p)|+|(f-p)*(g-q)| := htriangle _ _ _ _
    _ ≤ tr*d+(A*tb)*d+(B*ta)*d+(ta*tb)*d :=
      add_le_add (add_le_add (add_le_add ht he1) he2) he3
    _ = _ := by dsimp [d]; ring

end
end Centiradian20261006.RadialProduct20261008
#print axioms Centiradian20261006.RadialProduct20261008.radial_add_error
#print axioms Centiradian20261006.RadialProduct20261008.radial_scale_error
#print axioms Centiradian20261006.RadialProduct20261008.product_error_identity
#print axioms Centiradian20261006.RadialProduct20261008.radial_product_error
