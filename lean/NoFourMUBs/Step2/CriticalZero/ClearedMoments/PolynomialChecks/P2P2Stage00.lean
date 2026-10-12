import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Staged
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Data_p2_p2
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
variable {F : Type*} [Field F] [CharZero F]
def v281 (X Y k : F) : F := (P2M4.v004 X Y k)*(P2M4.v062 X Y k)
def s281 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s004 P2M4.s062
theorem s281_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s281) = v281 X Y k := by
  simp only [s281, v281, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s004_eval, P2M4.s062_eval]
def v282 (X Y k : F) : F := (v281 X Y k)*(P2M4.v012 X Y k)
def s282 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s281 P2M4.s012
theorem s282_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s282) = v282 X Y k := by
  simp only [s282, v282, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s281_eval, P2M4.s012_eval]
def v283 (X Y k : F) : F := (v282 X Y k)*(P2M4.v001 X Y k)
def s283 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s282 P2M4.s001
theorem s283_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s283) = v283 X Y k := by
  simp only [s283, v283, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s282_eval, P2M4.s001_eval]
def v284 (X Y k : F) : F := (P2M4.v000 X Y k)^3
def s284 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow P2M4.s000 3
theorem s284_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s284) = v284 X Y k := by
  simp only [s284, v284, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow, CriticalZeroSumAssembly20261003.Coefficients.eval_pow, P2M4.s000_eval]
def v285 (X Y k : F) : F := (v283 X Y k)*(v284 X Y k)
def s285 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s283 s284
theorem s285_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s285) = v285 X Y k := by
  simp only [s285, v285, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s283_eval, s284_eval]
def v286 (X Y k : F) : F := (P2M4.v062 X Y k)*(P2M4.v012 X Y k)
def s286 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s062 P2M4.s012
theorem s286_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s286) = v286 X Y k := by
  simp only [s286, v286, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s062_eval, P2M4.s012_eval]
def v287 (X Y k : F) : F := (v286 X Y k)*(P2M4.v001 X Y k)
def s287 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s286 P2M4.s001
theorem s287_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s287) = v287 X Y k := by
  simp only [s287, v287, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s286_eval, P2M4.s001_eval]
def v288 (X Y k : F) : F := (P2M4.v012 X Y k)*(P2M4.v001 X Y k)
def s288 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s012 P2M4.s001
theorem s288_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s288) = v288 X Y k := by
  simp only [s288, v288, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s012_eval, P2M4.s001_eval]
def v289 (X Y k : F) : F := (P2M4.v028 X Y k)-(v288 X Y k)
def s289 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P2M4.s028 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg s288)
theorem s289_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s289) = v289 X Y k := by
  simp only [s289, v289, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, P2M4.s028_eval, s288_eval, sub_eq_add_neg]
def v290 (X Y k : F) : F := (P2M4.v012 X Y k)*(P2M4.v000 X Y k)
def s290 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s012 P2M4.s000
theorem s290_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s290) = v290 X Y k := by
  simp only [s290, v290, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s012_eval, P2M4.s000_eval]
def v291 (X Y k : F) : F := (v289 X Y k)-(v290 X Y k)
def s291 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s289 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg s290)
theorem s291_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s291) = v291 X Y k := by
  simp only [s291, v291, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s289_eval, s290_eval, sub_eq_add_neg]
def v292 (X Y k : F) : F := (P2M4.v066 X Y k)-(v291 X Y k)
def s292 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P2M4.s066 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg s291)
theorem s292_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s292) = v292 X Y k := by
  simp only [s292, v292, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, P2M4.s066_eval, s291_eval, sub_eq_add_neg]
def v293 (X Y k : F) : F := (v288 X Y k)*(v292 X Y k)
def s293 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s288 s292
theorem s293_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s293) = v293 X Y k := by
  simp only [s293, v293, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s288_eval, s292_eval]
def v294 (X Y k : F) : F := (P2M4.v051 X Y k)+(v293 X Y k)
def s294 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P2M4.s051 s293
theorem s294_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s294) = v294 X Y k := by
  simp only [s294, v294, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, P2M4.s051_eval, s293_eval]
def v295 (X Y k : F) : F := (v294 X Y k)*(P2M4.v042 X Y k)
def s295 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s294 P2M4.s042
theorem s295_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s295) = v295 X Y k := by
  simp only [s295, v295, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s294_eval, P2M4.s042_eval]
def v296 (X Y k : F) : F := (v287 X Y k)-(v295 X Y k)
def s296 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s287 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg s295)
theorem s296_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s296) = v296 X Y k := by
  simp only [s296, v296, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s287_eval, s295_eval, sub_eq_add_neg]
def v297 (X Y k : F) : F := (v296 X Y k)^2
def s297 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow s296 2
theorem s297_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s297) = v297 X Y k := by
  simp only [s297, v297, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow, CriticalZeroSumAssembly20261003.Coefficients.eval_pow, s296_eval]
def v298 (X Y k : F) : F := (P2M4.v000 X Y k)*(v297 X Y k)
def s298 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s000 s297
theorem s298_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s298) = v298 X Y k := by
  simp only [s298, v298, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s000_eval, s297_eval]
def v299 (X Y k : F) : F := (v288 X Y k)*(v291 X Y k)
def s299 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s288 s291
theorem s299_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s299) = v299 X Y k := by
  simp only [s299, v299, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s288_eval, s291_eval]
def v300 (X Y k : F) : F := (P2M4.v062 X Y k)*(P2M4.v001 X Y k)
def s300 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s062 P2M4.s001
theorem s300_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s300) = v300 X Y k := by
  simp only [s300, v300, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s062_eval, P2M4.s001_eval]
def v301 (X Y k : F) : F := (v300 X Y k)*(P2M4.v048 X Y k)
def s301 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s300 P2M4.s048
theorem s301_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s301) = v301 X Y k := by
  simp only [s301, v301, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s300_eval, P2M4.s048_eval]
def v302 (X Y k : F) : F := (P2M4.v012 X Y k)*(P2M4.v042 X Y k)
def s302 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s012 P2M4.s042
theorem s302_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s302) = v302 X Y k := by
  simp only [s302, v302, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s012_eval, P2M4.s042_eval]
def v303 (X Y k : F) : F := (P2M4.v001 X Y k)-(P2M4.v000 X Y k)
def s303 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P2M4.s001 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P2M4.s000)
theorem s303_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s303) = v303 X Y k := by
  simp only [s303, v303, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, P2M4.s001_eval, P2M4.s000_eval, sub_eq_add_neg]
def v304 (X Y k : F) : F := (v302 X Y k)*(v303 X Y k)
def s304 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s302 s303
theorem s304_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s304) = v304 X Y k := by
  simp only [s304, v304, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s302_eval, s303_eval]
def v305 (X Y k : F) : F := (v301 X Y k)-(v304 X Y k)
def s305 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s301 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg s304)
theorem s305_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s305) = v305 X Y k := by
  simp only [s305, v305, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s301_eval, s304_eval, sub_eq_add_neg]
def v306 (X Y k : F) : F := (v305 X Y k)^2
def s306 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow s305 2
theorem s306_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s306) = v306 X Y k := by
  simp only [s306, v306, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow, CriticalZeroSumAssembly20261003.Coefficients.eval_pow, s305_eval]
def v307 (X Y k : F) : F := (v299 X Y k)*(v306 X Y k)
def s307 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s299 s306
theorem s307_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s307) = v307 X Y k := by
  simp only [s307, v307, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s299_eval, s306_eval]
def v308 (X Y k : F) : F := -(v307 X Y k)
def s308 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg s307
theorem s308_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s308) = v308 X Y k := by
  simp only [s308, v308, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s307_eval]
def v309 (X Y k : F) : F := (v298 X Y k)+(v308 X Y k)
def s309 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s298 s308
theorem s309_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s309) = v309 X Y k := by
  simp only [s309, v309, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s298_eval, s308_eval]
def v310 (X Y k : F) : F := (v285 X Y k)*(v309 X Y k)
def s310 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s285 s309
theorem s310_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s310) = v310 X Y k := by
  simp only [s310, v310, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s285_eval, s309_eval]
def v311 (X Y k : F) : F := (v310 X Y k)*(P2M4.v064 X Y k)
def s311 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s310 P2M4.s064
theorem s311_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s311) = v311 X Y k := by
  simp only [s311, v311, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s310_eval, P2M4.s064_eval]
def v312 (X Y k : F) : F := (v311 X Y k)*(P2M4.v006 X Y k)
def s312 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s311 P2M4.s006
theorem s312_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s312) = v312 X Y k := by
  simp only [s312, v312, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s311_eval, P2M4.s006_eval]
def v313 (X Y k : F) : F := (v288 X Y k)*(P2M4.v000 X Y k)
def s313 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s288 P2M4.s000
theorem s313_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s313) = v313 X Y k := by
  simp only [s313, v313, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s288_eval, P2M4.s000_eval]
def v314 (X Y k : F) : F := (P2M4.v017 X Y k)*(P2M4.v079 X Y k)
def s314 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s017 P2M4.s079
theorem s314_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s314) = v314 X Y k := by
  simp only [s314, v314, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s017_eval, P2M4.s079_eval]
def v315 (X Y k : F) : F := (v314 X Y k)*(P2M4.v000 X Y k)
def s315 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s314 P2M4.s000
theorem s315_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s315) = v315 X Y k := by
  simp only [s315, v315, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s314_eval, P2M4.s000_eval]
def v316 (X Y k : F) : F := (P2M4.v023 X Y k)*(P2M4.v001 X Y k)
def s316 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s023 P2M4.s001
theorem s316_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s316) = v316 X Y k := by
  simp only [s316, v316, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s023_eval, P2M4.s001_eval]
def v317 (X Y k : F) : F := (v316 X Y k)*(P2M4.v000 X Y k)
def s317 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s316 P2M4.s000
theorem s317_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s317) = v317 X Y k := by
  simp only [s317, v317, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s316_eval, P2M4.s000_eval]
def v318 (X Y k : F) : F := (v317 X Y k)*(v291 X Y k)
def s318 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s317 s291
theorem s318_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s318) = v318 X Y k := by
  simp only [s318, v318, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s317_eval, s291_eval]
def v319 (X Y k : F) : F := (P2M4.v021 X Y k)-(v318 X Y k)
def s319 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P2M4.s021 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg s318)
theorem s319_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s319) = v319 X Y k := by
  simp only [s319, v319, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, P2M4.s021_eval, s318_eval, sub_eq_add_neg]
def v320 (X Y k : F) : F := (v315 X Y k)+(v319 X Y k)
def s320 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s315 s319
theorem s320_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s320) = v320 X Y k := by
  simp only [s320, v320, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s315_eval, s319_eval]
def v321 (X Y k : F) : F := (P2M4.v035 X Y k)*(P2M4.v008 X Y k)
def s321 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s035 P2M4.s008
theorem s321_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s321) = v321 X Y k := by
  simp only [s321, v321, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s035_eval, P2M4.s008_eval]
def v322 (X Y k : F) : F := (v321 X Y k)*(P2M4.v010 X Y k)
def s322 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s321 P2M4.s010
theorem s322_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s322) = v322 X Y k := by
  simp only [s322, v322, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s321_eval, P2M4.s010_eval]
def v323 (X Y k : F) : F := (v322 X Y k)*(P2M4.v001 X Y k)
def s323 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s322 P2M4.s001
theorem s323_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s323) = v323 X Y k := by
  simp only [s323, v323, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s322_eval, P2M4.s001_eval]
def v324 (X Y k : F) : F := (v323 X Y k)*(P2M4.v087 X Y k)
def s324 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s323 P2M4.s087
theorem s324_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s324) = v324 X Y k := by
  simp only [s324, v324, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s323_eval, P2M4.s087_eval]
def v325 (X Y k : F) : F := (v320 X Y k)+(v324 X Y k)
def s325 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s320 s324
theorem s325_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s325) = v325 X Y k := by
  simp only [s325, v325, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s320_eval, s324_eval]
def v326 (X Y k : F) : F := (v294 X Y k)*(v325 X Y k)
def s326 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s294 s325
theorem s326_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s326) = v326 X Y k := by
  simp only [s326, v326, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s294_eval, s325_eval]
def v327 (X Y k : F) : F := -(v326 X Y k)
def s327 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg s326
theorem s327_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s327) = v327 X Y k := by
  simp only [s327, v327, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s326_eval]
def v328 (X Y k : F) : F := (v316 X Y k)*(v291 X Y k)
def s328 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s316 s291
theorem s328_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s328) = v328 X Y k := by
  simp only [s328, v328, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s316_eval, s291_eval]
def v329 (X Y k : F) : F := (v328 X Y k)*(v303 X Y k)
def s329 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s328 s303
theorem s329_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s329) = v329 X Y k := by
  simp only [s329, v329, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s328_eval, s303_eval]
def v330 (X Y k : F) : F := (P2M4.v035 X Y k)*(P2M4.v001 X Y k)
def s330 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s035 P2M4.s001
theorem s330_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s330) = v330 X Y k := by
  simp only [s330, v330, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s035_eval, P2M4.s001_eval]
def v331 (X Y k : F) : F := (v330 X Y k)*(P2M4.v087 X Y k)
def s331 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s330 P2M4.s087
theorem s331_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s331) = v331 X Y k := by
  simp only [s331, v331, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s330_eval, P2M4.s087_eval]
def v332 (X Y k : F) : F := (P2M4.v051 X Y k)+(v331 X Y k)
def s332 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P2M4.s051 s331
theorem s332_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s332) = v332 X Y k := by
  simp only [s332, v332, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, P2M4.s051_eval, s331_eval]
def v333 (X Y k : F) : F := (v329 X Y k)*(v332 X Y k)
def s333 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s329 s332
theorem s333_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s333) = v333 X Y k := by
  simp only [s333, v333, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s329_eval, s332_eval]
def v334 (X Y k : F) : F := -(v333 X Y k)
def s334 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg s333
theorem s334_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s334) = v334 X Y k := by
  simp only [s334, v334, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s333_eval]
def v335 (X Y k : F) : F := (v327 X Y k)+(v334 X Y k)
def s335 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s327 s334
theorem s335_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s335) = v335 X Y k := by
  simp only [s335, v335, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s327_eval, s334_eval]
def v336 (X Y k : F) : F := (P2M4.v000 X Y k)*(v335 X Y k)
def s336 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s000 s335
theorem s336_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s336) = v336 X Y k := by
  simp only [s336, v336, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s000_eval, s335_eval]
def v337 (X Y k : F) : F := (P2M4.v000 X Y k)*(v294 X Y k)
def s337 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s000 s294
theorem s337_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s337) = v337 X Y k := by
  simp only [s337, v337, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s000_eval, s294_eval]
def v338 (X Y k : F) : F := (v290 X Y k)-(v291 X Y k)
def s338 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s290 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg s291)
theorem s338_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s338) = v338 X Y k := by
  simp only [s338, v338, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s290_eval, s291_eval, sub_eq_add_neg]
def v339 (X Y k : F) : F := (v337 X Y k)*(v338 X Y k)
def s339 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s337 s338
theorem s339_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s339) = v339 X Y k := by
  simp only [s339, v339, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s337_eval, s338_eval]
def v340 (X Y k : F) : F := -(v339 X Y k)
def s340 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg s339
theorem s340_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s340) = v340 X Y k := by
  simp only [s340, v340, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s339_eval]
def v341 (X Y k : F) : F := (v291 X Y k)*(v303 X Y k)
def s341 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s291 s303
theorem s341_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s341) = v341 X Y k := by
  simp only [s341, v341, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s291_eval, s303_eval]
def v342 (X Y k : F) : F := (P2M4.v035 X Y k)*(P2M4.v000 X Y k)
def s342 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s035 P2M4.s000
theorem s342_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s342) = v342 X Y k := by
  simp only [s342, v342, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s035_eval, P2M4.s000_eval]
def v343 (X Y k : F) : F := (v342 X Y k)*(P2M4.v038 X Y k)
def s343 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s342 P2M4.s038
theorem s343_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s343) = v343 X Y k := by
  simp only [s343, v343, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s342_eval, P2M4.s038_eval]
def v344 (X Y k : F) : F := (P2M4.v051 X Y k)+(v343 X Y k)
def s344 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P2M4.s051 s343
theorem s344_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s344) = v344 X Y k := by
  simp only [s344, v344, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, P2M4.s051_eval, s343_eval]
def v345 (X Y k : F) : F := (v341 X Y k)*(v344 X Y k)
def s345 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s341 s344
theorem s345_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s345) = v345 X Y k := by
  simp only [s345, v345, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s341_eval, s344_eval]
def v346 (X Y k : F) : F := (v340 X Y k)+(v345 X Y k)
def s346 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s340 s345
theorem s346_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s346) = v346 X Y k := by
  simp only [s346, v346, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s340_eval, s345_eval]
def v347 (X Y k : F) : F := (v336 X Y k)*(v346 X Y k)
def s347 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s336 s346
theorem s347_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s347) = v347 X Y k := by
  simp only [s347, v347, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s336_eval, s346_eval]
def v348 (X Y k : F) : F := (v337 X Y k)*(v332 X Y k)
def s348 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s337 s332
theorem s348_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s348) = v348 X Y k := by
  simp only [s348, v348, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s337_eval, s332_eval]
def v349 (X Y k : F) : F := (v303 X Y k)*(v325 X Y k)
def s349 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s303 s325
theorem s349_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s349) = v349 X Y k := by
  simp only [s349, v349, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s303_eval, s325_eval]
def v350 (X Y k : F) : F := -(v349 X Y k)
def s350 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg s349
theorem s350_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s350) = v350 X Y k := by
  simp only [s350, v350, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s349_eval]
def v351 (X Y k : F) : F := (v348 X Y k)+(v350 X Y k)
def s351 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s348 s350
theorem s351_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s351) = v351 X Y k := by
  simp only [s351, v351, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s348_eval, s350_eval]
def v352 (X Y k : F) : F := (P2M4.v051 X Y k)*(v303 X Y k)
def s352 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s051 s303
theorem s352_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s352) = v352 X Y k := by
  simp only [s352, v352, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s051_eval, s303_eval]
def v353 (X Y k : F) : F := (v352 X Y k)*(v332 X Y k)
def s353 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s352 s332
theorem s353_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s353) = v353 X Y k := by
  simp only [s353, v353, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s352_eval, s332_eval]
def v354 (X Y k : F) : F := (v351 X Y k)+(v353 X Y k)
def s354 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s351 s353
theorem s354_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s354) = v354 X Y k := by
  simp only [s354, v354, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s351_eval, s353_eval]
def v355 (X Y k : F) : F := (v291 X Y k)*(v354 X Y k)
def s355 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s291 s354
theorem s355_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s355) = v355 X Y k := by
  simp only [s355, v355, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s291_eval, s354_eval]
def v356 (X Y k : F) : F := (v294 X Y k)*(v344 X Y k)
def s356 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s294 s344
theorem s356_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s356) = v356 X Y k := by
  simp only [s356, v356, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s294_eval, s344_eval]
def v357 (X Y k : F) : F := -(v356 X Y k)
def s357 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg s356
theorem s357_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s357) = v357 X Y k := by
  simp only [s357, v357, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s356_eval]
def v358 (X Y k : F) : F := (v316 X Y k)*(v303 X Y k)
def s358 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s316 s303
theorem s358_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s358) = v358 X Y k := by
  simp only [s358, v358, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s316_eval, s303_eval]
def v359 (X Y k : F) : F := (v358 X Y k)*(v338 X Y k)
def s359 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s358 s338
theorem s359_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s359) = v359 X Y k := by
  simp only [s359, v359, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s358_eval, s338_eval]
def v360 (X Y k : F) : F := -(v359 X Y k)
def s360 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg s359
theorem s360_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s360) = v360 X Y k := by
  simp only [s360, v360, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s359_eval]
def v361 (X Y k : F) : F := (v357 X Y k)+(v360 X Y k)
def s361 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s357 s360
theorem s361_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s361) = v361 X Y k := by
  simp only [s361, v361, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s357_eval, s360_eval]
def v362 (X Y k : F) : F := (P2M4.v000 X Y k)*(v361 X Y k)
def s362 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s000 s361
theorem s362_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s362) = v362 X Y k := by
  simp only [s362, v362, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s000_eval, s361_eval]
def v363 (X Y k : F) : F := (v352 X Y k)*(v344 X Y k)
def s363 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s352 s344
theorem s363_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s363) = v363 X Y k := by
  simp only [s363, v363, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s352_eval, s344_eval]
def v364 (X Y k : F) : F := -(v363 X Y k)
def s364 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg s363
theorem s364_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s364) = v364 X Y k := by
  simp only [s364, v364, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s363_eval]
def v365 (X Y k : F) : F := (v362 X Y k)+(v364 X Y k)
def s365 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s362 s364
theorem s365_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s365) = v365 X Y k := by
  simp only [s365, v365, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s362_eval, s364_eval]
def v366 (X Y k : F) : F := (v355 X Y k)*(v365 X Y k)
def s366 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s355 s365
theorem s366_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s366) = v366 X Y k := by
  simp only [s366, v366, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s355_eval, s365_eval]
def v367 (X Y k : F) : F := -(v366 X Y k)
def s367 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg s366
theorem s367_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s367) = v367 X Y k := by
  simp only [s367, v367, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s366_eval]
def v368 (X Y k : F) : F := (v347 X Y k)+(v367 X Y k)
def s368 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s347 s367
theorem s368_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s368) = v368 X Y k := by
  simp only [s368, v368, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s347_eval, s367_eval]
def v369 (X Y k : F) : F := (v313 X Y k)*(v368 X Y k)
def s369 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s313 s368
theorem s369_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s369) = v369 X Y k := by
  simp only [s369, v369, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s313_eval, s368_eval]
def v370 (X Y k : F) : F := (v286 X Y k)*(P2M4.v000 X Y k)
def s370 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s286 P2M4.s000
theorem s370_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s370) = v370 X Y k := by
  simp only [s370, v370, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s286_eval, P2M4.s000_eval]
def v371 (X Y k : F) : F := (v290 X Y k)*(v292 X Y k)
def s371 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s290 s292
theorem s371_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s371) = v371 X Y k := by
  simp only [s371, v371, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s290_eval, s292_eval]
def v372 (X Y k : F) : F := (P2M4.v051 X Y k)+(v371 X Y k)
def s372 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P2M4.s051 s371
theorem s372_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s372) = v372 X Y k := by
  simp only [s372, v372, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, P2M4.s051_eval, s371_eval]
def v373 (X Y k : F) : F := (P2M4.v042 X Y k)*(v372 X Y k)
def s373 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s042 s372
theorem s373_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s373) = v373 X Y k := by
  simp only [s373, v373, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s042_eval, s372_eval]
def v374 (X Y k : F) : F := (v370 X Y k)-(v373 X Y k)
def s374 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s370 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg s373)
theorem s374_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s374) = v374 X Y k := by
  simp only [s374, v374, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s370_eval, s373_eval, sub_eq_add_neg]
def v375 (X Y k : F) : F := (v369 X Y k)*(v374 X Y k)
def s375 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s369 s374
theorem s375_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s375) = v375 X Y k := by
  simp only [s375, v375, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s369_eval, s374_eval]
def v376 (X Y k : F) : F := (v335 X Y k)*(v365 X Y k)
def s376 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s335 s365
theorem s376_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s376) = v376 X Y k := by
  simp only [s376, v376, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s335_eval, s365_eval]
def v377 (X Y k : F) : F := (v316 X Y k)*(v346 X Y k)
def s377 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s316 s346
theorem s377_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s377) = v377 X Y k := by
  simp only [s377, v377, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s316_eval, s346_eval]
def v378 (X Y k : F) : F := (v377 X Y k)*(v354 X Y k)
def s378 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s377 s354
theorem s378_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s378) = v378 X Y k := by
  simp only [s378, v378, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s377_eval, s354_eval]
def v379 (X Y k : F) : F := (v376 X Y k)+(v378 X Y k)
def s379 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s376 s378
theorem s379_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s379) = v379 X Y k := by
  simp only [s379, v379, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s376_eval, s378_eval]
def v380 (X Y k : F) : F := (P2M4.v000 X Y k)*(v379 X Y k)
def s380 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s000 s379
theorem s380_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s380) = v380 X Y k := by
  simp only [s380, v380, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s000_eval, s379_eval]
def v381 (X Y k : F) : F := (P2M4.v051 X Y k)*(v354 X Y k)
def s381 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s051 s354
theorem s381_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s381) = v381 X Y k := by
  simp only [s381, v381, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s051_eval, s354_eval]
def v382 (X Y k : F) : F := (v381 X Y k)*(v365 X Y k)
def s382 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s381 s365
theorem s382_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s382) = v382 X Y k := by
  simp only [s382, v382, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s381_eval, s365_eval]
def v383 (X Y k : F) : F := (v380 X Y k)+(v382 X Y k)
def s383 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s380 s382
theorem s383_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s383) = v383 X Y k := by
  simp only [s383, v383, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s380_eval, s382_eval]
def v384 (X Y k : F) : F := (v291 X Y k)*(v383 X Y k)
def s384 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s291 s383
theorem s384_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s384) = v384 X Y k := by
  simp only [s384, v384, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s291_eval, s383_eval]
def v385 (X Y k : F) : F := (P2M4.v062 X Y k)*(P2M4.v048 X Y k)
def s385 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s062 P2M4.s048
theorem s385_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s385) = v385 X Y k := by
  simp only [s385, v385, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s062_eval, P2M4.s048_eval]
def v386 (X Y k : F) : F := (v290 X Y k)*(P2M4.v042 X Y k)
def s386 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s290 P2M4.s042
theorem s386_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s386) = v386 X Y k := by
  simp only [s386, v386, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s290_eval, P2M4.s042_eval]
def v387 (X Y k : F) : F := (v386 X Y k)*(P2M4.v075 X Y k)
def s387 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s386 P2M4.s075
theorem s387_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s387) = v387 X Y k := by
  simp only [s387, v387, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s386_eval, P2M4.s075_eval]
def v388 (X Y k : F) : F := (v385 X Y k)-(v387 X Y k)
def s388 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s385 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg s387)
theorem s388_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s388) = v388 X Y k := by
  simp only [s388, v388, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s385_eval, s387_eval, sub_eq_add_neg]
def s389_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[],[0,0,0,0,0,0,0,-375,225,-45,3],[0,0,0,0,0,0,400,665,-464,93,-6],[0,0,0,0,0,-50,-890,-195,255,-51,3],[0,0,0,0,400,-890,1408,-351,6,3],[0,0,0,-375,665,-195,-351,102,-6],[0,0,0,225,-464,255,6,-6],[0,0,0,-45,93,-51,3],[0,0,0,3,-6,3]],[[],[],[0,0,0,0,0,0,400,-535,241,-45,3],[0,0,0,0,0,-400,1680,185,-416,93,-6],[0,0,0,0,-400,-2290,-426,-195,255,-51,3],[0,0,0,400,1680,-426,1312,-351,6,3],[0,0,0,-535,185,-195,-351,102,-6],[0,0,0,241,-416,255,6,-6],[0,0,0,-45,93,-51,3],[0,0,0,3,-6,3]],[[],[0,0,0,0,0,0,4800,-1920,192],[0,0,0,0,0,-4800,-1520,-4344,2948,-576,36],[0,0,0,0,0,3440,6048,9420,-6296,1188,-72],[0,0,0,-4800,3440,-3792,-12368,-2976,3444,-648,36],[0,0,4800,-1520,6048,-12368,19696,-4668,72,36],[0,0,-1920,-4344,9420,-2976,-4668,1296,-72],[0,0,192,2948,-6296,3444,72,-72],[0,0,0,-576,1188,-648,36],[0,0,0,36,-72,36]],[[],[0,0,0,0,0,0,7360,-2432,192],[0,0,0,0,0,-7360,-1280,-4312,2932,-576,36],[0,0,0,0,0,3712,21152,3756,-5768,1188,-72],[0,0,0,-7360,3712,-34064,-6688,-2976,3444,-648,36],[0,0,7360,-1280,21152,-6688,18640,-4668,72,36],[0,0,-2432,-4312,3756,-2976,-4668,1296,-72],[0,0,192,2932,-5768,3444,72,-72],[0,0,0,-576,1188,-648,36],[0,0,0,36,-72,36]],[[],[0,0,0,0,0,0,48640,-17408,1536],[0,0,0,0,0,-48640,-20096,-24490,17930,-3366,198],[0,0,0,0,0,37504,41680,61026,-38856,6930,-396],[0,0,0,-48640,37504,-37452,-78956,-20490,21198,-3762,198],[0,0,48640,-20096,41680,-78956,125424,-28326,396,198],[0,0,-17408,-24490,61026,-20490,-28326,7524,-396],[0,0,1536,17930,-38856,21198,396,-396],[0,0,0,-3366,6930,-3762,198],[0,0,0,198,-396,198]],[[],[0,0,0,0,0,0,63488,-19968,1536],[0,0,0,0,0,-63488,-39120,-17034,17210,-3366,198],[0,0,0,0,0,59088,119120,32706,-36408,6930,-396],[0,0,0,-63488,59088,-207244,-49916,-20490,21198,-3762,198],[0,0,63488,-39120,119120,-49916,120528,-28326,396,198],[0,0,-19968,-17034,32706,-20490,-28326,7524,-396],[0,0,1536,17210,-36408,21198,396,-396],[0,0,0,-3366,6930,-3762,198],[0,0,0,198,-396,198]],[[],[0,0,0,0,0,0,208640,-67584,5376],[0,0,0,0,0,-208640,-112848,-89056,66436,-11880,660],[0,0,0,0,0,180432,172288,238716,-144456,24420,-1320],[0,0,0,-208640,180432,-177216,-305152,-84312,78660,-13200,660],[0,0,208640,-112848,172288,-305152,481296,-103740,1320,660],[0,0,-67584,-89056,238716,-84312,-103740,26400,-1320],[0,0,5376,66436,-144456,78660,1320,-1320],[0,0,0,-11880,24420,-13200,660],[0,0,0,660,-1320,660]],[[],[0,0,0,0,0,0,239872,-72192,5376],[0,0,0,0,0,-239872,-219136,-52352,63316,-11880,660],[0,0,0,0,0,291328,394368,161052,-138264,24420,-1320],[0,0,0,-239872,291328,-694784,-224368,-84312,78660,-13200,660],[0,0,239872,-219136,394368,-224368,468912,-103740,1320,660],[0,0,-72192,-52352,161052,-84312,-103740,26400,-1320],[0,0,5376,63316,-138264,78660,1320,-1320],[0,0,0,-11880,24420,-13200,660],[0,0,0,660,-1320,660]]]
def s389_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[0,0,0,0,0,0,497152,-147456,10752],[0,0,0,0,0,-497152,-363520,-229245,166247,-28215,1485],[0,0,0,0,0,510976,473376,628359,-360744,57915,-2970],[0,0,0,-497152,510976,-509766,-794606,-231273,196065,-31185,1485],[0,0,497152,-363520,473376,-794606,1240464,-255465,2970,1485],[0,0,-147456,-229245,628359,-231273,-255465,62370,-2970],[0,0,10752,166247,-360744,196065,2970,-2970],[0,0,0,-28215,57915,-31185,1485],[0,0,0,1485,-2970,1485]],[[],[0,0,0,0,0,0,520192,-150016,10752],[0,0,0,0,0,-520192,-627040,-147389,160007,-28215,1485],[0,0,0,0,0,777056,849184,505287,-351816,57915,-2970],[0,0,0,-520192,777056,-1425094,-665294,-231273,196065,-31185,1485],[0,0,520192,-627040,849184,-665294,1222608,-255465,2970,1485],[0,0,-150016,-147389,505287,-231273,-255465,62370,-2970],[0,0,10752,160007,-351816,196065,2970,-2970],[0,0,0,-28215,57915,-31185,1485],[0,0,0,1485,-2970,1485]],[[],[0,0,0,0,0,0,722560,-198400,13440],[0,0,0,0,0,-722560,-756832,-431504,295240,-47520,2376],[0,0,0,0,0,955232,905408,1174296,-638064,97416,-4752],[0,0,0,-722560,955232,-974688,-1469536,-446112,345960,-52272,2376],[0,0,722560,-756832,905408,-1469536,2263392,-445752,4752,2376],[0,0,-198400,-431504,1174296,-446112,-445752,104544,-4752],[0,0,13440,295240,-638064,345960,4752,-4752],[0,0,0,-47520,97416,-52272,2376],[0,0,0,2376,-4752,2376]],[[],[0,0,0,0,0,0,709760,-195840,13440],[0,0,0,0,0,-709760,-1089024,-340560,289192,-47520,2376],[0,0,0,0,0,1284864,1242304,1076184,-632016,97416,-4752],[0,0,0,-709760,1284864,-1830368,-1365376,-446112,345960,-52272,2376],[0,0,709760,-1089024,1242304,-1365376,2251296,-445752,4752,2376],[0,0,-195840,-340560,1076184,-446112,-445752,104544,-4752],[0,0,13440,289192,-632016,345960,4752,-4752],[0,0,0,-47520,97416,-52272,2376],[0,0,0,2376,-4752,2376]],[[],[0,0,0,0,0,0,657920,-168960,10752],[0,0,0,0,0,-657920,-1077504,-599900,381164,-58212,2772],[0,0,0,0,0,1246464,1227296,1600284,-820176,119196,-5544],[0,0,0,-657920,1246464,-1276296,-1981448,-621180,443268,-63756,2772],[0,0,657920,-1077504,1227296,-1981448,2999136,-565236,5544,2772],[0,0,-168960,-599900,1600284,-621180,-565236,127512,-5544],[0,0,10752,381164,-820176,443268,5544,-5544],[0,0,0,-58212,119196,-63756,2772],[0,0,0,2772,-5544,2772]],[[],[0,0,0,0,0,0,624640,-164352,10752],[0,0,0,0,0,-624640,-1216160,-575260,380492,-58212,2772],[0,0,0,0,0,1380512,1250592,1609692,-822192,119196,-5544],[0,0,0,-624640,1380512,-1372168,-1990184,-621180,443268,-63756,2772],[0,0,624640,-1216160,1250592,-1990184,3003168,-565236,5544,2772],[0,0,-164352,-575260,1609692,-621180,-565236,127512,-5544],[0,0,10752,380492,-822192,443268,5544,-5544],[0,0,0,-58212,119196,-63756,2772],[0,0,0,2772,-5544,2772]],[[],[0,0,0,0,0,0,367360,-89088,5376],[0,0,0,0,0,-367360,-1071776,-616032,360424,-52272,2376],[0,0,0,0,0,1160864,1176960,1604568,-772368,106920,-4752],[0,0,0,-367360,1160864,-1132608,-1964992,-629712,415656,-57024,2376],[0,0,367360,-1071776,1176960,-1964992,2908704,-524952,4752,2376],[0,0,-89088,-616032,1604568,-629712,-524952,114048,-4752],[0,0,5376,360424,-772368,415656,4752,-4752],[0,0,0,-52272,106920,-57024,2376],[0,0,0,2376,-4752,2376]],[[],[0,0,0,0,0,0,346368,-86528,5376],[0,0,0,0,0,-346368,-880640,-681376,365704,-52272,2376],[0,0,0,0,0,967168,855680,1714968,-780720,106920,-4752],[0,0,0,-346368,967168,-359360,-2080672,-629712,415656,-57024,2376],[0,0,346368,-880640,855680,-2080672,2925408,-524952,4752,2376],[0,0,-86528,-681376,1714968,-629712,-524952,114048,-4752],[0,0,5376,365704,-780720,415656,4752,-4752],[0,0,0,-52272,106920,-57024,2376],[0,0,0,2376,-4752,2376]]]
def s389_part02 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[0,0,0,0,0,0,115200,-26624,1536],[0,0,0,0,0,-115200,-739328,-463201,247871,-34155,1485],[0,0,0,0,0,765952,781648,1175991,-529056,69795,-2970],[0,0,0,-115200,765952,-639966,-1423862,-461637,283185,-37125,1485],[0,0,115200,-739328,781648,-1423862,2049696,-354465,2970,1485],[0,0,-26624,-463201,1175991,-461637,-354465,74250,-2970],[0,0,1536,247871,-529056,283185,2970,-2970],[0,0,0,-34155,69795,-37125,1485],[0,0,0,1485,-2970,1485]],[[],[0,0,0,0,0,0,110592,-26112,1536],[0,0,0,0,0,-110592,-400176,-557697,254351,-34155,1485],[0,0,0,0,0,426288,381008,1298007,-537264,69795,-2970],[0,0,0,-110592,426288,350306,-1552358,-461637,283185,-37125,1485],[0,0,110592,-400176,381008,-1552358,2066112,-354465,2970,1485],[0,0,-26112,-557697,1298007,-461637,-354465,74250,-2970],[0,0,1536,254351,-537264,283185,2970,-2970],[0,0,0,-34155,69795,-37125,1485],[0,0,0,1485,-2970,1485]],[[],[0,0,0,0,0,0,15552,-3456,192],[0,0,0,0,0,-15552,-339120,-249400,121012,-15840,660],[0,0,0,0,0,342576,342176,614684,-257144,32340,-1320],[0,0,0,-15552,342576,-185936,-735696,-238848,136740,-17160,660],[0,0,15552,-339120,342176,-735696,1023664,-169740,1320,660],[0,0,-3456,-249400,614684,-238848,-169740,34320,-1320],[0,0,192,121012,-257144,136740,1320,-1320],[0,0,0,-15840,32340,-17160,660],[0,0,0,660,-1320,660]],[[],[0,0,0,0,0,0,15552,-3456,192],[0,0,0,0,0,-15552,-103680,-309144,124772,-15840,660],[0,0,0,0,0,107136,99744,683132,-261416,32340,-1320],[0,0,0,-15552,107136,418416,-807904,-238848,136740,-17160,660],[0,0,15552,-103680,99744,-807904,1032208,-169740,1320,660],[0,0,-3456,-309144,683132,-238848,-169740,34320,-1320],[0,0,192,124772,-261416,136740,1320,-1320],[0,0,0,-15840,32340,-17160,660],[0,0,0,660,-1320,660]],[[],[],[0,0,0,0,0,0,-93312,-91674,39850,-4950,198],[0,0,0,0,0,93312,88848,217506,-84200,10098,-396],[0,0,0,0,93312,5652,-257356,-82842,44430,-5346,198],[0,0,0,-93312,88848,-257356,343984,-54726,396,198],[0,0,0,-91674,217506,-82842,-54726,10692,-396],[0,0,0,39850,-84200,44430,396,-396],[0,0,0,-4950,10098,-5346,198],[0,0,0,198,-396,198]],[[],[],[0,0,0,0,0,0,-11664,-110970,40986,-4950,198],[0,0,0,0,0,11664,11664,237954,-85400,10098,-396],[0,0,0,0,11664,198612,-278940,-82842,44430,-5346,198],[0,0,0,-11664,11664,-278940,346384,-54726,396,198],[0,0,0,-110970,237954,-82842,-54726,10692,-396],[0,0,0,40986,-85400,44430,396,-396],[0,0,0,-4950,10098,-5346,198],[0,0,0,198,-396,198]],[[],[],[0,0,0,0,0,0,-11664,-20736,7956,-936,36],[0,0,0,0,0,11664,10368,46764,-16680,1908,-72],[0,0,0,0,11664,20736,-54720,-17304,8724,-1008,36],[0,0,0,-11664,10368,-54720,69840,-10668,72,36],[0,0,0,-20736,46764,-17304,-10668,2016,-72],[0,0,0,7956,-16680,8724,72,-72],[0,0,0,-936,1908,-1008,36],[0,0,0,36,-72,36]],[[],[],[0,0,0,0,0,0,0,-23328,8100,-936,36],[0,0,0,0,0,0,0,49356,-16824,1908,-72],[0,0,0,0,0,46656,-57456,-17304,8724,-1008,36],[0,0,0,0,0,-57456,70128,-10668,72,36],[0,0,0,-23328,49356,-17304,-10668,2016,-72],[0,0,0,8100,-16824,8724,72,-72],[0,0,0,-936,1908,-1008,36],[0,0,0,36,-72,36]]]
def s389_part03 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[],[0,0,0,0,0,0,0,-2187,729,-81,3],[0,0,0,0,0,0,0,4617,-1512,165,-6],[0,0,0,0,0,4374,-5346,-1647,783,-87,3],[0,0,0,0,0,-5346,6480,-951,6,3],[0,0,0,-2187,4617,-1647,-951,174,-6],[0,0,0,729,-1512,783,6,-6],[0,0,0,-81,165,-87,3],[0,0,0,3,-6,3]],[[],[],[0,0,0,0,0,0,0,-2187,729,-81,3],[0,0,0,0,0,0,0,4617,-1512,165,-6],[0,0,0,0,0,4374,-5346,-1647,783,-87,3],[0,0,0,0,0,-5346,6480,-951,6,3],[0,0,0,-2187,4617,-1647,-951,174,-6],[0,0,0,729,-1512,783,6,-6],[0,0,0,-81,165,-87,3],[0,0,0,3,-6,3]]]
def s389 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := s389_part00 ++ s389_part01 ++ s389_part02 ++ s389_part03
def v389 (X Y k : F) : F := (v384 X Y k)*(v388 X Y k)
def calculation389 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s384 s388
theorem calculation389_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y calculation389) = v389 X Y k := by
  simp only [calculation389, v389, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s384_eval, s388_eval]
def residual389 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add calculation389 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg s389)
theorem residual389_length : residual389.length = 26 := by rfl

end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2
