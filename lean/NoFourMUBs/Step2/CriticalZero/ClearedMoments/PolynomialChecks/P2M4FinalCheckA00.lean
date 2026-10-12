import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
variable {F : Type*} [Field F] [CharZero F]
theorem staged_coefficient_a_00 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_a.getD 0 []) = true := by rfl
#print axioms staged_coefficient_a_00
theorem staged_coefficient_a_01 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_a.getD 1 []) = true := by rfl
#print axioms staged_coefficient_a_01
theorem staged_coefficient_a_02 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_a.getD 2 []) = true := by rfl
#print axioms staged_coefficient_a_02
theorem staged_coefficient_a_03 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_a.getD 3 []) = true := by rfl
#print axioms staged_coefficient_a_03

end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
