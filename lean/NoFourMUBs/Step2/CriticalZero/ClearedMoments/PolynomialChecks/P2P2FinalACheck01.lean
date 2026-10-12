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
theorem staged_residual_a_coefficient_04 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_a.getD 4 []) = true := by rfl
#print axioms staged_residual_a_coefficient_04
theorem staged_residual_a_coefficient_05 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_a.getD 5 []) = true := by rfl
#print axioms staged_residual_a_coefficient_05
theorem staged_residual_a_coefficient_06 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_a.getD 6 []) = true := by rfl
#print axioms staged_residual_a_coefficient_06
theorem staged_residual_a_coefficient_07 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_a.getD 7 []) = true := by rfl
#print axioms staged_residual_a_coefficient_07

end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2
