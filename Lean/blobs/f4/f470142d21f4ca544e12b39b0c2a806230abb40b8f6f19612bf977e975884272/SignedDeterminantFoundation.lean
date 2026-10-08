import CentiradianPhysical
import Mathlib.Tactic.FieldSimp

set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006.SignedDeterminant
open scoped ComplexConjugate
noncomputable section

def coeff0 (a c : ℂ) := -((a-c)^2*(a+c)*(conj a)^2*(conj c)^2)
def coeff1 (a c : ℂ) := (a-c)*(a+c)*(a*c-1)*(conj a)^2*conj c
def coeff2 (a c : ℂ) := (c-1)^2*(c+1)*conj a*conj c
def coeff3 (a c : ℂ) := -((a^2-c)*(c-1)*(c+1)*conj a*(conj c)^2)
def coeff4 (a c : ℂ) := (a-1)^2*(a+1)*conj a*conj c
def coeff5 (a c : ℂ) := (a-1)*(a+1)*(a-c^2)*(conj a)^2*conj c

/-- Literal fast signed residual polynomial from corrected interval_model.hpp.
The fourth entry d is arbitrary: its conjugate is never replaced by an inverse. -/
def fastZ (a b c d : ℂ) : ℂ :=
  (coeff4 a c*conj b)*d^2 +
    (coeff0 a c*b+coeff3 a c-conj (coeff1 a c*b+coeff2 a c*b^2))*d + coeff5 a c*b

def fastSigned (a b c d : ℂ) : ℝ := 2*(fastZ a b c d).im

/-- The 48-term Laurent determinant regenerated from the pinned source,
evaluated using conjugates for all negative powers. -/
def rawDet (a b c d : ℂ) : ℂ :=
  0
    - (conj a)^2*b*c*(conj d)^2
    + (conj a)^2*b*c*(conj d)
    + (conj a)^2*b*c
    - (conj a)^2*b*c*d
    + (conj a)*(conj b)*(conj c)*d^2
    - (conj a)*(conj b)*d
    - (conj a)*(conj b)*c
    + (conj a)*(conj b)*c^2*(conj d)
    - (conj a)*(conj c)*d
    + (conj a)*(conj d)
    + (conj a)*c*d
    - (conj a)*c^2*(conj d)
    - (conj a)*b*(conj c)
    + (conj a)*b*d
    + (conj a)*b*c*(conj d)^2
    - (conj a)*b*c^2*(conj d)
    + (conj a)*b^2*(conj c)*(conj d)
    - (conj a)*b^2*(conj d)
    - (conj a)*b^2*c*(conj d)
    + (conj a)*b^2*c^2*(conj d)
    + (conj b)*(conj c)
    - (conj b)*(conj c)*d^2
    - (conj b)*c*(conj d)
    + (conj b)*c*d
    - b*(conj c)*(conj d)
    + b*(conj c)*d
    + b*c*(conj d)^2
    - b*c
    - a*(conj b)^2*(conj c)^2*d
    + a*(conj b)^2*(conj c)*d
    + a*(conj b)^2*d
    - a*(conj b)^2*c*d
    + a*(conj b)*(conj c)^2*d
    - a*(conj b)*(conj c)*d^2
    - a*(conj b)*(conj d)
    + a*(conj b)*c
    + a*(conj c)^2*d
    - a*(conj c)*(conj d)
    - a*d
    + a*c*(conj d)
    - a*b*(conj c)^2*d
    + a*b*(conj c)
    + a*b*(conj d)
    - a*b*c*(conj d)^2
    + a^2*(conj b)*(conj c)*(conj d)
    - a^2*(conj b)*(conj c)
    - a^2*(conj b)*(conj c)*d
    + a^2*(conj b)*(conj c)*d^2

theorem conj_eq_inv_of_normSq_one {z : ℂ} (hz : Complex.normSq z=1) : conj z=z⁻¹ := by
  simp [Complex.inv_def, hz]

theorem nonzero_of_normSq_one {z : ℂ} (hz : Complex.normSq z=1) : z≠0 := by
  intro h
  simp [h] at hz

/-- Formal identity between the literal 48-term determinant and the fast
extension, valid even when the last corner entry is off the unit circle. -/
theorem rawDet_eq_fast (a b c d : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1) (hc : Complex.normSq c=1) :
    rawDet a b c d = fastZ a b c d-conj (fastZ a b c d) := by
  have ha0 := nonzero_of_normSq_one ha
  have hb0 := nonzero_of_normSq_one hb
  have hc0 := nonzero_of_normSq_one hc
  unfold rawDet fastZ coeff0 coeff1 coeff2 coeff3 coeff4 coeff5
  simp only [map_add, map_sub, map_mul, map_pow, map_neg, map_one]
  simp only [starRingEnd_self_apply]
  simp only [conj_eq_inv_of_normSq_one ha, conj_eq_inv_of_normSq_one hb,
    conj_eq_inv_of_normSq_one hc]
  field_simp [ha0, hb0, hc0]
  <;> ring

theorem rawDet_re_zero (a b c d : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1) (hc : Complex.normSq c=1) :
    (rawDet a b c d).re=0 := by
  rw [rawDet_eq_fast a b c d ha hb hc]
  simp

theorem rawDet_im_eq_signed (a b c d : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1) (hc : Complex.normSq c=1) :
    (rawDet a b c d).im=fastSigned a b c d := by
  rw [rawDet_eq_fast a b c d ha hb hc]
  simp [fastSigned]
  ring

theorem rawDet_negative_square (a b c d : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1) (hc : Complex.normSq c=1) :
    -(rawDet a b c d)^2 = ((fastSigned a b c d)^2:ℝ) := by
  have hr := rawDet_re_zero a b c d ha hb hc
  have hi := rawDet_im_eq_signed a b c d ha hb hc
  apply Complex.ext <;> simp [pow_two, hr, hi]

end
end Centiradian20261006.SignedDeterminant

#print axioms Centiradian20261006.SignedDeterminant.rawDet_eq_fast
#print axioms Centiradian20261006.SignedDeterminant.rawDet_re_zero
#print axioms Centiradian20261006.SignedDeterminant.rawDet_im_eq_signed
#print axioms Centiradian20261006.SignedDeterminant.rawDet_negative_square
