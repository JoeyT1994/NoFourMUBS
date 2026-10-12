import NoFourMUBs.Step2.CriticalZero.SumClearing.PrimitiveFactors
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def primitive_p1_p1_a_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[],[[-32],[0,4],[4]],[],[[-96],[0,20],[20]],[],[[],[0,28],[28]],[]]
def primitive_p1_p1_a_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[0,12],[12]]]
def primitive_p1_p1_a : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p1_p1_a_part00 ++ primitive_p1_p1_a_part01
theorem primitive_p1_p1_a_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p1_p1_a) = integerNumerator_p1_p1_a X Y k := by
  simp only [primitive_p1_p1_a,primitive_p1_p1_a_part00,primitive_p1_p1_a_part01,integerNumerator_p1_p1_a,numerator_p1_p1_a,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p1_p1_a_eval
def primitive_p1_p1_b_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[0,4],[-4]],[],[[0,16],[-16]],[],[[0,12],[-12]]]
def primitive_p1_p1_b : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p1_p1_b_part00
theorem primitive_p1_p1_b_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p1_p1_b) = integerNumerator_p1_p1_b X Y k := by
  simp only [primitive_p1_p1_b,primitive_p1_p1_b_part00,integerNumerator_p1_p1_b,numerator_p1_p1_b,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p1_p1_b_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
