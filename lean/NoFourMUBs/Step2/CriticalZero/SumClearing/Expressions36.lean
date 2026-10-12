import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions35
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e1728 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1727 e0117
def v1728 (X Y k : ℂ) : ℂ := (v1727 X Y k)*(v0117 X Y k)
theorem e1728_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1728) = v1728 X Y k := by
  simp only [e1728,v1728,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1727_eval,e0117_eval]
def e1729 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1728 e0119
def v1729 (X Y k : ℂ) : ℂ := (v1728 X Y k)*(v0119 X Y k)
theorem e1729_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1729) = v1729 X Y k := by
  simp only [e1729,v1729,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1728_eval,e0119_eval]
def e1730 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1721 e1729
def v1730 (X Y k : ℂ) : ℂ := (v1721 X Y k)*(v1729 X Y k)
theorem e1730_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1730) = v1730 X Y k := by
  simp only [e1730,v1730,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1721_eval,e1729_eval]
def e1731 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0004
def v1731 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0004 X Y k)
theorem e1731_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1731) = v1731 X Y k := by
  simp only [e1731,v1731,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0004_eval]
def e1732 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1731 e0007
def v1732 (X Y k : ℂ) : ℂ := (v1731 X Y k)*(v0007 X Y k)
theorem e1732_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1732) = v1732 X Y k := by
  simp only [e1732,v1732,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1731_eval,e0007_eval]
def e1733 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e1732 e0791
def v1733 (X Y k : ℂ) : ℂ := (v1732 X Y k)*(v0791 X Y k)
theorem e1733_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e1733) = v1733 X Y k := by
  simp only [e1733,v1733,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e1732_eval,e0791_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
