import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions01
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0096 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0060 e0006
def v0096 (X Y k : ℂ) : ℂ := (v0060 X Y k)*(v0006 X Y k)
theorem e0096_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0096) = v0096 X Y k := by
  simp only [e0096,v0096,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0060_eval,e0006_eval]
def e0097 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0095 e0096
def v0097 (X Y k : ℂ) : ℂ := (v0095 X Y k)*(v0096 X Y k)
theorem e0097_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0097) = v0097 X Y k := by
  simp only [e0097,v0097,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0095_eval,e0096_eval]
def e0098 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0085 e0089
def v0098 (X Y k : ℂ) : ℂ := (v0085 X Y k)*(v0089 X Y k)
theorem e0098_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0098) = v0098 X Y k := by
  simp only [e0098,v0098,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0085_eval,e0089_eval]
def e0099 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0088 e0086
def v0099 (X Y k : ℂ) : ℂ := (v0088 X Y k)*(v0086 X Y k)
theorem e0099_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0099) = v0099 X Y k := by
  simp only [e0099,v0099,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0088_eval,e0086_eval]
def e0100 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0099 e0096
def v0100 (X Y k : ℂ) : ℂ := (v0099 X Y k)*(v0096 X Y k)
theorem e0100_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0100) = v0100 X Y k := by
  simp only [e0100,v0100,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0099_eval,e0096_eval]
def e0101 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0098 e0100
def v0101 (X Y k : ℂ) : ℂ := (v0098 X Y k)+(v0100 X Y k)
theorem e0101_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0101) = v0101 X Y k := by
  simp only [e0101,v0101,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0098_eval,e0100_eval]
def e0102 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0090
def v0102 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0090 X Y k)
theorem e0102_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0102) = v0102 X Y k := by
  simp only [e0102,v0102,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0090_eval]
def e0103 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0102 e0001
def v0103 (X Y k : ℂ) : ℂ := (v0102 X Y k)*(v0001 X Y k)
theorem e0103_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0103) = v0103 X Y k := by
  simp only [e0103,v0103,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0102_eval,e0001_eval]
def e0104 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0101 e0103
def v0104 (X Y k : ℂ) : ℂ := (v0101 X Y k)+(v0103 X Y k)
theorem e0104_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0104) = v0104 X Y k := by
  simp only [e0104,v0104,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0101_eval,e0103_eval]
def e0105 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_p1_b
def v0105 (X Y k : ℂ) : ℂ := integerNumerator_p2_p1_b X Y k
theorem e0105_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0105) = v0105 X Y k := by
  exact primitive_p2_p1_b_eval X Y k
def e0106 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0104 e0105
def v0106 (X Y k : ℂ) : ℂ := (v0104 X Y k)*(v0105 X Y k)
theorem e0106_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0106) = v0106 X Y k := by
  simp only [e0106,v0106,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0104_eval,e0105_eval]
def e0107 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0106
def v0107 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0106 X Y k)
theorem e0107_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0107) = v0107 X Y k := by
  simp only [e0107,v0107,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0106_eval]
def e0108 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0107 e0078
def v0108 (X Y k : ℂ) : ℂ := (v0107 X Y k)*(v0078 X Y k)
theorem e0108_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0108) = v0108 X Y k := by
  simp only [e0108,v0108,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0107_eval,e0078_eval]
def e0109 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0097 e0108
def v0109 (X Y k : ℂ) : ℂ := (v0097 X Y k)+(v0108 X Y k)
theorem e0109_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0109) = v0109 X Y k := by
  simp only [e0109,v0109,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0097_eval,e0108_eval]
def e0110 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2.s284
def v0110 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2.v284 X Y k
theorem e0110_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0110) = v0110 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2.s284_eval X Y k
def e0111 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0060 e0110
def v0111 (X Y k : ℂ) : ℂ := (v0060 X Y k)*(v0110 X Y k)
theorem e0111_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0111) = v0111 X Y k := by
  simp only [e0111,v0111,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0060_eval,e0110_eval]
def e0112 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0111 e0009
def v0112 (X Y k : ℂ) : ℂ := (v0111 X Y k)*(v0009 X Y k)
theorem e0112_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0112) = v0112 X Y k := by
  simp only [e0112,v0112,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0111_eval,e0009_eval]
def e0113 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s148
def v0113 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v148 X Y k
theorem e0113_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0113) = v0113 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s148_eval X Y k
def e0114 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0112 e0113
def v0114 (X Y k : ℂ) : ℂ := (v0112 X Y k)*(v0113 X Y k)
theorem e0114_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0114) = v0114 X Y k := by
  simp only [e0114,v0114,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0112_eval,e0113_eval]
def e0115 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s142
def v0115 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v142 X Y k
theorem e0115_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0115) = v0115 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s142_eval X Y k
def e0116 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0114 e0115
def v0116 (X Y k : ℂ) : ℂ := (v0114 X Y k)*(v0115 X Y k)
theorem e0116_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0116) = v0116 X Y k := by
  simp only [e0116,v0116,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0114_eval,e0115_eval]
def e0117 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2.s397
def v0117 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2.v397 X Y k
theorem e0117_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0117) = v0117 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2.s397_eval X Y k
def e0118 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0116 e0117
def v0118 (X Y k : ℂ) : ℂ := (v0116 X Y k)*(v0117 X Y k)
theorem e0118_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0118) = v0118 X Y k := by
  simp only [e0118,v0118,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0116_eval,e0117_eval]
def e0119 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2.s393
def v0119 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2.v393 X Y k
theorem e0119_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0119) = v0119 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2.s393_eval X Y k
def e0120 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0118 e0119
def v0120 (X Y k : ℂ) : ℂ := (v0118 X Y k)*(v0119 X Y k)
theorem e0120_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0120) = v0120 X Y k := by
  simp only [e0120,v0120,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0118_eval,e0119_eval]
def e0121 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0109 e0120
def v0121 (X Y k : ℂ) : ℂ := (v0109 X Y k)*(v0120 X Y k)
theorem e0121_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0121) = v0121 X Y k := by
  simp only [e0121,v0121,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0109_eval,e0120_eval]
def e0122 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_m2_a
def v0122 (X Y k : ℂ) : ℂ := integerNumerator_p2_m2_a X Y k
theorem e0122_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0122) = v0122 X Y k := by
  exact primitive_p2_m2_a_eval X Y k
def e0123 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0040 e0122
def v0123 (X Y k : ℂ) : ℂ := (v0040 X Y k)*(v0122 X Y k)
theorem e0123_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0123) = v0123 X Y k := by
  simp only [e0123,v0123,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0040_eval,e0122_eval]
def e0124 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_m2_b
def v0124 (X Y k : ℂ) : ℂ := integerNumerator_p2_m2_b X Y k
theorem e0124_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0124) = v0124 X Y k := by
  exact primitive_p2_m2_b_eval X Y k
def e0125 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0055 e0124
def v0125 (X Y k : ℂ) : ℂ := (v0055 X Y k)*(v0124 X Y k)
theorem e0125_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0125) = v0125 X Y k := by
  simp only [e0125,v0125,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0055_eval,e0124_eval]
def e0126 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0125
def v0126 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0125 X Y k)
theorem e0126_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0126) = v0126 X Y k := by
  simp only [e0126,v0126,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0125_eval]
def e0127 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0061
def v0127 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0061 X Y k)
theorem e0127_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0127) = v0127 X Y k := by
  simp only [e0127,v0127,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0061_eval]
def e0128 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0126 e0127
def v0128 (X Y k : ℂ) : ℂ := (v0126 X Y k)*(v0127 X Y k)
theorem e0128_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0128) = v0128 X Y k := by
  simp only [e0128,v0128,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0126_eval,e0127_eval]
def e0129 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0123 e0128
def v0129 (X Y k : ℂ) : ℂ := (v0123 X Y k)+(v0128 X Y k)
theorem e0129_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0129) = v0129 X Y k := by
  simp only [e0129,v0129,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0123_eval,e0128_eval]
def e0130 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_p0_a
def v0130 (X Y k : ℂ) : ℂ := integerNumerator_p2_p0_a X Y k
theorem e0130_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0130) = v0130 X Y k := by
  exact primitive_p2_p0_a_eval X Y k
def e0131 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0129 e0130
def v0131 (X Y k : ℂ) : ℂ := (v0129 X Y k)*(v0130 X Y k)
theorem e0131_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0131) = v0131 X Y k := by
  simp only [e0131,v0131,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0129_eval,e0130_eval]
def e0132 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0131 e0006
def v0132 (X Y k : ℂ) : ℂ := (v0131 X Y k)*(v0006 X Y k)
theorem e0132_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0132) = v0132 X Y k := by
  simp only [e0132,v0132,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0131_eval,e0006_eval]
def e0133 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0040 e0124
def v0133 (X Y k : ℂ) : ℂ := (v0040 X Y k)*(v0124 X Y k)
theorem e0133_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0133) = v0133 X Y k := by
  simp only [e0133,v0133,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0040_eval,e0124_eval]
def e0134 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0055 e0122
def v0134 (X Y k : ℂ) : ℂ := (v0055 X Y k)*(v0122 X Y k)
theorem e0134_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0134) = v0134 X Y k := by
  simp only [e0134,v0134,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0055_eval,e0122_eval]
def e0135 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0006
def v0135 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0006 X Y k)
theorem e0135_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0135) = v0135 X Y k := by
  simp only [e0135,v0135,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0006_eval]
def e0136 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0134 e0135
def v0136 (X Y k : ℂ) : ℂ := (v0134 X Y k)*(v0135 X Y k)
theorem e0136_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0136) = v0136 X Y k := by
  simp only [e0136,v0136,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0134_eval,e0135_eval]
def e0137 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0133 e0136
def v0137 (X Y k : ℂ) : ℂ := (v0133 X Y k)+(v0136 X Y k)
theorem e0137_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0137) = v0137 X Y k := by
  simp only [e0137,v0137,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0133_eval,e0136_eval]
def e0138 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0125
def v0138 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0125 X Y k)
theorem e0138_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0138) = v0138 X Y k := by
  simp only [e0138,v0138,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0125_eval]
def e0139 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0138 e0001
def v0139 (X Y k : ℂ) : ℂ := (v0138 X Y k)*(v0001 X Y k)
theorem e0139_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0139) = v0139 X Y k := by
  simp only [e0139,v0139,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0138_eval,e0001_eval]
def e0140 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0137 e0139
def v0140 (X Y k : ℂ) : ℂ := (v0137 X Y k)+(v0139 X Y k)
theorem e0140_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0140) = v0140 X Y k := by
  simp only [e0140,v0140,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0137_eval,e0139_eval]
def e0141 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_p0_b
def v0141 (X Y k : ℂ) : ℂ := integerNumerator_p2_p0_b X Y k
theorem e0141_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0141) = v0141 X Y k := by
  exact primitive_p2_p0_b_eval X Y k
def e0142 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0140 e0141
def v0142 (X Y k : ℂ) : ℂ := (v0140 X Y k)*(v0141 X Y k)
theorem e0142_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0142) = v0142 X Y k := by
  simp only [e0142,v0142,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0140_eval,e0141_eval]
def e0143 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0142
def v0143 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0142 X Y k)
theorem e0143_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0143) = v0143 X Y k := by
  simp only [e0143,v0143,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0142_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
