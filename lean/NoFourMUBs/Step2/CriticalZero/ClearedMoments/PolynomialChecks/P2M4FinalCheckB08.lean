import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
variable {F : Type*} [Field F] [CharZero F]
theorem staged_coefficient_b_32 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_b.getD 32 []) = true := by rfl
#print axioms staged_coefficient_b_32
theorem staged_coefficient_b_33 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_b.getD 33 []) = true := by rfl
#print axioms staged_coefficient_b_33
theorem staged_coefficient_b_34 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_b.getD 34 []) = true := by rfl
#print axioms staged_coefficient_b_34
theorem staged_coefficient_b_35 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_b.getD 35 []) = true := by rfl
#print axioms staged_coefficient_b_35

end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
