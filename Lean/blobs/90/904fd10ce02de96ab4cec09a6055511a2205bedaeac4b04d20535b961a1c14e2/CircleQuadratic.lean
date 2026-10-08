import IntegerIntervals
import Mathlib.Tactic.FieldSimp

namespace Mub6.Numerical.CircleQuadratic

/-- Coefficients are ordered `A,B,C`, as in the exact C++ replay. -/
def quadraticValue (A B C t : ℝ) : ℝ := A*t*t + B*t + C

private theorem quadratic_from_left (A B C l t : ℝ) (hA : 0 ≤ A)
    (hlt : l ≤ t) (hd : 0 ≤ 2*A*l+B)
    (hql : 0 ≤ quadraticValue A B C l) :
    0 ≤ quadraticValue A B C t := by
  have hx : 0 ≤ t-l := sub_nonneg.mpr hlt
  have hc : 0 ≤ (2*A*l+B)+A*(t-l) :=
    add_nonneg hd (mul_nonneg hA hx)
  have hid : quadraticValue A B C t =
      quadraticValue A B C l + (t-l)*((2*A*l+B)+A*(t-l)) := by
    unfold quadraticValue
    ring
  rw [hid]
  exact add_nonneg hql (mul_nonneg hx hc)

private theorem quadratic_from_right (A B C h t : ℝ) (hA : 0 ≤ A)
    (hth : t ≤ h) (hd : 2*A*h+B ≤ 0)
    (hqh : 0 ≤ quadraticValue A B C h) :
    0 ≤ quadraticValue A B C t := by
  have hx : 0 ≤ h-t := sub_nonneg.mpr hth
  have hc : 0 ≤ -(2*A*h+B)+A*(h-t) :=
    add_nonneg (neg_nonneg.mpr hd) (mul_nonneg hA hx)
  have hid : quadraticValue A B C t =
      quadraticValue A B C h + (h-t)*(-(2*A*h+B)+A*(h-t)) := by
    unfold quadraticValue
    ring
  rw [hid]
  exact add_nonneg hqh (mul_nonneg hx hc)

private theorem quadratic_concave (A B C l h t : ℝ) (hA : A ≤ 0)
    (hlt : l ≤ t) (hth : t ≤ h)
    (hql : 0 ≤ quadraticValue A B C l)
    (hqh : 0 ≤ quadraticValue A B C h) :
    0 ≤ quadraticValue A B C t := by
  have hnA : 0 ≤ -A := neg_nonneg.mpr hA
  by_cases hd : 0 ≤ 2*A*t+B
  · have hx : 0 ≤ t-l := sub_nonneg.mpr hlt
    have hc : 0 ≤ (2*A*t+B)+(-A)*(t-l) :=
      add_nonneg hd (mul_nonneg hnA hx)
    have hid : quadraticValue A B C t =
        quadraticValue A B C l + (t-l)*((2*A*t+B)+(-A)*(t-l)) := by
      unfold quadraticValue
      ring
    rw [hid]
    exact add_nonneg hql (mul_nonneg hx hc)
  · have hx : 0 ≤ h-t := sub_nonneg.mpr hth
    have hd' : 0 ≤ -(2*A*t+B) := neg_nonneg.mpr (le_of_lt (lt_of_not_ge hd))
    have hc : 0 ≤ -(2*A*t+B)+(-A)*(h-t) :=
      add_nonneg hd' (mul_nonneg hnA hx)
    have hid : quadraticValue A B C t =
        quadraticValue A B C h + (h-t)*(-(2*A*t+B)+(-A)*(h-t)) := by
      unfold quadraticValue
      ring
    rw [hid]
    exact add_nonneg hqh (mul_nonneg hx hc)

private theorem quadratic_discriminant (A B C t : ℝ) (hA : 0 < A)
    (hdisc : B*B ≤ 4*A*C) : 0 ≤ quadraticValue A B C t := by
  have hsum : 0 ≤ (2*A*t+B)^2 + (4*A*C-B*B) :=
    add_nonneg (sq_nonneg _) (sub_nonneg.mpr hdisc)
  have hid : 4*A*quadraticValue A B C t =
      (2*A*t+B)^2 + (4*A*C-B*B) := by
    unfold quadraticValue
    ring
  rw [← hid] at hsum
  by_contra hq
  have hq' : quadraticValue A B C t < 0 := lt_of_not_ge hq
  have hfactor : 0 < 4*A := by positivity
  have hneg : 4*A*quadraticValue A B C t < 0 :=
    mul_neg_of_pos_of_neg hfactor hq'
  linarith

/-- The real criterion implemented by `quadraticNonnegative` in the circle
replayer. Endpoints are closed and the discriminant is `4AC-B²`. -/
theorem quadratic_nonnegative_on_interval (A B C l h t : ℝ)
    (hlt : l ≤ t) (hth : t ≤ h)
    (hql : 0 ≤ quadraticValue A B C l)
    (hqh : 0 ≤ quadraticValue A B C h)
    (hbranch : A ≤ 0 ∨ 0 ≤ 2*A*l+B ∨ 2*A*h+B ≤ 0 ∨ B*B ≤ 4*A*C) :
    0 ≤ quadraticValue A B C t := by
  by_cases hA : A ≤ 0
  · exact quadratic_concave A B C l h t hA hlt hth hql hqh
  · have hApos : 0 < A := lt_of_not_ge hA
    rcases hbranch with hbad | hleft | hright | hdisc
    · exact False.elim (hA hbad)
    · exact quadratic_from_left A B C l t (le_of_lt hApos) hlt hleft hql
    · exact quadratic_from_right A B C h t (le_of_lt hApos) hth hright hqh
    · exact quadratic_discriminant A B C t hApos hdisc

/-- Numerators for `T² q(x/T)` and `T q'(x/T)`. -/
def endpointScaled (A B C x T : ℤ) : ℤ := A*x*x+B*x*T+C*T*T
def derivativeScaled (A B x T : ℤ) : ℤ := 2*A*x+B*T

/-- A pure integer test; the floating proposal does not appear here. -/
def checkQuadratic (A B C l h T : ℤ) : Bool :=
  decide (0 < T ∧ l ≤ h ∧
    0 ≤ endpointScaled A B C l T ∧
    0 ≤ endpointScaled A B C h T ∧
    (A ≤ 0 ∨ 0 ≤ derivativeScaled A B l T ∨
      derivativeScaled A B h T ≤ 0 ∨ B*B ≤ 4*A*C))

private theorem scaled_endpoint_identity (A B C x T : ℤ) (hT : 0 < T) :
    (T : ℝ)^2 * quadraticValue (A : ℝ) (B : ℝ) (C : ℝ) ((x : ℝ)/(T : ℝ)) =
      (endpointScaled A B C x T : ℝ) := by
  have hTreal : (T : ℝ) ≠ 0 := by exact_mod_cast (ne_of_gt hT)
  unfold endpointScaled quadraticValue
  push_cast
  field_simp <;> ring

private theorem scaled_derivative_identity (A B x T : ℤ) (hT : 0 < T) :
    (T : ℝ) * (2*(A : ℝ)*((x : ℝ)/(T : ℝ))+(B : ℝ)) =
      (derivativeScaled A B x T : ℝ) := by
  have hTreal : (T : ℝ) ≠ 0 := by exact_mod_cast (ne_of_gt hT)
  unfold derivativeScaled
  push_cast
  field_simp

theorem checkQuadratic_sound (A B C l h T : ℤ)
    (hcheck : checkQuadratic A B C l h T = true)
    (t : ℝ) (hlt : (l : ℝ)/(T : ℝ) ≤ t)
    (hth : t ≤ (h : ℝ)/(T : ℝ)) :
    0 ≤ quadraticValue (A : ℝ) (B : ℝ) (C : ℝ) t := by
  have hc : 0 < T ∧ l ≤ h ∧ 0 ≤ endpointScaled A B C l T ∧
      0 ≤ endpointScaled A B C h T ∧
      (A ≤ 0 ∨ 0 ≤ derivativeScaled A B l T ∨
        derivativeScaled A B h T ≤ 0 ∨ B*B ≤ 4*A*C) :=
    of_decide_eq_true hcheck
  have hT : 0 < T := hc.1
  have hTreal : (0 : ℝ) < (T : ℝ) := by exact_mod_cast hT
  have hT2 : 0 < (T : ℝ)^2 := sq_pos_of_pos hTreal
  have hq_l : 0 ≤ quadraticValue (A : ℝ) (B : ℝ) (C : ℝ)
      ((l : ℝ)/(T : ℝ)) := by
    have hnum : 0 ≤ (endpointScaled A B C l T : ℝ) := by exact_mod_cast hc.2.2.1
    rw [← scaled_endpoint_identity A B C l T hT] at hnum
    by_contra hn
    have hneg : quadraticValue (A : ℝ) (B : ℝ) (C : ℝ) ((l : ℝ)/(T : ℝ)) < 0 :=
      lt_of_not_ge hn
    exact (not_lt_of_ge hnum) (mul_neg_of_pos_of_neg hT2 hneg)
  have hq_h : 0 ≤ quadraticValue (A : ℝ) (B : ℝ) (C : ℝ)
      ((h : ℝ)/(T : ℝ)) := by
    have hnum : 0 ≤ (endpointScaled A B C h T : ℝ) := by exact_mod_cast hc.2.2.2.1
    rw [← scaled_endpoint_identity A B C h T hT] at hnum
    by_contra hn
    have hneg : quadraticValue (A : ℝ) (B : ℝ) (C : ℝ) ((h : ℝ)/(T : ℝ)) < 0 :=
      lt_of_not_ge hn
    exact (not_lt_of_ge hnum) (mul_neg_of_pos_of_neg hT2 hneg)
  have hbranch : (A : ℝ) ≤ 0 ∨
      0 ≤ 2*(A : ℝ)*((l : ℝ)/(T : ℝ))+(B : ℝ) ∨
      2*(A : ℝ)*((h : ℝ)/(T : ℝ))+(B : ℝ) ≤ 0 ∨
      (B : ℝ)*(B : ℝ) ≤ 4*(A : ℝ)*(C : ℝ) := by
    rcases hc.2.2.2.2 with ha | hl | hh | hd
    · exact Or.inl (by exact_mod_cast ha)
    · right; left
      have hr : 0 ≤ (derivativeScaled A B l T : ℝ) := by exact_mod_cast hl
      rw [← scaled_derivative_identity A B l T hT] at hr
      have hr' : 0 ≤ (2*(A : ℝ)*((l : ℝ)/(T : ℝ))+(B : ℝ))*(T : ℝ) := by
        simpa only [mul_comm] using hr
      exact nonneg_of_mul_nonneg_left hr' hTreal
    · right; right; left
      have hr : (derivativeScaled A B h T : ℝ) ≤ 0 := by exact_mod_cast hh
      rw [← scaled_derivative_identity A B h T hT] at hr
      have hr' : (2*(A : ℝ)*((h : ℝ)/(T : ℝ))+(B : ℝ))*(T : ℝ) ≤ 0 := by
        simpa only [mul_comm] using hr
      exact nonpos_of_mul_nonpos_left hr' hTreal
    · right; right; right
      exact_mod_cast hd
  exact quadratic_nonnegative_on_interval _ _ _ _ _ _ hlt hth hq_l hq_h hbranch

/-- The real circle coordinate range used by the replayer. -/
noncomputable def linearCircleValue (a b t : ℝ) : ℝ :=
  (a*(1-t*t)+2*b*t)/(1+t*t)

theorem circle_bounds_of_quadratics (a b L U t : ℝ)
    (hlo : 0 ≤ quadraticValue (-a-L) (2*b) (a-L) t)
    (hup : 0 ≤ quadraticValue (U+a) (-2*b) (U-a) t) :
    L ≤ linearCircleValue a b t ∧ linearCircleValue a b t ≤ U := by
  have hden : 0 < 1+t*t := by nlinarith [sq_nonneg t]
  have hlow_identity : quadraticValue (-a-L) (2*b) (a-L) t =
      (a*(1-t*t)+2*b*t)-L*(1+t*t) := by
    unfold quadraticValue
    ring
  have hupp_identity : quadraticValue (U+a) (-2*b) (U-a) t =
      U*(1+t*t)-(a*(1-t*t)+2*b*t) := by
    unfold quadraticValue
    ring
  rw [hlow_identity] at hlo
  rw [hupp_identity] at hup
  constructor
  · change L ≤ (a*(1-t*t)+2*b*t)/(1+t*t)
    exact (le_div_iff₀ hden).2 (by linarith)
  · change (a*(1-t*t)+2*b*t)/(1+t*t) ≤ U
    exact (div_le_iff₀ hden).2 (by linarith)

/-- A positive common coefficient denominator `D` represents exact rational
coefficients `a/D`, `b/D`, `L/D`, `U/D`. The endpoint denominator is `T`. -/
def checkCircleRange (a b L U l h T D : ℤ) : Bool :=
  (decide (0 < D) && checkQuadratic (-a-L) (2*b) (a-L) l h T) &&
    checkQuadratic (U+a) (-2*b) (U-a) l h T

private theorem quadratic_div_identity (A B C D : ℤ) (t : ℝ) :
    quadraticValue ((A : ℝ)/(D : ℝ)) ((B : ℝ)/(D : ℝ))
      ((C : ℝ)/(D : ℝ)) t =
      quadraticValue (A : ℝ) (B : ℝ) (C : ℝ) t / (D : ℝ) := by
  unfold quadraticValue
  ring

theorem checkCircleRange_sound (a b L U l h T D : ℤ)
    (hcheck : checkCircleRange a b L U l h T D = true)
    (t : ℝ) (hlt : (l : ℝ)/(T : ℝ) ≤ t)
    (hth : t ≤ (h : ℝ)/(T : ℝ)) :
    (L : ℝ)/(D : ℝ) ≤ linearCircleValue ((a : ℝ)/(D : ℝ))
      ((b : ℝ)/(D : ℝ)) t ∧
    linearCircleValue ((a : ℝ)/(D : ℝ)) ((b : ℝ)/(D : ℝ)) t ≤
      (U : ℝ)/(D : ℝ) := by
  have hp : (decide (0 < D) = true ∧
      checkQuadratic (-a-L) (2*b) (a-L) l h T = true) ∧
      checkQuadratic (U+a) (-2*b) (U-a) l h T = true := by
    simpa only [checkCircleRange, Bool.and_eq_true] using hcheck
  have hDint : 0 < D := of_decide_eq_true hp.1.1
  have hDreal : (0 : ℝ) < (D : ℝ) := by exact_mod_cast hDint
  have hlo_num := checkQuadratic_sound (-a-L) (2*b) (a-L) l h T hp.1.2 t hlt hth
  have hup_num := checkQuadratic_sound (U+a) (-2*b) (U-a) l h T hp.2 t hlt hth
  have hlo_div : 0 ≤ quadraticValue (((-a-L : ℤ) : ℝ)/(D : ℝ))
      (((2*b : ℤ) : ℝ)/(D : ℝ)) (((a-L : ℤ) : ℝ)/(D : ℝ)) t := by
    rw [quadratic_div_identity]
    exact div_nonneg hlo_num (le_of_lt hDreal)
  have hup_div : 0 ≤ quadraticValue (((U+a : ℤ) : ℝ)/(D : ℝ))
      (((-2*b : ℤ) : ℝ)/(D : ℝ)) (((U-a : ℤ) : ℝ)/(D : ℝ)) t := by
    rw [quadratic_div_identity]
    exact div_nonneg hup_num (le_of_lt hDreal)
  have hlo : 0 ≤ quadraticValue
      (-((a : ℝ)/(D : ℝ))-((L : ℝ)/(D : ℝ)))
      (2*((b : ℝ)/(D : ℝ)))
      (((a : ℝ)/(D : ℝ))-((L : ℝ)/(D : ℝ))) t := by
    convert hlo_div using 1
    push_cast
    ring
  have hup : 0 ≤ quadraticValue
      (((U : ℝ)/(D : ℝ))+((a : ℝ)/(D : ℝ)))
      (-2*((b : ℝ)/(D : ℝ)))
      (((U : ℝ)/(D : ℝ))-((a : ℝ)/(D : ℝ))) t := by
    convert hup_div using 1
    push_cast
    ring
  exact circle_bounds_of_quadratics _ _ _ _ t hlo hup

/- Kernel-reduced controls cover every branch of the integer rule, including
   an endpoint violation and a convex quadratic with a negative interior. -/
theorem concave_control : checkQuadratic (-1) 0 1 (-1) 1 1 = true := by
  decide +kernel

theorem increasing_control : checkQuadratic 1 3 2 (-1) 1 1 = true := by
  decide +kernel

theorem decreasing_control : checkQuadratic 1 (-3) 2 (-1) 1 1 = true := by
  decide +kernel

theorem discriminant_control : checkQuadratic 1 0 1 (-1) 1 1 = true := by
  decide +kernel

theorem endpoint_negative_control : checkQuadratic 0 1 0 (-1) 1 1 = false := by
  decide +kernel

theorem interior_negative_control : checkQuadratic 4 0 (-1) (-1) 1 1 = false := by
  decide +kernel

theorem zero_endpoint_scale_control : checkQuadratic 1 0 1 (-1) 1 0 = false := by
  decide +kernel

theorem interior_witness : quadraticValue 4 0 (-1) 0 < 0 := by
  norm_num [quadraticValue]

theorem circle_range_control : checkCircleRange 1 0 (-1) 1 (-1) 1 1 1 = true := by
  decide +kernel

theorem circle_range_scaled_control :
    checkCircleRange 2 0 (-2) 2 (-4) 4 4 2 = true := by
  decide +kernel

theorem circle_range_bad_lower_control :
    checkCircleRange 1 0 2 3 (-1) 1 1 1 = false := by
  decide +kernel

theorem circle_range_bad_denominator_control :
    checkCircleRange 1 0 (-1) 1 (-1) 1 1 0 = false := by
  decide +kernel

#print axioms quadratic_nonnegative_on_interval
#print axioms checkQuadratic_sound
#print axioms circle_bounds_of_quadratics
#print axioms checkCircleRange_sound
#print axioms concave_control
#print axioms increasing_control
#print axioms decreasing_control
#print axioms discriminant_control
#print axioms endpoint_negative_control
#print axioms interior_negative_control
#print axioms zero_endpoint_scale_control
#print axioms interior_witness
#print axioms circle_range_control
#print axioms circle_range_scaled_control
#print axioms circle_range_bad_lower_control
#print axioms circle_range_bad_denominator_control

end Mub6.Numerical.CircleQuadratic
