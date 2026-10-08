import SignedNumeratorDefs

set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace Centiradian20261006.SignedDeterminant
open scoped ComplexConjugate
noncomputable section

def certCoeff8 (a b c : ℂ) : ℂ := 0
    - (cNum4 a b c)*(cNum4 a b c)
    + (dNum4 a b c)*(dNum4 a b c)

theorem certCoeff8_zero (a b c : ℂ) : certCoeff8 a b c=0 := by
  simp only [certCoeff8, gNum0, gNum1, gNum2, eNum0, eNum1, eNum2, cNum0, cNum1, cNum2, cNum3, cNum4, dNum0, dNum1, dNum2, dNum3, dNum4]
  ring

end
end Centiradian20261006.SignedDeterminant

#print axioms Centiradian20261006.SignedDeterminant.certCoeff8_zero
