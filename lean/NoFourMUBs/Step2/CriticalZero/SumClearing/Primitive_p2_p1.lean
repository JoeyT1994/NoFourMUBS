import NoFourMUBs.Step2.CriticalZero.SumClearing.PrimitiveFactors
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def primitive_p2_p1_a_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[],[168,-577,511,-172,23,-1],[-301,890,-652,189,-23,1],[143,-338,149,-18],[10,-13,14,-3],[-8,10,-2]],[],[[3136,-3200,896,-64],[-2504,-1921,3417,-1246,165,-7],[-1625,7510,-5298,1427,-165,7],[1389,-2620,1023,-112],[128,-179,120,-21],[-60,74,-14]],[],[[15168,-12800,2944,-192],[-12720,-6929,12043,-4048,507,-21],[-7333,27538,-17992,4569,-507,21],[4227,-8134,2937,-294],[550,-825,426,-63],[-192,234,-42]],[],[[22464,-16512,3200,-192],[-16848,-22553,24861,-7378,865,-35],[-16233,54142,-33358,8071,-865,35],[5993,-13376,4555,-420],[1228,-1911,820,-105],[-340,410,-70]]]
def primitive_p2_p1_a_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[15552,-6912,1152,-64],[-2808,-36651,29917,-7996,885,-35],[-16191,62222,-36780,8519,-885,35],[4605,-12670,4095,-350],[1622,-2519,930,-105],[-360,430,-70]],[],[[],[1944,-29403,20619,-5122,543,-21],[-8883,43362,-24334,5385,-543,21],[2295,-6892,2109,-168],[1288,-1929,624,-63],[-228,270,-42]],[],[[],[0,-11907,7641,-1800,185,-7],[-5103,17766,-9024,1891,-185,7],[945,-1962,563,-42],[570,-803,230,-21],[-80,94,-14]],[],[[],[0,-2187,1215,-270,27,-1],[-2187,3402,-1458,285,-27,1],[243,-216,57,-4],[108,-141,36,-3],[-12,14,-2]]]
def primitive_p2_p1_a : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_p1_a_part00 ++ primitive_p2_p1_a_part01
theorem primitive_p2_p1_a_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p2_p1_a) = integerNumerator_p2_p1_a X Y k := by
  simp only [primitive_p2_p1_a,primitive_p2_p1_a_part00,primitive_p2_p1_a_part01,integerNumerator_p2_p1_a,numerator_p2_p1_a,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p2_p1_a_eval
def primitive_p2_p1_b_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[0,-42,83,-53,13,-1],[-18,102,-143,73,-15,1],[27,-75,67,-21,2],[-9,15,-7,1]],[],[[0,-784,800,-224,16],[0,584,-27,-249,83,-7],[-480,1106,-1367,623,-113,7],[453,-859,581,-157,14],[-69,113,-51,7]],[],[[0,-4576,4000,-960,64],[0,3806,-753,-761,257,-21],[-2866,5382,-5347,2181,-363,21],[1975,-3367,2047,-505,42],[-237,379,-163,21]],[],[[0,-9408,7328,-1536,96],[0,7392,-295,-1781,479,-35],[-7024,12642,-10931,4131,-645,35],[3929,-6687,3913,-905,70],[-465,725,-295,35]],[]]
def primitive_p2_p1_b_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[0,-9504,5856,-1088,64],[0,4914,2361,-2607,551,-35],[-8022,15266,-12749,4619,-685,35],[4177,-7729,4457,-975,70],[-555,845,-325,35]],[],[[0,-3888,1728,-288,16],[0,216,3471,-2123,377,-21],[-3888,9702,-8629,3069,-435,21],[2607,-5425,3055,-631,42],[-399,595,-217,21]],[],[[],[0,-486,1701,-867,139,-7],[-486,3186,-3201,1127,-153,7],[1053,-2205,1173,-227,14],[-159,233,-81,7]],[],[[],[0,0,243,-135,21,-1],[0,486,-513,177,-23,1],[243,-405,195,-35,2],[-27,39,-13,1]]]
def primitive_p2_p1_b : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_p1_b_part00 ++ primitive_p2_p1_b_part01
theorem primitive_p2_p1_b_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p2_p1_b) = integerNumerator_p2_p1_b X Y k := by
  simp only [primitive_p2_p1_b,primitive_p2_p1_b_part00,primitive_p2_p1_b_part01,integerNumerator_p2_p1_b,numerator_p2_p1_b,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p2_p1_b_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
