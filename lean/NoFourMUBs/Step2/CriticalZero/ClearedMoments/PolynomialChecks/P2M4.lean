import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Data_p2_m4
import NoFourMUBs.Reuse.Archive.CriticalZeroSumBinaryCertificate

/-! Static expression adapter for the exact final denominator-clearing goals.
The existing dense operations and their soundness lemmas do all arithmetic. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
variable {F : Type*} [Field F] [CharZero F]

def e000 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[0,1]]]
def v000 (X Y k : F) : F := Y
theorem e000_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e000) = v000 X Y k := by
  simp only [e000, v000, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, CriticalZeroSplitReduction20261003.Coefficients.eval,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII, CriticalZeroSplitReduction20261003.IntegerReflector.evalI, Int.cast_ofNat, Int.cast_neg, Int.cast_zero,
    Int.cast_one, mul_zero, zero_mul, add_zero, zero_add, mul_one]
  try dsimp only [h, plusFactor, minusFactor, thirdPlusFactor, thirdMinusFactor]
  <;> ring

def e001 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[],[1]]]
def v001 (X Y k : F) : F := X
theorem e001_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e001) = v001 X Y k := by
  simp only [e001, v001, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, CriticalZeroSplitReduction20261003.Coefficients.eval,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII, CriticalZeroSplitReduction20261003.IntegerReflector.evalI, Int.cast_ofNat, Int.cast_neg, Int.cast_zero,
    Int.cast_one, mul_zero, zero_mul, add_zero, zero_add, mul_one]
  try dsimp only [h, plusFactor, minusFactor, thirdPlusFactor, thirdMinusFactor]
  <;> ring

def e002 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e000 e001
def v002 (X Y k : F) : F := (v000 X Y k)*(v001 X Y k)
theorem e002_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e002) = v002 X Y k := by
  simp only [e002, v002, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e000_eval, e001_eval]

def e003 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[2]]]
def v003 (X Y k : F) : F := (2 : F)
theorem e003_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e003) = v003 X Y k := by
  simp only [e003, v003, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, CriticalZeroSplitReduction20261003.Coefficients.eval,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII, CriticalZeroSplitReduction20261003.IntegerReflector.evalI, Int.cast_ofNat, Int.cast_neg, Int.cast_zero,
    Int.cast_one, mul_zero, zero_mul, add_zero, zero_add, mul_one]
  try dsimp only [h, plusFactor, minusFactor, thirdPlusFactor, thirdMinusFactor]
  <;> ring

def e004 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e003 3
def v004 (X Y k : F) : F := (v003 X Y k)^3
theorem e004_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e004) = v004 X Y k := by
  simp only [e004, v004, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow, CriticalZeroSumAssembly20261003.Coefficients.eval_pow, e003_eval]

def e005 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e002 e004
def v005 (X Y k : F) : F := (v002 X Y k)*(v004 X Y k)
theorem e005_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e005) = v005 X Y k := by
  simp only [e005, v005, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e002_eval, e004_eval]

def e006 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[-3],[1]],[[-5],[1]],[[-3],[1]],[[-9],[1]]]
def v006 (X Y k : F) : F := plusFactor X k
theorem e006_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e006) = v006 X Y k := by
  simp only [e006, v006, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, CriticalZeroSplitReduction20261003.Coefficients.eval,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII, CriticalZeroSplitReduction20261003.IntegerReflector.evalI, Int.cast_ofNat, Int.cast_neg, Int.cast_zero,
    Int.cast_one, mul_zero, zero_mul, add_zero, zero_add, mul_one]
  try dsimp only [h, plusFactor, minusFactor, thirdPlusFactor, thirdMinusFactor]
  <;> ring

def e007 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e005 e006
def v007 (X Y k : F) : F := (v005 X Y k)*(v006 X Y k)
theorem e007_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e007) = v007 X Y k := by
  simp only [e007, v007, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e005_eval, e006_eval]

def e008 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[8]]]
def v008 (X Y k : F) : F := (8 : F)
theorem e008_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e008) = v008 X Y k := by
  simp only [e008, v008, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, CriticalZeroSplitReduction20261003.Coefficients.eval,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII, CriticalZeroSplitReduction20261003.IntegerReflector.evalI, Int.cast_ofNat, Int.cast_neg, Int.cast_zero,
    Int.cast_one, mul_zero, zero_mul, add_zero, zero_add, mul_one]
  try dsimp only [h, plusFactor, minusFactor, thirdPlusFactor, thirdMinusFactor]
  <;> ring

def e009 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e000 e008
def v009 (X Y k : F) : F := (v000 X Y k)*(v008 X Y k)
theorem e009_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e009) = v009 X Y k := by
  simp only [e009, v009, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e000_eval, e008_eval]

def e010 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[],[[1]]]
def v010 (X Y k : F) : F := k
theorem e010_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e010) = v010 X Y k := by
  simp only [e010, v010, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, CriticalZeroSplitReduction20261003.Coefficients.eval,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII, CriticalZeroSplitReduction20261003.IntegerReflector.evalI, Int.cast_ofNat, Int.cast_neg, Int.cast_zero,
    Int.cast_one, mul_zero, zero_mul, add_zero, zero_add, mul_one]
  try dsimp only [h, plusFactor, minusFactor, thirdPlusFactor, thirdMinusFactor]
  <;> ring

def e011 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e009 e010
def v011 (X Y k : F) : F := (v009 X Y k)*(v010 X Y k)
theorem e011_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e011) = v011 X Y k := by
  simp only [e011, v011, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e009_eval, e010_eval]

def e012 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[1]],[],[[1]]]
def v012 (X Y k : F) : F := h k
theorem e012_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e012) = v012 X Y k := by
  simp only [e012, v012, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, CriticalZeroSplitReduction20261003.Coefficients.eval,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII, CriticalZeroSplitReduction20261003.IntegerReflector.evalI, Int.cast_ofNat, Int.cast_neg, Int.cast_zero,
    Int.cast_one, mul_zero, zero_mul, add_zero, zero_add, mul_one]
  try dsimp only [h, plusFactor, minusFactor, thirdPlusFactor, thirdMinusFactor]
  <;> ring

def e013 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e011 e012
def v013 (X Y k : F) : F := (v011 X Y k)*(v012 X Y k)
theorem e013_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e013) = v013 X Y k := by
  simp only [e013, v013, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e011_eval, e012_eval]

def e014 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e013 e006
def v014 (X Y k : F) : F := (v013 X Y k)*(v006 X Y k)
theorem e014_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e014) = v014 X Y k := by
  simp only [e014, v014, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e013_eval, e006_eval]

def e015 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e000 2
def v015 (X Y k : F) : F := (v000 X Y k)^2
theorem e015_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e015) = v015 X Y k := by
  simp only [e015, v015, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow, CriticalZeroSumAssembly20261003.Coefficients.eval_pow, e000_eval]

def e016 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e015 e001
def v016 (X Y k : F) : F := (v015 X Y k)*(v001 X Y k)
theorem e016_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e016) = v016 X Y k := by
  simp only [e016, v016, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e015_eval, e001_eval]

def e017 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e012 4
def v017 (X Y k : F) : F := (v012 X Y k)^4
theorem e017_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e017) = v017 X Y k := by
  simp only [e017, v017, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow, CriticalZeroSumAssembly20261003.Coefficients.eval_pow, e012_eval]

def e018 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e016 e017
def v018 (X Y k : F) : F := (v016 X Y k)*(v017 X Y k)
theorem e018_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e018) = v018 X Y k := by
  simp only [e018, v018, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e016_eval, e017_eval]

def e019 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e008 2
def v019 (X Y k : F) : F := (v008 X Y k)^2
theorem e019_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e019) = v019 X Y k := by
  simp only [e019, v019, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow, CriticalZeroSumAssembly20261003.Coefficients.eval_pow, e008_eval]

def e020 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e010 2
def v020 (X Y k : F) : F := (v010 X Y k)^2
theorem e020_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e020) = v020 X Y k := by
  simp only [e020, v020, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow, CriticalZeroSumAssembly20261003.Coefficients.eval_pow, e010_eval]

def e021 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e019 e020
def v021 (X Y k : F) : F := (v019 X Y k)*(v020 X Y k)
theorem e021_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e021) = v021 X Y k := by
  simp only [e021, v021, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e019_eval, e020_eval]

def e022 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e018 e021
def v022 (X Y k : F) : F := (v018 X Y k)+(v021 X Y k)
theorem e022_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e022) = v022 X Y k := by
  simp only [e022, v022, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e018_eval, e021_eval]

def e023 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e012 3
def v023 (X Y k : F) : F := (v012 X Y k)^3
theorem e023_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e023) = v023 X Y k := by
  simp only [e023, v023, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow, CriticalZeroSumAssembly20261003.Coefficients.eval_pow, e012_eval]

def e024 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e002 e023
def v024 (X Y k : F) : F := (v002 X Y k)*(v023 X Y k)
theorem e024_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e024) = v024 X Y k := by
  simp only [e024, v024, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e002_eval, e023_eval]

def e025 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[9]]]
def v025 (X Y k : F) : F := (9 : F)
theorem e025_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e025) = v025 X Y k := by
  simp only [e025, v025, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, CriticalZeroSplitReduction20261003.Coefficients.eval,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII, CriticalZeroSplitReduction20261003.IntegerReflector.evalI, Int.cast_ofNat, Int.cast_neg, Int.cast_zero,
    Int.cast_one, mul_zero, zero_mul, add_zero, zero_add, mul_one]
  try dsimp only [h, plusFactor, minusFactor, thirdPlusFactor, thirdMinusFactor]
  <;> ring

def e026 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e012 e025
def v026 (X Y k : F) : F := (v012 X Y k)*(v025 X Y k)
theorem e026_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e026) = v026 X Y k := by
  simp only [e026, v026, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e012_eval, e025_eval]

def e027 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[4]]]
def v027 (X Y k : F) : F := (4 : F)
theorem e027_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e027) = v027 X Y k := by
  simp only [e027, v027, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, CriticalZeroSplitReduction20261003.Coefficients.eval,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII, CriticalZeroSplitReduction20261003.IntegerReflector.evalI, Int.cast_ofNat, Int.cast_neg, Int.cast_zero,
    Int.cast_one, mul_zero, zero_mul, add_zero, zero_add, mul_one]
  try dsimp only [h, plusFactor, minusFactor, thirdPlusFactor, thirdMinusFactor]
  <;> ring

def e028 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e026 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e027)
def v028 (X Y k : F) : F := (v026 X Y k)-(v027 X Y k)
theorem e028_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e028) = v028 X Y k := by
  simp only [e028, v028, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e026_eval, e027_eval, sub_eq_add_neg]

def e029 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e001 e012
def v029 (X Y k : F) : F := (v001 X Y k)*(v012 X Y k)
theorem e029_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e029) = v029 X Y k := by
  simp only [e029, v029, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e001_eval, e012_eval]

def e030 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e028 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e029)
def v030 (X Y k : F) : F := (v028 X Y k)-(v029 X Y k)
theorem e030_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e030) = v030 X Y k := by
  simp only [e030, v030, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e028_eval, e029_eval, sub_eq_add_neg]

def e031 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e000 e012
def v031 (X Y k : F) : F := (v000 X Y k)*(v012 X Y k)
theorem e031_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e031) = v031 X Y k := by
  simp only [e031, v031, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e000_eval, e012_eval]

def e032 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e030 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e031)
def v032 (X Y k : F) : F := (v030 X Y k)-(v031 X Y k)
theorem e032_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e032) = v032 X Y k := by
  simp only [e032, v032, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e030_eval, e031_eval, sub_eq_add_neg]

def e033 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e024 e032
def v033 (X Y k : F) : F := (v024 X Y k)*(v032 X Y k)
theorem e033_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e033) = v033 X Y k := by
  simp only [e033, v033, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e024_eval, e032_eval]

def e034 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e022 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e033)
def v034 (X Y k : F) : F := (v022 X Y k)-(v033 X Y k)
theorem e034_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e034) = v034 X Y k := by
  simp only [e034, v034, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e022_eval, e033_eval, sub_eq_add_neg]

def e035 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e012 2
def v035 (X Y k : F) : F := (v012 X Y k)^2
theorem e035_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e035) = v035 X Y k := by
  simp only [e035, v035, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow, CriticalZeroSumAssembly20261003.Coefficients.eval_pow, e012_eval]

def e036 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e011 e035
def v036 (X Y k : F) : F := (v011 X Y k)*(v035 X Y k)
theorem e036_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e036) = v036 X Y k := by
  simp only [e036, v036, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e011_eval, e035_eval]

def e037 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[3]]]
def v037 (X Y k : F) : F := (3 : F)
theorem e037_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e037) = v037 X Y k := by
  simp only [e037, v037, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, CriticalZeroSplitReduction20261003.Coefficients.eval,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII, CriticalZeroSplitReduction20261003.IntegerReflector.evalI, Int.cast_ofNat, Int.cast_neg, Int.cast_zero,
    Int.cast_one, mul_zero, zero_mul, add_zero, zero_add, mul_one]
  try dsimp only [h, plusFactor, minusFactor, thirdPlusFactor, thirdMinusFactor]
  <;> ring

def e038 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e037 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e001)
def v038 (X Y k : F) : F := (v037 X Y k)-(v001 X Y k)
theorem e038_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e038) = v038 X Y k := by
  simp only [e038, v038, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e037_eval, e001_eval, sub_eq_add_neg]

def e039 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e036 e038
def v039 (X Y k : F) : F := (v036 X Y k)*(v038 X Y k)
theorem e039_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e039) = v039 X Y k := by
  simp only [e039, v039, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e036_eval, e038_eval]

def e040 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e034 e039
def v040 (X Y k : F) : F := (v034 X Y k)+(v039 X Y k)
theorem e040_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e040) = v040 X Y k := by
  simp only [e040, v040, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e034_eval, e039_eval]

def e041 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[1]]]
def v041 (X Y k : F) : F := (1 : F)
theorem e041_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e041) = v041 X Y k := by
  simp only [e041, v041, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, CriticalZeroSplitReduction20261003.Coefficients.eval,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII, CriticalZeroSplitReduction20261003.IntegerReflector.evalI, Int.cast_ofNat, Int.cast_neg, Int.cast_zero,
    Int.cast_one, mul_zero, zero_mul, add_zero, zero_add, mul_one]
  try dsimp only [h, plusFactor, minusFactor, thirdPlusFactor, thirdMinusFactor]
  <;> ring

def e042 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e041 e010
def v042 (X Y k : F) : F := (v041 X Y k)+(v010 X Y k)
theorem e042_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e042) = v042 X Y k := by
  simp only [e042, v042, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e041_eval, e010_eval]

def e043 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e040 e042
def v043 (X Y k : F) : F := (v040 X Y k)*(v042 X Y k)
theorem e043_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e043) = v043 X Y k := by
  simp only [e043, v043, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e040_eval, e042_eval]

def e044 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e043
def v044 (X Y k : F) : F := -(v043 X Y k)
theorem e044_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e044) = v044 X Y k := by
  simp only [e044, v044, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e043_eval]

def e045 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e014 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e044)
def v045 (X Y k : F) : F := (v014 X Y k)-(v044 X Y k)
theorem e045_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e045) = v045 X Y k := by
  simp only [e045, v045, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e014_eval, e044_eval, sub_eq_add_neg]

def e046 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e045 2
def v046 (X Y k : F) : F := (v045 X Y k)^2
theorem e046_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e046) = v046 X Y k := by
  simp only [e046, v046, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow, CriticalZeroSumAssembly20261003.Coefficients.eval_pow, e045_eval]

def e047 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e012 e006
def v047 (X Y k : F) : F := (v012 X Y k)*(v006 X Y k)
theorem e047_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e047) = v047 X Y k := by
  simp only [e047, v047, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e012_eval, e006_eval]

def e048 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[0]]]
def v048 (X Y k : F) : F := (0 : F)
theorem e048_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e048) = v048 X Y k := by
  simp only [e048, v048, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, CriticalZeroSplitReduction20261003.Coefficients.eval,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII, CriticalZeroSplitReduction20261003.IntegerReflector.evalI, Int.cast_ofNat, Int.cast_neg, Int.cast_zero,
    Int.cast_one, mul_zero, zero_mul, add_zero, zero_add, mul_one]
  try dsimp only [h, plusFactor, minusFactor, thirdPlusFactor, thirdMinusFactor]
  <;> ring

def e049 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e048 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e000)
def v049 (X Y k : F) : F := (v048 X Y k)-(v000 X Y k)
theorem e049_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e049) = v049 X Y k := by
  simp only [e049, v049, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e048_eval, e000_eval, sub_eq_add_neg]

def e050 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e047 e049
def v050 (X Y k : F) : F := (v047 X Y k)*(v049 X Y k)
theorem e050_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e050) = v050 X Y k := by
  simp only [e050, v050, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e047_eval, e049_eval]

def e051 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e008 e010
def v051 (X Y k : F) : F := (v008 X Y k)*(v010 X Y k)
theorem e051_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e051) = v051 X Y k := by
  simp only [e051, v051, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e008_eval, e010_eval]

def e052 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e000 e035
def v052 (X Y k : F) : F := (v000 X Y k)*(v035 X Y k)
theorem e052_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e052) = v052 X Y k := by
  simp only [e052, v052, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e000_eval, e035_eval]

def e053 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e052 e038
def v053 (X Y k : F) : F := (v052 X Y k)*(v038 X Y k)
theorem e053_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e053) = v053 X Y k := by
  simp only [e053, v053, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e052_eval, e038_eval]

def e054 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e051 e053
def v054 (X Y k : F) : F := (v051 X Y k)+(v053 X Y k)
theorem e054_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e054) = v054 X Y k := by
  simp only [e054, v054, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e051_eval, e053_eval]

def e055 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e042 e054
def v055 (X Y k : F) : F := (v042 X Y k)*(v054 X Y k)
theorem e055_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e055) = v055 X Y k := by
  simp only [e055, v055, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e042_eval, e054_eval]

def e056 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e050 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e055)
def v056 (X Y k : F) : F := (v050 X Y k)-(v055 X Y k)
theorem e056_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e056) = v056 X Y k := by
  simp only [e056, v056, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e050_eval, e055_eval, sub_eq_add_neg]

def e057 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e056 2
def v057 (X Y k : F) : F := (v056 X Y k)^2
theorem e057_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e057) = v057 X Y k := by
  simp only [e057, v057, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow, CriticalZeroSumAssembly20261003.Coefficients.eval_pow, e056_eval]

def e058 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e033 e057
def v058 (X Y k : F) : F := (v033 X Y k)*(v057 X Y k)
theorem e058_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e058) = v058 X Y k := by
  simp only [e058, v058, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e033_eval, e057_eval]

def e059 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e058
def v059 (X Y k : F) : F := -(v058 X Y k)
theorem e059_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e059) = v059 X Y k := by
  simp only [e059, v059, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e058_eval]

def e060 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e046 e059
def v060 (X Y k : F) : F := (v046 X Y k)+(v059 X Y k)
theorem e060_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e060) = v060 X Y k := by
  simp only [e060, v060, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e046_eval, e059_eval]

def e061 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e007 e060
def v061 (X Y k : F) : F := (v007 X Y k)*(v060 X Y k)
theorem e061_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e061) = v061 X Y k := by
  simp only [e061, v061, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e007_eval, e060_eval]

def e062 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[-2,1],[1]],[[0,1],[1]],[[-6,1],[1]],[[0,1],[1]]]
def v062 (X Y k : F) : F := thirdPlusFactor X Y k
theorem e062_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e062) = v062 X Y k := by
  simp only [e062, v062, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, CriticalZeroSplitReduction20261003.Coefficients.eval,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII, CriticalZeroSplitReduction20261003.IntegerReflector.evalI, Int.cast_ofNat, Int.cast_neg, Int.cast_zero,
    Int.cast_one, mul_zero, zero_mul, add_zero, zero_add, mul_one]
  try dsimp only [h, plusFactor, minusFactor, thirdPlusFactor, thirdMinusFactor]
  <;> ring

def e063 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e061 e062
def v063 (X Y k : F) : F := (v061 X Y k)*(v062 X Y k)
theorem e063_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e063) = v063 X Y k := by
  simp only [e063, v063, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e061_eval, e062_eval]

def e064 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[-3,1]],[[-5,1]],[[-3,1]],[[-9,1]]]
def v064 (X Y k : F) : F := plusFactor Y k
theorem e064_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e064) = v064 X Y k := by
  simp only [e064, v064, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, CriticalZeroSplitReduction20261003.Coefficients.eval,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII, CriticalZeroSplitReduction20261003.IntegerReflector.evalI, Int.cast_ofNat, Int.cast_neg, Int.cast_zero,
    Int.cast_one, mul_zero, zero_mul, add_zero, zero_add, mul_one]
  try dsimp only [h, plusFactor, minusFactor, thirdPlusFactor, thirdMinusFactor]
  <;> ring

def e065 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e063 e064
def v065 (X Y k : F) : F := (v063 X Y k)*(v064 X Y k)
theorem e065_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e065) = v065 X Y k := by
  simp only [e065, v065, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e063_eval, e064_eval]

def e066 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e012 e037
def v066 (X Y k : F) : F := (v012 X Y k)*(v037 X Y k)
theorem e066_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e066) = v066 X Y k := by
  simp only [e066, v066, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e012_eval, e037_eval]

def e067 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e066 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e032)
def v067 (X Y k : F) : F := (v066 X Y k)-(v032 X Y k)
theorem e067_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e067) = v067 X Y k := by
  simp only [e067, v067, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e066_eval, e032_eval, sub_eq_add_neg]

def e068 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e031 e067
def v068 (X Y k : F) : F := (v031 X Y k)*(v067 X Y k)
theorem e068_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e068) = v068 X Y k := by
  simp only [e068, v068, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e031_eval, e067_eval]

def e069 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e051 e068
def v069 (X Y k : F) : F := (v051 X Y k)+(v068 X Y k)
theorem e069_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e069) = v069 X Y k := by
  simp only [e069, v069, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e051_eval, e068_eval]

def e070 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e040 e069
def v070 (X Y k : F) : F := (v040 X Y k)*(v069 X Y k)
theorem e070_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e070) = v070 X Y k := by
  simp only [e070, v070, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e040_eval, e069_eval]

def e071 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e070
def v071 (X Y k : F) : F := -(v070 X Y k)
theorem e071_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e071) = v071 X Y k := by
  simp only [e071, v071, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e070_eval]

def e072 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e000 e023
def v072 (X Y k : F) : F := (v000 X Y k)*(v023 X Y k)
theorem e072_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e072) = v072 X Y k := by
  simp only [e072, v072, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e000_eval, e023_eval]

def e073 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e072 e032
def v073 (X Y k : F) : F := (v072 X Y k)*(v032 X Y k)
theorem e073_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e073) = v073 X Y k := by
  simp only [e073, v073, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e072_eval, e032_eval]

def e074 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e073 e054
def v074 (X Y k : F) : F := (v073 X Y k)*(v054 X Y k)
theorem e074_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e074) = v074 X Y k := by
  simp only [e074, v074, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e073_eval, e054_eval]

def e075 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e000 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e001)
def v075 (X Y k : F) : F := (v000 X Y k)-(v001 X Y k)
theorem e075_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e075) = v075 X Y k := by
  simp only [e075, v075, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e000_eval, e001_eval, sub_eq_add_neg]

def e076 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e074 e075
def v076 (X Y k : F) : F := (v074 X Y k)*(v075 X Y k)
theorem e076_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e076) = v076 X Y k := by
  simp only [e076, v076, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e074_eval, e075_eval]

def e077 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e076
def v077 (X Y k : F) : F := -(v076 X Y k)
theorem e077_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e077) = v077 X Y k := by
  simp only [e077, v077, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e076_eval]

def e078 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e071 e077
def v078 (X Y k : F) : F := (v071 X Y k)+(v077 X Y k)
theorem e078_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e078) = v078 X Y k := by
  simp only [e078, v078, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e071_eval, e077_eval]

def e079 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e001 2
def v079 (X Y k : F) : F := (v001 X Y k)^2
theorem e079_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e079) = v079 X Y k := by
  simp only [e079, v079, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow, CriticalZeroSumAssembly20261003.Coefficients.eval_pow, e001_eval]

def e080 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e000 e079
def v080 (X Y k : F) : F := (v000 X Y k)*(v079 X Y k)
theorem e080_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e080) = v080 X Y k := by
  simp only [e080, v080, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e000_eval, e079_eval]

def e081 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e080 e017
def v081 (X Y k : F) : F := (v080 X Y k)*(v017 X Y k)
theorem e081_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e081) = v081 X Y k := by
  simp only [e081, v081, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e080_eval, e017_eval]

def e082 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e021 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e033)
def v082 (X Y k : F) : F := (v021 X Y k)-(v033 X Y k)
theorem e082_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e082) = v082 X Y k := by
  simp only [e082, v082, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e021_eval, e033_eval, sub_eq_add_neg]

def e083 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e081 e082
def v083 (X Y k : F) : F := (v081 X Y k)+(v082 X Y k)
theorem e083_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e083) = v083 X Y k := by
  simp only [e083, v083, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e081_eval, e082_eval]

def e084 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e001 e008
def v084 (X Y k : F) : F := (v001 X Y k)*(v008 X Y k)
theorem e084_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e084) = v084 X Y k := by
  simp only [e084, v084, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e001_eval, e008_eval]

def e085 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e084 e010
def v085 (X Y k : F) : F := (v084 X Y k)*(v010 X Y k)
theorem e085_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e085) = v085 X Y k := by
  simp only [e085, v085, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e084_eval, e010_eval]

def e086 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e085 e035
def v086 (X Y k : F) : F := (v085 X Y k)*(v035 X Y k)
theorem e086_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e086) = v086 X Y k := by
  simp only [e086, v086, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e085_eval, e035_eval]

def e087 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e037 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e000)
def v087 (X Y k : F) : F := (v037 X Y k)-(v000 X Y k)
theorem e087_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e087) = v087 X Y k := by
  simp only [e087, v087, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e037_eval, e000_eval, sub_eq_add_neg]

def e088 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e086 e087
def v088 (X Y k : F) : F := (v086 X Y k)*(v087 X Y k)
theorem e088_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e088) = v088 X Y k := by
  simp only [e088, v088, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e086_eval, e087_eval]

def e089 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e083 e088
def v089 (X Y k : F) : F := (v083 X Y k)+(v088 X Y k)
theorem e089_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e089) = v089 X Y k := by
  simp only [e089, v089, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e083_eval, e088_eval]

def e090 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e040 e089
def v090 (X Y k : F) : F := (v040 X Y k)*(v089 X Y k)
theorem e090_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e090) = v090 X Y k := by
  simp only [e090, v090, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e040_eval, e089_eval]

def e091 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e033 e054
def v091 (X Y k : F) : F := (v033 X Y k)*(v054 X Y k)
theorem e091_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e091) = v091 X Y k := by
  simp only [e091, v091, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e033_eval, e054_eval]

def e092 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e001 e035
def v092 (X Y k : F) : F := (v001 X Y k)*(v035 X Y k)
theorem e092_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e092) = v092 X Y k := by
  simp only [e092, v092, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e001_eval, e035_eval]

def e093 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e092 e087
def v093 (X Y k : F) : F := (v092 X Y k)*(v087 X Y k)
theorem e093_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e093) = v093 X Y k := by
  simp only [e093, v093, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e092_eval, e087_eval]

def e094 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e051 e093
def v094 (X Y k : F) : F := (v051 X Y k)+(v093 X Y k)
theorem e094_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e094) = v094 X Y k := by
  simp only [e094, v094, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e051_eval, e093_eval]

def e095 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e091 e094
def v095 (X Y k : F) : F := (v091 X Y k)*(v094 X Y k)
theorem e095_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e095) = v095 X Y k := by
  simp only [e095, v095, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e091_eval, e094_eval]

def e096 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e095
def v096 (X Y k : F) : F := -(v095 X Y k)
theorem e096_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e096) = v096 X Y k := by
  simp only [e096, v096, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e095_eval]

def e097 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e090 e096
def v097 (X Y k : F) : F := (v090 X Y k)+(v096 X Y k)
theorem e097_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e097) = v097 X Y k := by
  simp only [e097, v097, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e090_eval, e096_eval]

def e098 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e078 e097
def v098 (X Y k : F) : F := (v078 X Y k)*(v097 X Y k)
theorem e098_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e098) = v098 X Y k := by
  simp only [e098, v098, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e078_eval, e097_eval]

def e099 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e040 e075
def v099 (X Y k : F) : F := (v040 X Y k)*(v075 X Y k)
theorem e099_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e099) = v099 X Y k := by
  simp only [e099, v099, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e040_eval, e075_eval]

def e100 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e099
def v100 (X Y k : F) : F := -(v099 X Y k)
theorem e100_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e100) = v100 X Y k := by
  simp only [e100, v100, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e099_eval]

def e101 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e001 e054
def v101 (X Y k : F) : F := (v001 X Y k)*(v054 X Y k)
theorem e101_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e101) = v101 X Y k := by
  simp only [e101, v101, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e001_eval, e054_eval]

def e102 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e101 e069
def v102 (X Y k : F) : F := (v101 X Y k)*(v069 X Y k)
theorem e102_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e102) = v102 X Y k := by
  simp only [e102, v102, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e101_eval, e069_eval]

def e103 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e100 e102
def v103 (X Y k : F) : F := (v100 X Y k)+(v102 X Y k)
theorem e103_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e103) = v103 X Y k := by
  simp only [e103, v103, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e100_eval, e102_eval]

def e104 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e051 e054
def v104 (X Y k : F) : F := (v051 X Y k)*(v054 X Y k)
theorem e104_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e104) = v104 X Y k := by
  simp only [e104, v104, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e051_eval, e054_eval]

def e105 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e104 e075
def v105 (X Y k : F) : F := (v104 X Y k)*(v075 X Y k)
theorem e105_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e105) = v105 X Y k := by
  simp only [e105, v105, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e104_eval, e075_eval]

def e106 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e103 e105
def v106 (X Y k : F) : F := (v103 X Y k)+(v105 X Y k)
theorem e106_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e106) = v106 X Y k := by
  simp only [e106, v106, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e103_eval, e105_eval]

def e107 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e073 e106
def v107 (X Y k : F) : F := (v073 X Y k)*(v106 X Y k)
theorem e107_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e107) = v107 X Y k := by
  simp only [e107, v107, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e073_eval, e106_eval]

def e108 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e040 e094
def v108 (X Y k : F) : F := (v040 X Y k)*(v094 X Y k)
theorem e108_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e108) = v108 X Y k := by
  simp only [e108, v108, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e040_eval, e094_eval]

def e109 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e108
def v109 (X Y k : F) : F := -(v108 X Y k)
theorem e109_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e109) = v109 X Y k := by
  simp only [e109, v109, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e108_eval]

def e110 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e054 e089
def v110 (X Y k : F) : F := (v054 X Y k)*(v089 X Y k)
theorem e110_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e110) = v110 X Y k := by
  simp only [e110, v110, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e054_eval, e089_eval]

def e111 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e110
def v111 (X Y k : F) : F := -(v110 X Y k)
theorem e111_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e111) = v111 X Y k := by
  simp only [e111, v111, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e110_eval]

def e112 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e109 e111
def v112 (X Y k : F) : F := (v109 X Y k)+(v111 X Y k)
theorem e112_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e112) = v112 X Y k := by
  simp only [e112, v112, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e109_eval, e111_eval]

def e113 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e104 e094
def v113 (X Y k : F) : F := (v104 X Y k)*(v094 X Y k)
theorem e113_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e113) = v113 X Y k := by
  simp only [e113, v113, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e104_eval, e094_eval]

def e114 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e112 e113
def v114 (X Y k : F) : F := (v112 X Y k)+(v113 X Y k)
theorem e114_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e114) = v114 X Y k := by
  simp only [e114, v114, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e112_eval, e113_eval]

def e115 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e107 e114
def v115 (X Y k : F) : F := (v107 X Y k)*(v114 X Y k)
theorem e115_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e115) = v115 X Y k := by
  simp only [e115, v115, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e107_eval, e114_eval]

def e116 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e115
def v116 (X Y k : F) : F := -(v115 X Y k)
theorem e116_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e116) = v116 X Y k := by
  simp only [e116, v116, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e115_eval]

def e117 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e098 e116
def v117 (X Y k : F) : F := (v098 X Y k)+(v116 X Y k)
theorem e117_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e117) = v117 X Y k := by
  simp only [e117, v117, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e098_eval, e116_eval]

def e118 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e000 e006
def v118 (X Y k : F) : F := (v000 X Y k)*(v006 X Y k)
theorem e118_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e118) = v118 X Y k := by
  simp only [e118, v118, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e000_eval, e006_eval]

def e119 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e118 e048
def v119 (X Y k : F) : F := (v118 X Y k)*(v048 X Y k)
theorem e119_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e119) = v119 X Y k := by
  simp only [e119, v119, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e118_eval, e048_eval]

def e120 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e001 e042
def v120 (X Y k : F) : F := (v001 X Y k)*(v042 X Y k)
theorem e120_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e120) = v120 X Y k := by
  simp only [e120, v120, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e001_eval, e042_eval]

def e121 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e031 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e032)
def v121 (X Y k : F) : F := (v031 X Y k)-(v032 X Y k)
theorem e121_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e121) = v121 X Y k := by
  simp only [e121, v121, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e031_eval, e032_eval, sub_eq_add_neg]

def e122 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e120 e121
def v122 (X Y k : F) : F := (v120 X Y k)*(v121 X Y k)
theorem e122_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e122) = v122 X Y k := by
  simp only [e122, v122, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e120_eval, e121_eval]

def e123 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e122
def v123 (X Y k : F) : F := -(v122 X Y k)
theorem e123_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e123) = v123 X Y k := by
  simp only [e123, v123, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e122_eval]

def e124 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e119 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e123)
def v124 (X Y k : F) : F := (v119 X Y k)-(v123 X Y k)
theorem e124_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e124) = v124 X Y k := by
  simp only [e124, v124, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e119_eval, e123_eval, sub_eq_add_neg]

def e125 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e117 e124
def v125 (X Y k : F) : F := (v117 X Y k)*(v124 X Y k)
theorem e125_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e125) = v125 X Y k := by
  simp only [e125, v125, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e117_eval, e124_eval]

def e126 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e001 e078
def v126 (X Y k : F) : F := (v001 X Y k)*(v078 X Y k)
theorem e126_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e126) = v126 X Y k := by
  simp only [e126, v126, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e001_eval, e078_eval]

def e127 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e126 e114
def v127 (X Y k : F) : F := (v126 X Y k)*(v114 X Y k)
theorem e127_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e127) = v127 X Y k := by
  simp only [e127, v127, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e126_eval, e114_eval]

def e128 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e097 e106
def v128 (X Y k : F) : F := (v097 X Y k)*(v106 X Y k)
theorem e128_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e128) = v128 X Y k := by
  simp only [e128, v128, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e097_eval, e106_eval]

def e129 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e127 e128
def v129 (X Y k : F) : F := (v127 X Y k)+(v128 X Y k)
theorem e129_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e129) = v129 X Y k := by
  simp only [e129, v129, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e127_eval, e128_eval]

def e130 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e051 e106
def v130 (X Y k : F) : F := (v051 X Y k)*(v106 X Y k)
theorem e130_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e130) = v130 X Y k := by
  simp only [e130, v130, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e051_eval, e106_eval]

def e131 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e130 e114
def v131 (X Y k : F) : F := (v130 X Y k)*(v114 X Y k)
theorem e131_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e131) = v131 X Y k := by
  simp only [e131, v131, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e130_eval, e114_eval]

def e132 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e129 e131
def v132 (X Y k : F) : F := (v129 X Y k)+(v131 X Y k)
theorem e132_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e132) = v132 X Y k := by
  simp only [e132, v132, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e129_eval, e131_eval]

def e133 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e032 e132
def v133 (X Y k : F) : F := (v032 X Y k)*(v132 X Y k)
theorem e133_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e133) = v133 X Y k := by
  simp only [e133, v133, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e032_eval, e132_eval]

def e134 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e031 e006
def v134 (X Y k : F) : F := (v031 X Y k)*(v006 X Y k)
theorem e134_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e134) = v134 X Y k := by
  simp only [e134, v134, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e031_eval, e006_eval]

def e135 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e055
def v135 (X Y k : F) : F := -(v055 X Y k)
theorem e135_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e135) = v135 X Y k := by
  simp only [e135, v135, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e055_eval]

def e136 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e134 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e135)
def v136 (X Y k : F) : F := (v134 X Y k)-(v135 X Y k)
theorem e136_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e136) = v136 X Y k := by
  simp only [e136, v136, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e134_eval, e135_eval, sub_eq_add_neg]

def e137 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e133 e136
def v137 (X Y k : F) : F := (v133 X Y k)*(v136 X Y k)
theorem e137_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e137) = v137 X Y k := by
  simp only [e137, v137, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e133_eval, e136_eval]

def e138 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e137
def v138 (X Y k : F) : F := -(v137 X Y k)
theorem e138_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e138) = v138 X Y k := by
  simp only [e138, v138, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e137_eval]

def e139 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e125 e138
def v139 (X Y k : F) : F := (v125 X Y k)+(v138 X Y k)
theorem e139_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e139) = v139 X Y k := by
  simp only [e139, v139, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e125_eval, e138_eval]

def e140 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e065 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e139)
def v140 (X Y k : F) : F := (v065 X Y k)-(v139 X Y k)
theorem e140_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e140) = v140 X Y k := by
  simp only [e140, v140, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e065_eval, e139_eval, sub_eq_add_neg]

def e141 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[3],[-1]],[[-5],[1]],[[3],[-1]],[[-9],[1]]]
def v141 (X Y k : F) : F := minusFactor X k
theorem e141_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e141) = v141 X Y k := by
  simp only [e141, v141, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, CriticalZeroSplitReduction20261003.Coefficients.eval,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII, CriticalZeroSplitReduction20261003.IntegerReflector.evalI, Int.cast_ofNat, Int.cast_neg, Int.cast_zero,
    Int.cast_one, mul_zero, zero_mul, add_zero, zero_add, mul_one]
  try dsimp only [h, plusFactor, minusFactor, thirdPlusFactor, thirdMinusFactor]
  <;> ring

def e142 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e141 3
def v142 (X Y k : F) : F := (v141 X Y k)^3
theorem e142_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e142) = v142 X Y k := by
  simp only [e142, v142, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow, CriticalZeroSumAssembly20261003.Coefficients.eval_pow, e141_eval]

def e143 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e140 e142
def v143 (X Y k : F) : F := (v140 X Y k)*(v142 X Y k)
theorem e143_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e143) = v143 X Y k := by
  simp only [e143, v143, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e140_eval, e142_eval]

def e144 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[2,-1],[-1]],[[0,1],[1]],[[6,-1],[-1]],[[0,1],[1]]]
def v144 (X Y k : F) : F := thirdMinusFactor X Y k
theorem e144_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e144) = v144 X Y k := by
  simp only [e144, v144, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, CriticalZeroSplitReduction20261003.Coefficients.eval,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII, CriticalZeroSplitReduction20261003.IntegerReflector.evalI, Int.cast_ofNat, Int.cast_neg, Int.cast_zero,
    Int.cast_one, mul_zero, zero_mul, add_zero, zero_add, mul_one]
  try dsimp only [h, plusFactor, minusFactor, thirdPlusFactor, thirdMinusFactor]
  <;> ring

def e145 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e143 e144
def v145 (X Y k : F) : F := (v143 X Y k)*(v144 X Y k)
theorem e145_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e145) = v145 X Y k := by
  simp only [e145, v145, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e143_eval, e144_eval]

def e146 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[3,-1]],[[-5,1]],[[3,-1]],[[-9,1]]]
def v146 (X Y k : F) : F := minusFactor Y k
theorem e146_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e146) = v146 X Y k := by
  simp only [e146, v146, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, CriticalZeroSplitReduction20261003.Coefficients.eval,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII, CriticalZeroSplitReduction20261003.IntegerReflector.evalI, Int.cast_ofNat, Int.cast_neg, Int.cast_zero,
    Int.cast_one, mul_zero, zero_mul, add_zero, zero_add, mul_one]
  try dsimp only [h, plusFactor, minusFactor, thirdPlusFactor, thirdMinusFactor]
  <;> ring

def e147 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e145 e146
def v147 (X Y k : F) : F := (v145 X Y k)*(v146 X Y k)
theorem e147_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e147) = v147 X Y k := by
  simp only [e147, v147, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e145_eval, e146_eval]

def e148 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e006 3
def v148 (X Y k : F) : F := (v006 X Y k)^3
theorem e148_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e148) = v148 X Y k := by
  simp only [e148, v148, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow, CriticalZeroSumAssembly20261003.Coefficients.eval_pow, e006_eval]

def e149 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e148 e062
def v149 (X Y k : F) : F := (v148 X Y k)*(v062 X Y k)
theorem e149_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e149) = v149 X Y k := by
  simp only [e149, v149, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e148_eval, e062_eval]

def e150 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e149 e064
def v150 (X Y k : F) : F := (v149 X Y k)*(v064 X Y k)
theorem e150_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e150) = v150 X Y k := by
  simp only [e150, v150, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e149_eval, e064_eval]

def e151 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e005 e141
def v151 (X Y k : F) : F := (v005 X Y k)*(v141 X Y k)
theorem e151_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e151) = v151 X Y k := by
  simp only [e151, v151, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e005_eval, e141_eval]

def e152 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e013 e141
def v152 (X Y k : F) : F := (v013 X Y k)*(v141 X Y k)
theorem e152_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e152) = v152 X Y k := by
  simp only [e152, v152, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e013_eval, e141_eval]

def e153 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e034
def v153 (X Y k : F) : F := -(v034 X Y k)
theorem e153_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e153) = v153 X Y k := by
  simp only [e153, v153, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e034_eval]

def e154 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e153 e039
def v154 (X Y k : F) : F := (v153 X Y k)+(v039 X Y k)
theorem e154_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e154) = v154 X Y k := by
  simp only [e154, v154, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e153_eval, e039_eval]

def e155 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e010
def v155 (X Y k : F) : F := -(v010 X Y k)
theorem e155_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e155) = v155 X Y k := by
  simp only [e155, v155, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e010_eval]

def e156 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e041 e155
def v156 (X Y k : F) : F := (v041 X Y k)+(v155 X Y k)
theorem e156_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e156) = v156 X Y k := by
  simp only [e156, v156, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e041_eval, e155_eval]

def e157 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e154 e156
def v157 (X Y k : F) : F := (v154 X Y k)*(v156 X Y k)
theorem e157_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e157) = v157 X Y k := by
  simp only [e157, v157, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e154_eval, e156_eval]

def e158 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e152 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e157)
def v158 (X Y k : F) : F := (v152 X Y k)-(v157 X Y k)
theorem e158_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e158) = v158 X Y k := by
  simp only [e158, v158, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e152_eval, e157_eval, sub_eq_add_neg]

def e159 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e158 2
def v159 (X Y k : F) : F := (v158 X Y k)^2
theorem e159_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e159) = v159 X Y k := by
  simp only [e159, v159, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow, CriticalZeroSumAssembly20261003.Coefficients.eval_pow, e158_eval]

def e160 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e012 e049
def v160 (X Y k : F) : F := (v012 X Y k)*(v049 X Y k)
theorem e160_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e160) = v160 X Y k := by
  simp only [e160, v160, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e012_eval, e049_eval]

def e161 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e160 e141
def v161 (X Y k : F) : F := (v160 X Y k)*(v141 X Y k)
theorem e161_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e161) = v161 X Y k := by
  simp only [e161, v161, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e160_eval, e141_eval]

def e162 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e051
def v162 (X Y k : F) : F := -(v051 X Y k)
theorem e162_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e162) = v162 X Y k := by
  simp only [e162, v162, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e051_eval]

def e163 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e162 e053
def v163 (X Y k : F) : F := (v162 X Y k)+(v053 X Y k)
theorem e163_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e163) = v163 X Y k := by
  simp only [e163, v163, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e162_eval, e053_eval]

def e164 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e156 e163
def v164 (X Y k : F) : F := (v156 X Y k)*(v163 X Y k)
theorem e164_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e164) = v164 X Y k := by
  simp only [e164, v164, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e156_eval, e163_eval]

def e165 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e164
def v165 (X Y k : F) : F := -(v164 X Y k)
theorem e165_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e165) = v165 X Y k := by
  simp only [e165, v165, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e164_eval]

def e166 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e161 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e165)
def v166 (X Y k : F) : F := (v161 X Y k)-(v165 X Y k)
theorem e166_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e166) = v166 X Y k := by
  simp only [e166, v166, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e161_eval, e165_eval, sub_eq_add_neg]

def e167 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e166 2
def v167 (X Y k : F) : F := (v166 X Y k)^2
theorem e167_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e167) = v167 X Y k := by
  simp only [e167, v167, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow, CriticalZeroSumAssembly20261003.Coefficients.eval_pow, e166_eval]

def e168 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e033 e167
def v168 (X Y k : F) : F := (v033 X Y k)*(v167 X Y k)
theorem e168_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e168) = v168 X Y k := by
  simp only [e168, v168, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e033_eval, e167_eval]

def e169 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e168
def v169 (X Y k : F) : F := -(v168 X Y k)
theorem e169_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e169) = v169 X Y k := by
  simp only [e169, v169, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e168_eval]

def e170 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e159 e169
def v170 (X Y k : F) : F := (v159 X Y k)+(v169 X Y k)
theorem e170_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e170) = v170 X Y k := by
  simp only [e170, v170, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e159_eval, e169_eval]

def e171 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e151 e170
def v171 (X Y k : F) : F := (v151 X Y k)*(v170 X Y k)
theorem e171_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e171) = v171 X Y k := by
  simp only [e171, v171, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e151_eval, e170_eval]

def e172 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e171 e144
def v172 (X Y k : F) : F := (v171 X Y k)*(v144 X Y k)
theorem e172_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e172) = v172 X Y k := by
  simp only [e172, v172, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e171_eval, e144_eval]

def e173 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e172 e146
def v173 (X Y k : F) : F := (v172 X Y k)*(v146 X Y k)
theorem e173_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e173) = v173 X Y k := by
  simp only [e173, v173, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e172_eval, e146_eval]

def e174 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e162 e068
def v174 (X Y k : F) : F := (v162 X Y k)+(v068 X Y k)
theorem e174_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e174) = v174 X Y k := by
  simp only [e174, v174, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e162_eval, e068_eval]

def e175 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e154 e174
def v175 (X Y k : F) : F := (v154 X Y k)*(v174 X Y k)
theorem e175_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e175) = v175 X Y k := by
  simp only [e175, v175, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e154_eval, e174_eval]

def e176 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e175
def v176 (X Y k : F) : F := -(v175 X Y k)
theorem e176_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e176) = v176 X Y k := by
  simp only [e176, v176, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e175_eval]

def e177 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e073 e075
def v177 (X Y k : F) : F := (v073 X Y k)*(v075 X Y k)
theorem e177_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e177) = v177 X Y k := by
  simp only [e177, v177, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e073_eval, e075_eval]

def e178 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e177 e163
def v178 (X Y k : F) : F := (v177 X Y k)*(v163 X Y k)
theorem e178_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e178) = v178 X Y k := by
  simp only [e178, v178, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e177_eval, e163_eval]

def e179 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e176 e178
def v179 (X Y k : F) : F := (v176 X Y k)+(v178 X Y k)
theorem e179_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e179) = v179 X Y k := by
  simp only [e179, v179, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e176_eval, e178_eval]

def e180 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e083
def v180 (X Y k : F) : F := -(v083 X Y k)
theorem e180_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e180) = v180 X Y k := by
  simp only [e180, v180, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e083_eval]

def e181 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e180 e088
def v181 (X Y k : F) : F := (v180 X Y k)+(v088 X Y k)
theorem e181_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e181) = v181 X Y k := by
  simp only [e181, v181, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e180_eval, e088_eval]

def e182 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e154 e181
def v182 (X Y k : F) : F := (v154 X Y k)*(v181 X Y k)
theorem e182_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e182) = v182 X Y k := by
  simp only [e182, v182, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e154_eval, e181_eval]

def e183 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e033 e163
def v183 (X Y k : F) : F := (v033 X Y k)*(v163 X Y k)
theorem e183_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e183) = v183 X Y k := by
  simp only [e183, v183, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e033_eval, e163_eval]

def e184 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e162 e093
def v184 (X Y k : F) : F := (v162 X Y k)+(v093 X Y k)
theorem e184_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e184) = v184 X Y k := by
  simp only [e184, v184, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e162_eval, e093_eval]

def e185 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e183 e184
def v185 (X Y k : F) : F := (v183 X Y k)*(v184 X Y k)
theorem e185_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e185) = v185 X Y k := by
  simp only [e185, v185, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e183_eval, e184_eval]

def e186 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e185
def v186 (X Y k : F) : F := -(v185 X Y k)
theorem e186_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e186) = v186 X Y k := by
  simp only [e186, v186, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e185_eval]

def e187 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e182 e186
def v187 (X Y k : F) : F := (v182 X Y k)+(v186 X Y k)
theorem e187_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e187) = v187 X Y k := by
  simp only [e187, v187, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e182_eval, e186_eval]

def e188 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e179 e187
def v188 (X Y k : F) : F := (v179 X Y k)*(v187 X Y k)
theorem e188_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e188) = v188 X Y k := by
  simp only [e188, v188, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e179_eval, e187_eval]

def e189 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e075 e154
def v189 (X Y k : F) : F := (v075 X Y k)*(v154 X Y k)
theorem e189_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e189) = v189 X Y k := by
  simp only [e189, v189, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e075_eval, e154_eval]

def e190 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e001 e163
def v190 (X Y k : F) : F := (v001 X Y k)*(v163 X Y k)
theorem e190_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e190) = v190 X Y k := by
  simp only [e190, v190, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e001_eval, e163_eval]

def e191 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e190 e174
def v191 (X Y k : F) : F := (v190 X Y k)*(v174 X Y k)
theorem e191_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e191) = v191 X Y k := by
  simp only [e191, v191, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e190_eval, e174_eval]

def e192 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e189 e191
def v192 (X Y k : F) : F := (v189 X Y k)+(v191 X Y k)
theorem e192_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e192) = v192 X Y k := by
  simp only [e192, v192, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e189_eval, e191_eval]

def e193 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e051 e075
def v193 (X Y k : F) : F := (v051 X Y k)*(v075 X Y k)
theorem e193_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e193) = v193 X Y k := by
  simp only [e193, v193, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e051_eval, e075_eval]

def e194 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e193 e163
def v194 (X Y k : F) : F := (v193 X Y k)*(v163 X Y k)
theorem e194_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e194) = v194 X Y k := by
  simp only [e194, v194, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e193_eval, e163_eval]

def e195 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e194
def v195 (X Y k : F) : F := -(v194 X Y k)
theorem e195_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e195) = v195 X Y k := by
  simp only [e195, v195, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e194_eval]

def e196 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e192 e195
def v196 (X Y k : F) : F := (v192 X Y k)+(v195 X Y k)
theorem e196_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e196) = v196 X Y k := by
  simp only [e196, v196, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e192_eval, e195_eval]

def e197 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e073 e196
def v197 (X Y k : F) : F := (v073 X Y k)*(v196 X Y k)
theorem e197_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e197) = v197 X Y k := by
  simp only [e197, v197, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e073_eval, e196_eval]

def e198 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e154 e184
def v198 (X Y k : F) : F := (v154 X Y k)*(v184 X Y k)
theorem e198_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e198) = v198 X Y k := by
  simp only [e198, v198, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e154_eval, e184_eval]

def e199 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e198
def v199 (X Y k : F) : F := -(v198 X Y k)
theorem e199_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e199) = v199 X Y k := by
  simp only [e199, v199, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e198_eval]

def e200 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e163 e181
def v200 (X Y k : F) : F := (v163 X Y k)*(v181 X Y k)
theorem e200_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e200) = v200 X Y k := by
  simp only [e200, v200, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e163_eval, e181_eval]

def e201 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e200
def v201 (X Y k : F) : F := -(v200 X Y k)
theorem e201_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e201) = v201 X Y k := by
  simp only [e201, v201, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e200_eval]

def e202 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e199 e201
def v202 (X Y k : F) : F := (v199 X Y k)+(v201 X Y k)
theorem e202_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e202) = v202 X Y k := by
  simp only [e202, v202, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e199_eval, e201_eval]

def e203 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e051 e163
def v203 (X Y k : F) : F := (v051 X Y k)*(v163 X Y k)
theorem e203_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e203) = v203 X Y k := by
  simp only [e203, v203, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e051_eval, e163_eval]

def e204 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e203 e184
def v204 (X Y k : F) : F := (v203 X Y k)*(v184 X Y k)
theorem e204_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e204) = v204 X Y k := by
  simp only [e204, v204, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e203_eval, e184_eval]

def e205 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e202 e204
def v205 (X Y k : F) : F := (v202 X Y k)+(v204 X Y k)
theorem e205_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e205) = v205 X Y k := by
  simp only [e205, v205, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e202_eval, e204_eval]

def e206 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e197 e205
def v206 (X Y k : F) : F := (v197 X Y k)*(v205 X Y k)
theorem e206_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e206) = v206 X Y k := by
  simp only [e206, v206, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e197_eval, e205_eval]

def e207 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e206
def v207 (X Y k : F) : F := -(v206 X Y k)
theorem e207_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e207) = v207 X Y k := by
  simp only [e207, v207, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e206_eval]

def e208 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e188 e207
def v208 (X Y k : F) : F := (v188 X Y k)+(v207 X Y k)
theorem e208_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e208) = v208 X Y k := by
  simp only [e208, v208, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e188_eval, e207_eval]

def e209 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e000 e048
def v209 (X Y k : F) : F := (v000 X Y k)*(v048 X Y k)
theorem e209_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e209) = v209 X Y k := by
  simp only [e209, v209, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e000_eval, e048_eval]

def e210 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e209 e141
def v210 (X Y k : F) : F := (v209 X Y k)*(v141 X Y k)
theorem e210_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e210) = v210 X Y k := by
  simp only [e210, v210, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e209_eval, e141_eval]

def e211 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e001 e121
def v211 (X Y k : F) : F := (v001 X Y k)*(v121 X Y k)
theorem e211_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e211) = v211 X Y k := by
  simp only [e211, v211, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e001_eval, e121_eval]

def e212 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e211 e156
def v212 (X Y k : F) : F := (v211 X Y k)*(v156 X Y k)
theorem e212_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e212) = v212 X Y k := by
  simp only [e212, v212, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e211_eval, e156_eval]

def e213 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e212
def v213 (X Y k : F) : F := -(v212 X Y k)
theorem e213_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e213) = v213 X Y k := by
  simp only [e213, v213, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e212_eval]

def e214 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e210 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e213)
def v214 (X Y k : F) : F := (v210 X Y k)-(v213 X Y k)
theorem e214_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e214) = v214 X Y k := by
  simp only [e214, v214, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e210_eval, e213_eval, sub_eq_add_neg]

def e215 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e208 e214
def v215 (X Y k : F) : F := (v208 X Y k)*(v214 X Y k)
theorem e215_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e215) = v215 X Y k := by
  simp only [e215, v215, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e208_eval, e214_eval]

def e216 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e001 e179
def v216 (X Y k : F) : F := (v001 X Y k)*(v179 X Y k)
theorem e216_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e216) = v216 X Y k := by
  simp only [e216, v216, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e001_eval, e179_eval]

def e217 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e216 e205
def v217 (X Y k : F) : F := (v216 X Y k)*(v205 X Y k)
theorem e217_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e217) = v217 X Y k := by
  simp only [e217, v217, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e216_eval, e205_eval]

def e218 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e187 e196
def v218 (X Y k : F) : F := (v187 X Y k)*(v196 X Y k)
theorem e218_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e218) = v218 X Y k := by
  simp only [e218, v218, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e187_eval, e196_eval]

def e219 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e217 e218
def v219 (X Y k : F) : F := (v217 X Y k)+(v218 X Y k)
theorem e219_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e219) = v219 X Y k := by
  simp only [e219, v219, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e217_eval, e218_eval]

def e220 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e051 e196
def v220 (X Y k : F) : F := (v051 X Y k)*(v196 X Y k)
theorem e220_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e220) = v220 X Y k := by
  simp only [e220, v220, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e051_eval, e196_eval]

def e221 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e220 e205
def v221 (X Y k : F) : F := (v220 X Y k)*(v205 X Y k)
theorem e221_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e221) = v221 X Y k := by
  simp only [e221, v221, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e220_eval, e205_eval]

def e222 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e219 e221
def v222 (X Y k : F) : F := (v219 X Y k)+(v221 X Y k)
theorem e222_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e222) = v222 X Y k := by
  simp only [e222, v222, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e219_eval, e221_eval]

def e223 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e032 e222
def v223 (X Y k : F) : F := (v032 X Y k)*(v222 X Y k)
theorem e223_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e223) = v223 X Y k := by
  simp only [e223, v223, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e032_eval, e222_eval]

def e224 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e031 e141
def v224 (X Y k : F) : F := (v031 X Y k)*(v141 X Y k)
theorem e224_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e224) = v224 X Y k := by
  simp only [e224, v224, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e031_eval, e141_eval]

def e225 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e224 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e164)
def v225 (X Y k : F) : F := (v224 X Y k)-(v164 X Y k)
theorem e225_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e225) = v225 X Y k := by
  simp only [e225, v225, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e224_eval, e164_eval, sub_eq_add_neg]

def e226 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e223 e225
def v226 (X Y k : F) : F := (v223 X Y k)*(v225 X Y k)
theorem e226_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e226) = v226 X Y k := by
  simp only [e226, v226, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e223_eval, e225_eval]

def e227 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e226
def v227 (X Y k : F) : F := -(v226 X Y k)
theorem e227_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e227) = v227 X Y k := by
  simp only [e227, v227, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e226_eval]

def e228 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e215 e227
def v228 (X Y k : F) : F := (v215 X Y k)+(v227 X Y k)
theorem e228_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e228) = v228 X Y k := by
  simp only [e228, v228, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e215_eval, e227_eval]

def e229 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e173 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e228)
def v229 (X Y k : F) : F := (v173 X Y k)-(v228 X Y k)
theorem e229_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e229) = v229 X Y k := by
  simp only [e229, v229, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e173_eval, e228_eval, sub_eq_add_neg]

def e230 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e150 e229
def v230 (X Y k : F) : F := (v150 X Y k)*(v229 X Y k)
theorem e230_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e230) = v230 X Y k := by
  simp only [e230, v230, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e150_eval, e229_eval]

def e231 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e147 e230
def v231 (X Y k : F) : F := (v147 X Y k)+(v230 X Y k)
theorem e231_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e231) = v231 X Y k := by
  simp only [e231, v231, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e147_eval, e230_eval]

def e232 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e015 e079
def v232 (X Y k : F) : F := (v015 X Y k)*(v079 X Y k)
theorem e232_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e232) = v232 X Y k := by
  simp only [e232, v232, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e015_eval, e079_eval]

def e233 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e232 e023
def v233 (X Y k : F) : F := (v232 X Y k)*(v023 X Y k)
theorem e233_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e233) = v233 X Y k := by
  simp only [e233, v233, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e232_eval, e023_eval]

def e234 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e233 e004
def v234 (X Y k : F) : F := (v233 X Y k)*(v004 X Y k)
theorem e234_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e234) = v234 X Y k := by
  simp only [e234, v234, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e233_eval, e004_eval]

def e235 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e234 e006
def v235 (X Y k : F) : F := (v234 X Y k)*(v006 X Y k)
theorem e235_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e235) = v235 X Y k := by
  simp only [e235, v235, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e234_eval, e006_eval]

def e236 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e235 e056
def v236 (X Y k : F) : F := (v235 X Y k)*(v056 X Y k)
theorem e236_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e236) = v236 X Y k := by
  simp only [e236, v236, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e235_eval, e056_eval]

def e237 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e041 e041
def v237 (X Y k : F) : F := (v041 X Y k)+(v041 X Y k)
theorem e237_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e237) = v237 X Y k := by
  simp only [e237, v237, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e041_eval]

def e238 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e045 e237
def v238 (X Y k : F) : F := (v045 X Y k)*(v237 X Y k)
theorem e238_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e238) = v238 X Y k := by
  simp only [e238, v238, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e045_eval, e237_eval]

def e239 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e051 e056
def v239 (X Y k : F) : F := (v051 X Y k)*(v056 X Y k)
theorem e239_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e239) = v239 X Y k := by
  simp only [e239, v239, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e051_eval, e056_eval]

def e240 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e238 e239
def v240 (X Y k : F) : F := (v238 X Y k)+(v239 X Y k)
theorem e240_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e240) = v240 X Y k := by
  simp only [e240, v240, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e238_eval, e239_eval]

def e241 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e236 e240
def v241 (X Y k : F) : F := (v236 X Y k)*(v240 X Y k)
theorem e241_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e241) = v241 X Y k := by
  simp only [e241, v241, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e236_eval, e240_eval]

def e242 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e241 e062
def v242 (X Y k : F) : F := (v241 X Y k)*(v062 X Y k)
theorem e242_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e242) = v242 X Y k := by
  simp only [e242, v242, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e241_eval, e062_eval]

def e243 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e242 e064
def v243 (X Y k : F) : F := (v242 X Y k)*(v064 X Y k)
theorem e243_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e243) = v243 X Y k := by
  simp only [e243, v243, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e242_eval, e064_eval]

def e244 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e001 e117
def v244 (X Y k : F) : F := (v001 X Y k)*(v117 X Y k)
theorem e244_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e244) = v244 X Y k := by
  simp only [e244, v244, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e001_eval, e117_eval]

def e245 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e244 e136
def v245 (X Y k : F) : F := (v244 X Y k)*(v136 X Y k)
theorem e245_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e245) = v245 X Y k := by
  simp only [e245, v245, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e244_eval, e136_eval]

def e246 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e072 e132
def v246 (X Y k : F) : F := (v072 X Y k)*(v132 X Y k)
theorem e246_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e246) = v246 X Y k := by
  simp only [e246, v246, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e072_eval, e132_eval]

def e247 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e246 e124
def v247 (X Y k : F) : F := (v246 X Y k)*(v124 X Y k)
theorem e247_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e247) = v247 X Y k := by
  simp only [e247, v247, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e246_eval, e124_eval]

def e248 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e245 e247
def v248 (X Y k : F) : F := (v245 X Y k)+(v247 X Y k)
theorem e248_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e248) = v248 X Y k := by
  simp only [e248, v248, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e245_eval, e247_eval]

def e249 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e051 e136
def v249 (X Y k : F) : F := (v051 X Y k)*(v136 X Y k)
theorem e249_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e249) = v249 X Y k := by
  simp only [e249, v249, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e051_eval, e136_eval]

def e250 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e249 e132
def v250 (X Y k : F) : F := (v249 X Y k)*(v132 X Y k)
theorem e250_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e250) = v250 X Y k := by
  simp only [e250, v250, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e249_eval, e132_eval]

def e251 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e248 e250
def v251 (X Y k : F) : F := (v248 X Y k)+(v250 X Y k)
theorem e251_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e251) = v251 X Y k := by
  simp only [e251, v251, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e248_eval, e250_eval]

def e252 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e243 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e251)
def v252 (X Y k : F) : F := (v243 X Y k)-(v251 X Y k)
theorem e252_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e252) = v252 X Y k := by
  simp only [e252, v252, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e243_eval, e251_eval, sub_eq_add_neg]

def e253 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e252 e142
def v253 (X Y k : F) : F := (v252 X Y k)*(v142 X Y k)
theorem e253_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e253) = v253 X Y k := by
  simp only [e253, v253, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e252_eval, e142_eval]

def e254 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e253 e144
def v254 (X Y k : F) : F := (v253 X Y k)*(v144 X Y k)
theorem e254_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e254) = v254 X Y k := by
  simp only [e254, v254, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e253_eval, e144_eval]

def e255 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e254 e146
def v255 (X Y k : F) : F := (v254 X Y k)*(v146 X Y k)
theorem e255_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e255) = v255 X Y k := by
  simp only [e255, v255, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e254_eval, e146_eval]

def e256 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e234 e141
def v256 (X Y k : F) : F := (v234 X Y k)*(v141 X Y k)
theorem e256_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e256) = v256 X Y k := by
  simp only [e256, v256, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e234_eval, e141_eval]

def e257 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e256 e166
def v257 (X Y k : F) : F := (v256 X Y k)*(v166 X Y k)
theorem e257_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e257) = v257 X Y k := by
  simp only [e257, v257, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e256_eval, e166_eval]

def e258 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e237 e158
def v258 (X Y k : F) : F := (v237 X Y k)*(v158 X Y k)
theorem e258_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e258) = v258 X Y k := by
  simp only [e258, v258, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e237_eval, e158_eval]

def e259 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e051 e166
def v259 (X Y k : F) : F := (v051 X Y k)*(v166 X Y k)
theorem e259_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e259) = v259 X Y k := by
  simp only [e259, v259, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e051_eval, e166_eval]

def e260 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e258 e259
def v260 (X Y k : F) : F := (v258 X Y k)+(v259 X Y k)
theorem e260_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e260) = v260 X Y k := by
  simp only [e260, v260, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e258_eval, e259_eval]

def e261 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e257 e260
def v261 (X Y k : F) : F := (v257 X Y k)*(v260 X Y k)
theorem e261_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e261) = v261 X Y k := by
  simp only [e261, v261, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e257_eval, e260_eval]

def e262 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e261 e144
def v262 (X Y k : F) : F := (v261 X Y k)*(v144 X Y k)
theorem e262_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e262) = v262 X Y k := by
  simp only [e262, v262, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e261_eval, e144_eval]

def e263 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e262 e146
def v263 (X Y k : F) : F := (v262 X Y k)*(v146 X Y k)
theorem e263_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e263) = v263 X Y k := by
  simp only [e263, v263, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e262_eval, e146_eval]

def e264 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e001 e208
def v264 (X Y k : F) : F := (v001 X Y k)*(v208 X Y k)
theorem e264_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e264) = v264 X Y k := by
  simp only [e264, v264, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e001_eval, e208_eval]

def e265 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e264 e225
def v265 (X Y k : F) : F := (v264 X Y k)*(v225 X Y k)
theorem e265_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e265) = v265 X Y k := by
  simp only [e265, v265, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e264_eval, e225_eval]

def e266 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e072 e222
def v266 (X Y k : F) : F := (v072 X Y k)*(v222 X Y k)
theorem e266_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e266) = v266 X Y k := by
  simp only [e266, v266, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e072_eval, e222_eval]

def e267 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e266 e214
def v267 (X Y k : F) : F := (v266 X Y k)*(v214 X Y k)
theorem e267_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e267) = v267 X Y k := by
  simp only [e267, v267, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e266_eval, e214_eval]

def e268 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e265 e267
def v268 (X Y k : F) : F := (v265 X Y k)+(v267 X Y k)
theorem e268_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e268) = v268 X Y k := by
  simp only [e268, v268, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e265_eval, e267_eval]

def e269 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e051 e225
def v269 (X Y k : F) : F := (v051 X Y k)*(v225 X Y k)
theorem e269_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e269) = v269 X Y k := by
  simp only [e269, v269, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e051_eval, e225_eval]

def e270 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e269 e222
def v270 (X Y k : F) : F := (v269 X Y k)*(v222 X Y k)
theorem e270_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e270) = v270 X Y k := by
  simp only [e270, v270, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e269_eval, e222_eval]

def e271 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e268 e270
def v271 (X Y k : F) : F := (v268 X Y k)+(v270 X Y k)
theorem e271_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e271) = v271 X Y k := by
  simp only [e271, v271, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e268_eval, e270_eval]

def e272 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e263 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg e271)
def v272 (X Y k : F) : F := (v263 X Y k)-(v271 X Y k)
theorem e272_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e272) = v272 X Y k := by
  simp only [e272, v272, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, e263_eval, e271_eval, sub_eq_add_neg]

def e273 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e150 e272
def v273 (X Y k : F) : F := (v150 X Y k)*(v272 X Y k)
theorem e273_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e273) = v273 X Y k := by
  simp only [e273, v273, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e150_eval, e272_eval]

def e274 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e255 e273
def v274 (X Y k : F) : F := (v255 X Y k)+(v273 X Y k)
theorem e274_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e274) = v274 X Y k := by
  simp only [e274, v274, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSplitReduction20261003.Coefficients.eval_add, e255_eval, e273_eval]

def e275 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e003 e001
def v275 (X Y k : F) : F := (v003 X Y k)*(v001 X Y k)
theorem e275_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e275) = v275 X Y k := by
  simp only [e275, v275, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e003_eval, e001_eval]

def e276 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e275 e000
def v276 (X Y k : F) : F := (v275 X Y k)*(v000 X Y k)
theorem e276_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e276) = v276 X Y k := by
  simp only [e276, v276, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e275_eval, e000_eval]

def e277 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e276 e012
def v277 (X Y k : F) : F := (v276 X Y k)*(v012 X Y k)
theorem e277_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e277) = v277 X Y k := by
  simp only [e277, v277, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e276_eval, e012_eval]

def e278 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e027 e079
def v278 (X Y k : F) : F := (v027 X Y k)*(v079 X Y k)
theorem e278_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e278) = v278 X Y k := by
  simp only [e278, v278, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e027_eval, e079_eval]

def e279 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e278 e000
def v279 (X Y k : F) : F := (v278 X Y k)*(v000 X Y k)
theorem e279_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e279) = v279 X Y k := by
  simp only [e279, v279, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e278_eval, e000_eval]

def e280 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e279 e017
def v280 (X Y k : F) : F := (v279 X Y k)*(v017 X Y k)
theorem e280_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e280) = v280 X Y k := by
  simp only [e280, v280, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e279_eval, e017_eval]

def target_a : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY :=
  CriticalZeroSumAssembly20261003.DenseCoefficients.mul e277 numerator_p2_m4_a_coefficients
def residual_a : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY :=
  CriticalZeroSumAssembly20261003.DenseCoefficients.add e231 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg target_a)

theorem residual_a_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y residual_a) =
      v231 X Y k - v277 X Y k *
        CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y numerator_p2_m4_a_coefficients) := by
  simp only [residual_a, target_a, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSplitReduction20261003.Coefficients.eval_add,
    CriticalZeroSplitReduction20261003.Coefficients.eval_neg, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e231_eval, e277_eval, sub_eq_add_neg]

def target_b : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY :=
  CriticalZeroSumAssembly20261003.DenseCoefficients.mul e280 numerator_p2_m4_b_coefficients
def residual_b : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY :=
  CriticalZeroSumAssembly20261003.DenseCoefficients.add e274 (CriticalZeroSumAssembly20261003.DenseCoefficients.neg target_b)

theorem residual_b_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y residual_b) =
      v274 X Y k - v280 X Y k *
        CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y numerator_p2_m4_b_coefficients) := by
  simp only [residual_b, target_b, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul, CriticalZeroSplitReduction20261003.Coefficients.eval_add,
    CriticalZeroSplitReduction20261003.Coefficients.eval_neg, CriticalZeroSumAssembly20261003.Coefficients.eval_mul, e274_eval, e280_eval, sub_eq_add_neg]


#print axioms residual_a_eval
#print axioms residual_b_eval
end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
