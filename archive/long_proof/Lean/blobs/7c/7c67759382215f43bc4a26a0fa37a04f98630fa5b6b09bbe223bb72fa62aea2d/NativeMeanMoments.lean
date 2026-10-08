import NativeSignedPhysical

/-! Exact physical binding of the native six determinant coefficients and
their unweighted side-moment sum. No side-constructor formulas, sheet choice,
native interval outputs, or Taylor enclosures are assumed. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.NativeMean20261006
open scoped ComplexConjugate BigOperators
open SignedDeterminant NativeSigned20261006
noncomputable section

/-- The six monomials in the native pq order, with negative powers interpreted
as conjugates exactly as in signed_linear_engine.cpp. -/
def sixTerm (a c x y : ℂ) : ℂ :=
  coeff0 a c*(x*y)+coeff1 a c*(x*conj y)+coeff2 a c*(x^2*conj y)+
    coeff3 a c*y+coeff4 a c*(conj x*y^2)+coeff5 a c*x

/-- The six native coefficients were already defined and checked in
SignedDeterminantFoundation. This identifies their full six-monomial form
with the existing fast determinant, without repeating the 48-term proof. -/
theorem sixTerm_im_eq_fast (a c x y : ℂ) :
    2*(sixTerm a c x y).im=fastSigned a x c y := by
  unfold sixTerm fastSigned fastZ
  simp only [Complex.add_im,Complex.sub_im,Complex.add_re,Complex.sub_re,
    Complex.conj_im,Complex.conj_re,Complex.mul_im,Complex.mul_re]
  ring

theorem sixTerm_eq_rawDet (a c x y : ℂ)
    (ha : Complex.normSq a=1) (hx : Complex.normSq x=1) (hc : Complex.normSq c=1) :
    sixTerm a c x y-conj (sixTerm a c x y)=rawDet a x c y := by
  apply Complex.ext
  · rw [rawDet_re_zero a x c y ha hx hc]
    simp
  · rw [rawDet_im_eq_signed a x c y ha hx hc,← sixTerm_im_eq_fast a c x y]
    simp
    ring

/-- The mean backend uses Re(i*(S-conj S)), while the literal signed-corner
module uses Im(rawDet). Their signs are opposite; their squared bounds agree. -/
theorem native_signed_of_sixTerm (a c x y : ℂ) :
    ((sixTerm a c x y-conj (sixTerm a c x y))*Complex.I).re =
      -fastSigned a x c y := by
  rw [← sixTerm_im_eq_fast]
  simp [Complex.mul_re]
  ring

/-- Native phase factors for a pair whose first known column is (1,u,v).
The second normalized known column is (1,a*conj u,c*conj v). -/
def weightedSixTerm (u v a c x y : ℂ) : ℂ :=
  let A := a*conj u
  let C := c*conj v
  (coeff0 A C*conj u*conj v)*(x*y)+
    (coeff1 A C*conj u*v)*(x*conj y)+
    (coeff2 A C*(conj u)^2*v)*(x^2*conj y)+
    (coeff3 A C*conj v)*y+
    (coeff4 A C*u*(conj v)^2)*(conj x*y^2)+
    (coeff5 A C*conj u)*x

theorem weightedSixTerm_eq_normalized (u v a c x y : ℂ) :
    weightedSixTerm u v a c x y =
      sixTerm (a*conj u) (c*conj v) (x*conj u) (y*conj v) := by
  unfold weightedSixTerm sixTerm
  simp only [map_mul,starRingEnd_self_apply]
  ring

/-- Exactly the six unweighted moments consumed by the mean backend, now
defined as actual finite sums of side entries instead of assumed formulas. -/
def momentSum (u v a c : ℂ) (x y : Fin 3 → ℂ) : ℂ :=
  let A := a*conj u
  let C := c*conj v
  (coeff0 A C*conj u*conj v)*(∑ l, x l*y l)+
    (coeff1 A C*conj u*v)*(∑ l, x l*conj (y l))+
    (coeff2 A C*(conj u)^2*v)*(∑ l, (x l)^2*conj (y l))+
    (coeff3 A C*conj v)*(∑ l, y l)+
    (coeff4 A C*u*(conj v)^2)*(∑ l, conj (x l)*(y l)^2)+
    (coeff5 A C*conj u)*(∑ l, x l)

theorem momentSum_eq_sum (u v a c : ℂ) (x y : Fin 3 → ℂ) :
    momentSum u v a c x y=∑ l, weightedSixTerm u v a c (x l) (y l) := by
  simp only [momentSum,weightedSixTerm,Finset.mul_sum,Finset.sum_add_distrib]

def physicalMomentSum (H : Mat6) (pair : Fin 3) : ℂ :=
  momentSum (H 1 (topFirst pair)) (H 2 (topFirst pair))
    (H 1 (topSecond pair)) (H 2 (topSecond pair))
    (fun l => H 1 (bottomIndex l)) (fun l => H 2 (bottomIndex l))

def physicalSignedSum (H : Mat6) (pair : Fin 3) : ℝ :=
  ((physicalMomentSum H pair-conj (physicalMomentSum H pair))*Complex.I).re

/-- Source normalization for any dephased actual matrix. The first three
rows and a known column pair are precisely those used by the native loop. -/
theorem normalized_side_corner {H : Mat6} (hd : Dephased H) (pair l : Fin 3) :
    cornerSigned H 0 1 2 (topFirst pair) (topSecond pair) (bottomIndex l)=
      fastSigned
        (H 1 (topSecond pair)*conj (H 1 (topFirst pair)))
        (H 1 (bottomIndex l)*conj (H 1 (topFirst pair)))
        (H 2 (topSecond pair)*conj (H 2 (topFirst pair)))
        (H 2 (bottomIndex l)*conj (H 2 (topFirst pair))) := by
  simp only [cornerSigned,cornerNormalize_eq_source_dephasing,hd.1,
    map_one,mul_one]

/-- Full actual-matrix identity. In particular no theorem argument asserts
the desired signed-mean/coefficient binding. -/
theorem physicalSignedSum_eq_neg_corners {H : Mat6} (hd : Dephased H) (pair : Fin 3) :
    physicalSignedSum H pair=
      -∑ l : Fin 3, cornerSigned H 0 1 2 (topFirst pair) (topSecond pair) (bottomIndex l) := by
  unfold physicalSignedSum physicalMomentSum
  rw [momentSum_eq_sum]
  simp only [map_sum,← Finset.sum_sub_distrib,Finset.sum_mul,Complex.re_sum]
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro l _
  rw [weightedSixTerm_eq_normalized,native_signed_of_sixTerm,normalized_side_corner hd]

/-- Physical maximality now bounds the native six-moment expression itself,
with no coefficient-enclosure or side-moment identity premise. -/
theorem physicalSignedSum_abs_bound {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0<leadingR H) (pair : Fin 3) :
    |physicalSignedSum H pair| ≤ 3*Real.sqrt (leadingR H) := by
  rw [physicalSignedSum_eq_neg_corners hd,abs_neg]
  calc
    |∑ l : Fin 3, cornerSigned H 0 1 2 (topFirst pair) (topSecond pair) (bottomIndex l)| ≤
        ∑ l : Fin 3, |cornerSigned H 0 1 2 (topFirst pair) (topSecond pair) (bottomIndex l)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _l : Fin 3, Real.sqrt (leadingR H) := by
      apply Finset.sum_le_sum
      intro l _
      exact physical_maximal_signed_abs_bound hH hm hR 0 1 2 _ _ _
        (by decide) (by decide) (topFirst_lt_topSecond pair) (topSecond_lt_bottom pair l)
    _ = 3*Real.sqrt (leadingR H) := by simp

end
end Centiradian20261006.NativeMean20261006

#print axioms Centiradian20261006.NativeMean20261006.sixTerm_im_eq_fast
#print axioms Centiradian20261006.NativeMean20261006.sixTerm_eq_rawDet
#print axioms Centiradian20261006.NativeMean20261006.native_signed_of_sixTerm
#print axioms Centiradian20261006.NativeMean20261006.weightedSixTerm_eq_normalized
#print axioms Centiradian20261006.NativeMean20261006.momentSum_eq_sum
#print axioms Centiradian20261006.NativeMean20261006.normalized_side_corner
#print axioms Centiradian20261006.NativeMean20261006.physicalSignedSum_eq_neg_corners
#print axioms Centiradian20261006.NativeMean20261006.physicalSignedSum_abs_bound
