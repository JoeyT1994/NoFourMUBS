import NoFourMUBs.Step2.CriticalZero.SumClearing.PrimitiveFactors
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def primitive_p2_m2_a_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[0,-810,1377,-693,135,-9],[0,1377,-2286,1095,-198,12],[0,-693,1095,-468,69,-3],[0,135,-198,69,-6],[0,-9,12,-3]],[],[[10368,-15552,5760,-576],[-15552,15756,6485,-6975,1543,-105],[5760,6485,-23262,12311,-2264,138],[-576,-6975,12311,-5290,771,-33],[0,1543,-2264,771,-66],[0,-105,138,-33]],[],[[60672,-115520,43904,-4416],[-115520,142870,19243,-37263,8453,-567],[43904,19243,-127826,68085,-12282,732],[-4416,-37263,68085,-28368,3999,-165],[0,8453,-12282,3999,-330],[0,-567,732,-165]],[],[[249728,-458688,159616,-15168],[-458688,525104,100351,-137781,29133,-1863],[159616,100351,-489794,242157,-41440,2358],[-15168,-137781,242157,-94778,12657,-495],[0,29133,-41440,12657,-990],[0,-1863,2358,-495]],[]]
def primitive_p2_m2_a_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[837120,-1192000,351872,-29760],[-1192000,1025356,475514,-370530,69302,-4122],[351872,475514,-1362444,601846,-95644,5112],[-29760,-370530,601846,-217112,27042,-990],[0,69302,-95644,27042,-1980],[0,-4122,5112,-990]],[],[[1759104,-1951296,485760,-35520],[-1951296,882024,1374946,-718854,117718,-6426],[485760,1374946,-2720876,1071798,-156912,7812],[-35520,-718854,1071798,-354228,40782,-1386],[0,117718,-156912,40782,-2772],[0,-6426,7812,-1386]],[],[[1928448,-1833408,400512,-25536],[-1833408,-389508,2448262,-990126,143802,-7182],[400512,2448262,-3844772,1370586,-185108,8568],[-25536,-990126,1370586,-416080,44142,-1386],[0,143802,-185108,44142,-2772],[0,-7182,8568,-1386]],[],[[839808,-855360,176256,-10176],[-855360,-1663632,2761422,-950778,125098,-5742],[176256,2761422,-3785604,1244330,-156032,6732],[-10176,-950778,1244330,-349348,34194,-990],[0,125098,-156032,34194,-1980],[0,-5742,6732,-990]],[]]
def primitive_p2_m2_a_part02 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[0,-139968,31104,-1728],[-139968,-1591650,1971189,-618681,75443,-3213],[31104,1971189,-2532006,781107,-91710,3708],[-1728,-618681,781107,-204468,18537,-495],[0,75443,-91710,18537,-990],[0,-3213,3708,-495]],[],[[],[0,-691092,856089,-258795,29907,-1197],[0,856089,-1094742,321891,-35704,1362],[0,-258795,321891,-79202,6687,-165],[0,29907,-35704,6687,-330],[0,-1197,1362,-165]],[],[[],[0,-118098,203391,-62451,6993,-267],[0,203391,-275562,78273,-8274,300],[0,-62451,78273,-18240,1443,-33],[0,6993,-8274,1443,-66],[0,-267,300,-33]],[],[[],[0,0,19683,-6561,729,-27],[0,19683,-30618,8505,-864,30],[0,-6561,8505,-1890,141,-3],[0,729,-864,141,-6],[0,-27,30,-3]]]
def primitive_p2_m2_a : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_m2_a_part00 ++ primitive_p2_m2_a_part01 ++ primitive_p2_m2_a_part02
theorem primitive_p2_m2_a_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p2_m2_a) = integerNumerator_p2_m2_a X Y k := by
  simp only [primitive_p2_m2_a,primitive_p2_m2_a_part00,primitive_p2_m2_a_part01,primitive_p2_m2_a_part02,integerNumerator_p2_m2_a,numerator_p2_m2_a,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p2_m2_a_eval
def primitive_p2_m2_b_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[0,-1296,1944,-720,72],[0,1944,-3048,1246,-174,8],[0,-720,1246,-604,120,-10],[0,72,-174,120,-28,2],[0,0,8,-10,2]],[],[[0,-7584,14440,-5488,552],[0,14440,-23992,9848,-1412,68],[0,-5488,9848,-4968,1028,-84],[0,552,-1412,1028,-240,16],[0,0,68,-84,16]],[],[[0,-31216,57336,-19952,1896],[0,57336,-91144,35424,-5044,252],[0,-19952,35424,-18136,3852,-308],[0,1896,-5044,3852,-896,56],[0,0,252,-308,56]],[],[[0,-104640,149000,-43984,3720],[0,149000,-209048,74008,-10292,532],[0,-43984,74008,-37992,8244,-644],[0,3720,-10292,8244,-1904,112],[0,0,532,-644,112]]]
def primitive_p2_m2_b_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[0,-219888,243912,-60720,4440],[0,243912,-296888,95372,-13040,700],[0,-60720,95372,-49584,11020,-840],[0,4440,-13040,11020,-2520,140],[0,0,700,-840,140]],[],[[0,-241056,229176,-50064,3192],[0,229176,-250920,75240,-10444,588],[0,-50064,75240,-41080,9420,-700],[0,3192,-10444,9420,-2128,112],[0,0,588,-700,112]],[],[[0,-104976,106920,-22032,1272],[0,106920,-114264,34128,-5132,308],[0,-22032,34128,-21032,5028,-364],[0,1272,-5132,5028,-1120,56],[0,0,308,-364,56]],[],[[0,0,17496,-3888,216],[0,17496,-21384,7560,-1404,92],[0,-3888,7560,-6072,1532,-108],[0,216,-1404,1532,-336,16],[0,0,92,-108,16]]]
def primitive_p2_m2_b_part02 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[],[0,0,0,486,-162,12],[0,0,486,-756,204,-14],[0,0,-162,204,-44,2],[0,0,12,-14,2]]]
def primitive_p2_m2_b : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_m2_b_part00 ++ primitive_p2_m2_b_part01 ++ primitive_p2_m2_b_part02
theorem primitive_p2_m2_b_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p2_m2_b) = integerNumerator_p2_m2_b X Y k := by
  simp only [primitive_p2_m2_b,primitive_p2_m2_b_part00,primitive_p2_m2_b_part01,primitive_p2_m2_b_part02,integerNumerator_p2_m2_b,numerator_p2_m2_b,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p2_m2_b_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
