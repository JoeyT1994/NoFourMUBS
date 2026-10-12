import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage15Exact
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
variable {F : Type*} [Field F] [CharZero F]
def v526 (X Y k : F) : F := (v503 X Y k)+(v525 X Y k)
def s526 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s503 s525
theorem s526_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s526) = v526 X Y k := by
  simp only [s526, v526, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s503_eval, s525_eval]
def v527 (X Y k : F) : F := (P2M4.v003 X Y k)*(P2M4.v035 X Y k)
def s527 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s003 P2M4.s035
theorem s527_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s527) = v527 X Y k := by
  simp only [s527, v527, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s003_eval, P2M4.s035_eval]
def v528 (X Y k : F) : F := (v527 X Y k)*(P2M4.v001 X Y k)
def s528 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s527 P2M4.s001
theorem s528_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s528) = v528 X Y k := by
  simp only [s528, v528, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s527_eval, P2M4.s001_eval]
def v529 (X Y k : F) : F := (v528 X Y k)*(v284 X Y k)
def s529 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s528 s284
theorem s529_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s529) = v529 X Y k := by
  simp only [s529, v529, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s528_eval, s284_eval]
def v530 (X Y k : F) : F := (P2M4.v027 X Y k)*(P2M4.v017 X Y k)
def s530 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s027 P2M4.s017
theorem s530_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s530) = v530 X Y k := by
  simp only [s530, v530, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s027_eval, P2M4.s017_eval]
def v531 (X Y k : F) : F := (v530 X Y k)*(P2M4.v079 X Y k)
def s531 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s530 P2M4.s079
theorem s531_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s531) = v531 X Y k := by
  simp only [s531, v531, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s530_eval, P2M4.s079_eval]
def v532 (X Y k : F) : F := (v531 X Y k)*(v284 X Y k)
def s532 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s531 s284
theorem s532_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s532) = v532 X Y k := by
  simp only [s532, v532, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s531_eval, s284_eval]
def staged_residual_a : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY :=
  CriticalZeroSumAssembly20261003.DenseCoefficients.add s480 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg (CriticalZeroSumAssembly20261003.DenseCoefficients.mul s529 numerator_p2_p2_a_coefficients))
theorem staged_residual_a_length : staged_residual_a.length = 41 := by rfl
theorem staged_residual_a_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y staged_residual_a) =
    v480 X Y k - v529 X Y k *
      CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y numerator_p2_p2_a_coefficients) := by
  simp only [staged_residual_a, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, CriticalZeroSumAssembly20261003.Coefficients.eval_mul,
    s480_eval, s529_eval, sub_eq_add_neg]
def staged_residual_b : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY :=
  CriticalZeroSumAssembly20261003.DenseCoefficients.add s526 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg (CriticalZeroSumAssembly20261003.DenseCoefficients.mul s532 numerator_p2_p2_b_coefficients))
theorem staged_residual_b_length : staged_residual_b.length = 43 := by rfl
theorem staged_residual_b_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y staged_residual_b) =
    v526 X Y k - v532 X Y k *
      CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y numerator_p2_p2_b_coefficients) := by
  simp only [staged_residual_b, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, CriticalZeroSumAssembly20261003.Coefficients.eval_mul,
    s526_eval, s532_eval, sub_eq_add_neg]

end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2
