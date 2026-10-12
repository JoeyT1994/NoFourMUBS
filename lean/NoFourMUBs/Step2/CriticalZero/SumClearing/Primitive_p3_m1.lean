import NoFourMUBs.Step2.CriticalZero.SumClearing.PrimitiveFactors
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def primitive_p3_m1_a_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[],[0,240,-188,-12,43,-12,1],[0,-396,204,81,-71,15,-1],[0,168,13,-89,31,-3],[0,-9,-33,21,-3],[0,-3,4,-1]],[],[[],[-3072,-2048,3680,-768,-128,32],[3456,5648,-4148,-694,836,-164,10],[-1776,-2628,-1104,2562,-1014,162,-10],[1008,-858,1932,-1316,336,-30],[-192,398,-498,226,-30],[0,-32,42,-10]],[],[[24576,-15360,-1024,1024],[-33792,-24576,32608,-4480,-1344,224],[11904,49360,-19312,-9398,5521,-872,45],[-7600,3296,-23852,18829,-5651,783,-45],[8912,-15542,15511,-7467,1633,-135],[-1440,3323,-2845,1097,-135],[0,-157,202,-45]],[],[[73728,-27648,-11264,3072],[-48128,-136192,101344,-5376,-5376,672],[-29952,144912,-14000,-46248,18560,-2544,120],[-34544,74880,-115408,66312,-17384,2232,-120],[32048,-67592,55184,-23296,4688,-360],[-4608,11304,-8920,3160,-360],[0,-464,584,-120]],[]]
def primitive_p3_m1_a_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[0,15360,-19456,3072],[82944,-267264,129760,10368,-11200,1120],[-96000,141488,85048,-115920,37006,-4648,210],[-103216,261672,-276728,136674,-33726,4158,-210],[63120,-148104,112818,-45850,8806,-630],[-8160,21598,-17682,5978,-630],[0,-910,1120,-210]],[],[[0,27648,-9216,1024],[165888,-181248,54560,33536,-13440,1120],[-47232,-51536,233672,-167972,46952,-5656,252],[-159312,438680,-384560,179516,-43876,5292,-252],[74960,-189356,146504,-60648,11312,-756],[-8640,25876,-23660,7756,-756],[0,-1232,1484,-252]],[],[[],[0,-27648,-23520,35712,-9408,672],[10368,-201360,259536,-147060,39106,-4704,210],[-131472,402240,-324232,156162,-39214,4662,-210],[54128,-146900,126622,-55286,10066,-630],[-5472,20478,-21938,6986,-630],[0,-1162,1372,-210]],[],[[],[0,0,-28512,17664,-3584,224],[0,-148176,140880,-77672,21536,-2672,120],[-58320,196704,-165104,90984,-23976,2808,-120],[22032,-68520,74256,-34592,6128,-360],[-1920,11048,-14040,4312,-360],[0,-752,872,-120]],[]]
def primitive_p3_m1_a_part02 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[0,0,-7776,3456,-576,32],[0,-38880,32292,-24084,7735,-1004,45],[-11664,41796,-49236,34957,-9659,1107,-45],[3888,-18864,29329,-14301,2443,-135],[-288,4139,-5965,1745,-135],[0,-319,364,-45]],[],[[],[],[0,0,972,-4374,1716,-228,10],[0,972,-8640,8274,-2326,258,-10],[0,-3402,7308,-3540,576,-30],[0,1038,-1522,418,-30],[0,-80,90,-10]],[],[[],[],[0,0,0,-486,189,-24,1],[0,0,-972,945,-255,27,-1],[0,-486,891,-399,61,-3],[0,135,-177,45,-3],[0,-9,10,-1]]]
def primitive_p3_m1_a : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p3_m1_a_part00 ++ primitive_p3_m1_a_part01 ++ primitive_p3_m1_a_part02
theorem primitive_p3_m1_a_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p3_m1_a) = integerNumerator_p3_m1_a X Y k := by
  simp only [primitive_p3_m1_a,primitive_p3_m1_a_part00,primitive_p3_m1_a_part01,primitive_p3_m1_a_part02,integerNumerator_p3_m1_a,numerator_p3_m1_a,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p3_m1_a_eval
def primitive_p3_m1_b_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[],[0,192,8,-131,38,2,-1],[0,-216,-92,131,-13,-7,1],[0,111,-50,70,-36,5],[0,-63,89,-45,7],[0,12,-15,3]],[],[[0,-1536,960,64,-64],[0,2112,600,-1375,272,30,-7],[0,-744,-1764,961,29,-65,7],[0,475,-652,780,-302,35],[0,-557,791,-355,49],[0,90,-111,21]],[],[[0,-4608,1728,704,-192],[0,3008,5776,-4699,554,138,-21],[0,1872,-6420,1951,519,-243,21],[0,2159,-3726,3330,-1056,105],[0,-2003,2909,-1185,147],[0,288,-351,63]],[],[[0,0,-960,1216,-192],[0,-5184,12912,-6463,212,310,-35],[0,6000,-8012,341,1721,-485,35],[0,6451,-10424,7448,-2010,175],[0,-3945,5827,-2175,245],[0,510,-615,105]]]
def primitive_p3_m1_b_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[0,0,-1728,576,-64],[0,-10368,8808,-3377,-646,390,-35],[0,2952,-1956,-3767,2729,-565,35],[0,9957,-15982,9642,-2260,175],[0,-4685,6923,-2375,245],[0,540,-645,105]],[],[[],[0,0,1080,171,-952,282,-21],[0,-648,3684,-5501,2343,-387,21],[0,8217,-13932,7308,-1506,105],[0,-3383,4901,-1545,147],[0,342,-405,63]],[],[[],[0,0,0,783,-522,110,-7],[0,0,3348,-3243,1053,-145,7],[0,3645,-6546,3022,-552,35],[0,-1377,1919,-555,49],[0,120,-141,21]],[],[[],[0,0,0,243,-108,18,-1],[0,0,972,-729,195,-23,1],[0,729,-1296,528,-86,5],[0,-243,321,-85,7],[0,18,-21,3]]]
def primitive_p3_m1_b : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p3_m1_b_part00 ++ primitive_p3_m1_b_part01
theorem primitive_p3_m1_b_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p3_m1_b) = integerNumerator_p3_m1_b X Y k := by
  simp only [primitive_p3_m1_b,primitive_p3_m1_b_part00,primitive_p3_m1_b_part01,integerNumerator_p3_m1_b,numerator_p3_m1_b,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p3_m1_b_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
