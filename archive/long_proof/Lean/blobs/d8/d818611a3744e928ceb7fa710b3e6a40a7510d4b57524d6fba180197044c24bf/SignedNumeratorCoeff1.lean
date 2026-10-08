import SignedNumeratorDefs

set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace Centiradian20261006.SignedDeterminant
open scoped ComplexConjugate
noncomputable section

def certCoeff1 (a b c : ℂ) : ℂ := 0
    + 4*a*b*c*(gNum0 a b c)*(gNum0 a b c)*(eNum0 a b c)
    - (cNum0 a b c)*(cNum1 a b c)
    + (dNum0 a b c)*(dNum1 a b c)
    - (cNum1 a b c)*(cNum0 a b c)
    + (dNum1 a b c)*(dNum0 a b c)

theorem certCoeff1_zero (a b c : ℂ) : certCoeff1 a b c=0 := by
  simp only [certCoeff1, gNum0, gNum1, gNum2, eNum0, eNum1, eNum2, cNum0, cNum1, cNum2, cNum3, cNum4, dNum0, dNum1, dNum2, dNum3, dNum4]
  ring

end
end Centiradian20261006.SignedDeterminant

#print axioms Centiradian20261006.SignedDeterminant.certCoeff1_zero
