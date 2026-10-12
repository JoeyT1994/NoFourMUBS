import NoFourMUBs.Step2.CriticalZero.SumClearing.PrimitiveFactors
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def primitive_p2_p0_a_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[],[72,-150,105,-30,3],[18,-60,63,-24,3],[-45,78,-39,6],[9,-12,3]],[],[[],[384,480,-896,320,-32],[792,-2516,1625,-378,29],[180,-482,623,-236,27],[-483,792,-379,54],[87,-114,27]],[],[[-5120,5120,-1024],[4864,6080,-7424,2176,-192],[3816,-14084,8168,-1672,108],[1124,-2260,2996,-1056,108],[-2324,3636,-1656,216],[384,-492,108]],[],[[-24576,14336,-2048],[7168,29344,-24192,6080,-480],[7608,-37956,19944,-3656,204],[4164,-7412,8836,-2784,252],[-6500,9876,-4248,504],[1008,-1260,252]],[]]
def primitive_p2_p0_a_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[-27648,9216,-1024],[-768,63104,-40448,8960,-640],[6360,-55568,26354,-4276,202],[9384,-16316,16986,-4720,378],[-11574,17424,-7022,756],[1722,-2100,378]],[],[[],[-3456,67872,-36992,7360,-480],[-312,-44732,18098,-2380,78],[12572,-23320,21578,-5304,378],[-13634,20628,-7734,756],[1974,-2352,378]],[],[[],[0,36288,-17664,3200,-192],[-4104,-17724,4032,-8,-36],[9468,-21212,17908,-3936,252],[-10724,16332,-5664,504],[1512,-1764,252]],[],[[],[0,7776,-3456,576,-32],[-1944,-1836,-2304,728,-52],[3564,-11820,9316,-1856,108],[-5508,8316,-2656,216],[744,-852,108]],[]]
def primitive_p2_p0_a_part02 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[],[0,486,-1539,354,-21],[486,-3672,2751,-504,27],[-1701,2466,-723,54],[213,-240,27]],[],[[],[],[0,0,-243,54,-3],[0,-486,351,-60,3],[-243,324,-87,6],[27,-30,3]]]
def primitive_p2_p0_a : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_p0_a_part00 ++ primitive_p2_p0_a_part01 ++ primitive_p2_p0_a_part02
theorem primitive_p2_p0_a_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p2_p0_a) = integerNumerator_p2_p0_a X Y k := by
  simp only [primitive_p2_p0_a,primitive_p2_p0_a_part00,primitive_p2_p0_a_part01,primitive_p2_p0_a_part02,integerNumerator_p2_p0_a,numerator_p2_p0_a,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p2_p0_a_eval
def primitive_p2_p0_b_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[],[0,-48,-10,52,-20,2],[0,-34,142,-98,24,-2],[0,42,-78,32,-4],[0,-8,10,-2]],[],[[0,640,-640,128],[0,-608,-280,460,-136,12],[0,-416,1232,-724,160,-12],[0,340,-568,212,-24],[0,-52,64,-12]],[],[[0,3072,-1792,256],[0,-896,-1826,1536,-380,30],[0,-1618,4254,-2198,440,-30],[0,1134,-1702,580,-60],[0,-140,170,-30]],[],[[0,3456,-1152,128],[0,96,-4256,2584,-560,40],[0,-3312,7600,-3512,640,-40],[0,1944,-2688,840,-80],[0,-200,240,-40]]]
def primitive_p2_p0_b_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[],[0,432,-4590,2356,-460,30],[0,-3750,7466,-3118,520,-30],[0,1798,-2362,680,-60],[0,-160,190,-30]],[],[[],[0,0,-2376,1116,-200,12],[0,-2160,3840,-1460,224,-12],[0,852,-1096,292,-24],[0,-68,80,-12]],[],[[],[0,0,-486,216,-36,2],[0,-486,810,-282,40,-2],[0,162,-210,52,-4],[0,-12,14,-2]]]
def primitive_p2_p0_b : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_p0_b_part00 ++ primitive_p2_p0_b_part01
theorem primitive_p2_p0_b_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y primitive_p2_p0_b) = integerNumerator_p2_p0_b X Y k := by
  simp only [primitive_p2_p0_b,primitive_p2_p0_b_part00,primitive_p2_p0_b_part01,integerNumerator_p2_p0_b,numerator_p2_p0_b,
    List.cons_append,List.nil_append,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms primitive_p2_p0_b_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
