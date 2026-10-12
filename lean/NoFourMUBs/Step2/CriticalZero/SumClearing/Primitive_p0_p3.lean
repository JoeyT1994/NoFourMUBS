import NoFourMUBs.Step2.CriticalZero.SumClearing.PrimitiveFactors
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def primitive_p0_p3_a_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[0,0,153,-342,225,-36],[360,-687,48,570,-336,45],[-372,618,3,-381,141,-9],[120,-174,-30,102,-18],[-12,15,6,-9]],[],[[0,0,1728,-3234,1740,-234],[2448,-4464,-1032,5280,-2520,288],[-2412,3654,936,-3072,948,-54],[696,-900,-396,708,-108],[-60,66,48,-54]],[],[[0,0,7425,-12240,5445,-630],[5760,-9999,-8280,19482,-7728,765],[-5976,7848,5619,-9981,2625,-135],[1584,-1698,-1626,2010,-270],[-120,105,150,-135]],[],[[0,0,15624,-23652,8928,-900],[5616,-7896,-23424,37056,-12432,1080],[-7176,6828,13512,-16824,3840,-180],[1776,-1272,-3144,3000,-360],[-120,60,240,-180]]]
def primitive_p0_p3_a_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[0,0,17307,-24726,8139,-720],[1944,1971,-32208,38526,-11088,855],[-4212,666,16137,-15591,3135,-135],[984,-18,-3186,2490,-270],[-60,-15,210,-135]],[],[[0,0,9720,-13338,3924,-306],[0,5832,-21816,20832,-5208,360],[-972,-2322,9552,-7560,1356,-54],[216,444,-1644,1092,-108],[-12,-30,96,-54]],[],[[0,0,2187,-2916,783,-54],[0,2187,-5832,4590,-1008,63],[0,-972,2241,-1503,243,-9],[0,162,-342,198,-18],[0,-9,18,-9]]]
def primitive_p0_p3_a : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p0_p3_a_part00 ++ primitive_p0_p3_a_part01
theorem primitive_p0_p3_a_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p0_p3_a) = integerNumerator_p0_p3_a X Y k := by
  simp only [primitive_p0_p3_a,primitive_p0_p3_a_part00,primitive_p0_p3_a_part01,integerNumerator_p0_p3_a,numerator_p0_p3_a,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p0_p3_a_eval
def primitive_p0_p3_b_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[0,0,18,-45,36,-9],[0,90,-258,258,-102,12],[0,-93,228,-180,48,-3],[0,30,-66,42,-6],[0,-3,6,-3]],[],[[-1152,1968,-480,-813,546,-69],[960,-600,-2106,2550,-894,90],[-192,-549,1926,-1530,366,-21],[0,234,-510,318,-42],[0,-21,42,-21]],[],[[-4608,7392,210,-5025,2268,-237],[3648,-1662,-8970,9882,-3198,300],[-576,-2217,6996,-5340,1200,-63],[0,774,-1674,1026,-126],[0,-63,126,-63]],[],[[-3456,4992,6864,-12441,4506,-465],[4416,1536,-19890,19614,-6246,570],[-576,-5097,13686,-10098,2190,-105],[0,1410,-3030,1830,-210],[0,-105,210,-105]],[]]
def primitive_p0_p3_b_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[0,-4320,13878,-14103,5100,-555],[1728,5694,-22758,21990,-7314,660],[-192,-6327,15516,-11292,2400,-105],[0,1530,-3270,1950,-210],[0,-105,210,-105]],[],[[0,-3888,8208,-7431,3510,-399],[0,3672,-13230,14274,-5178,462],[0,-4287,10290,-7518,1578,-63],[0,990,-2106,1242,-126],[0,-63,126,-63]],[],[[0,0,486,-1755,1428,-159],[0,486,-3726,5118,-2058,180],[0,-1539,3756,-2772,576,-21],[0,354,-750,438,-42],[0,-21,42,-21]],[],[[0,0,0,-243,270,-27],[0,0,-486,810,-354,30],[0,-243,594,-438,90,-3],[0,54,-114,66,-6],[0,-3,6,-3]]]
def primitive_p0_p3_b : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p0_p3_b_part00 ++ primitive_p0_p3_b_part01
theorem primitive_p0_p3_b_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p0_p3_b) = integerNumerator_p0_p3_b X Y k := by
  simp only [primitive_p0_p3_b,primitive_p0_p3_b_part00,primitive_p0_p3_b_part01,integerNumerator_p0_p3_b,numerator_p0_p3_b,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p0_p3_b_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
