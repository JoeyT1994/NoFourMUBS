import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith

/- Scoped exact-order support for elimination_rhs in plain_constraint.cpp.
   Enclosure membership is a hypothesis; no native floating-point or physical
   certificate is admitted. The earlier 58-theorem packets are unchanged. -/
set_option autoImplicit false
namespace NonnegativeRhsClipping

def Contains (interval : ℝ × ℝ) (x : ℝ) : Prop := interval.1 ≤ x ∧ x ≤ interval.2
def eliminationRhs (dh dv ah av : ℝ) : ℝ := dh*|av|+dv*|ah|
def upperTest (h rhs : ℝ × ℝ) : Prop := h.1 > rhs.2 ∨ -h.2 > rhs.2

theorem delta_norm_product_nonnegative (ar ai br bi cr ci : ℝ) :
    0 ≤ (ar^2+ai^2)*(br^2+bi^2)*(cr^2+ci^2) := by
  exact mul_nonneg
    (mul_nonneg (add_nonneg (sq_nonneg ar) (sq_nonneg ai))
      (add_nonneg (sq_nonneg br) (sq_nonneg bi)))
    (add_nonneg (sq_nonneg cr) (sq_nonneg ci))

theorem elimination_rhs_nonnegative {dh dv ah av : ℝ}
    (hdh : 0 ≤ dh) (hdv : 0 ≤ dv) : 0 ≤ eliminationRhs dh dv ah av := by
  exact add_nonneg (mul_nonneg hdh (abs_nonneg av)) (mul_nonneg hdv (abs_nonneg ah))

theorem interval_absolute_upper {lo hi x : ℝ} (hlo : lo ≤ x) (hhi : x ≤ hi) :
    |x| ≤ max |lo| |hi| := by
  apply abs_le.mpr
  constructor
  · exact le_trans (neg_le_neg (le_max_left _ _)) (le_trans (neg_abs_le lo) hlo)
  · exact le_trans hhi (le_trans (le_abs_self hi) (le_max_right _ _))

theorem elimination_rhs_upper {dh dv ah av dhHi dvHi ahMag avMag : ℝ}
    (hdh : dh ≤ dhHi) (hdv : dv ≤ dvHi)
    (hah : |ah| ≤ ahMag) (hav : |av| ≤ avMag) :
    eliminationRhs dh dv ah av ≤ max 0 dhHi*avMag+max 0 dvHi*ahMag := by
  have hfirst := mul_le_mul (le_trans hdh (le_max_right 0 dhHi)) hav
    (abs_nonneg av) (le_max_left 0 dhHi)
  have hsecond := mul_le_mul (le_trans hdv (le_max_right 0 dvHi)) hah
    (abs_nonneg ah) (le_max_left 0 dvHi)
  exact add_le_add hfirst hsecond

theorem clipped_lower_contains {interval : ℝ × ℝ} {x : ℝ}
    (hmember : Contains interval x) (hx : 0 ≤ x) :
    Contains (max 0 interval.1,interval.2) x := by
  exact ⟨max_le hx hmember.1,hmember.2⟩

/- This is the actual native normalization: resetting the lower endpoint to
   zero remains sound even if the original lower endpoint happened to be >0. -/
theorem zero_lower_contains {interval : ℝ × ℝ} {x : ℝ}
    (hmember : Contains interval x) (hx : 0 ≤ x) :
    Contains (0,interval.2) x := by
  exact ⟨hx,hmember.2⟩

theorem lower_change_preserves_upper_test (h rhs : ℝ × ℝ) (newLower : ℝ) :
    upperTest h (newLower,rhs.2) ↔ upperTest h rhs := by
  rfl

theorem upper_comparison_refutes_necessary {h rhs : ℝ × ℝ} {value target : ℝ}
    (hvalue : Contains h value) (htarget : Contains rhs target)
    (hnecessary : |value| ≤ target) (htest : upperTest h rhs) : False := by
  rcases htest with hpositive | hnegative
  · have ha := le_abs_self value
    have hl := hvalue.1
    have hu := htarget.2
    linarith
  · have ha := neg_le_abs value
    have hu := hvalue.2
    have hru := htarget.2
    linarith

#print axioms delta_norm_product_nonnegative
#print axioms elimination_rhs_nonnegative
#print axioms interval_absolute_upper
#print axioms elimination_rhs_upper
#print axioms clipped_lower_contains
#print axioms zero_lower_contains
#print axioms lower_change_preserves_upper_test
#print axioms upper_comparison_refutes_necessary

end NonnegativeRhsClipping
