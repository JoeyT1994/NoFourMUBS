import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions02
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0144 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0143 e0061
def v0144 (X Y k : ℂ) : ℂ := (v0143 X Y k)*(v0061 X Y k)
theorem e0144_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0144) = v0144 X Y k := by
  simp only [e0144,v0144,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0143_eval,e0061_eval]
def e0145 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0132 e0144
def v0145 (X Y k : ℂ) : ℂ := (v0132 X Y k)+(v0144 X Y k)
theorem e0145_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0145) = v0145 X Y k := by
  simp only [e0145,v0145,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0132_eval,e0144_eval]
def e0146 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0001 4
def v0146 (X Y k : ℂ) : ℂ := (v0001 X Y k)^4
theorem e0146_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0146) = v0146 X Y k := by
  simp only [e0146,v0146,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0001_eval]
def e0147 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0146 e0110
def v0147 (X Y k : ℂ) : ℂ := (v0146 X Y k)*(v0110 X Y k)
theorem e0147_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0147) = v0147 X Y k := by
  simp only [e0147,v0147,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0146_eval,e0110_eval]
def e0148 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0147 e0009
def v0148 (X Y k : ℂ) : ℂ := (v0147 X Y k)*(v0009 X Y k)
theorem e0148_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0148) = v0148 X Y k := by
  simp only [e0148,v0148,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0147_eval,e0009_eval]
def e0149 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0148 e0113
def v0149 (X Y k : ℂ) : ℂ := (v0148 X Y k)*(v0113 X Y k)
theorem e0149_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0149) = v0149 X Y k := by
  simp only [e0149,v0149,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0148_eval,e0113_eval]
def e0150 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0149 e0115
def v0150 (X Y k : ℂ) : ℂ := (v0149 X Y k)*(v0115 X Y k)
theorem e0150_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0150) = v0150 X Y k := by
  simp only [e0150,v0150,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0149_eval,e0115_eval]
def e0151 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0150 e0117
def v0151 (X Y k : ℂ) : ℂ := (v0150 X Y k)*(v0117 X Y k)
theorem e0151_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0151) = v0151 X Y k := by
  simp only [e0151,v0151,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0150_eval,e0117_eval]
def e0152 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0151 e0119
def v0152 (X Y k : ℂ) : ℂ := (v0151 X Y k)*(v0119 X Y k)
theorem e0152_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0152) = v0152 X Y k := by
  simp only [e0152,v0152,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0151_eval,e0119_eval]
def e0153 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0145 e0152
def v0153 (X Y k : ℂ) : ℂ := (v0145 X Y k)*(v0152 X Y k)
theorem e0153_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0153) = v0153 X Y k := by
  simp only [e0153,v0153,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0145_eval,e0152_eval]
def e0154 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[-2]]]
def v0154 (X Y k : ℂ) : ℂ := (-2 : ℂ)
theorem e0154_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0154) = v0154 X Y k := by
  norm_num [e0154,v0154,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI]
def e0155 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0040
def v0155 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0040 X Y k)
theorem e0155_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0155) = v0155 X Y k := by
  simp only [e0155,v0155,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0040_eval]
def e0156 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_m1_a
def v0156 (X Y k : ℂ) : ℂ := integerNumerator_p2_m1_a X Y k
theorem e0156_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0156) = v0156 X Y k := by
  exact primitive_p2_m1_a_eval X Y k
def e0157 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0155 e0156
def v0157 (X Y k : ℂ) : ℂ := (v0155 X Y k)*(v0156 X Y k)
theorem e0157_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0157) = v0157 X Y k := by
  simp only [e0157,v0157,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0155_eval,e0156_eval]
def e0158 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0055
def v0158 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0055 X Y k)
theorem e0158_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0158) = v0158 X Y k := by
  simp only [e0158,v0158,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0055_eval]
def e0159 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_m1_b
def v0159 (X Y k : ℂ) : ℂ := integerNumerator_p2_m1_b X Y k
theorem e0159_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0159) = v0159 X Y k := by
  exact primitive_p2_m1_b_eval X Y k
def e0160 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0158 e0159
def v0160 (X Y k : ℂ) : ℂ := (v0158 X Y k)*(v0159 X Y k)
theorem e0160_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0160) = v0160 X Y k := by
  simp only [e0160,v0160,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0158_eval,e0159_eval]
def e0161 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0160
def v0161 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0160 X Y k)
theorem e0161_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0161) = v0161 X Y k := by
  simp only [e0161,v0161,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0160_eval]
def e0162 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0161 e0127
def v0162 (X Y k : ℂ) : ℂ := (v0161 X Y k)*(v0127 X Y k)
theorem e0162_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0162) = v0162 X Y k := by
  simp only [e0162,v0162,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0161_eval,e0127_eval]
def e0163 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0157 e0162
def v0163 (X Y k : ℂ) : ℂ := (v0157 X Y k)+(v0162 X Y k)
theorem e0163_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0163) = v0163 X Y k := by
  simp only [e0163,v0163,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0157_eval,e0162_eval]
def e0164 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0163 e0156
def v0164 (X Y k : ℂ) : ℂ := (v0163 X Y k)*(v0156 X Y k)
theorem e0164_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0164) = v0164 X Y k := by
  simp only [e0164,v0164,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0163_eval,e0156_eval]
def e0165 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0164 e0006
def v0165 (X Y k : ℂ) : ℂ := (v0164 X Y k)*(v0006 X Y k)
theorem e0165_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0165) = v0165 X Y k := by
  simp only [e0165,v0165,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0164_eval,e0006_eval]
def e0166 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0155 e0159
def v0166 (X Y k : ℂ) : ℂ := (v0155 X Y k)*(v0159 X Y k)
theorem e0166_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0166) = v0166 X Y k := by
  simp only [e0166,v0166,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0155_eval,e0159_eval]
def e0167 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0158 e0156
def v0167 (X Y k : ℂ) : ℂ := (v0158 X Y k)*(v0156 X Y k)
theorem e0167_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0167) = v0167 X Y k := by
  simp only [e0167,v0167,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0158_eval,e0156_eval]
def e0168 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0167 e0135
def v0168 (X Y k : ℂ) : ℂ := (v0167 X Y k)*(v0135 X Y k)
theorem e0168_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0168) = v0168 X Y k := by
  simp only [e0168,v0168,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0167_eval,e0135_eval]
def e0169 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0166 e0168
def v0169 (X Y k : ℂ) : ℂ := (v0166 X Y k)+(v0168 X Y k)
theorem e0169_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0169) = v0169 X Y k := by
  simp only [e0169,v0169,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0166_eval,e0168_eval]
def e0170 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0160
def v0170 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0160 X Y k)
theorem e0170_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0170) = v0170 X Y k := by
  simp only [e0170,v0170,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0160_eval]
def e0171 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0170 e0001
def v0171 (X Y k : ℂ) : ℂ := (v0170 X Y k)*(v0001 X Y k)
theorem e0171_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0171) = v0171 X Y k := by
  simp only [e0171,v0171,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0170_eval,e0001_eval]
def e0172 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0169 e0171
def v0172 (X Y k : ℂ) : ℂ := (v0169 X Y k)+(v0171 X Y k)
theorem e0172_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0172) = v0172 X Y k := by
  simp only [e0172,v0172,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0169_eval,e0171_eval]
def e0173 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0172 e0159
def v0173 (X Y k : ℂ) : ℂ := (v0172 X Y k)*(v0159 X Y k)
theorem e0173_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0173) = v0173 X Y k := by
  simp only [e0173,v0173,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0172_eval,e0159_eval]
def e0174 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0173
def v0174 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0173 X Y k)
theorem e0174_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0174) = v0174 X Y k := by
  simp only [e0174,v0174,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0173_eval]
def e0175 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0174 e0061
def v0175 (X Y k : ℂ) : ℂ := (v0174 X Y k)*(v0061 X Y k)
theorem e0175_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0175) = v0175 X Y k := by
  simp only [e0175,v0175,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0174_eval,e0061_eval]
def e0176 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0165 e0175
def v0176 (X Y k : ℂ) : ℂ := (v0165 X Y k)+(v0175 X Y k)
theorem e0176_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0176) = v0176 X Y k := by
  simp only [e0176,v0176,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0165_eval,e0175_eval]
def e0177 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0012 4
def v0177 (X Y k : ℂ) : ℂ := (v0012 X Y k)^4
theorem e0177_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0177) = v0177 X Y k := by
  simp only [e0177,v0177,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0012_eval]
def e0178 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0148 e0177
def v0178 (X Y k : ℂ) : ℂ := (v0148 X Y k)*(v0177 X Y k)
theorem e0178_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0178) = v0178 X Y k := by
  simp only [e0178,v0178,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0148_eval,e0177_eval]
def e0179 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0015 4
def v0179 (X Y k : ℂ) : ℂ := (v0015 X Y k)^4
theorem e0179_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0179) = v0179 X Y k := by
  simp only [e0179,v0179,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0015_eval]
def e0180 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0178 e0179
def v0180 (X Y k : ℂ) : ℂ := (v0178 X Y k)*(v0179 X Y k)
theorem e0180_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0180) = v0180 X Y k := by
  simp only [e0180,v0180,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0178_eval,e0179_eval]
def e0181 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0024 4
def v0181 (X Y k : ℂ) : ℂ := (v0024 X Y k)^4
theorem e0181_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0181) = v0181 X Y k := by
  simp only [e0181,v0181,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0024_eval]
def e0182 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0180 e0181
def v0182 (X Y k : ℂ) : ℂ := (v0180 X Y k)*(v0181 X Y k)
theorem e0182_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0182) = v0182 X Y k := by
  simp only [e0182,v0182,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0180_eval,e0181_eval]
def e0183 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0027 4
def v0183 (X Y k : ℂ) : ℂ := (v0027 X Y k)^4
theorem e0183_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0183) = v0183 X Y k := by
  simp only [e0183,v0183,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0027_eval]
def e0184 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0182 e0183
def v0184 (X Y k : ℂ) : ℂ := (v0182 X Y k)*(v0183 X Y k)
theorem e0184_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0184) = v0184 X Y k := by
  simp only [e0184,v0184,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0182_eval,e0183_eval]
def e0185 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0176 e0184
def v0185 (X Y k : ℂ) : ℂ := (v0176 X Y k)*(v0184 X Y k)
theorem e0185_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0185) = v0185 X Y k := by
  simp only [e0185,v0185,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0176_eval,e0184_eval]
def e0186 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0003 3
def v0186 (X Y k : ℂ) : ℂ := (v0003 X Y k)^3
theorem e0186_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0186) = v0186 X Y k := by
  simp only [e0186,v0186,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0003_eval]
def e0187 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p3_p0_a
def v0187 (X Y k : ℂ) : ℂ := integerNumerator_p3_p0_a X Y k
theorem e0187_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0187) = v0187 X Y k := by
  exact primitive_p3_p0_a_eval X Y k
def e0188 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0135 e0009
def v0188 (X Y k : ℂ) : ℂ := (v0135 X Y k)*(v0009 X Y k)
theorem e0188_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0188) = v0188 X Y k := by
  simp only [e0188,v0188,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0135_eval,e0009_eval]
def e0189 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0187 e0188
def v0189 (X Y k : ℂ) : ℂ := (v0187 X Y k)*(v0188 X Y k)
theorem e0189_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0189) = v0189 X Y k := by
  simp only [e0189,v0189,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0187_eval,e0188_eval]
def e0190 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p3_p0_b
def v0190 (X Y k : ℂ) : ℂ := integerNumerator_p3_p0_b X Y k
theorem e0190_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0190) = v0190 X Y k := by
  exact primitive_p3_p0_b_eval X Y k
def e0191 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0190
def v0191 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0190 X Y k)
theorem e0191_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0191) = v0191 X Y k := by
  simp only [e0191,v0191,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0190_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
