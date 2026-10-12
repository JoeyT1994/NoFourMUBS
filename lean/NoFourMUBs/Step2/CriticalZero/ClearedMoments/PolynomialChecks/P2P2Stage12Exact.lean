import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage12Check00
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage12Check01
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage12Check02
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage12Check03
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage12Check04
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage12Check05
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage12Check06
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage12Check07
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage12Check08
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage12Check09
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2Stage12Check10
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
theorem s503_all (n : ℕ) (hn : n < residual503.length) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (residual503.getD n []) = true := by
  rw [residual503_length] at hn
  have hc : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 ∨ n = 10 ∨ n = 11 ∨ n = 12 ∨ n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨ n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 ∨ n = 22 ∨ n = 23 ∨ n = 24 ∨ n = 25 ∨ n = 26 ∨ n = 27 ∨ n = 28 ∨ n = 29 ∨ n = 30 ∨ n = 31 ∨ n = 32 ∨ n = 33 ∨ n = 34 ∨ n = 35 ∨ n = 36 ∨ n = 37 ∨ n = 38 ∨ n = 39 ∨ n = 40 ∨ n = 41 ∨ n = 42 := by omega
  rcases hc with hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn
  · subst n
    exact residual503_coefficient_00
  · subst n
    exact residual503_coefficient_01
  · subst n
    exact residual503_coefficient_02
  · subst n
    exact residual503_coefficient_03
  · subst n
    exact residual503_coefficient_04
  · subst n
    exact residual503_coefficient_05
  · subst n
    exact residual503_coefficient_06
  · subst n
    exact residual503_coefficient_07
  · subst n
    exact residual503_coefficient_08
  · subst n
    exact residual503_coefficient_09
  · subst n
    exact residual503_coefficient_10
  · subst n
    exact residual503_coefficient_11
  · subst n
    exact residual503_coefficient_12
  · subst n
    exact residual503_coefficient_13
  · subst n
    exact residual503_coefficient_14
  · subst n
    exact residual503_coefficient_15
  · subst n
    exact residual503_coefficient_16
  · subst n
    exact residual503_coefficient_17
  · subst n
    exact residual503_coefficient_18
  · subst n
    exact residual503_coefficient_19
  · subst n
    exact residual503_coefficient_20
  · subst n
    exact residual503_coefficient_21
  · subst n
    exact residual503_coefficient_22
  · subst n
    exact residual503_coefficient_23
  · subst n
    exact residual503_coefficient_24
  · subst n
    exact residual503_coefficient_25
  · subst n
    exact residual503_coefficient_26
  · subst n
    exact residual503_coefficient_27
  · subst n
    exact residual503_coefficient_28
  · subst n
    exact residual503_coefficient_29
  · subst n
    exact residual503_coefficient_30
  · subst n
    exact residual503_coefficient_31
  · subst n
    exact residual503_coefficient_32
  · subst n
    exact residual503_coefficient_33
  · subst n
    exact residual503_coefficient_34
  · subst n
    exact residual503_coefficient_35
  · subst n
    exact residual503_coefficient_36
  · subst n
    exact residual503_coefficient_37
  · subst n
    exact residual503_coefficient_38
  · subst n
    exact residual503_coefficient_39
  · subst n
    exact residual503_coefficient_40
  · subst n
    exact residual503_coefficient_41
  · subst n
    exact residual503_coefficient_42
theorem s503_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s503) = v503 X Y k := by
  have hz := CriticalZeroSplitReduction20261003.Coefficients.eval_allZero k _ (CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates X Y residual503 s503_all)
  simp only [residual503, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,
    CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, calculation503_eval] at hz
  exact (sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)).symm
#print axioms s503_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2
