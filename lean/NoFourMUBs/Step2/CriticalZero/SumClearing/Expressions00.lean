import NoFourMUBs.Step2.CriticalZero.SumClearing.Primitives
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Final
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
def e0000 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[1728]]]
def v0000 (X Y k : ℂ) : ℂ := (1728 : ℂ)
theorem e0000_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0000) = v0000 X Y k := by
  norm_num [e0000,v0000,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI]
def e0001 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s003
def v0001 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v003 X Y k
theorem e0001_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0001) = v0001 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s003_eval X Y k
def e0002 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0001 6
def v0002 (X Y k : ℂ) : ℂ := (v0001 X Y k)^6
theorem e0002_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0002) = v0002 X Y k := by
  simp only [e0002,v0002,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0001_eval]
def e0003 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s001
def v0003 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v001 X Y k
theorem e0003_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0003) = v0003 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s001_eval X Y k
def e0004 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0003 8
def v0004 (X Y k : ℂ) : ℂ := (v0003 X Y k)^8
theorem e0004_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0004) = v0004 X Y k := by
  simp only [e0004,v0004,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0003_eval]
def e0005 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0002 e0004
def v0005 (X Y k : ℂ) : ℂ := (v0002 X Y k)*(v0004 X Y k)
theorem e0005_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0005) = v0005 X Y k := by
  simp only [e0005,v0005,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0002_eval,e0004_eval]
def e0006 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s000
def v0006 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v000 X Y k
theorem e0006_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0006) = v0006 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s000_eval X Y k
def e0007 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0006 7
def v0007 (X Y k : ℂ) : ℂ := (v0006 X Y k)^7
theorem e0007_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0007) = v0007 X Y k := by
  simp only [e0007,v0007,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0006_eval]
def e0008 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0005 e0007
def v0008 (X Y k : ℂ) : ℂ := (v0005 X Y k)*(v0007 X Y k)
theorem e0008_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0008) = v0008 X Y k := by
  simp only [e0008,v0008,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0005_eval,e0007_eval]
def e0009 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s012
def v0009 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v012 X Y k
theorem e0009_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0009) = v0009 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s012_eval X Y k
def e0010 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0009 12
def v0010 (X Y k : ℂ) : ℂ := (v0009 X Y k)^12
theorem e0010_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0010) = v0010 X Y k := by
  simp only [e0010,v0010,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0009_eval]
def e0011 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0008 e0010
def v0011 (X Y k : ℂ) : ℂ := (v0008 X Y k)*(v0010 X Y k)
theorem e0011_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0011) = v0011 X Y k := by
  simp only [e0011,v0011,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0008_eval,e0010_eval]
def e0012 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s006
def v0012 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v006 X Y k
theorem e0012_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0012) = v0012 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s006_eval X Y k
def e0013 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0012 5
def v0013 (X Y k : ℂ) : ℂ := (v0012 X Y k)^5
theorem e0013_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0013) = v0013 X Y k := by
  simp only [e0013,v0013,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0012_eval]
def e0014 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0011 e0013
def v0014 (X Y k : ℂ) : ℂ := (v0011 X Y k)*(v0013 X Y k)
theorem e0014_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0014) = v0014 X Y k := by
  simp only [e0014,v0014,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0011_eval,e0013_eval]
def e0015 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s141
def v0015 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v141 X Y k
theorem e0015_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0015) = v0015 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s141_eval X Y k
def e0016 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0015 5
def v0016 (X Y k : ℂ) : ℂ := (v0015 X Y k)^5
theorem e0016_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0016) = v0016 X Y k := by
  simp only [e0016,v0016,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0015_eval]
def e0017 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0014 e0016
def v0017 (X Y k : ℂ) : ℂ := (v0014 X Y k)*(v0016 X Y k)
theorem e0017_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0017) = v0017 X Y k := by
  simp only [e0017,v0017,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0014_eval,e0016_eval]
def e0018 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s064
def v0018 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v064 X Y k
theorem e0018_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0018) = v0018 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s064_eval X Y k
def e0019 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0018 5
def v0019 (X Y k : ℂ) : ℂ := (v0018 X Y k)^5
theorem e0019_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0019) = v0019 X Y k := by
  simp only [e0019,v0019,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0018_eval]
def e0020 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0017 e0019
def v0020 (X Y k : ℂ) : ℂ := (v0017 X Y k)*(v0019 X Y k)
theorem e0020_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0020) = v0020 X Y k := by
  simp only [e0020,v0020,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0017_eval,e0019_eval]
def e0021 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s146
def v0021 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v146 X Y k
theorem e0021_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0021) = v0021 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s146_eval X Y k
def e0022 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0021 5
def v0022 (X Y k : ℂ) : ℂ := (v0021 X Y k)^5
theorem e0022_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0022) = v0022 X Y k := by
  simp only [e0022,v0022,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0021_eval]
def e0023 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0020 e0022
def v0023 (X Y k : ℂ) : ℂ := (v0020 X Y k)*(v0022 X Y k)
theorem e0023_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0023) = v0023 X Y k := by
  simp only [e0023,v0023,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0020_eval,e0022_eval]
def e0024 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s062
def v0024 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v062 X Y k
theorem e0024_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0024) = v0024 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s062_eval X Y k
def e0025 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0024 5
def v0025 (X Y k : ℂ) : ℂ := (v0024 X Y k)^5
theorem e0025_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0025) = v0025 X Y k := by
  simp only [e0025,v0025,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0024_eval]
def e0026 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0023 e0025
def v0026 (X Y k : ℂ) : ℂ := (v0023 X Y k)*(v0025 X Y k)
theorem e0026_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0026) = v0026 X Y k := by
  simp only [e0026,v0026,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0023_eval,e0025_eval]
def e0027 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s144
def v0027 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v144 X Y k
theorem e0027_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0027) = v0027 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s144_eval X Y k
def e0028 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0027 5
def v0028 (X Y k : ℂ) : ℂ := (v0027 X Y k)^5
theorem e0028_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0028) = v0028 X Y k := by
  simp only [e0028,v0028,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0027_eval]
def e0029 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0026 e0028
def v0029 (X Y k : ℂ) : ℂ := (v0026 X Y k)*(v0028 X Y k)
theorem e0029_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0029) = v0029 X Y k := by
  simp only [e0029,v0029,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0026_eval,e0028_eval]
def e0030 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0000 e0029
def v0030 (X Y k : ℂ) : ℂ := (v0000 X Y k)*(v0029 X Y k)
theorem e0030_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0030) = v0030 X Y k := by
  simp only [e0030,v0030,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0000_eval,e0029_eval]
def e0031 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := [[[-1]]]
def v0031 (X Y k : ℂ) : ℂ := (-1 : ℂ)
theorem e0031_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0031) = v0031 X Y k := by
  norm_num [e0031,v0031,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI]
def e0032 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.pow e0003 4
def v0032 (X Y k : ℂ) : ℂ := (v0003 X Y k)^4
theorem e0032_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0032) = v0032 X Y k := by
  simp only [e0032,v0032,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_pow,CriticalZeroSumAssembly20261003.Coefficients.eval_pow,e0003_eval]
def e0033 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p4_m2_a
def v0033 (X Y k : ℂ) : ℂ := integerNumerator_p4_m2_a X Y k
theorem e0033_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0033) = v0033 X Y k := by
  exact primitive_p4_m2_a_eval X Y k
def e0034 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0033 e0006
def v0034 (X Y k : ℂ) : ℂ := (v0033 X Y k)*(v0006 X Y k)
theorem e0034_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0034) = v0034 X Y k := by
  simp only [e0034,v0034,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0033_eval,e0006_eval]
def e0035 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s051
def v0035 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v051 X Y k
theorem e0035_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0035) = v0035 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s051_eval X Y k
def e0036 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p4_m2_b
def v0036 (X Y k : ℂ) : ℂ := integerNumerator_p4_m2_b X Y k
theorem e0036_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0036) = v0036 X Y k := by
  exact primitive_p4_m2_b_eval X Y k
def e0037 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0035 e0036
def v0037 (X Y k : ℂ) : ℂ := (v0035 X Y k)*(v0036 X Y k)
theorem e0037_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0037) = v0037 X Y k := by
  simp only [e0037,v0037,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0035_eval,e0036_eval]
def e0038 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0037 e0001
def v0038 (X Y k : ℂ) : ℂ := (v0037 X Y k)*(v0001 X Y k)
theorem e0038_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0038) = v0038 X Y k := by
  simp only [e0038,v0038,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0037_eval,e0001_eval]
def e0039 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0034 e0038
def v0039 (X Y k : ℂ) : ℂ := (v0034 X Y k)+(v0038 X Y k)
theorem e0039_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0039) = v0039 X Y k := by
  simp only [e0039,v0039,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0034_eval,e0038_eval]
def e0040 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0032 e0039
def v0040 (X Y k : ℂ) : ℂ := (v0032 X Y k)*(v0039 X Y k)
theorem e0040_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0040) = v0040 X Y k := by
  simp only [e0040,v0040,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0032_eval,e0039_eval]
def e0041 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0031 e0040
def v0041 (X Y k : ℂ) : ℂ := (v0031 X Y k)*(v0040 X Y k)
theorem e0041_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0041) = v0041 X Y k := by
  simp only [e0041,v0041,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0031_eval,e0040_eval]
def e0042 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := primitive_p2_m4_a
def v0042 (X Y k : ℂ) : ℂ := integerNumerator_p2_m4_a X Y k
theorem e0042_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0042) = v0042 X Y k := by
  exact primitive_p2_m4_a_eval X Y k
def e0043 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.mul e0041 e0042
def v0043 (X Y k : ℂ) : ℂ := (v0041 X Y k)*(v0042 X Y k)
theorem e0043_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0043) = v0043 X Y k := by
  simp only [e0043,v0043,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,e0041_eval,e0042_eval]
def e0044 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s025
def v0044 (X Y k : ℂ) : ℂ := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v025 X Y k
theorem e0044_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0044) = v0044 X Y k := by
  exact NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.s025_eval X Y k
def e0045 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e0003
def v0045 (X Y k : ℂ) : ℂ := -(v0003 X Y k)
theorem e0045_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0045) = v0045 X Y k := by
  simp only [e0045,v0045,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e0003_eval]
def e0046 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add e0044 e0045
def v0046 (X Y k : ℂ) : ℂ := (v0044 X Y k)+(v0045 X Y k)
theorem e0046_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0046) = v0046 X Y k := by
  simp only [e0046,v0046,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSplitReduction20261003.Coefficients.eval_add,e0044_eval,e0045_eval]
def e0047 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.neg e0006
def v0047 (X Y k : ℂ) : ℂ := -(v0006 X Y k)
theorem e0047_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y e0047) = v0047 X Y k := by
  simp only [e0047,v0047,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,e0006_eval]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions
