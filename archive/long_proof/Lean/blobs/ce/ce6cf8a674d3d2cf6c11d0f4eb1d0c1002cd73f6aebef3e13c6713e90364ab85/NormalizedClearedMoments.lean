import SignedNumeratorBindings

/-! Direct polynomial side identities on four unit phases. They have no
side-constructor, root, denominator-nonzero, or classification premise beyond
the four unit phases. The side is normalized at its first column. -/
set_option autoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 10000
namespace Centiradian20261006.NativeMean20261006
open scoped ComplexConjugate
open SignedDeterminant
noncomputable section

def sideS (a b : ℂ) : ℂ := 1+a+b
def sideT (c d : ℂ) : ℂ := 1+c+d
def sideR (a b c d : ℂ) : ℂ := 1+c*conj a+d*conj b
def sidePi (a b c d : ℂ) : ℂ := sideS a b*sideT c d-(1+a*c+b*d)

def symmetricP0 (s t r : ℂ) : ℂ := r*s^2+conj r*t^2+(3-r*conj r)*s*t
def symmetricP1 (s t r : ℂ) : ℂ := t*(conj s)^2+r^2*conj t+(3-t*conj t)*r*conj s
def symmetricP2 (s t r : ℂ) : ℂ := s*(conj t)^2+(conj r)^2*conj s+
  (3-s*conj s)*conj r*conj t

/-- Literal stableA operation from the native provider, interpreted exactly. -/
def meanStableA (s t r z : ℂ) : ℂ :=
  let p := pComplex s t r
  let j := jComplex s t r
  let w := wComplex s t r
  w-p^2+9*p-18*z+2*z*p+(p+3-2*z)*j

theorem meanStableA_eq_chi_eta (s t r z : ℂ) :
    meanStableA s t r z =
      (wComplex s t r-(pComplex s t r-9)*(pComplex s t r-18)+
        (pComplex s t r-15)*jComplex s t r)+
      2*(9-z)*(9-pComplex s t r+jComplex s t r) := by
  unfold meanStableA
  ring

/-- The first cleared affine side identity, proved directly on unit phases.
In the mean backend h=-Im(rawDet), so the displayed minus sign is essential. -/
theorem normalized_Pi_identity (a b c d : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    2*conj (symmetricP0 (sideS a b) (sideT c d) (sideR a b c d))*sidePi a b c d =
      meanStableA (sideS a b) (sideT c d) (sideR a b c d)
        (sideR a b c d*conj (sideR a b c d))-rawDet a b c d := by
  have ha0 := nonzero_of_normSq_one ha
  have hb0 := nonzero_of_normSq_one hb
  have hc0 := nonzero_of_normSq_one hc
  have hd0 := nonzero_of_normSq_one hd
  unfold symmetricP0 sidePi sideS sideT sideR meanStableA pComplex jComplex wComplex rawDet
  simp only [map_add,map_sub,map_mul,map_pow,map_neg,map_one,map_ofNat,starRingEnd_self_apply]
  simp only [conj_eq_inv_of_normSq_one ha,conj_eq_inv_of_normSq_one hb,
    conj_eq_inv_of_normSq_one hc,conj_eq_inv_of_normSq_one hd]
  field_simp [ha0,hb0,hc0,hd0]
  <;> ring

theorem normalized_C1_identity (a b c d : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    2*symmetricP1 (sideS a b) (sideT c d) (sideR a b c d)*(a*b*conj (sidePi a b c d)) =
      meanStableA (sideS a b) (sideT c d) (sideR a b c d)
        (sideT c d*conj (sideT c d))+rawDet a b c d := by
  have ha0 := nonzero_of_normSq_one ha
  have hb0 := nonzero_of_normSq_one hb
  have hc0 := nonzero_of_normSq_one hc
  have hd0 := nonzero_of_normSq_one hd
  unfold symmetricP1 sidePi sideS sideT sideR meanStableA pComplex jComplex wComplex rawDet
  simp only [map_add,map_sub,map_mul,map_pow,map_neg,map_one,map_ofNat,starRingEnd_self_apply]
  simp only [conj_eq_inv_of_normSq_one ha,conj_eq_inv_of_normSq_one hb,
    conj_eq_inv_of_normSq_one hc,conj_eq_inv_of_normSq_one hd]
  field_simp [ha0,hb0,hc0,hd0]
  <;> ring

theorem normalized_C2_identity (a b c d : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    2*symmetricP2 (sideS a b) (sideT c d) (sideR a b c d)*(c*d*conj (sidePi a b c d)) =
      meanStableA (sideS a b) (sideT c d) (sideR a b c d)
        (sideS a b*conj (sideS a b))+rawDet a b c d := by
  have ha0 := nonzero_of_normSq_one ha
  have hb0 := nonzero_of_normSq_one hb
  have hc0 := nonzero_of_normSq_one hc
  have hd0 := nonzero_of_normSq_one hd
  unfold symmetricP2 sidePi sideS sideT sideR meanStableA pComplex jComplex wComplex rawDet
  simp only [map_add,map_sub,map_mul,map_pow,map_neg,map_one,map_ofNat,starRingEnd_self_apply]
  simp only [conj_eq_inv_of_normSq_one ha,conj_eq_inv_of_normSq_one hb,
    conj_eq_inv_of_normSq_one hc,conj_eq_inv_of_normSq_one hd]
  field_simp [ha0,hb0,hc0,hd0]
  <;> ring

end
end Centiradian20261006.NativeMean20261006

#print axioms Centiradian20261006.NativeMean20261006.meanStableA_eq_chi_eta
#print axioms Centiradian20261006.NativeMean20261006.normalized_Pi_identity
#print axioms Centiradian20261006.NativeMean20261006.normalized_C1_identity
#print axioms Centiradian20261006.NativeMean20261006.normalized_C2_identity
