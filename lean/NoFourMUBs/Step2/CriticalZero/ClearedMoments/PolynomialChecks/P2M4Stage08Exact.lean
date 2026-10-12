import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage08Check00
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage08Check01
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage08Check02
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage08Check03
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage08Check04
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage08Check05
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage08Check06
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Stage08Check07
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
variable {F : Type*} [Field F] [CharZero F]
theorem s228_all (n : ℕ) (hn : n < residual228.length) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (residual228.getD n []) = true := by
  rw [residual228_length] at hn
  have hc : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 ∨ n = 10 ∨ n = 11 ∨ n = 12 ∨ n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨ n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 ∨ n = 22 ∨ n = 23 ∨ n = 24 ∨ n = 25 ∨ n = 26 ∨ n = 27 ∨ n = 28 ∨ n = 29 ∨ n = 30 ∨ n = 31 := by omega
  rcases hc with hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn
  · subst n
    exact s228_coefficient_00
  · subst n
    exact s228_coefficient_01
  · subst n
    exact s228_coefficient_02
  · subst n
    exact s228_coefficient_03
  · subst n
    exact s228_coefficient_04
  · subst n
    exact s228_coefficient_05
  · subst n
    exact s228_coefficient_06
  · subst n
    exact s228_coefficient_07
  · subst n
    exact s228_coefficient_08
  · subst n
    exact s228_coefficient_09
  · subst n
    exact s228_coefficient_10
  · subst n
    exact s228_coefficient_11
  · subst n
    exact s228_coefficient_12
  · subst n
    exact s228_coefficient_13
  · subst n
    exact s228_coefficient_14
  · subst n
    exact s228_coefficient_15
  · subst n
    exact s228_coefficient_16
  · subst n
    exact s228_coefficient_17
  · subst n
    exact s228_coefficient_18
  · subst n
    exact s228_coefficient_19
  · subst n
    exact s228_coefficient_20
  · subst n
    exact s228_coefficient_21
  · subst n
    exact s228_coefficient_22
  · subst n
    exact s228_coefficient_23
  · subst n
    exact s228_coefficient_24
  · subst n
    exact s228_coefficient_25
  · subst n
    exact s228_coefficient_26
  · subst n
    exact s228_coefficient_27
  · subst n
    exact s228_coefficient_28
  · subst n
    exact s228_coefficient_29
  · subst n
    exact s228_coefficient_30
  · subst n
    exact s228_coefficient_31
theorem s228_eval (X Y k : F) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y s228) = v228 X Y k := by
  have h := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates X Y residual228 s228_all
  have hz := CriticalZeroSplitReduction20261003.Coefficients.eval_allZero k _ h
  simp only [residual228, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,
    CriticalZeroSplitReduction20261003.Coefficients.eval_add, CriticalZeroSplitReduction20261003.Coefficients.eval_neg, calculation228_eval] at hz
  exact (sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)).symm
#print axioms s228_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
