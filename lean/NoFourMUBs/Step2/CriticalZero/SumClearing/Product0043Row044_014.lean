import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Inputs

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000

namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
open CriticalZeroSplitReduction20261003
open CriticalZeroSumAssembly20261003

theorem n0043_row_044_014 :
    IntegerReflector.zeroI (Coefficients.add
      (CoefficientRow.mulAtRow n0041 Expressions.e0042 44 14)
      (Coefficients.neg ((n0043.getD 44 []).getD 14 []))) = true := by rfl

#print axioms n0043_row_044_014
end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
