import NoFourMUBs.Step2.CriticalZero.SumClearing.PrimitiveFactors
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def primitive_p1_m3_a_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[0,0,240,-396,168,-9,-3],[0,0,-188,204,13,-33,4],[0,0,-12,81,-89,21,-1],[0,0,43,-71,31,-3],[0,0,-12,15,-3],[0,0,1,-1]],[],[[0,-3072,3456,-1776,1008,-192],[0,-2048,5648,-2628,-858,398,-32],[0,3680,-4148,-1104,1932,-498,42],[0,-768,-694,2562,-1316,226,-10],[0,-128,836,-1014,336,-30],[0,32,-164,162,-30],[0,0,10,-10]],[],[[24576,-33792,11904,-7600,8912,-1440],[-15360,-24576,49360,3296,-15542,3323,-157],[-1024,32608,-19312,-23852,15511,-2845,202],[1024,-4480,-9398,18829,-7467,1097,-45],[0,-1344,5521,-5651,1633,-135],[0,224,-872,783,-135],[0,0,45,-45]],[],[[73728,-48128,-29952,-34544,32048,-4608],[-27648,-136192,144912,74880,-67592,11304,-464],[-11264,101344,-14000,-115408,55184,-8920,584],[3072,-5376,-46248,66312,-23296,3160,-120],[0,-5376,18560,-17384,4688,-360],[0,672,-2544,2232,-360],[0,0,120,-120]],[]]
def primitive_p1_m3_a_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[0,82944,-96000,-103216,63120,-8160],[15360,-267264,141488,261672,-148104,21598,-910],[-19456,129760,85048,-276728,112818,-17682,1120],[3072,10368,-115920,136674,-45850,5978,-210],[0,-11200,37006,-33726,8806,-630],[0,1120,-4648,4158,-630],[0,0,210,-210]],[],[[0,165888,-47232,-159312,74960,-8640],[27648,-181248,-51536,438680,-189356,25876,-1232],[-9216,54560,233672,-384560,146504,-23660,1484],[1024,33536,-167972,179516,-60648,7756,-252],[0,-13440,46952,-43876,11312,-756],[0,1120,-5656,5292,-756],[0,0,252,-252]],[],[[0,0,10368,-131472,54128,-5472],[0,-27648,-201360,402240,-146900,20478,-1162],[0,-23520,259536,-324232,126622,-21938,1372],[0,35712,-147060,156162,-55286,6986,-210],[0,-9408,39106,-39214,10066,-630],[0,672,-4704,4662,-630],[0,0,210,-210]],[],[[0,0,0,-58320,22032,-1920],[0,0,-148176,196704,-68520,11048,-752],[0,-28512,140880,-165104,74256,-14040,872],[0,17664,-77672,90984,-34592,4312,-120],[0,-3584,21536,-23976,6128,-360],[0,224,-2672,2808,-360],[0,0,120,-120]],[]]
def primitive_p1_m3_a_part02 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[0,0,0,-11664,3888,-288],[0,0,-38880,41796,-18864,4139,-319],[0,-7776,32292,-49236,29329,-5965,364],[0,3456,-24084,34957,-14301,1745,-45],[0,-576,7735,-9659,2443,-135],[0,32,-1004,1107,-135],[0,0,45,-45]],[],[[],[0,0,0,972,-3402,1038,-80],[0,0,972,-8640,7308,-1522,90],[0,0,-4374,8274,-3540,418,-10],[0,0,1716,-2326,576,-30],[0,0,-228,258,-30],[0,0,10,-10]],[],[[],[0,0,0,0,-486,135,-9],[0,0,0,-972,891,-177,10],[0,0,-486,945,-399,45,-1],[0,0,189,-255,61,-3],[0,0,-24,27,-3],[0,0,1,-1]]]
def primitive_p1_m3_a : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p1_m3_a_part00 ++ primitive_p1_m3_a_part01 ++ primitive_p1_m3_a_part02
theorem primitive_p1_m3_a_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p1_m3_a) = integerNumerator_p1_m3_a X Y k := by
  simp only [primitive_p1_m3_a,primitive_p1_m3_a_part00,primitive_p1_m3_a_part01,primitive_p1_m3_a_part02,integerNumerator_p1_m3_a,numerator_p1_m3_a,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p1_m3_a_eval
def primitive_p1_m3_b_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[0,0,192,-216,111,-63,12],[0,0,8,-92,-50,89,-15],[0,0,-131,131,70,-45,3],[0,0,38,-13,-36,7],[0,0,2,-7,5],[0,0,-1,1]],[],[[0,-1536,2112,-744,475,-557,90],[0,960,600,-1764,-652,791,-111],[0,64,-1375,961,780,-355,21],[0,-64,272,29,-302,49],[0,0,30,-65,35],[0,0,-7,7]],[],[[0,-4608,3008,1872,2159,-2003,288],[0,1728,5776,-6420,-3726,2909,-351],[0,704,-4699,1951,3330,-1185,63],[0,-192,554,519,-1056,147],[0,0,138,-243,105],[0,0,-21,21]],[],[[0,0,-5184,6000,6451,-3945,510],[0,-960,12912,-8012,-10424,5827,-615],[0,1216,-6463,341,7448,-2175,105],[0,-192,212,1721,-2010,245],[0,0,310,-485,175],[0,0,-35,35]]]
def primitive_p1_m3_b_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[0,0,-10368,2952,9957,-4685,540],[0,-1728,8808,-1956,-15982,6923,-645],[0,576,-3377,-3767,9642,-2375,105],[0,-64,-646,2729,-2260,245],[0,0,390,-565,175],[0,0,-35,35]],[],[[0,0,0,-648,8217,-3383,342],[0,0,1080,3684,-13932,4901,-405],[0,0,171,-5501,7308,-1545,63],[0,0,-952,2343,-1506,147],[0,0,282,-387,105],[0,0,-21,21]],[],[[0,0,0,0,3645,-1377,120],[0,0,0,3348,-6546,1919,-141],[0,0,783,-3243,3022,-555,21],[0,0,-522,1053,-552,49],[0,0,110,-145,35],[0,0,-7,7]],[],[[0,0,0,0,729,-243,18],[0,0,0,972,-1296,321,-21],[0,0,243,-729,528,-85,3],[0,0,-108,195,-86,7],[0,0,18,-23,5],[0,0,-1,1]]]
def primitive_p1_m3_b : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p1_m3_b_part00 ++ primitive_p1_m3_b_part01
theorem primitive_p1_m3_b_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p1_m3_b) = integerNumerator_p1_m3_b X Y k := by
  simp only [primitive_p1_m3_b,primitive_p1_m3_b_part00,primitive_p1_m3_b_part01,integerNumerator_p1_m3_b,numerator_p1_m3_b,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p1_m3_b_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
