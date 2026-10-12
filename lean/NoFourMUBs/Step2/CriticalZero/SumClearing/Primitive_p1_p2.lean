import NoFourMUBs.Step2.CriticalZero.SumClearing.PrimitiveFactors
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def primitive_p1_p2_a_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[0,-72,108,-36],[0,107,-157,70,-8],[-245,318,-70,-41,10],[299,-360,65,18,-2],[-120,129,-10,-3],[19,-19],[-1,1]],[],[[0,-1848,1704,-240],[0,2391,-1747,520,-60],[-2361,2614,-564,-355,74],[2633,-3098,479,144,-14],[-966,1035,-64,-21],[141,-141],[-7,7]],[],[[0,-9616,6196,-708],[0,10179,-6105,1674,-192],[-9501,11046,-2002,-1301,234],[9783,-11468,1461,486,-42],[-3300,3509,-174,-63],[447,-447],[-21,21]],[],[[0,-18480,9520,-1152],[0,16823,-10423,3004,-340],[-21161,26910,-3856,-2615,410],[19997,-23358,2411,900,-70],[-6210,6551,-260,-105],[785,-785],[-35,35]]]
def primitive_p1_p2_a_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[0,-13608,7188,-1068],[0,11817,-9895,3226,-360],[-28599,38458,-4362,-3115,430],[24353,-28304,2339,990,-70],[-6960,7299,-230,-105],[825,-825],[-35,35]],[],[[0,-1944,3240,-528],[0,1917,-4905,2064,-228],[-23571,32610,-2980,-2201,270],[17691,-20534,1341,648,-42],[-4650,4865,-120,-63],[519,-519],[-21,21]],[],[[0,0,972,-108],[0,-3159,-675,726,-80],[-10935,15714,-1182,-855,94],[7101,-8316,423,234,-14],[-1716,1799,-34,-21],[181,-181],[-7,7]],[],[[],[0,-2187,243,108,-12],[-2187,3402,-216,-141,14],[1215,-1458,57,36,-2],[-270,285,-4,-3],[27,-27],[-1,1]]]
def primitive_p1_p2_a : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p1_p2_a_part00 ++ primitive_p1_p2_a_part01
theorem primitive_p1_p2_a_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p1_p2_a) = integerNumerator_p1_p2_a X Y k := by
  simp only [primitive_p1_p2_a,primitive_p1_p2_a_part00,primitive_p1_p2_a_part01,integerNumerator_p1_p2_a,numerator_p1_p2_a,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p1_p2_a_eval
def primitive_p1_p2_b_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[0,0,18,-27,9],[0,42,-102,75,-15],[0,-83,143,-67,7],[0,53,-73,21,-1],[0,-13,15,-2],[0,1,-1]],[],[[0,0,480,-453,69],[784,-584,-1106,859,-113],[-800,27,1367,-581,51],[224,249,-623,157,-7],[-16,-83,113,-14],[0,7,-7]],[],[[0,0,2866,-1975,237],[4576,-3806,-5382,3367,-379],[-4000,753,5347,-2047,163],[960,761,-2181,505,-21],[-64,-257,363,-42],[0,21,-21]],[],[[0,0,7024,-3929,465],[9408,-7392,-12642,6687,-725],[-7328,295,10931,-3913,295],[1536,1781,-4131,905,-35],[-96,-479,645,-70],[0,35,-35]],[]]
def primitive_p1_p2_b_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[0,0,8022,-4177,555],[9504,-4914,-15266,7729,-845],[-5856,-2361,12749,-4457,325],[1088,2607,-4619,975,-35],[-64,-551,685,-70],[0,35,-35]],[],[[0,0,3888,-2607,399],[3888,-216,-9702,5425,-595],[-1728,-3471,8629,-3055,217],[288,2123,-3069,631,-21],[-16,-377,435,-42],[0,21,-21]],[],[[0,0,486,-1053,159],[0,486,-3186,2205,-233],[0,-1701,3201,-1173,81],[0,867,-1127,227,-7],[0,-139,153,-14],[0,7,-7]],[],[[0,0,0,-243,27],[0,0,-486,405,-39],[0,-243,513,-195,13],[0,135,-177,35,-1],[0,-21,23,-2],[0,1,-1]]]
def primitive_p1_p2_b : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p1_p2_b_part00 ++ primitive_p1_p2_b_part01
theorem primitive_p1_p2_b_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p1_p2_b) = integerNumerator_p1_p2_b X Y k := by
  simp only [primitive_p1_p2_b,primitive_p1_p2_b_part00,primitive_p1_p2_b_part01,integerNumerator_p1_p2_b,numerator_p1_p2_b,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p1_p2_b_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
