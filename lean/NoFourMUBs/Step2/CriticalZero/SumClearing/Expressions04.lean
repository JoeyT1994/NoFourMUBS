import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions03
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0192 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0189 e0191
def v0192 (X Y k : ℂ) : ℂ := (v0189 X Y k)+(v0191 X Y k)
theorem e0192_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0192) = v0192 X Y k := by
  simp only [e0192,v0192,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0189_eval,e0191_eval]
def e0193 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0186 e0192
def v0193 (X Y k : ℂ) : ℂ := (v0186 X Y k)*(v0192 X Y k)
theorem e0193_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0193) = v0193 X Y k := by
  simp only [e0193,v0193,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0186_eval,e0192_eval]
def e0194 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0193
def v0194 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0193 X Y k)
theorem e0194_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0194) = v0194 X Y k := by
  simp only [e0194,v0194,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0193_eval]
def e0195 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p0_p2_a
def v0195 (X Y k : ℂ) : ℂ := integerNumerator_p0_p2_a X Y k
theorem e0195_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0195) = v0195 X Y k := by
  exact primitive_p0_p2_a_eval X Y k
def e0196 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0194 e0195
def v0196 (X Y k : ℂ) : ℂ := (v0194 X Y k)*(v0195 X Y k)
theorem e0196_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0196) = v0196 X Y k := by
  simp only [e0196,v0196,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0194_eval,e0195_eval]
def e0197 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0186 e0190
def v0197 (X Y k : ℂ) : ℂ := (v0186 X Y k)*(v0190 X Y k)
theorem e0197_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0197) = v0197 X Y k := by
  simp only [e0197,v0197,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0186_eval,e0190_eval]
def e0198 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e0197
def v0198 (X Y k : ℂ) : ℂ := -(v0197 X Y k)
theorem e0198_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0198) = v0198 X Y k := by
  simp only [e0198,v0198,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e0197_eval]
def e0199 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0154 e0198
def v0199 (X Y k : ℂ) : ℂ := (v0154 X Y k)*(v0198 X Y k)
theorem e0199_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0199) = v0199 X Y k := by
  simp only [e0199,v0199,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0154_eval,e0198_eval]
def e0200 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p0_p2_b
def v0200 (X Y k : ℂ) : ℂ := integerNumerator_p0_p2_b X Y k
theorem e0200_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0200) = v0200 X Y k := by
  exact primitive_p0_p2_b_eval X Y k
def e0201 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0199 e0200
def v0201 (X Y k : ℂ) : ℂ := (v0199 X Y k)*(v0200 X Y k)
theorem e0201_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0201) = v0201 X Y k := by
  simp only [e0201,v0201,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0199_eval,e0200_eval]
def e0202 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0201
def v0202 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0201 X Y k)
theorem e0202_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0202) = v0202 X Y k := by
  simp only [e0202,v0202,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0201_eval]
def e0203 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0202 e0009
def v0203 (X Y k : ℂ) : ℂ := (v0202 X Y k)*(v0009 X Y k)
theorem e0203_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0203) = v0203 X Y k := by
  simp only [e0203,v0203,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0202_eval,e0009_eval]
def e0204 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0196 e0203
def v0204 (X Y k : ℂ) : ℂ := (v0196 X Y k)+(v0203 X Y k)
theorem e0204_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0204) = v0204 X Y k := by
  simp only [e0204,v0204,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0196_eval,e0203_eval]
def e0205 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p3_m2_a
def v0205 (X Y k : ℂ) : ℂ := integerNumerator_p3_m2_a X Y k
theorem e0205_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0205) = v0205 X Y k := by
  exact primitive_p3_m2_a_eval X Y k
def e0206 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0204 e0205
def v0206 (X Y k : ℂ) : ℂ := (v0204 X Y k)*(v0205 X Y k)
theorem e0206_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0206) = v0206 X Y k := by
  simp only [e0206,v0206,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0204_eval,e0205_eval]
def e0207 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0206 e0135
def v0207 (X Y k : ℂ) : ℂ := (v0206 X Y k)*(v0135 X Y k)
theorem e0207_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0207) = v0207 X Y k := by
  simp only [e0207,v0207,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0206_eval,e0135_eval]
def e0208 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0194 e0200
def v0208 (X Y k : ℂ) : ℂ := (v0194 X Y k)*(v0200 X Y k)
theorem e0208_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0208) = v0208 X Y k := by
  simp only [e0208,v0208,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0194_eval,e0200_eval]
def e0209 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0199 e0195
def v0209 (X Y k : ℂ) : ℂ := (v0199 X Y k)*(v0195 X Y k)
theorem e0209_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0209) = v0209 X Y k := by
  simp only [e0209,v0209,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0199_eval,e0195_eval]
def e0210 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s052
def v0210 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v052 X Y k
theorem e0210_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0210) = v0210 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s052_eval X Y k
def e0211 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0209 e0210
def v0211 (X Y k : ℂ) : ℂ := (v0209 X Y k)*(v0210 X Y k)
theorem e0211_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0211) = v0211 X Y k := by
  simp only [e0211,v0211,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0209_eval,e0210_eval]
def e0212 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0208 e0211
def v0212 (X Y k : ℂ) : ℂ := (v0208 X Y k)+(v0211 X Y k)
theorem e0212_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0212) = v0212 X Y k := by
  simp only [e0212,v0212,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0208_eval,e0211_eval]
def e0213 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0201
def v0213 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0201 X Y k)
theorem e0213_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0213) = v0213 X Y k := by
  simp only [e0213,v0213,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0201_eval]
def e0214 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0212 e0213
def v0214 (X Y k : ℂ) : ℂ := (v0212 X Y k)+(v0213 X Y k)
theorem e0214_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0214) = v0214 X Y k := by
  simp only [e0214,v0214,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0212_eval,e0213_eval]
def e0215 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p3_m2_b
def v0215 (X Y k : ℂ) : ℂ := integerNumerator_p3_m2_b X Y k
theorem e0215_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0215) = v0215 X Y k := by
  exact primitive_p3_m2_b_eval X Y k
def e0216 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0214 e0215
def v0216 (X Y k : ℂ) : ℂ := (v0214 X Y k)*(v0215 X Y k)
theorem e0216_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0216) = v0216 X Y k := by
  simp only [e0216,v0216,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0214_eval,e0215_eval]
def e0217 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0053 e0216
def v0217 (X Y k : ℂ) : ℂ := (v0053 X Y k)*(v0216 X Y k)
theorem e0217_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0217) = v0217 X Y k := by
  simp only [e0217,v0217,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0053_eval,e0216_eval]
def e0218 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0217 e0009
def v0218 (X Y k : ℂ) : ℂ := (v0217 X Y k)*(v0009 X Y k)
theorem e0218_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0218) = v0218 X Y k := by
  simp only [e0218,v0218,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0217_eval,e0009_eval]
def e0219 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0207 e0218
def v0219 (X Y k : ℂ) : ℂ := (v0207 X Y k)+(v0218 X Y k)
theorem e0219_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0219) = v0219 X Y k := by
  simp only [e0219,v0219,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0207_eval,e0218_eval]
def e0220 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s079
def v0220 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v079 X Y k
theorem e0220_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0220) = v0220 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s079_eval X Y k
def e0221 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0146 e0220
def v0221 (X Y k : ℂ) : ℂ := (v0146 X Y k)*(v0220 X Y k)
theorem e0221_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0221) = v0221 X Y k := by
  simp only [e0221,v0221,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0146_eval,e0220_eval]
def e0222 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0006 4
def v0222 (X Y k : ℂ) : ℂ := (v0006 X Y k)^4
theorem e0222_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0222) = v0222 X Y k := by
  simp only [e0222,v0222,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0006_eval]
def e0223 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0221 e0222
def v0223 (X Y k : ℂ) : ℂ := (v0221 X Y k)*(v0222 X Y k)
theorem e0223_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0223) = v0223 X Y k := by
  simp only [e0223,v0223,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0221_eval,e0222_eval]
def e0224 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0009 5
def v0224 (X Y k : ℂ) : ℂ := (v0009 X Y k)^5
theorem e0224_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0224) = v0224 X Y k := by
  simp only [e0224,v0224,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0009_eval]
def e0225 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0223 e0224
def v0225 (X Y k : ℂ) : ℂ := (v0223 X Y k)*(v0224 X Y k)
theorem e0225_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0225) = v0225 X Y k := by
  simp only [e0225,v0225,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0223_eval,e0224_eval]
def e0226 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0225 e0113
def v0226 (X Y k : ℂ) : ℂ := (v0225 X Y k)*(v0113 X Y k)
theorem e0226_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0226) = v0226 X Y k := by
  simp only [e0226,v0226,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0225_eval,e0113_eval]
def e0227 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0226 e0115
def v0227 (X Y k : ℂ) : ℂ := (v0226 X Y k)*(v0115 X Y k)
theorem e0227_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0227) = v0227 X Y k := by
  simp only [e0227,v0227,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0226_eval,e0115_eval]
def e0228 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0018 3
def v0228 (X Y k : ℂ) : ℂ := (v0018 X Y k)^3
theorem e0228_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0228) = v0228 X Y k := by
  simp only [e0228,v0228,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0018_eval]
def e0229 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0227 e0228
def v0229 (X Y k : ℂ) : ℂ := (v0227 X Y k)*(v0228 X Y k)
theorem e0229_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0229) = v0229 X Y k := by
  simp only [e0229,v0229,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0227_eval,e0228_eval]
def e0230 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0021 3
def v0230 (X Y k : ℂ) : ℂ := (v0021 X Y k)^3
theorem e0230_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0230) = v0230 X Y k := by
  simp only [e0230,v0230,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0021_eval]
def e0231 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0229 e0230
def v0231 (X Y k : ℂ) : ℂ := (v0229 X Y k)*(v0230 X Y k)
theorem e0231_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0231) = v0231 X Y k := by
  simp only [e0231,v0231,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0229_eval,e0230_eval]
def e0232 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0231 e0117
def v0232 (X Y k : ℂ) : ℂ := (v0231 X Y k)*(v0117 X Y k)
theorem e0232_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0232) = v0232 X Y k := by
  simp only [e0232,v0232,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0231_eval,e0117_eval]
def e0233 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0232 e0119
def v0233 (X Y k : ℂ) : ℂ := (v0232 X Y k)*(v0119 X Y k)
theorem e0233_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0233) = v0233 X Y k := by
  simp only [e0233,v0233,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0232_eval,e0119_eval]
def e0234 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0219 e0233
def v0234 (X Y k : ℂ) : ℂ := (v0219 X Y k)*(v0233 X Y k)
theorem e0234_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0234) = v0234 X Y k := by
  simp only [e0234,v0234,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0219_eval,e0233_eval]
def e0235 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0193
def v0235 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0193 X Y k)
theorem e0235_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0235) = v0235 X Y k := by
  simp only [e0235,v0235,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0193_eval]
def e0236 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p0_p3_a
def v0236 (X Y k : ℂ) : ℂ := integerNumerator_p0_p3_a X Y k
theorem e0236_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0236) = v0236 X Y k := by
  exact primitive_p0_p3_a_eval X Y k
def e0237 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0235 e0236
def v0237 (X Y k : ℂ) : ℂ := (v0235 X Y k)*(v0236 X Y k)
theorem e0237_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0237) = v0237 X Y k := by
  simp only [e0237,v0237,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0235_eval,e0236_eval]
def e0238 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0237 e0001
def v0238 (X Y k : ℂ) : ℂ := (v0237 X Y k)*(v0001 X Y k)
theorem e0238_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0238) = v0238 X Y k := by
  simp only [e0238,v0238,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0237_eval,e0001_eval]
def e0239 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0001 e0198
def v0239 (X Y k : ℂ) : ℂ := (v0001 X Y k)*(v0198 X Y k)
theorem e0239_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0239) = v0239 X Y k := by
  simp only [e0239,v0239,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0001_eval,e0198_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
