import NoFourMUBs.Step2.CriticalZero.SumClearing.PrimitiveFactors
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def primitive_p2_m1_a_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[],[0,20,-4],[0,-8]],[],[[-256],[160,124,-28],[0,-56]],[],[[-768],[928,296,-72],[0,-144]],[],[[],[1632,408,-88],[0,-176]]]
def primitive_p2_m1_a_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[],[864,324,-52],[0,-104]],[],[[],[0,108,-12],[0,-24]]]
def primitive_p2_m1_a : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_m1_a_part00 ++ primitive_p2_m1_a_part01
theorem primitive_p2_m1_a_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p2_m1_a) = integerNumerator_p2_m1_a X Y k := by
  simp only [primitive_p2_m1_a,primitive_p2_m1_a_part00,primitive_p2_m1_a_part01,integerNumerator_p2_m1_a,numerator_p2_m1_a,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p2_m1_a_eval
def primitive_p2_m1_b_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[],[[0,32],[0,-20,4]],[],[[0,96],[0,-116,20]],[],[[],[0,-204,28]],[]]
def primitive_p2_m1_b_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[0,-108,12]]]
def primitive_p2_m1_b : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_m1_b_part00 ++ primitive_p2_m1_b_part01
theorem primitive_p2_m1_b_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p2_m1_b) = integerNumerator_p2_m1_b X Y k := by
  simp only [primitive_p2_m1_b,primitive_p2_m1_b_part00,primitive_p2_m1_b_part01,integerNumerator_p2_m1_b,numerator_p2_m1_b,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p2_m1_b_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
