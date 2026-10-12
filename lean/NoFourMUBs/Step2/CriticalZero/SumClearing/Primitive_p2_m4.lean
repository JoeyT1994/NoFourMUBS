import NoFourMUBs.Step2.CriticalZero.SumClearing.PrimitiveFactors
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
abbrev primitive_p2_m4_a := numerator_p2_m4_a_coefficients
theorem primitive_p2_m4_a_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p2_m4_a) = integerNumerator_p2_m4_a X Y k := by
  have scale (a : ℂ) : a = 4*(a/4) := by ring
  exact scale _
#print axioms primitive_p2_m4_a_eval
abbrev primitive_p2_m4_b := numerator_p2_m4_b_coefficients
theorem primitive_p2_m4_b_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p2_m4_b) = integerNumerator_p2_m4_b X Y k := by
  have scale (a : ℂ) : a = 2*(a/2) := by ring
  exact scale _
#print axioms primitive_p2_m4_b_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
