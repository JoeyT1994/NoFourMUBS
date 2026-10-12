import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
variable {F : Type*} [Field F] [CharZero F]
theorem staged_residual_a_coefficient_12 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_a.getD 12 []) = true := by rfl
#print axioms staged_residual_a_coefficient_12
theorem staged_residual_a_coefficient_13 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_a.getD 13 []) = true := by rfl
#print axioms staged_residual_a_coefficient_13
theorem staged_residual_a_coefficient_14 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_a.getD 14 []) = true := by rfl
#print axioms staged_residual_a_coefficient_14
theorem staged_residual_a_coefficient_15 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_a.getD 15 []) = true := by rfl
#print axioms staged_residual_a_coefficient_15

end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2
