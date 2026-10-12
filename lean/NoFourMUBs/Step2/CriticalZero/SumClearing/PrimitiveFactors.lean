import NoFourMUBs.Step2.CriticalZero.SumClearing.Base
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
abbrev factor_two := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e003
theorem factor_two_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y factor_two) = (2 : ℂ) :=
  NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e003_eval X Y k
abbrev factor_X := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e001
theorem factor_X_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y factor_X) = X :=
  NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e001_eval X Y k
abbrev factor_Y := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e000
theorem factor_Y_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y factor_Y) = Y :=
  NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e000_eval X Y k
abbrev factor_k := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e010
theorem factor_k_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y factor_k) = k :=
  NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e010_eval X Y k
abbrev factor_H := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e012
theorem factor_H_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y factor_H) = h k :=
  NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e012_eval X Y k
abbrev factor_FXp := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e006
theorem factor_FXp_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y factor_FXp) = plusFactor X k :=
  NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e006_eval X Y k
abbrev factor_FXm := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e141
theorem factor_FXm_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y factor_FXm) = minusFactor X k :=
  NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e141_eval X Y k
abbrev factor_FYp := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e064
theorem factor_FYp_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y factor_FYp) = plusFactor Y k :=
  NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e064_eval X Y k
abbrev factor_FYm := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e146
theorem factor_FYm_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y factor_FYm) = minusFactor Y k :=
  NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e146_eval X Y k
abbrev factor_FZp := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e062
theorem factor_FZp_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y factor_FZp) = thirdPlusFactor X Y k :=
  NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e062_eval X Y k
abbrev factor_FZm := NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e144
theorem factor_FZm_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y factor_FZm) = thirdMinusFactor X Y k :=
  NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.e144_eval X Y k

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
