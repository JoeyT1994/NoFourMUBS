import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage13Check00
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage13Check01
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage13Check02
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage13Check03
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage13Check04
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage13Check05
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage13Check06
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
variable {F : Type*} [Field F] [CharZero F]
theorem s519_all (n : ℕ) (hn : n < residual519.length) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (residual519.getD n []) = true := by
  rw [residual519_length] at hn
  have hc : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 ∨ n = 10 ∨ n = 11 ∨ n = 12 ∨ n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨ n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 ∨ n = 22 ∨ n = 23 ∨ n = 24 ∨ n = 25 := by omega
  rcases hc with hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn
  · subst n
    exact residual519_coefficient_00
  · subst n
    exact residual519_coefficient_01
  · subst n
    exact residual519_coefficient_02
  · subst n
    exact residual519_coefficient_03
  · subst n
    exact residual519_coefficient_04
  · subst n
    exact residual519_coefficient_05
  · subst n
    exact residual519_coefficient_06
  · subst n
    exact residual519_coefficient_07
  · subst n
    exact residual519_coefficient_08
  · subst n
    exact residual519_coefficient_09
  · subst n
    exact residual519_coefficient_10
  · subst n
    exact residual519_coefficient_11
  · subst n
    exact residual519_coefficient_12
  · subst n
    exact residual519_coefficient_13
  · subst n
    exact residual519_coefficient_14
  · subst n
    exact residual519_coefficient_15
  · subst n
    exact residual519_coefficient_16
  · subst n
    exact residual519_coefficient_17
  · subst n
    exact residual519_coefficient_18
  · subst n
    exact residual519_coefficient_19
  · subst n
    exact residual519_coefficient_20
  · subst n
    exact residual519_coefficient_21
  · subst n
    exact residual519_coefficient_22
  · subst n
    exact residual519_coefficient_23
  · subst n
    exact residual519_coefficient_24
  · subst n
    exact residual519_coefficient_25
theorem s519_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s519) = v519 X Y k := by
  have hz := CriticalZeroSplitReduction20261003.Coefficients.eval_allZero k _ (CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates X Y residual519 s519_all)
  simp only [residual519, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,
    CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, calculation519_eval] at hz
  exact (sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)).symm
#print axioms s519_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2
