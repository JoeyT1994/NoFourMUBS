import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/- Exact scalar normalization only. There is no physical completion theorem,
   interval arithmetic admission, or positive seed-radius claim in this file. -/
set_option autoImplicit false
namespace SeedRadialAlgebra

def originalR (p j w : ℝ) : ℝ :=
  4 * (27-3*p+j)^2 * (9-p+j) -
    (w-(p-9)*(p-18)+(p-15)*j)^2

def radialR (h p j w : ℝ) : ℝ :=
  324*w-81*p^2 + 54*h*p*j +
  h^2*(27*j^2+18*p^3-54*p*w) +
  h^3*j*(30*w-24*p^2) +
  h^4*(2*p^2*w-p^4-w^2+2*p*j^2) +
  h^5*(4*j^3+2*p^3*j-2*p*w*j) - h^6*p^2*j^2

theorem radial_R_identity (h p j w : ℝ) :
    originalR (h^2*p) (h^3*j) (h^4*w) = h^4*radialR h p j w := by
  unfold originalR radialR
  ring

theorem radial_W_identity (h x y z : ℝ) :
    (h^2*x)*(h^2*y)+(h^2*x)*(h^2*z)+(h^2*y)*(h^2*z)-
      (h^2*x)*(h^2*y)*(h^2*z) =
    h^4*(x*y+x*z+y*z-h^2*x*y*z) := by ring

def originalE (p j w z : ℝ) : ℝ :=
  w-(p-9)*(p-18)+(p-15)*j+2*(9-z)*(9-p+j)

def radialE (h p j w z : ℝ) : ℝ :=
  9*p-18*z+3*h*j+h^2*(w-p^2+2*z*p)+h^3*(p-2*z)*j

theorem radial_E_identity (h p j w z : ℝ) :
    originalE (h^2*p) (h^3*j) (h^4*w) (h^2*z) =
      h^2*radialE h p j w z := by
  unfold originalE radialE
  ring

/- The same identity applies in a complex polynomial ring after separately
   selecting the conjugated variables; it asserts no conjugation hypotheses. -/
theorem radial_P_identity {K : Type*} [CommRing K] (h s t r rb z : K) :
    (h*r)*(h*s)^2+(h*rb)*(h*t)^2+(3-h^2*z)*(h*s)*(h*t) =
      h^2*(3*s*t+h*(r*s^2+rb*t^2)-h^2*z*s*t) := by ring

theorem radial_norm_identity (h x y : ℝ) :
    (h^2*x)^2+(h^2*y)^2 = h^4*(x^2+y^2) := by ring

theorem radial_delta_identity (h n0 n1 n2 : ℝ) :
    (h^4*n0)*(h^4*n1)*(h^4*n2) = h^12*(n0*n1*n2) := by ring

theorem radial_U_identity {K : Type*} [Field K] (h p n1 n2 : K) :
    (h^2*p)*(h^4*n1)*(h^4*n2)/2 = h^10*(p*n1*n2/2) := by ring

theorem radial_M_quadratic_identity {K : Type*} [CommRing K] (h d s t e u : K) :
    (h^12*d)*(h*s)*(h*t)-(h^2*e)*(h^10*u) =
      h^12*(h^2*d*s*t-e*u) := by ring

theorem radial_M_linear_identity {K : Type*} [CommRing K] (h d s : K) :
    (h^12*d)*(h*s) = h^12*(h*d*s) := by ring

theorem radial_square_identity (h a b d q sigma : ℝ) :
    (h^12*a+sigma*(h^10*b)*(h^2*q))^2-
      (3*(h^12*d)*(h^2*q))^2 =
    h^24*((a+sigma*b*q)^2-(3*h^2*d*q)^2) := by ring

theorem radial_necessary {h a b d q sigma : ℝ} (hh : 0<h)
    (hbound : (h^12*a+sigma*(h^10*b)*(h^2*q))^2 ≤
      (3*(h^12*d)*(h^2*q))^2) :
    (a+sigma*b*q)^2 ≤ (3*h^2*d*q)^2 := by
  have hi := radial_square_identity h a b d q sigma
  have hp : 0<h^24 := pow_pos hh 24
  have hn : h^24*((a+sigma*b*q)^2-(3*h^2*d*q)^2) ≤ 0 := by
    linarith
  have hn' : (a+sigma*b*q)^2-(3*h^2*d*q)^2 ≤ 0 := by
    by_contra hnot
    exact (not_lt_of_ge hn) (mul_pos hp (lt_of_not_ge hnot))
  linarith

theorem radial_H_identity (h a b d r : ℝ) :
    (h^12*a)^2-((h^10*b)+3*(h^12*d))^2*(h^4*r) =
    h^24*(a^2-(b+3*h^2*d)^2*r) := by ring

def qnorm (x y : ℝ) : ℝ := x^2+y^2-x*y

def leadingR (a b c d : ℝ) : ℝ :=
  let x := qnorm a b
  let y := qnorm c d
  let z := qnorm (c-a) (d-b)
  81*(4*(x*y+x*z+y*z)-(x+y+z)^2)

theorem quartic_leading_identity (a b c d : ℝ) :
    leadingR a b c d = 243*(a*d-b*c)^2 := by
  unfold leadingR qnorm
  ring

theorem radial_R_at_zero (p j w : ℝ) :
    radialR 0 p j w = 324*w-81*p^2 := by
  unfold radialR
  ring

theorem rank_one_zero (a b k : ℝ) : leadingR a b (k*a) (k*b) = 0 := by
  rw [quartic_leading_identity]
  ring

theorem unit_direction_zero : leadingR 1 0 1 0 = 0 := by
  rw [quartic_leading_identity]
  ring

def triangleK (x y z : ℝ) : ℝ := 2*(x*y+x*z+y*z)-x^2-y^2-z^2

theorem tangent_triangle_identity (sr si tr ti : ℝ) :
    triangleK (sr^2+si^2) (tr^2+ti^2) ((sr+tr)^2+(si-ti)^2) =
      4*(sr*ti+si*tr)^2 := by
  unfold triangleK
  ring

def leadingMeanA (l im x y z : ℝ) : ℝ :=
  -54*l*im*((x+y-z)*z+(x+z-y)*y+(y+z-x)*x)

def leadingMeanB (l x y z : ℝ) : ℝ :=
  -3*l*(z*(z-x-y)+y*(y-x-z)+x*(x-y-z))

theorem leading_mean_A (l im x y z : ℝ) :
    leadingMeanA l im x y z = -54*l*im*triangleK x y z := by
  unfold leadingMeanA triangleK
  ring

theorem leading_mean_B (l x y z : ℝ) :
    leadingMeanB l x y z = 3*l*triangleK x y z := by
  unfold leadingMeanB triangleK
  ring

theorem leading_mean_relation (l im x y z : ℝ) :
    leadingMeanA l im x y z = -18*im*leadingMeanB l x y z := by
  rw [leading_mean_A,leading_mean_B]
  ring

theorem leading_mean_square_zero {l im x y z : ℝ}
    (htriangle : triangleK x y z = 4*im^2) :
    (leadingMeanA l im x y z)^2-
      (leadingMeanB l x y z)^2*(81*triangleK x y z) = 0 := by
  rw [leading_mean_A,leading_mean_B,htriangle]
  ring

theorem leading_delta_identity (x y z : ℝ) :
    (9*x*y)*(9*z*x)*(9*z*y) = 729*x^2*y^2*z^2 := by ring

theorem negative_sheet_excluded {a b d q : ℝ}
    (ha : a<0) (hd : 0≤d) (hdb : d≤b) (hq : 0≤q)
    (hh : (a-b*q)^2 ≤ (d*q)^2) : False := by
  have hdq : 0≤d*q := mul_nonneg hd hq
  have gap : 0≤(b-d)*q := mul_nonneg (sub_nonneg.mpr hdb) hq
  have hfirst : a-b*q+d*q<0 := by nlinarith
  have hsecond : a-b*q-d*q<0 := by nlinarith
  have hp := mul_pos_of_neg_of_neg hfirst hsecond
  nlinarith

theorem matched_sheets_excluded {a b d q a' b' d' q' : ℝ}
    (ha : a<0) (hd : 0≤d) (hdb : d≤b) (hq : 0≤q)
    (ha' : a'<0) (hd' : 0≤d') (hdb' : d'≤b') (hq' : 0≤q')
    (hmatch :
      ((a+b*q)^2≤(d*q)^2 ∧ (a'-b'*q')^2≤(d'*q')^2) ∨
      ((a-b*q)^2≤(d*q)^2 ∧ (a'+b'*q')^2≤(d'*q')^2)) : False := by
  rcases hmatch with h | h
  · exact negative_sheet_excluded ha' hd' hdb' hq' h.2
  · exact negative_sheet_excluded ha hd hdb hq h.1

theorem exceptional_ray_R (x : ℝ) : originalR (2*x) 0 (x^2) =
    9*x^3*(4-x) := by
  unfold originalR
  ring

theorem exceptional_ray_delta (x : ℝ) :
    (9*x^2)*(x^3)*(x^3) = 9*x^8 := by ring

theorem exceptional_ray_R_positive {x : ℝ} (hx : 0<x) (hx4 : x<4) :
    0 < originalR (2*x) 0 (x^2) := by
  rw [exceptional_ray_R]
  exact mul_pos (mul_pos (by linarith) (pow_pos hx 3)) (sub_pos.mpr hx4)

theorem positive_sheet_excluded {a b d q : ℝ}
    (ha : 0<a) (hd : 0≤d) (hdb : d≤b) (hq : 0≤q)
    (hh : (a+b*q)^2 ≤ (d*q)^2) : False := by
  have heq : (-a-b*q)^2 = (a+b*q)^2 := by ring
  apply negative_sheet_excluded (show -a<0 by linarith) hd hdb hq
  rw [heq]
  exact hh

#print axioms radial_R_identity
#print axioms radial_W_identity
#print axioms radial_E_identity
#print axioms radial_P_identity
#print axioms radial_norm_identity
#print axioms radial_delta_identity
#print axioms radial_U_identity
#print axioms radial_M_quadratic_identity
#print axioms radial_M_linear_identity
#print axioms radial_square_identity
#print axioms radial_necessary
#print axioms radial_H_identity
#print axioms quartic_leading_identity
#print axioms radial_R_at_zero
#print axioms rank_one_zero
#print axioms unit_direction_zero
#print axioms tangent_triangle_identity
#print axioms leading_mean_A
#print axioms leading_mean_B
#print axioms leading_mean_relation
#print axioms leading_mean_square_zero
#print axioms leading_delta_identity
#print axioms negative_sheet_excluded
#print axioms matched_sheets_excluded
#print axioms exceptional_ray_R
#print axioms exceptional_ray_delta
#print axioms exceptional_ray_R_positive
#print axioms positive_sheet_excluded
end SeedRadialAlgebra
