import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage07
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
variable {F : Type*} [Field F] [CharZero F]
theorem residual479_coefficient_40 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (residual479.getD 40 []) = true := by rfl
#print axioms residual479_coefficient_40

end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2
