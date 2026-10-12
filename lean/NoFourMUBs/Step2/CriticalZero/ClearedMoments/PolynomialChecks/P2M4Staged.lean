import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage15Exact
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
variable {F : Type*} [Field F] [CharZero F]
def s274 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s255 s273
theorem s274_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s274) = v274 X Y k := by
  simp only [s274, v274, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s255_eval, s273_eval]
def s275 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s003 s001
theorem s275_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s275) = v275 X Y k := by
  simp only [s275, v275, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s003_eval, s001_eval]
def s276 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s275 s000
theorem s276_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s276) = v276 X Y k := by
  simp only [s276, v276, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s275_eval, s000_eval]
def s277 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s276 s012
theorem s277_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s277) = v277 X Y k := by
  simp only [s277, v277, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s276_eval, s012_eval]
def s278 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s027 s079
theorem s278_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s278) = v278 X Y k := by
  simp only [s278, v278, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s027_eval, s079_eval]
def s279 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s278 s000
theorem s279_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s279) = v279 X Y k := by
  simp only [s279, v279, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s278_eval, s000_eval]
def s280 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s279 s017
theorem s280_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s280) = v280 X Y k := by
  simp only [s280, v280, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s279_eval, s017_eval]
def staged_residual_a : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY :=
  CriticalZeroSumAssembly20261003.DenseCoefficients.add s231 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg (CriticalZeroSumAssembly20261003.DenseCoefficients.mul s277 numerator_p2_m4_a_coefficients))
theorem staged_residual_a_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y staged_residual_a) =
    v231 X Y k - v277 X Y k *
      CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y numerator_p2_m4_a_coefficients) := by
  simp only [staged_residual_a, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, CriticalZeroSumAssembly20261003.Coefficients.eval_mul,
    s231_eval, s277_eval, sub_eq_add_neg]
def staged_residual_b : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY :=
  CriticalZeroSumAssembly20261003.DenseCoefficients.add s274 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg (CriticalZeroSumAssembly20261003.DenseCoefficients.mul s280 numerator_p2_m4_b_coefficients))
theorem staged_residual_b_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y staged_residual_b) =
    v274 X Y k - v280 X Y k *
      CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y numerator_p2_m4_b_coefficients) := by
  simp only [staged_residual_b, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, CriticalZeroSumAssembly20261003.Coefficients.eval_mul,
    s274_eval, s280_eval, sub_eq_add_neg]

end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
