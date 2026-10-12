import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions04
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0240 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p0_p3_b
def v0240 (X Y k : ℂ) : ℂ := integerNumerator_p0_p3_b X Y k
theorem e0240_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0240) = v0240 X Y k := by
  exact primitive_p0_p3_b_eval X Y k
def e0241 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0239 e0240
def v0241 (X Y k : ℂ) : ℂ := (v0239 X Y k)*(v0240 X Y k)
theorem e0241_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0241) = v0241 X Y k := by
  simp only [e0241,v0241,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0239_eval,e0240_eval]
def e0242 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0241
def v0242 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0241 X Y k)
theorem e0242_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0242) = v0242 X Y k := by
  simp only [e0242,v0242,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0241_eval]
def e0243 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0242 e0009
def v0243 (X Y k : ℂ) : ℂ := (v0242 X Y k)*(v0009 X Y k)
theorem e0243_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0243) = v0243 X Y k := by
  simp only [e0243,v0243,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0242_eval,e0009_eval]
def e0244 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0238 e0243
def v0244 (X Y k : ℂ) : ℂ := (v0238 X Y k)+(v0243 X Y k)
theorem e0244_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0244) = v0244 X Y k := by
  simp only [e0244,v0244,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0238_eval,e0243_eval]
def e0245 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p3_m3_a
def v0245 (X Y k : ℂ) : ℂ := integerNumerator_p3_m3_a X Y k
theorem e0245_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0245) = v0245 X Y k := by
  exact primitive_p3_m3_a_eval X Y k
def e0246 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0244 e0245
def v0246 (X Y k : ℂ) : ℂ := (v0244 X Y k)*(v0245 X Y k)
theorem e0246_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0246) = v0246 X Y k := by
  simp only [e0246,v0246,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0244_eval,e0245_eval]
def e0247 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0246 e0006
def v0247 (X Y k : ℂ) : ℂ := (v0246 X Y k)*(v0006 X Y k)
theorem e0247_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0247) = v0247 X Y k := by
  simp only [e0247,v0247,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0246_eval,e0006_eval]
def e0248 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0235 e0240
def v0248 (X Y k : ℂ) : ℂ := (v0235 X Y k)*(v0240 X Y k)
theorem e0248_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0248) = v0248 X Y k := by
  simp only [e0248,v0248,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0235_eval,e0240_eval]
def e0249 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0239 e0236
def v0249 (X Y k : ℂ) : ℂ := (v0239 X Y k)*(v0236 X Y k)
theorem e0249_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0249) = v0249 X Y k := by
  simp only [e0249,v0249,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0239_eval,e0236_eval]
def e0250 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0135 e0078
def v0250 (X Y k : ℂ) : ℂ := (v0135 X Y k)*(v0078 X Y k)
theorem e0250_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0250) = v0250 X Y k := by
  simp only [e0250,v0250,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0135_eval,e0078_eval]
def e0251 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0249 e0250
def v0251 (X Y k : ℂ) : ℂ := (v0249 X Y k)*(v0250 X Y k)
theorem e0251_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0251) = v0251 X Y k := by
  simp only [e0251,v0251,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0249_eval,e0250_eval]
def e0252 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0248 e0251
def v0252 (X Y k : ℂ) : ℂ := (v0248 X Y k)+(v0251 X Y k)
theorem e0252_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0252) = v0252 X Y k := by
  simp only [e0252,v0252,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0248_eval,e0251_eval]
def e0253 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0241
def v0253 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0241 X Y k)
theorem e0253_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0253) = v0253 X Y k := by
  simp only [e0253,v0253,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0241_eval]
def e0254 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0252 e0253
def v0254 (X Y k : ℂ) : ℂ := (v0252 X Y k)+(v0253 X Y k)
theorem e0254_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0254) = v0254 X Y k := by
  simp only [e0254,v0254,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0252_eval,e0253_eval]
def e0255 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p3_m3_b
def v0255 (X Y k : ℂ) : ℂ := integerNumerator_p3_m3_b X Y k
theorem e0255_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0255) = v0255 X Y k := by
  exact primitive_p3_m3_b_eval X Y k
def e0256 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0254 e0255
def v0256 (X Y k : ℂ) : ℂ := (v0254 X Y k)*(v0255 X Y k)
theorem e0256_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0256) = v0256 X Y k := by
  simp only [e0256,v0256,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0254_eval,e0255_eval]
def e0257 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0256
def v0257 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0256 X Y k)
theorem e0257_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0257) = v0257 X Y k := by
  simp only [e0257,v0257,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0256_eval]
def e0258 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0009
def v0258 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0009 X Y k)
theorem e0258_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0258) = v0258 X Y k := by
  simp only [e0258,v0258,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0009_eval]
def e0259 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0257 e0258
def v0259 (X Y k : ℂ) : ℂ := (v0257 X Y k)*(v0258 X Y k)
theorem e0259_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0259) = v0259 X Y k := by
  simp only [e0259,v0259,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0257_eval,e0258_eval]
def e0260 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0247 e0259
def v0260 (X Y k : ℂ) : ℂ := (v0247 X Y k)+(v0259 X Y k)
theorem e0260_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0260) = v0260 X Y k := by
  simp only [e0260,v0260,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0247_eval,e0259_eval]
def e0261 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s004
def v0261 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v004 X Y k
theorem e0261_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0261) = v0261 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s004_eval X Y k
def e0262 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0261 e0220
def v0262 (X Y k : ℂ) : ℂ := (v0261 X Y k)*(v0220 X Y k)
theorem e0262_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0262) = v0262 X Y k := by
  simp only [e0262,v0262,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0261_eval,e0220_eval]
def e0263 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0262 e0110
def v0263 (X Y k : ℂ) : ℂ := (v0262 X Y k)*(v0110 X Y k)
theorem e0263_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0263) = v0263 X Y k := by
  simp only [e0263,v0263,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0262_eval,e0110_eval]
def e0264 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0263 e0224
def v0264 (X Y k : ℂ) : ℂ := (v0263 X Y k)*(v0224 X Y k)
theorem e0264_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0264) = v0264 X Y k := by
  simp only [e0264,v0264,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0263_eval,e0224_eval]
def e0265 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0264 e0113
def v0265 (X Y k : ℂ) : ℂ := (v0264 X Y k)*(v0113 X Y k)
theorem e0265_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0265) = v0265 X Y k := by
  simp only [e0265,v0265,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0264_eval,e0113_eval]
def e0266 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0265 e0115
def v0266 (X Y k : ℂ) : ℂ := (v0265 X Y k)*(v0115 X Y k)
theorem e0266_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0266) = v0266 X Y k := by
  simp only [e0266,v0266,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0265_eval,e0115_eval]
def e0267 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0266 e0228
def v0267 (X Y k : ℂ) : ℂ := (v0266 X Y k)*(v0228 X Y k)
theorem e0267_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0267) = v0267 X Y k := by
  simp only [e0267,v0267,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0266_eval,e0228_eval]
def e0268 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0267 e0230
def v0268 (X Y k : ℂ) : ℂ := (v0267 X Y k)*(v0230 X Y k)
theorem e0268_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0268) = v0268 X Y k := by
  simp only [e0268,v0268,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0267_eval,e0230_eval]
def e0269 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0268 e0117
def v0269 (X Y k : ℂ) : ℂ := (v0268 X Y k)*(v0117 X Y k)
theorem e0269_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0269) = v0269 X Y k := by
  simp only [e0269,v0269,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0268_eval,e0117_eval]
def e0270 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0269 e0119
def v0270 (X Y k : ℂ) : ℂ := (v0269 X Y k)*(v0119 X Y k)
theorem e0270_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0270) = v0270 X Y k := by
  simp only [e0270,v0270,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0269_eval,e0119_eval]
def e0271 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0260 e0270
def v0271 (X Y k : ℂ) : ℂ := (v0260 X Y k)*(v0270 X Y k)
theorem e0271_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0271) = v0271 X Y k := by
  simp only [e0271,v0271,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0260_eval,e0270_eval]
def e0272 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p1_p1_a
def v0272 (X Y k : ℂ) : ℂ := integerNumerator_p1_p1_a X Y k
theorem e0272_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0272) = v0272 X Y k := by
  exact primitive_p1_p1_a_eval X Y k
def e0273 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0235 e0272
def v0273 (X Y k : ℂ) : ℂ := (v0235 X Y k)*(v0272 X Y k)
theorem e0273_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0273) = v0273 X Y k := by
  simp only [e0273,v0273,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0235_eval,e0272_eval]
def e0274 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p1_p1_b
def v0274 (X Y k : ℂ) : ℂ := integerNumerator_p1_p1_b X Y k
theorem e0274_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0274) = v0274 X Y k := by
  exact primitive_p1_p1_b_eval X Y k
def e0275 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0239 e0274
def v0275 (X Y k : ℂ) : ℂ := (v0239 X Y k)*(v0274 X Y k)
theorem e0275_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0275) = v0275 X Y k := by
  simp only [e0275,v0275,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0239_eval,e0274_eval]
def e0276 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0275
def v0276 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0275 X Y k)
theorem e0276_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0276) = v0276 X Y k := by
  simp only [e0276,v0276,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0275_eval]
def e0277 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0276 e0078
def v0277 (X Y k : ℂ) : ℂ := (v0276 X Y k)*(v0078 X Y k)
theorem e0277_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0277) = v0277 X Y k := by
  simp only [e0277,v0277,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0276_eval,e0078_eval]
def e0278 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0273 e0277
def v0278 (X Y k : ℂ) : ℂ := (v0273 X Y k)+(v0277 X Y k)
theorem e0278_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0278) = v0278 X Y k := by
  simp only [e0278,v0278,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0273_eval,e0277_eval]
def e0279 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0278 e0156
def v0279 (X Y k : ℂ) : ℂ := (v0278 X Y k)*(v0156 X Y k)
theorem e0279_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0279) = v0279 X Y k := by
  simp only [e0279,v0279,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0278_eval,e0156_eval]
def e0280 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0279 e0006
def v0280 (X Y k : ℂ) : ℂ := (v0279 X Y k)*(v0006 X Y k)
theorem e0280_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0280) = v0280 X Y k := by
  simp only [e0280,v0280,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0279_eval,e0006_eval]
def e0281 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0235 e0274
def v0281 (X Y k : ℂ) : ℂ := (v0235 X Y k)*(v0274 X Y k)
theorem e0281_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0281) = v0281 X Y k := by
  simp only [e0281,v0281,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0235_eval,e0274_eval]
def e0282 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0239 e0272
def v0282 (X Y k : ℂ) : ℂ := (v0239 X Y k)*(v0272 X Y k)
theorem e0282_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0282) = v0282 X Y k := by
  simp only [e0282,v0282,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0239_eval,e0272_eval]
def e0283 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s031
def v0283 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v031 X Y k
theorem e0283_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0283) = v0283 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s031_eval X Y k
def e0284 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0282 e0283
def v0284 (X Y k : ℂ) : ℂ := (v0282 X Y k)*(v0283 X Y k)
theorem e0284_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0284) = v0284 X Y k := by
  simp only [e0284,v0284,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0282_eval,e0283_eval]
def e0285 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0281 e0284
def v0285 (X Y k : ℂ) : ℂ := (v0281 X Y k)+(v0284 X Y k)
theorem e0285_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0285) = v0285 X Y k := by
  simp only [e0285,v0285,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0281_eval,e0284_eval]
def e0286 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0275
def v0286 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0275 X Y k)
theorem e0286_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0286) = v0286 X Y k := by
  simp only [e0286,v0286,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0275_eval]
def e0287 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0285 e0286
def v0287 (X Y k : ℂ) : ℂ := (v0285 X Y k)+(v0286 X Y k)
theorem e0287_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0287) = v0287 X Y k := by
  simp only [e0287,v0287,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0285_eval,e0286_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
