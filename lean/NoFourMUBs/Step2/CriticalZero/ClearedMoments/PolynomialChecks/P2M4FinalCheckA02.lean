import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
variable {F : Type*} [Field F] [CharZero F]
theorem staged_coefficient_a_08 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_a.getD 8 []) = true := by rfl
#print axioms staged_coefficient_a_08
theorem staged_coefficient_a_09 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_a.getD 9 []) = true := by rfl
#print axioms staged_coefficient_a_09
theorem staged_coefficient_a_10 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_a.getD 10 []) = true := by rfl
#print axioms staged_coefficient_a_10
theorem staged_coefficient_a_11 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_a.getD 11 []) = true := by rfl
#print axioms staged_coefficient_a_11

end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
