import NoFourMUBs.Step2.CriticalZero.SumClearing.PrimitiveFactors
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def primitive_p3_p0_a_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[],[0,720,-744,240,-24],[72,-1719,1530,-438,39],[-27,1080,-717,138,-6],[-198,162,-189,78,-9],[189,-288,129,-18],[-36,45,-9]],[],[[-4608,3840,-768],[7872,48,-4608,1632,-144],[-1992,-12543,11064,-2850,225],[-1191,8184,-4461,678,-18],[-1536,2682,-2181,666,-63],[1725,-2544,1017,-126],[-270,333,-63]],[],[[-13824,10752,-1536],[21696,4320,-15432,4560,-360],[2832,-42951,32694,-7518,531],[-7875,21048,-9405,978,18],[-8442,15138,-9525,2358,-189],[6477,-9360,3393,-378],[-864,1053,-189]],[],[[0,6912,-768],[-1728,21408,-26496,6720,-480],[24624,-68967,48228,-10170,645],[-9687,16392,-5301,-450,150],[-24900,41178,-21573,4530,-315],[13221,-18768,6225,-630],[-1530,1845,-315]]]
def primitive_p3_p0_a_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[],[-15552,20304,-23352,5520,-360],[30888,-45885,36006,-7170,405],[9255,-15768,8913,-2850,270],[-38970,61686,-28047,5130,-315],[15999,-22272,6795,-630],[-1620,1935,-315]],[],[[],[0,3888,-10368,2400,-144],[1944,-5157,10992,-2118,99],[20979,-36792,16353,-3342,234],[-33432,52542,-21207,3438,-189],[11535,-15696,4419,-378],[-1026,1215,-189]],[],[[],[0,0,-1944,432,-24],[0,6075,-918,150,-15],[10935,-24408,10041,-1722,102],[-15174,24006,-8703,1266,-63],[4599,-6096,1587,-126],[-360,423,-63]],[],[[],[],[0,2187,-972,162,-9],[2187,-5832,2241,-342,18],[-2916,4590,-1503,198,-9],[783,-1008,243,-18],[-54,63,-9]]]
def primitive_p3_p0_a : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p3_p0_a_part00 ++ primitive_p3_p0_a_part01
theorem primitive_p3_p0_a_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p3_p0_a) = integerNumerator_p3_p0_a X Y k := by
  simp only [primitive_p3_p0_a,primitive_p3_p0_a_part00,primitive_p3_p0_a_part01,integerNumerator_p3_p0_a,numerator_p3_p0_a,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p3_p0_a_eval
def primitive_p3_p0_b_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[0,0,-90,93,-30,3],[0,-18,258,-228,66,-6],[0,45,-258,180,-42,3],[0,-36,102,-48,6],[0,9,-12,3]],[],[[0,1152,-960,192],[0,-1968,600,549,-234,21],[0,480,2106,-1926,510,-42],[0,813,-2550,1530,-318,21],[0,-546,894,-366,42],[0,69,-90,21]],[],[[0,4608,-3648,576],[0,-7392,1662,2217,-774,63],[0,-210,8970,-6996,1674,-126],[0,5025,-9882,5340,-1026,63],[0,-2268,3198,-1200,126],[0,237,-300,63]],[],[[0,3456,-4416,576],[0,-4992,-1536,5097,-1410,105],[0,-6864,19890,-13686,3030,-210],[0,12441,-19614,10098,-1830,105],[0,-4506,6246,-2190,210],[0,465,-570,105]],[]]
def primitive_p3_p0_b_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[0,0,-1728,192],[0,4320,-5694,6327,-1530,105],[0,-13878,22758,-15516,3270,-210],[0,14103,-21990,11292,-1950,105],[0,-5100,7314,-2400,210],[0,555,-660,105]],[],[[],[0,3888,-3672,4287,-990,63],[0,-8208,13230,-10290,2106,-126],[0,7431,-14274,7518,-1242,63],[0,-3510,5178,-1578,126],[0,399,-462,63]],[],[[],[0,0,-486,1539,-354,21],[0,-486,3726,-3756,750,-42],[0,1755,-5118,2772,-438,21],[0,-1428,2058,-576,42],[0,159,-180,21]],[],[[],[0,0,0,243,-54,3],[0,0,486,-594,114,-6],[0,243,-810,438,-66,3],[0,-270,354,-90,6],[0,27,-30,3]]]
def primitive_p3_p0_b : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p3_p0_b_part00 ++ primitive_p3_p0_b_part01
theorem primitive_p3_p0_b_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p3_p0_b) = integerNumerator_p3_p0_b X Y k := by
  simp only [primitive_p3_p0_b,primitive_p3_p0_b_part00,primitive_p3_p0_b_part01,integerNumerator_p3_p0_b,numerator_p3_p0_b,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p3_p0_b_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
