import CriticalZeroSumDenominatorData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
theorem denominator_coefficient_22 (X Y : K) :
    (denominatorResidual X Y).getD 22 0=0 := by
  simp only [denominatorResidual,commonDenominatorCoefficients,
    denominatorCoefficients,denRaw_00_22,
    CriticalZeroSplitReduction20261003.Coefficients.shift,
    CriticalZeroSplitReduction20261003.Coefficients.add,
    CriticalZeroSplitReduction20261003.Coefficients.scale,
    CriticalZeroSplitReduction20261003.Coefficients.neg,
    Coefficients.mul,Coefficients.pow,List.map,List.replicate,List.append,
    List.getD,List.getElem?_cons_zero,List.getElem?_cons_succ,
    Option.getD_some,zero_mul,mul_zero,add_zero,zero_add,one_mul,mul_one]
  ring
end
#print axioms denominator_coefficient_22
end CriticalZeroSumAssembly20261003
