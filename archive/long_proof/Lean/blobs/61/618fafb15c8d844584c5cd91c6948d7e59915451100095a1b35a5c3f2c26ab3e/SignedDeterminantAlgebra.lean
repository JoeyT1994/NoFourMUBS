import SignedNumeratorBindings

set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000

namespace Centiradian20261006.SignedDeterminant
open scoped ComplexConjugate
noncomputable section

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
  let A := denominator a b c d
  let p := pComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)
  let j := jComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)
  let w := wComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)
  have hA : A≠0 := denominator_nonzero ha hb hc hd
  have hg : A*(27-3*p-j)=gNum a b c d := g_num_binding a b c d ha hb hc hd
  have he : A*(9-p-j)=eNum a b c d := e_num_binding a b c d ha hb hc hd
  have hχ : A^2*(w-(p-9)*(p-18)-(p-15)*j)=cNum a b c d := c_num_binding a b c d ha hb hc hd
  have hD : A^2*rawDet a b c d=dNum a b c d := d_num_binding a b c d ha hb hc hd
  change 4*(27-3*p-j)^2*(9-p-j)-(w-(p-9)*(p-18)-(p-15)*j)^2 = -(rawDet a b c d)^2
  apply mul_left_cancel₀ (pow_ne_zero 4 hA)
  calc
    A^4*(4*(27-3*p-j)^2*(9-p-j)-(w-(p-9)*(p-18)-(p-15)*j)^2) =
        4*A*(A*(27-3*p-j))^2*(A*(9-p-j))-(A^2*(w-(p-9)*(p-18)-(p-15)*j))^2 := by ring
    _ = -(dNum a b c d)^2 := by
      rw [hg, he, hχ]
      exact numerator_certificate a b c d
    _ = A^4*(-(rawDet a b c d)^2) := by rw [← hD]; ring


end
end Centiradian20261006.SignedDeterminant

#print axioms Centiradian20261006.SignedDeterminant.complex_algebra_identity
