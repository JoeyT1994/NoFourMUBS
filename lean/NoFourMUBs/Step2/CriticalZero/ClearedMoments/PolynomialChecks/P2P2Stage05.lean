import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage04Exact
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
variable {F : Type*} [Field F] [CharZero F]
def v397 (X Y k : F) : F := (P2M4.v062 X Y k)^3
def s397 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow P2M4.s062 3
theorem s397_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s397) = v397 X Y k := by
  simp only [s397, v397, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow, CriticalZeroSumAssembly20261003.Coefficients.eval_pow, P2M4.s062_eval]
def v398 (X Y k : F) : F := (v397 X Y k)*(P2M4.v064 X Y k)
def s398 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s397 P2M4.s064
theorem s398_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s398) = v398 X Y k := by
  simp only [s398, v398, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s397_eval, P2M4.s064_eval]
def v399 (X Y k : F) : F := (v398 X Y k)*(P2M4.v006 X Y k)
def s399 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s398 P2M4.s006
theorem s399_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s399) = v399 X Y k := by
  simp only [s399, v399, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s398_eval, P2M4.s006_eval]
def v400 (X Y k : F) : F := (P2M4.v004 X Y k)*(P2M4.v012 X Y k)
def s400 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s004 P2M4.s012
theorem s400_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s400) = v400 X Y k := by
  simp only [s400, v400, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s004_eval, P2M4.s012_eval]
def v401 (X Y k : F) : F := (v400 X Y k)*(P2M4.v001 X Y k)
def s401 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s400 P2M4.s001
theorem s401_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s401) = v401 X Y k := by
  simp only [s401, v401, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s400_eval, P2M4.s001_eval]
def v402 (X Y k : F) : F := (v401 X Y k)*(v284 X Y k)
def s402 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s401 s284
theorem s402_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s402) = v402 X Y k := by
  simp only [s402, v402, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s401_eval, s284_eval]
def v403 (X Y k : F) : F := (v402 X Y k)*(P2M4.v144 X Y k)
def s403 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s402 P2M4.s144
theorem s403_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s403) = v403 X Y k := by
  simp only [s403, v403, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s402_eval, P2M4.s144_eval]
def v404 (X Y k : F) : F := (v288 X Y k)*(P2M4.v144 X Y k)
def s404 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s288 P2M4.s144
theorem s404_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s404) = v404 X Y k := by
  simp only [s404, v404, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s288_eval, P2M4.s144_eval]
def v405 (X Y k : F) : F := (P2M4.v162 X Y k)+(v293 X Y k)
def s405 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P2M4.s162 s293
theorem s405_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s405) = v405 X Y k := by
  simp only [s405, v405, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, P2M4.s162_eval, s293_eval]
def v406 (X Y k : F) : F := (v405 X Y k)*(P2M4.v156 X Y k)
def s406 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s405 P2M4.s156
theorem s406_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s406) = v406 X Y k := by
  simp only [s406, v406, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s405_eval, P2M4.s156_eval]
def v407 (X Y k : F) : F := -(v406 X Y k)
def s407 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg s406
theorem s407_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s407) = v407 X Y k := by
  simp only [s407, v407, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s406_eval]
def v408 (X Y k : F) : F := (v404 X Y k)-(v407 X Y k)
def s408 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s404 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg s407)
theorem s408_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s408) = v408 X Y k := by
  simp only [s408, v408, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s404_eval, s407_eval, sub_eq_add_neg]
def v409 (X Y k : F) : F := (v408 X Y k)^2
def s409 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow s408 2
theorem s409_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s409) = v409 X Y k := by
  simp only [s409, v409, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow, CriticalZeroSumAssembly20261003.Coefficients.eval_pow, s408_eval]
def v410 (X Y k : F) : F := (P2M4.v000 X Y k)*(v409 X Y k)
def s410 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s000 s409
theorem s410_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s410) = v410 X Y k := by
  simp only [s410, v410, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s000_eval, s409_eval]
def v411 (X Y k : F) : F := (P2M4.v001 X Y k)*(P2M4.v048 X Y k)
def s411 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s001 P2M4.s048
theorem s411_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s411) = v411 X Y k := by
  simp only [s411, v411, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s001_eval, P2M4.s048_eval]
def v412 (X Y k : F) : F := (v411 X Y k)*(P2M4.v144 X Y k)
def s412 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s411 P2M4.s144
theorem s412_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s412) = v412 X Y k := by
  simp only [s412, v412, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s411_eval, P2M4.s144_eval]
def v413 (X Y k : F) : F := (P2M4.v012 X Y k)*(v303 X Y k)
def s413 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s012 s303
theorem s413_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s413) = v413 X Y k := by
  simp only [s413, v413, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s012_eval, s303_eval]
def v414 (X Y k : F) : F := (v413 X Y k)*(P2M4.v156 X Y k)
def s414 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s413 P2M4.s156
theorem s414_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s414) = v414 X Y k := by
  simp only [s414, v414, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s413_eval, P2M4.s156_eval]
def v415 (X Y k : F) : F := (v412 X Y k)-(v414 X Y k)
def s415 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s412 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg s414)
theorem s415_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s415) = v415 X Y k := by
  simp only [s415, v415, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s412_eval, s414_eval, sub_eq_add_neg]
def v416 (X Y k : F) : F := (v415 X Y k)^2
def s416 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow s415 2
theorem s416_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s416) = v416 X Y k := by
  simp only [s416, v416, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow, CriticalZeroSumAssembly20261003.Coefficients.eval_pow, s415_eval]
def v417 (X Y k : F) : F := (v299 X Y k)*(v416 X Y k)
def s417 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s299 s416
theorem s417_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s417) = v417 X Y k := by
  simp only [s417, v417, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s299_eval, s416_eval]
def v418 (X Y k : F) : F := -(v417 X Y k)
def s418 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg s417
theorem s418_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s418) = v418 X Y k := by
  simp only [s418, v418, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s417_eval]
def v419 (X Y k : F) : F := (v410 X Y k)+(v418 X Y k)
def s419 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s410 s418
theorem s419_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s419) = v419 X Y k := by
  simp only [s419, v419, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s410_eval, s418_eval]
def v420 (X Y k : F) : F := (v403 X Y k)*(v419 X Y k)
def s420 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s403 s419
theorem s420_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s420) = v420 X Y k := by
  simp only [s420, v420, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s403_eval, s419_eval]
def v421 (X Y k : F) : F := (v420 X Y k)*(P2M4.v146 X Y k)
def s421 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s420 P2M4.s146
theorem s421_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s421) = v421 X Y k := by
  simp only [s421, v421, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s420_eval, P2M4.s146_eval]
def v422 (X Y k : F) : F := (v421 X Y k)*(P2M4.v141 X Y k)
def s422 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s421 P2M4.s141
theorem s422_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s422) = v422 X Y k := by
  simp only [s422, v422, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s421_eval, P2M4.s141_eval]
def v423 (X Y k : F) : F := -(v320 X Y k)
def s423 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg s320
theorem s423_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s423) = v423 X Y k := by
  simp only [s423, v423, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s320_eval]
def v424 (X Y k : F) : F := (v423 X Y k)+(v324 X Y k)
def s424 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s423 s324
theorem s424_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s424) = v424 X Y k := by
  simp only [s424, v424, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s423_eval, s324_eval]
def v425 (X Y k : F) : F := (v405 X Y k)*(v424 X Y k)
def s425 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s405 s424
theorem s425_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s425) = v425 X Y k := by
  simp only [s425, v425, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s405_eval, s424_eval]
def v426 (X Y k : F) : F := -(v425 X Y k)
def s426 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg s425
theorem s426_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s426) = v426 X Y k := by
  simp only [s426, v426, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s425_eval]
def v427 (X Y k : F) : F := (P2M4.v162 X Y k)+(v331 X Y k)
def s427 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P2M4.s162 s331
theorem s427_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s427) = v427 X Y k := by
  simp only [s427, v427, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, P2M4.s162_eval, s331_eval]
def v428 (X Y k : F) : F := (v329 X Y k)*(v427 X Y k)
def s428 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s329 s427
theorem s428_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s428) = v428 X Y k := by
  simp only [s428, v428, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s329_eval, s427_eval]
def v429 (X Y k : F) : F := (v426 X Y k)+(v428 X Y k)
def s429 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s426 s428
theorem s429_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s429) = v429 X Y k := by
  simp only [s429, v429, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s426_eval, s428_eval]
def v430 (X Y k : F) : F := (P2M4.v000 X Y k)*(v429 X Y k)
def s430 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s000 s429
theorem s430_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s430) = v430 X Y k := by
  simp only [s430, v430, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s000_eval, s429_eval]
def v431 (X Y k : F) : F := (P2M4.v000 X Y k)*(v338 X Y k)
def s431 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s000 s338
theorem s431_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s431) = v431 X Y k := by
  simp only [s431, v431, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s000_eval, s338_eval]
def v432 (X Y k : F) : F := (v431 X Y k)*(v405 X Y k)
def s432 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s431 s405
theorem s432_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s432) = v432 X Y k := by
  simp only [s432, v432, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s431_eval, s405_eval]
def v433 (X Y k : F) : F := (P2M4.v162 X Y k)+(v343 X Y k)
def s433 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P2M4.s162 s343
theorem s433_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s433) = v433 X Y k := by
  simp only [s433, v433, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, P2M4.s162_eval, s343_eval]
def v434 (X Y k : F) : F := (v341 X Y k)*(v433 X Y k)
def s434 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s341 s433
theorem s434_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s434) = v434 X Y k := by
  simp only [s434, v434, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s341_eval, s433_eval]
def v435 (X Y k : F) : F := -(v434 X Y k)
def s435 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg s434
theorem s435_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s435) = v435 X Y k := by
  simp only [s435, v435, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s434_eval]
def v436 (X Y k : F) : F := (v432 X Y k)+(v435 X Y k)
def s436 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s432 s435
theorem s436_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s436) = v436 X Y k := by
  simp only [s436, v436, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s432_eval, s435_eval]
def v437 (X Y k : F) : F := (v430 X Y k)*(v436 X Y k)
def s437 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s430 s436
theorem s437_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s437) = v437 X Y k := by
  simp only [s437, v437, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s430_eval, s436_eval]
def v438 (X Y k : F) : F := (P2M4.v000 X Y k)*(v405 X Y k)
def s438 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s000 s405
theorem s438_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s438) = v438 X Y k := by
  simp only [s438, v438, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s000_eval, s405_eval]
def v439 (X Y k : F) : F := (v438 X Y k)*(v427 X Y k)
def s439 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s438 s427
theorem s439_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s439) = v439 X Y k := by
  simp only [s439, v439, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s438_eval, s427_eval]
def v440 (X Y k : F) : F := (v303 X Y k)*(v424 X Y k)
def s440 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s303 s424
theorem s440_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s440) = v440 X Y k := by
  simp only [s440, v440, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s303_eval, s424_eval]
def v441 (X Y k : F) : F := (v439 X Y k)+(v440 X Y k)
def s441 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s439 s440
theorem s441_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s441) = v441 X Y k := by
  simp only [s441, v441, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s439_eval, s440_eval]
def v442 (X Y k : F) : F := (v352 X Y k)*(v427 X Y k)
def s442 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s352 s427
theorem s442_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s442) = v442 X Y k := by
  simp only [s442, v442, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s352_eval, s427_eval]
def v443 (X Y k : F) : F := -(v442 X Y k)
def s443 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg s442
theorem s443_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s443) = v443 X Y k := by
  simp only [s443, v443, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s442_eval]
def v444 (X Y k : F) : F := (v441 X Y k)+(v443 X Y k)
def s444 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s441 s443
theorem s444_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s444) = v444 X Y k := by
  simp only [s444, v444, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s441_eval, s443_eval]
def v445 (X Y k : F) : F := (v291 X Y k)*(v444 X Y k)
def s445 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s291 s444
theorem s445_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s445) = v445 X Y k := by
  simp only [s445, v445, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s291_eval, s444_eval]
def v446 (X Y k : F) : F := (v405 X Y k)*(v433 X Y k)
def s446 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s405 s433
theorem s446_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s446) = v446 X Y k := by
  simp only [s446, v446, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s405_eval, s433_eval]
def v447 (X Y k : F) : F := -(v446 X Y k)
def s447 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg s446
theorem s447_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s447) = v447 X Y k := by
  simp only [s447, v447, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s446_eval]
def v448 (X Y k : F) : F := (v447 X Y k)+(v360 X Y k)
def s448 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s447 s360
theorem s448_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s448) = v448 X Y k := by
  simp only [s448, v448, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s447_eval, s360_eval]
def v449 (X Y k : F) : F := (P2M4.v000 X Y k)*(v448 X Y k)
def s449 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s000 s448
theorem s449_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s449) = v449 X Y k := by
  simp only [s449, v449, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s000_eval, s448_eval]
def v450 (X Y k : F) : F := (v352 X Y k)*(v433 X Y k)
def s450 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s352 s433
theorem s450_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s450) = v450 X Y k := by
  simp only [s450, v450, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s352_eval, s433_eval]
def v451 (X Y k : F) : F := (v449 X Y k)+(v450 X Y k)
def s451 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s449 s450
theorem s451_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s451) = v451 X Y k := by
  simp only [s451, v451, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s449_eval, s450_eval]
def v452 (X Y k : F) : F := (v445 X Y k)*(v451 X Y k)
def s452 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s445 s451
theorem s452_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s452) = v452 X Y k := by
  simp only [s452, v452, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s445_eval, s451_eval]
def v453 (X Y k : F) : F := -(v452 X Y k)
def s453 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg s452
theorem s453_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s453) = v453 X Y k := by
  simp only [s453, v453, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s452_eval]
def v454 (X Y k : F) : F := (v437 X Y k)+(v453 X Y k)
def s454 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s437 s453
theorem s454_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s454) = v454 X Y k := by
  simp only [s454, v454, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s437_eval, s453_eval]
def v455 (X Y k : F) : F := (v313 X Y k)*(v454 X Y k)
def s455 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s313 s454
theorem s455_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s455) = v455 X Y k := by
  simp only [s455, v455, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s313_eval, s454_eval]
def v456 (X Y k : F) : F := (v290 X Y k)*(P2M4.v144 X Y k)
def s456 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s290 P2M4.s144
theorem s456_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s456) = v456 X Y k := by
  simp only [s456, v456, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s290_eval, P2M4.s144_eval]
def v457 (X Y k : F) : F := (P2M4.v162 X Y k)+(v371 X Y k)
def s457 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P2M4.s162 s371
theorem s457_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s457) = v457 X Y k := by
  simp only [s457, v457, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, P2M4.s162_eval, s371_eval]
def v458 (X Y k : F) : F := (P2M4.v156 X Y k)*(v457 X Y k)
def s458 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s156 s457
theorem s458_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s458) = v458 X Y k := by
  simp only [s458, v458, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s156_eval, s457_eval]
def v459 (X Y k : F) : F := -(v458 X Y k)
def s459 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg s458
theorem s459_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s459) = v459 X Y k := by
  simp only [s459, v459, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s458_eval]
def v460 (X Y k : F) : F := (v456 X Y k)-(v459 X Y k)
def s460 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s456 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg s459)
theorem s460_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s460) = v460 X Y k := by
  simp only [s460, v460, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s456_eval, s459_eval, sub_eq_add_neg]
def v461 (X Y k : F) : F := (v455 X Y k)*(v460 X Y k)
def s461 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s455 s460
theorem s461_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s461) = v461 X Y k := by
  simp only [s461, v461, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s455_eval, s460_eval]
def v462 (X Y k : F) : F := (v429 X Y k)*(v451 X Y k)
def s462 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s429 s451
theorem s462_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s462) = v462 X Y k := by
  simp only [s462, v462, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s429_eval, s451_eval]
def v463 (X Y k : F) : F := (v316 X Y k)*(v436 X Y k)
def s463 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s316 s436
theorem s463_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s463) = v463 X Y k := by
  simp only [s463, v463, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s316_eval, s436_eval]
def v464 (X Y k : F) : F := (v463 X Y k)*(v444 X Y k)
def s464 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s463 s444
theorem s464_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s464) = v464 X Y k := by
  simp only [s464, v464, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s463_eval, s444_eval]
def v465 (X Y k : F) : F := (v462 X Y k)+(v464 X Y k)
def s465 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s462 s464
theorem s465_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s465) = v465 X Y k := by
  simp only [s465, v465, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s462_eval, s464_eval]
def v466 (X Y k : F) : F := (P2M4.v000 X Y k)*(v465 X Y k)
def s466 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s000 s465
theorem s466_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s466) = v466 X Y k := by
  simp only [s466, v466, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s000_eval, s465_eval]
def v467 (X Y k : F) : F := (P2M4.v051 X Y k)*(v444 X Y k)
def s467 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s051 s444
theorem s467_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s467) = v467 X Y k := by
  simp only [s467, v467, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s051_eval, s444_eval]
def v468 (X Y k : F) : F := (v467 X Y k)*(v451 X Y k)
def s468 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s467 s451
theorem s468_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s468) = v468 X Y k := by
  simp only [s468, v468, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s467_eval, s451_eval]
def v469 (X Y k : F) : F := (v466 X Y k)+(v468 X Y k)
def s469 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s466 s468
theorem s469_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s469) = v469 X Y k := by
  simp only [s469, v469, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, s466_eval, s468_eval]
def v470 (X Y k : F) : F := (v291 X Y k)*(v469 X Y k)
def s470 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s291 s469
theorem s470_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s470) = v470 X Y k := by
  simp only [s470, v470, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s291_eval, s469_eval]
def v471 (X Y k : F) : F := (P2M4.v048 X Y k)*(P2M4.v144 X Y k)
def s471 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul P2M4.s048 P2M4.s144
theorem s471_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s471) = v471 X Y k := by
  simp only [s471, v471, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, P2M4.s048_eval, P2M4.s144_eval]
def v472 (X Y k : F) : F := (v290 X Y k)*(P2M4.v075 X Y k)
def s472 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s290 P2M4.s075
theorem s472_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s472) = v472 X Y k := by
  simp only [s472, v472, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s290_eval, P2M4.s075_eval]
def v473 (X Y k : F) : F := (v472 X Y k)*(P2M4.v156 X Y k)
def s473 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s472 P2M4.s156
theorem s473_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s473) = v473 X Y k := by
  simp only [s473, v473, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s472_eval, P2M4.s156_eval]
def v474 (X Y k : F) : F := (v471 X Y k)-(v473 X Y k)
def s474 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add s471 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg s473)
theorem s474_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s474) = v474 X Y k := by
  simp only [s474, v474, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, s471_eval, s473_eval, sub_eq_add_neg]
def s475_part00 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[],[0,0,0,0,0,0,0,375,-225,45,-3],[0,0,0,0,0,0,-400,-665,464,-93,6],[0,0,0,0,0,50,890,195,-255,51,-3],[0,0,0,0,-400,890,-1408,351,-6,-3],[0,0,0,375,-665,195,351,-102,6],[0,0,0,-225,464,-255,-6,6],[0,0,0,45,-93,51,-3],[0,0,0,-3,6,-3]],[[],[],[0,0,0,0,0,0,400,-535,241,-45,3],[0,0,0,0,0,-400,1680,185,-416,93,-6],[0,0,0,0,-400,-2290,-426,-195,255,-51,3],[0,0,0,400,1680,-426,1312,-351,6,3],[0,0,0,-535,185,-195,-351,102,-6],[0,0,0,241,-416,255,6,-6],[0,0,0,-45,93,-51,3],[0,0,0,3,-6,3]],[[],[0,0,0,0,0,0,-4800,1920,-192],[0,0,0,0,0,4800,1520,4344,-2948,576,-36],[0,0,0,0,0,-3440,-6048,-9420,6296,-1188,72],[0,0,0,4800,-3440,3792,12368,2976,-3444,648,-36],[0,0,-4800,1520,-6048,12368,-19696,4668,-72,-36],[0,0,1920,4344,-9420,2976,4668,-1296,72],[0,0,-192,-2948,6296,-3444,-72,72],[0,0,0,576,-1188,648,-36],[0,0,0,-36,72,-36]],[[],[0,0,0,0,0,0,7360,-2432,192],[0,0,0,0,0,-7360,-1280,-4312,2932,-576,36],[0,0,0,0,0,3712,21152,3756,-5768,1188,-72],[0,0,0,-7360,3712,-34064,-6688,-2976,3444,-648,36],[0,0,7360,-1280,21152,-6688,18640,-4668,72,36],[0,0,-2432,-4312,3756,-2976,-4668,1296,-72],[0,0,192,2932,-5768,3444,72,-72],[0,0,0,-576,1188,-648,36],[0,0,0,36,-72,36]],[[],[0,0,0,0,0,0,-48640,17408,-1536],[0,0,0,0,0,48640,20096,24490,-17930,3366,-198],[0,0,0,0,0,-37504,-41680,-61026,38856,-6930,396],[0,0,0,48640,-37504,37452,78956,20490,-21198,3762,-198],[0,0,-48640,20096,-41680,78956,-125424,28326,-396,-198],[0,0,17408,24490,-61026,20490,28326,-7524,396],[0,0,-1536,-17930,38856,-21198,-396,396],[0,0,0,3366,-6930,3762,-198],[0,0,0,-198,396,-198]],[[],[0,0,0,0,0,0,63488,-19968,1536],[0,0,0,0,0,-63488,-39120,-17034,17210,-3366,198],[0,0,0,0,0,59088,119120,32706,-36408,6930,-396],[0,0,0,-63488,59088,-207244,-49916,-20490,21198,-3762,198],[0,0,63488,-39120,119120,-49916,120528,-28326,396,198],[0,0,-19968,-17034,32706,-20490,-28326,7524,-396],[0,0,1536,17210,-36408,21198,396,-396],[0,0,0,-3366,6930,-3762,198],[0,0,0,198,-396,198]],[[],[0,0,0,0,0,0,-208640,67584,-5376],[0,0,0,0,0,208640,112848,89056,-66436,11880,-660],[0,0,0,0,0,-180432,-172288,-238716,144456,-24420,1320],[0,0,0,208640,-180432,177216,305152,84312,-78660,13200,-660],[0,0,-208640,112848,-172288,305152,-481296,103740,-1320,-660],[0,0,67584,89056,-238716,84312,103740,-26400,1320],[0,0,-5376,-66436,144456,-78660,-1320,1320],[0,0,0,11880,-24420,13200,-660],[0,0,0,-660,1320,-660]],[[],[0,0,0,0,0,0,239872,-72192,5376],[0,0,0,0,0,-239872,-219136,-52352,63316,-11880,660],[0,0,0,0,0,291328,394368,161052,-138264,24420,-1320],[0,0,0,-239872,291328,-694784,-224368,-84312,78660,-13200,660],[0,0,239872,-219136,394368,-224368,468912,-103740,1320,660],[0,0,-72192,-52352,161052,-84312,-103740,26400,-1320],[0,0,5376,63316,-138264,78660,1320,-1320],[0,0,0,-11880,24420,-13200,660],[0,0,0,660,-1320,660]]]
def s475_part01 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[0,0,0,0,0,0,-497152,147456,-10752],[0,0,0,0,0,497152,363520,229245,-166247,28215,-1485],[0,0,0,0,0,-510976,-473376,-628359,360744,-57915,2970],[0,0,0,497152,-510976,509766,794606,231273,-196065,31185,-1485],[0,0,-497152,363520,-473376,794606,-1240464,255465,-2970,-1485],[0,0,147456,229245,-628359,231273,255465,-62370,2970],[0,0,-10752,-166247,360744,-196065,-2970,2970],[0,0,0,28215,-57915,31185,-1485],[0,0,0,-1485,2970,-1485]],[[],[0,0,0,0,0,0,520192,-150016,10752],[0,0,0,0,0,-520192,-627040,-147389,160007,-28215,1485],[0,0,0,0,0,777056,849184,505287,-351816,57915,-2970],[0,0,0,-520192,777056,-1425094,-665294,-231273,196065,-31185,1485],[0,0,520192,-627040,849184,-665294,1222608,-255465,2970,1485],[0,0,-150016,-147389,505287,-231273,-255465,62370,-2970],[0,0,10752,160007,-351816,196065,2970,-2970],[0,0,0,-28215,57915,-31185,1485],[0,0,0,1485,-2970,1485]],[[],[0,0,0,0,0,0,-722560,198400,-13440],[0,0,0,0,0,722560,756832,431504,-295240,47520,-2376],[0,0,0,0,0,-955232,-905408,-1174296,638064,-97416,4752],[0,0,0,722560,-955232,974688,1469536,446112,-345960,52272,-2376],[0,0,-722560,756832,-905408,1469536,-2263392,445752,-4752,-2376],[0,0,198400,431504,-1174296,446112,445752,-104544,4752],[0,0,-13440,-295240,638064,-345960,-4752,4752],[0,0,0,47520,-97416,52272,-2376],[0,0,0,-2376,4752,-2376]],[[],[0,0,0,0,0,0,709760,-195840,13440],[0,0,0,0,0,-709760,-1089024,-340560,289192,-47520,2376],[0,0,0,0,0,1284864,1242304,1076184,-632016,97416,-4752],[0,0,0,-709760,1284864,-1830368,-1365376,-446112,345960,-52272,2376],[0,0,709760,-1089024,1242304,-1365376,2251296,-445752,4752,2376],[0,0,-195840,-340560,1076184,-446112,-445752,104544,-4752],[0,0,13440,289192,-632016,345960,4752,-4752],[0,0,0,-47520,97416,-52272,2376],[0,0,0,2376,-4752,2376]],[[],[0,0,0,0,0,0,-657920,168960,-10752],[0,0,0,0,0,657920,1077504,599900,-381164,58212,-2772],[0,0,0,0,0,-1246464,-1227296,-1600284,820176,-119196,5544],[0,0,0,657920,-1246464,1276296,1981448,621180,-443268,63756,-2772],[0,0,-657920,1077504,-1227296,1981448,-2999136,565236,-5544,-2772],[0,0,168960,599900,-1600284,621180,565236,-127512,5544],[0,0,-10752,-381164,820176,-443268,-5544,5544],[0,0,0,58212,-119196,63756,-2772],[0,0,0,-2772,5544,-2772]],[[],[0,0,0,0,0,0,624640,-164352,10752],[0,0,0,0,0,-624640,-1216160,-575260,380492,-58212,2772],[0,0,0,0,0,1380512,1250592,1609692,-822192,119196,-5544],[0,0,0,-624640,1380512,-1372168,-1990184,-621180,443268,-63756,2772],[0,0,624640,-1216160,1250592,-1990184,3003168,-565236,5544,2772],[0,0,-164352,-575260,1609692,-621180,-565236,127512,-5544],[0,0,10752,380492,-822192,443268,5544,-5544],[0,0,0,-58212,119196,-63756,2772],[0,0,0,2772,-5544,2772]],[[],[0,0,0,0,0,0,-367360,89088,-5376],[0,0,0,0,0,367360,1071776,616032,-360424,52272,-2376],[0,0,0,0,0,-1160864,-1176960,-1604568,772368,-106920,4752],[0,0,0,367360,-1160864,1132608,1964992,629712,-415656,57024,-2376],[0,0,-367360,1071776,-1176960,1964992,-2908704,524952,-4752,-2376],[0,0,89088,616032,-1604568,629712,524952,-114048,4752],[0,0,-5376,-360424,772368,-415656,-4752,4752],[0,0,0,52272,-106920,57024,-2376],[0,0,0,-2376,4752,-2376]],[[],[0,0,0,0,0,0,346368,-86528,5376],[0,0,0,0,0,-346368,-880640,-681376,365704,-52272,2376],[0,0,0,0,0,967168,855680,1714968,-780720,106920,-4752],[0,0,0,-346368,967168,-359360,-2080672,-629712,415656,-57024,2376],[0,0,346368,-880640,855680,-2080672,2925408,-524952,4752,2376],[0,0,-86528,-681376,1714968,-629712,-524952,114048,-4752],[0,0,5376,365704,-780720,415656,4752,-4752],[0,0,0,-52272,106920,-57024,2376],[0,0,0,2376,-4752,2376]]]
def s475_part02 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[0,0,0,0,0,0,-115200,26624,-1536],[0,0,0,0,0,115200,739328,463201,-247871,34155,-1485],[0,0,0,0,0,-765952,-781648,-1175991,529056,-69795,2970],[0,0,0,115200,-765952,639966,1423862,461637,-283185,37125,-1485],[0,0,-115200,739328,-781648,1423862,-2049696,354465,-2970,-1485],[0,0,26624,463201,-1175991,461637,354465,-74250,2970],[0,0,-1536,-247871,529056,-283185,-2970,2970],[0,0,0,34155,-69795,37125,-1485],[0,0,0,-1485,2970,-1485]],[[],[0,0,0,0,0,0,110592,-26112,1536],[0,0,0,0,0,-110592,-400176,-557697,254351,-34155,1485],[0,0,0,0,0,426288,381008,1298007,-537264,69795,-2970],[0,0,0,-110592,426288,350306,-1552358,-461637,283185,-37125,1485],[0,0,110592,-400176,381008,-1552358,2066112,-354465,2970,1485],[0,0,-26112,-557697,1298007,-461637,-354465,74250,-2970],[0,0,1536,254351,-537264,283185,2970,-2970],[0,0,0,-34155,69795,-37125,1485],[0,0,0,1485,-2970,1485]],[[],[0,0,0,0,0,0,-15552,3456,-192],[0,0,0,0,0,15552,339120,249400,-121012,15840,-660],[0,0,0,0,0,-342576,-342176,-614684,257144,-32340,1320],[0,0,0,15552,-342576,185936,735696,238848,-136740,17160,-660],[0,0,-15552,339120,-342176,735696,-1023664,169740,-1320,-660],[0,0,3456,249400,-614684,238848,169740,-34320,1320],[0,0,-192,-121012,257144,-136740,-1320,1320],[0,0,0,15840,-32340,17160,-660],[0,0,0,-660,1320,-660]],[[],[0,0,0,0,0,0,15552,-3456,192],[0,0,0,0,0,-15552,-103680,-309144,124772,-15840,660],[0,0,0,0,0,107136,99744,683132,-261416,32340,-1320],[0,0,0,-15552,107136,418416,-807904,-238848,136740,-17160,660],[0,0,15552,-103680,99744,-807904,1032208,-169740,1320,660],[0,0,-3456,-309144,683132,-238848,-169740,34320,-1320],[0,0,192,124772,-261416,136740,1320,-1320],[0,0,0,-15840,32340,-17160,660],[0,0,0,660,-1320,660]],[[],[],[0,0,0,0,0,0,93312,91674,-39850,4950,-198],[0,0,0,0,0,-93312,-88848,-217506,84200,-10098,396],[0,0,0,0,-93312,-5652,257356,82842,-44430,5346,-198],[0,0,0,93312,-88848,257356,-343984,54726,-396,-198],[0,0,0,91674,-217506,82842,54726,-10692,396],[0,0,0,-39850,84200,-44430,-396,396],[0,0,0,4950,-10098,5346,-198],[0,0,0,-198,396,-198]],[[],[],[0,0,0,0,0,0,-11664,-110970,40986,-4950,198],[0,0,0,0,0,11664,11664,237954,-85400,10098,-396],[0,0,0,0,11664,198612,-278940,-82842,44430,-5346,198],[0,0,0,-11664,11664,-278940,346384,-54726,396,198],[0,0,0,-110970,237954,-82842,-54726,10692,-396],[0,0,0,40986,-85400,44430,396,-396],[0,0,0,-4950,10098,-5346,198],[0,0,0,198,-396,198]],[[],[],[0,0,0,0,0,0,11664,20736,-7956,936,-36],[0,0,0,0,0,-11664,-10368,-46764,16680,-1908,72],[0,0,0,0,-11664,-20736,54720,17304,-8724,1008,-36],[0,0,0,11664,-10368,54720,-69840,10668,-72,-36],[0,0,0,20736,-46764,17304,10668,-2016,72],[0,0,0,-7956,16680,-8724,-72,72],[0,0,0,936,-1908,1008,-36],[0,0,0,-36,72,-36]],[[],[],[0,0,0,0,0,0,0,-23328,8100,-936,36],[0,0,0,0,0,0,0,49356,-16824,1908,-72],[0,0,0,0,0,46656,-57456,-17304,8724,-1008,36],[0,0,0,0,0,-57456,70128,-10668,72,36],[0,0,0,-23328,49356,-17304,-10668,2016,-72],[0,0,0,8100,-16824,8724,72,-72],[0,0,0,-936,1908,-1008,36],[0,0,0,36,-72,36]]]
def s475_part03 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[],[0,0,0,0,0,0,0,2187,-729,81,-3],[0,0,0,0,0,0,0,-4617,1512,-165,6],[0,0,0,0,0,-4374,5346,1647,-783,87,-3],[0,0,0,0,0,5346,-6480,951,-6,-3],[0,0,0,2187,-4617,1647,951,-174,6],[0,0,0,-729,1512,-783,-6,6],[0,0,0,81,-165,87,-3],[0,0,0,-3,6,-3]],[[],[],[0,0,0,0,0,0,0,-2187,729,-81,3],[0,0,0,0,0,0,0,4617,-1512,165,-6],[0,0,0,0,0,4374,-5346,-1647,783,-87,3],[0,0,0,0,0,-5346,6480,-951,6,3],[0,0,0,-2187,4617,-1647,-951,174,-6],[0,0,0,729,-1512,783,6,-6],[0,0,0,-81,165,-87,3],[0,0,0,3,-6,3]]]
def s475 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := s475_part00 ++ s475_part01 ++ s475_part02 ++ s475_part03
def v475 (X Y k : F) : F := (v470 X Y k)*(v474 X Y k)
def calculation475 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul s470 s474
theorem calculation475_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y calculation475) = v475 X Y k := by
  simp only [calculation475, v475, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, s470_eval, s474_eval]
def residual475 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add calculation475 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg s475)
theorem residual475_length : residual475.length = 26 := by rfl

end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2
