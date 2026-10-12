import NoFourMUBs.Step2.CriticalZero.SumClearing.PrimitiveFactors
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def primitive_p1_m2_a_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[],[0,20,-8],[0,-4]],[],[[-256,160],[0,124,-56],[0,-28]],[],[[-768,928],[0,296,-144],[0,-72]],[],[[0,1632],[0,408,-176],[0,-88]]]
def primitive_p1_m2_a_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[0,864],[0,324,-104],[0,-52]],[],[[],[0,108,-24],[0,-12]]]
def primitive_p1_m2_a : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p1_m2_a_part00 ++ primitive_p1_m2_a_part01
theorem primitive_p1_m2_a_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p1_m2_a) = integerNumerator_p1_m2_a X Y k := by
  simp only [primitive_p1_m2_a,primitive_p1_m2_a_part00,primitive_p1_m2_a_part01,integerNumerator_p1_m2_a,numerator_p1_m2_a,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p1_m2_a_eval
def primitive_p1_m2_b_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[],[[0,32,-20],[0,0,4]],[],[[0,96,-116],[0,0,20]],[],[[0,0,-204],[0,0,28]],[]]
def primitive_p1_m2_b_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[0,0,-108],[0,0,12]]]
def primitive_p1_m2_b : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p1_m2_b_part00 ++ primitive_p1_m2_b_part01
theorem primitive_p1_m2_b_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p1_m2_b) = integerNumerator_p1_m2_b X Y k := by
  simp only [primitive_p1_m2_b,primitive_p1_m2_b_part00,primitive_p1_m2_b_part01,integerNumerator_p1_m2_b,numerator_p1_m2_b,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p1_m2_b_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
