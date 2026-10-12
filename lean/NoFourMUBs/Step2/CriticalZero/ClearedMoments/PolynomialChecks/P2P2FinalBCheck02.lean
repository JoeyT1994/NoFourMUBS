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
theorem staged_residual_b_coefficient_08 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_b.getD 8 []) = true := by rfl
#print axioms staged_residual_b_coefficient_08
theorem staged_residual_b_coefficient_09 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_b.getD 9 []) = true := by rfl
#print axioms staged_residual_b_coefficient_09
theorem staged_residual_b_coefficient_10 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_b.getD 10 []) = true := by rfl
#print axioms staged_residual_b_coefficient_10
theorem staged_residual_b_coefficient_11 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_b.getD 11 []) = true := by rfl
#print axioms staged_residual_b_coefficient_11

end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2
