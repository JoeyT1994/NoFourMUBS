import NoFourMUBs.Step2.CriticalZero.SumClearing.Stage0000Data
import NoFourMUBs.Step2.CriticalZero.SumClearing.Stage0000Factors
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
theorem n0020_coefficient_023 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (CriticalZeroSplitReduction20261003.Coefficients.add2 (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt n0017 n0019 23)
      (CriticalZeroSplitReduction20261003.Coefficients.neg2 (n0020.getD 23 []))) = true := by rfl
#print axioms n0020_coefficient_023
end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
