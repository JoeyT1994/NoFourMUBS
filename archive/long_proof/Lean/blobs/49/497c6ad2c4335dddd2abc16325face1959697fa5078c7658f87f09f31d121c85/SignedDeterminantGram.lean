import SignedDeterminantAlgebra
import CentiradianPhysical

set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000

namespace Centiradian20261006.SignedDeterminant
open scoped ComplexConjugate
noncomputable section

theorem cast_gramP (s t r : ℂ) : (gramP s t r:ℂ)=pComplex s t r := by
  simp [gramP,pComplex,Complex.mul_conj]

theorem cast_gramJ (s t r : ℂ) : (gramJ s t r:ℂ)=jComplex s t r := by
  apply Complex.ext <;> simp [gramJ,jComplex] <;> ring

theorem cast_gramW (s t r : ℂ) : (gramW s t r:ℂ)=wComplex s t r := by
  simp [gramW,wComplex,Complex.mul_conj]

theorem cast_complementary_invariant (s t r : ℂ) :
    (invariant (gramP s t r) (-gramJ s t r) (gramW s t r):ℂ) =
      4*(27-3*pComplex s t r-jComplex s t r)^2*(9-pComplex s t r-jComplex s t r)-
        (wComplex s t r-(pComplex s t r-9)*(pComplex s t r-18)-
          (pComplex s t r-15)*jComplex s t r)^2 := by
  simp only [invariant, Complex.ofReal_sub, Complex.ofReal_mul, Complex.ofReal_add,
    Complex.ofReal_pow, Complex.ofReal_neg, Complex.ofReal_ofNat,
    cast_gramP, cast_gramJ, cast_gramW]
  ring

/-- The missing signed determinant-square identity on the unit four-torus.
This declaration receives proof credit only after its own guarded check passes. -/
theorem complementary_invariant_eq_negative_det_square (a b c d : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    (invariant
      (gramP (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b))
      (-gramJ (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b))
      (gramW (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)):ℂ) = -(rawDet a b c d)^2 := by
  rw [cast_complementary_invariant]
  exact complex_algebra_identity a b c d ha hb hc hd

end
end Centiradian20261006.SignedDeterminant

#print axioms Centiradian20261006.SignedDeterminant.cast_complementary_invariant
#print axioms Centiradian20261006.SignedDeterminant.complementary_invariant_eq_negative_det_square
