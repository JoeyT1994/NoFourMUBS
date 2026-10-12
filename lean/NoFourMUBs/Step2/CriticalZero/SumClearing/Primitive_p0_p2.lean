import NoFourMUBs.Step2.CriticalZero.SumClearing.PrimitiveFactors
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def primitive_p0_p2_a_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[0,72,18,-45,9],[0,-150,-60,78,-12],[0,105,63,-39,3],[0,-30,-24,6],[0,3,3]],[],[[0,376,480,-457,69],[400,-1080,-986,716,-90],[-480,631,753,-317,21],[160,-126,-220,42],[-16,7,21]],[],[[0,-336,2866,-1781,237],[3040,-1918,-4772,2638,-300],[-2784,1009,3123,-1079,63],[768,-110,-784,126],[-64,-5,63]],[],[[0,-5040,7024,-3601,465],[8256,992,-10498,5244,-570],[-5856,-289,6477,-2013,105],[1344,210,-1476,210],[-96,-33,105]],[]]
def primitive_p0_p2_a_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[0,-9720,8022,-4191,555],[9504,5166,-12052,6218,-660],[-5280,-2173,7629,-2237,105],[1024,534,-1624,210],[-64,-47,105]],[],[[0,-5832,3888,-2931,399],[3888,3672,-7614,4468,-462],[-1728,-2211,5283,-1487,63],[288,502,-1060,126],[-16,-35,63]],[],[[0,0,486,-1215,159],[0,486,-2700,1818,-180],[0,-1053,2049,-549,21],[0,246,-384,42],[0,-15,21]],[],[[0,0,0,-243,27],[0,0,-486,324,-30],[0,-243,351,-87,3],[0,54,-60,6],[0,-3,3]]]
def primitive_p0_p2_a : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p0_p2_a_part00 ++ primitive_p0_p2_a_part01
theorem primitive_p0_p2_a_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p0_p2_a) = integerNumerator_p0_p2_a X Y k := by
  simp only [primitive_p0_p2_a,primitive_p0_p2_a_part00,primitive_p0_p2_a_part01,integerNumerator_p0_p2_a,numerator_p0_p2_a,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p0_p2_a_eval
def primitive_p0_p2_b_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[0,48,34,-42,8],[0,10,-142,78,-10],[0,-52,98,-32,2],[0,20,-24,4],[0,-2,2]],[],[[-640,608,416,-340,52],[640,280,-1232,568,-64],[-128,-460,724,-212,12],[0,136,-160,24],[0,-12,12]],[],[[-3072,896,1618,-1134,140],[1792,1826,-4254,1702,-170],[-256,-1536,2198,-580,30],[0,380,-440,60],[0,-30,30]],[],[[-3456,-96,3312,-1944,200],[1152,4256,-7600,2688,-240],[-128,-2584,3512,-840,40],[0,560,-640,80],[0,-40,40]]]
def primitive_p0_p2_b_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[0,-432,3750,-1798,160],[0,4590,-7466,2362,-190],[0,-2356,3118,-680,30],[0,460,-520,60],[0,-30,30]],[],[[0,0,2160,-852,68],[0,2376,-3840,1096,-80],[0,-1116,1460,-292,12],[0,200,-224,24],[0,-12,12]],[],[[0,0,486,-162,12],[0,486,-810,210,-14],[0,-216,282,-52,2],[0,36,-40,4],[0,-2,2]]]
def primitive_p0_p2_b : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p0_p2_b_part00 ++ primitive_p0_p2_b_part01
theorem primitive_p0_p2_b_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p0_p2_b) = integerNumerator_p0_p2_b X Y k := by
  simp only [primitive_p0_p2_b,primitive_p0_p2_b_part00,primitive_p0_p2_b_part01,integerNumerator_p0_p2_b,numerator_p0_p2_b,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p0_p2_b_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
