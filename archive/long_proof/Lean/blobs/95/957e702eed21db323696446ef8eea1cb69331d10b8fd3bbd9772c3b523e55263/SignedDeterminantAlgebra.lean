import SignedDeterminantFoundation

set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000

namespace Centiradian20261006.SignedDeterminant
open scoped ComplexConjugate
noncomputable section

def pComplex (s t r : ℂ) := s*conj s+t*conj t+r*conj r
def jComplex (s t r : ℂ) := s*r*conj t+conj s*conj r*t
def wComplex (s t r : ℂ) :=
  (s*conj s)*(t*conj t)+(s*conj s)*(r*conj r)+(t*conj t)*(r*conj r)-
    (s*conj s)*(t*conj t)*(r*conj r)

/-- The missing signed determinant-square identity on the unit four-torus.
This declaration receives proof credit only after its own guarded check passes. -/
theorem complex_algebra_identity (a b c d : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    4*(27-3*pComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)-
        jComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b))^2*
      (9-pComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)-
        jComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b))-
      (wComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)-
        (pComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)-9)*
        (pComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)-18)-
        (pComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)-15)*
        jComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b))^2 = -(rawDet a b c d)^2 := by
  have ha0 := nonzero_of_normSq_one ha
  have hb0 := nonzero_of_normSq_one hb
  have hc0 := nonzero_of_normSq_one hc
  have hd0 := nonzero_of_normSq_one hd
  unfold rawDet pComplex jComplex wComplex
  simp only [map_add, map_sub, map_mul, map_pow, map_neg, map_one,
    starRingEnd_self_apply]
  simp only [conj_eq_inv_of_normSq_one ha, conj_eq_inv_of_normSq_one hb,
    conj_eq_inv_of_normSq_one hc, conj_eq_inv_of_normSq_one hd]
  field_simp [ha0, hb0, hc0, hd0]
  <;> ring


end
end Centiradian20261006.SignedDeterminant

#print axioms Centiradian20261006.SignedDeterminant.complex_algebra_identity
