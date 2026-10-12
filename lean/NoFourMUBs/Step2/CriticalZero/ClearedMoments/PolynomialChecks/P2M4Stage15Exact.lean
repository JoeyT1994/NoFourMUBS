import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage15Check00
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage15Check01
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage15Check02
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage15Check03
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage15Check04
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage15Check05
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage15Check06
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage15Check07
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage15Check08
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage15Check09
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage15Check10
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage15Check11
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage15Check12
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
variable {F : Type*} [Field F] [CharZero F]
theorem s273_all (n : ℕ) (hn : n < residual273.length) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (residual273.getD n []) = true := by
  rw [residual273_length] at hn
  have hc : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 ∨ n = 10 ∨ n = 11 ∨ n = 12 ∨ n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨ n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 ∨ n = 22 ∨ n = 23 ∨ n = 24 ∨ n = 25 ∨ n = 26 ∨ n = 27 ∨ n = 28 ∨ n = 29 ∨ n = 30 ∨ n = 31 ∨ n = 32 ∨ n = 33 ∨ n = 34 ∨ n = 35 ∨ n = 36 ∨ n = 37 ∨ n = 38 ∨ n = 39 ∨ n = 40 ∨ n = 41 ∨ n = 42 ∨ n = 43 ∨ n = 44 ∨ n = 45 ∨ n = 46 ∨ n = 47 ∨ n = 48 := by omega
  rcases hc with hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn
  · subst n
    exact s273_coefficient_00
  · subst n
    exact s273_coefficient_01
  · subst n
    exact s273_coefficient_02
  · subst n
    exact s273_coefficient_03
  · subst n
    exact s273_coefficient_04
  · subst n
    exact s273_coefficient_05
  · subst n
    exact s273_coefficient_06
  · subst n
    exact s273_coefficient_07
  · subst n
    exact s273_coefficient_08
  · subst n
    exact s273_coefficient_09
  · subst n
    exact s273_coefficient_10
  · subst n
    exact s273_coefficient_11
  · subst n
    exact s273_coefficient_12
  · subst n
    exact s273_coefficient_13
  · subst n
    exact s273_coefficient_14
  · subst n
    exact s273_coefficient_15
  · subst n
    exact s273_coefficient_16
  · subst n
    exact s273_coefficient_17
  · subst n
    exact s273_coefficient_18
  · subst n
    exact s273_coefficient_19
  · subst n
    exact s273_coefficient_20
  · subst n
    exact s273_coefficient_21
  · subst n
    exact s273_coefficient_22
  · subst n
    exact s273_coefficient_23
  · subst n
    exact s273_coefficient_24
  · subst n
    exact s273_coefficient_25
  · subst n
    exact s273_coefficient_26
  · subst n
    exact s273_coefficient_27
  · subst n
    exact s273_coefficient_28
  · subst n
    exact s273_coefficient_29
  · subst n
    exact s273_coefficient_30
  · subst n
    exact s273_coefficient_31
  · subst n
    exact s273_coefficient_32
  · subst n
    exact s273_coefficient_33
  · subst n
    exact s273_coefficient_34
  · subst n
    exact s273_coefficient_35
  · subst n
    exact s273_coefficient_36
  · subst n
    exact s273_coefficient_37
  · subst n
    exact s273_coefficient_38
  · subst n
    exact s273_coefficient_39
  · subst n
    exact s273_coefficient_40
  · subst n
    exact s273_coefficient_41
  · subst n
    exact s273_coefficient_42
  · subst n
    exact s273_coefficient_43
  · subst n
    exact s273_coefficient_44
  · subst n
    exact s273_coefficient_45
  · subst n
    exact s273_coefficient_46
  · subst n
    exact s273_coefficient_47
  · subst n
    exact s273_coefficient_48
theorem s273_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s273) = v273 X Y k := by
  have h := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates X Y residual273 s273_all
  have hz := CriticalZeroSplitReduction20261003.Coefficients.eval_allZero k _ h
  simp only [residual273, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,
    CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, calculation273_eval] at hz
  exact (sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)).symm
#print axioms s273_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
