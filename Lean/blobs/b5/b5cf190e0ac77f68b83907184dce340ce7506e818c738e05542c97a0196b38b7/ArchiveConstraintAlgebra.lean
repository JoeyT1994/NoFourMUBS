import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/- Scalar consequences only. There is no physical-Hadamard Gram transport,
   interval/Taylor arithmetic theorem, finite-cover admission, or radius claim. -/
set_option autoImplicit false
namespace ArchiveConstraintAlgebra

def radicand (p j w : ℝ) : ℝ :=
  4 * (27 - 3*p + j)^2 * (9 - p + j) -
    (w - (p - 9)*(p - 18) + (p - 15)*j)^2

def complementBracket (p j w : ℝ) : ℝ :=
  4*j^2 + 2*p^3 - 24*p^2 + 54*p + (30 - 2*p)*w

theorem complement_difference (p j w : ℝ) :
    radicand p j w - radicand p (-j) w =
      2*j*complementBracket p j w := by
  unfold radicand complementBracket
  ring

theorem bracket_decomposition (p j w : ℝ) :
    complementBracket p j w =
      4*j^2 + 2*p^3 + p*(54 - 24*p) + (30 - 2*p)*w := by
  unfold complementBracket
  ring

theorem bracket_ge_square {p j w : ℝ}
    (hp : 0 ≤ p) (hp1 : p < 1) (hw : 0 ≤ w) :
    4*j^2 ≤ complementBracket p j w := by
  rw [bracket_decomposition]
  have hc : 0 ≤ p^3 := pow_nonneg hp 3
  have hl : 0 ≤ p*(54 - 24*p) :=
    mul_nonneg hp (by linarith)
  have hr : 0 ≤ (30 - 2*p)*w :=
    mul_nonneg (by linarith) hw
  linarith

theorem bracket_positive_when_j_negative {p j w : ℝ}
    (hp : 0 ≤ p) (hp1 : p < 1) (hw : 0 ≤ w) (hj : j < 0) :
    0 < complementBracket p j w := by
  have hb := bracket_ge_square (j := j) hp hp1 hw
  have hs : 0 < j*j := mul_pos_of_neg_of_neg hj hj
  nlinarith

/- No hypothesis p>0 is required: when p=0 and j<0, the term 4*j^2
   still makes the bracket strictly positive. The case j=0 is retained. -/
theorem nonnegative_j_from_comparison {p j w : ℝ}
    (hp : 0 ≤ p) (hp1 : p < 1) (hw : 0 ≤ w)
    (hcomparison : 0 ≤ 2*j*complementBracket p j w) :
    0 ≤ j := by
  by_contra hn
  have hj : j < 0 := lt_of_not_ge hn
  have hb := bracket_positive_when_j_negative hp hp1 hw hj
  have hnegative : 2*j*complementBracket p j w < 0 :=
    mul_neg_of_neg_of_pos (by linarith) hb
  exact (not_lt_of_ge hcomparison) hnegative

theorem nonnegative_j_from_radicand_maximality {p j w : ℝ}
    (hp : 0 ≤ p) (hp1 : p < 1) (hw : 0 ≤ w)
    (hmaximality : radicand p (-j) w ≤ radicand p j w) :
    0 ≤ j := by
  apply nonnegative_j_from_comparison hp hp1 hw
  rw [← complement_difference]
  exact sub_nonneg.mpr hmaximality

theorem zero_p_edge {j w : ℝ} (hw : 0 ≤ w)
    (hcomparison : 0 ≤ 2*j*complementBracket 0 j w) :
    0 ≤ j := by
  exact nonnegative_j_from_comparison (by linarith) (by linarith) hw hcomparison

theorem zero_j_comparison (p w : ℝ) :
    0 ≤ 2*(0 : ℝ)*complementBracket p 0 w := by simp

theorem gram_w_nonnegative {x y z : ℝ}
    (hx : 0 ≤ x) (hy : 0 ≤ y) (hz : 0 ≤ z) (hp : x+y+z < 1) :
    0 ≤ x*y+x*z+y*z-x*y*z := by
  have hxy : 0 ≤ x*y*(1-z) :=
    mul_nonneg (mul_nonneg hx hy) (by linarith)
  have hxz : 0 ≤ x*z := mul_nonneg hx hz
  have hyz : 0 ≤ y*z := mul_nonneg hy hz
  nlinarith

theorem nonnegative_shift_from_two_bounds {x lower : ℝ}
    (hx : 0 ≤ x) (hlower : lower ≤ x) :
    0 ≤ x - max 0 lower := by
  exact sub_nonneg.mpr (max_le hx hlower)

theorem multiplier_lower_bound {f j j0 r r0 lambda mu : ℝ}
    (hlambda : 0 ≤ lambda) (hmu : 0 ≤ mu)
    (hj : j0 ≤ j) (hr : r0 ≤ r) :
    f - lambda*(j-j0) - mu*(r-r0) ≤ f := by
  have hjterm : 0 ≤ lambda*(j-j0) :=
    mul_nonneg hlambda (sub_nonneg.mpr hj)
  have hrterm : 0 ≤ mu*(r-r0) :=
    mul_nonneg hmu (sub_nonneg.mpr hr)
  linarith

theorem constrained_lower_bound {f lower j j0 r r0 lambda mu : ℝ}
    (hlambda : 0 ≤ lambda) (hmu : 0 ≤ mu)
    (hj : j0 ≤ j) (hr : r0 ≤ r)
    (hbound : lower ≤ f - lambda*(j-j0) - mu*(r-r0)) :
    lower ≤ f := by
  exact le_trans hbound (multiplier_lower_bound hlambda hmu hj hr)

#print axioms complement_difference
#print axioms bracket_decomposition
#print axioms bracket_ge_square
#print axioms bracket_positive_when_j_negative
#print axioms nonnegative_j_from_comparison
#print axioms nonnegative_j_from_radicand_maximality
#print axioms zero_p_edge
#print axioms zero_j_comparison
#print axioms gram_w_nonnegative
#print axioms nonnegative_shift_from_two_bounds
#print axioms multiplier_lower_bound
#print axioms constrained_lower_bound

end ArchiveConstraintAlgebra
