import RationalCircleCharts
import Mathlib.Data.Rat.Cast.Order

/- Exact rational arithmetic is connected to actual complex raw rays here.
No finite table or geometric compatibility is assumed by these identities. -/
set_option autoImplicit false
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.CircleCharts

abbrev RationalRay := Fin 6 → ℚ × ℚ

def rationalPoint (z : ℚ × ℚ) : ℂ := ⟨(z.1 : ℝ), (z.2 : ℝ)⟩

def rationalRay (z : RationalRay) : Vector := fun j => rationalPoint (z j)

def rationalCircle (negative : Bool) (t : ℚ) : ℚ × ℚ :=
  let s : ℚ := if negative then -1 else 1
  (s * ((1-t^2)/(1+t^2)), s * (2*t/(1+t^2)))

theorem rationalCircle_eq_signedCircle (negative : Bool) (t : ℚ) :
    rationalPoint (rationalCircle negative t) = signedCircle negative (t : ℝ) := by
  cases negative <;> apply Complex.ext <;>
    simp [rationalPoint, rationalCircle, signedCircle, signValue, circlePoint]

theorem rationalCircle_unit (negative : Bool) (t : ℚ) :
    Complex.normSq (rationalPoint (rationalCircle negative t)) = 1 := by
  rw [rationalCircle_eq_signedCircle]
  exact signedCircle_normSq negative (t : ℝ)

def rationalChart (signs : Fin 5 → Bool) (t : Fin 5 → ℚ) : RationalRay :=
  Fin.cases (1,0) (fun j => rationalCircle (signs j) (t j))

theorem rationalChart_eq_chartRay (signs : Fin 5 → Bool) (t : Fin 5 → ℚ) :
    rationalRay (rationalChart signs t) = chartRay signs (fun j => (t j : ℝ)) := by
  funext j
  refine Fin.cases ?_ (fun k => ?_) j
  · simp [rationalRay, rationalChart, rationalPoint, chartRay]
  · exact rationalCircle_eq_signedCircle (signs k) (t k)

theorem rationalChart_isRawUnitRay (signs : Fin 5 → Bool) (t : Fin 5 → ℚ) :
    IsRawUnitRay (rationalRay (rationalChart signs t)) := by
  rw [rationalChart_eq_chartRay]
  exact chartRay_isRawUnitRay signs (fun j => (t j : ℝ))

def rationalOverlapRe (z w : RationalRay) : ℚ :=
  ∑ j, ((z j).1*(w j).1 + (z j).2*(w j).2)

def rationalOverlapIm (z w : RationalRay) : ℚ :=
  ∑ j, ((z j).1*(w j).2 - (z j).2*(w j).1)

def rationalProbability (z w : RationalRay) : ℚ :=
  (rationalOverlapRe z w ^ 2 + rationalOverlapIm z w ^ 2) / 36

theorem rawOverlap_rational_re (z w : RationalRay) :
    (rawOverlap (rationalRay z) (rationalRay w)).re = (rationalOverlapRe z w : ℝ) := by
  change Complex.reAddGroupHom (∑ j, star (rationalRay z j) * rationalRay w j) = _
  rw [map_sum]
  simp [rationalRay, rationalPoint, rationalOverlapRe, Complex.star_def, Complex.mul_re]

theorem rawOverlap_rational_im (z w : RationalRay) :
    (rawOverlap (rationalRay z) (rationalRay w)).im = (rationalOverlapIm z w : ℝ) := by
  change Complex.imAddGroupHom (∑ j, star (rationalRay z j) * rationalRay w j) = _
  rw [map_sum]
  simp [rationalRay, rationalPoint, rationalOverlapIm, Complex.star_def,
    Complex.mul_im, sub_eq_add_neg]

theorem rawOverlap_rational_probability (z w : RationalRay) :
    Complex.normSq (rawOverlap (rationalRay z) (rationalRay w)) / 36 =
      (rationalProbability z w : ℝ) := by
  rw [Complex.normSq_apply, rawOverlap_rational_re, rawOverlap_rational_im]
  simp [rationalProbability, pow_two]

def rationalOrthogonalPredicate (p : ℚ) : Prop :=
  p ≤ 4*((5:ℚ)/27)^2*(1-((5:ℚ)/27)^2)

def rationalUnbiasedPredicate (p : ℚ) : Prop :=
  (p+(5:ℚ)/192)^2 ≤ (2:ℚ)/3*p

instance (p : ℚ) : Decidable (rationalOrthogonalPredicate p) :=
  inferInstanceAs (Decidable (p ≤ 4*((5:ℚ)/27)^2*(1-((5:ℚ)/27)^2)))

instance (p : ℚ) : Decidable (rationalUnbiasedPredicate p) :=
  inferInstanceAs (Decidable ((p+(5:ℚ)/192)^2 ≤ (2:ℚ)/3*p))

theorem rationalOrthogonalPredicate_cast (p : ℚ) :
    rationalOrthogonalPredicate p ↔
      (p : ℝ) ≤ 4*((5:ℝ)/27)^2*(1-((5:ℝ)/27)^2) := by
  unfold rationalOrthogonalPredicate
  norm_cast

theorem rationalUnbiasedPredicate_cast (p : ℚ) :
    rationalUnbiasedPredicate p ↔
      ((p : ℝ)+(5:ℝ)/192)^2 ≤ (2:ℝ)/3*(p : ℝ) := by
  unfold rationalUnbiasedPredicate
  norm_cast

#print axioms rationalCircle_eq_signedCircle
#print axioms rationalCircle_unit
#print axioms rationalChart_eq_chartRay
#print axioms rationalChart_isRawUnitRay
#print axioms rawOverlap_rational_re
#print axioms rawOverlap_rational_im
#print axioms rawOverlap_rational_probability
#print axioms rationalOrthogonalPredicate_cast
#print axioms rationalUnbiasedPredicate_cast
end Mub6.Numerical.ClusterTube48
