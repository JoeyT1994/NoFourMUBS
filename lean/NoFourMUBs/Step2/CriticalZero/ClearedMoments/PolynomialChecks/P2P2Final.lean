import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalACheck00
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalACheck01
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalACheck02
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalACheck03
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalACheck04
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalACheck05
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalACheck06
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalACheck07
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalACheck08
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalACheck09
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalACheck10
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalBCheck00
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalBCheck01
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalBCheck02
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalBCheck03
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalBCheck04
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalBCheck05
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalBCheck06
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalBCheck07
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalBCheck08
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalBCheck09
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2P2FinalBCheck10
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
theorem staged_a_all (n : ℕ) (hn : n < staged_residual_a.length) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_a.getD n []) = true := by
  rw [staged_residual_a_length] at hn
  have hc : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 ∨ n = 10 ∨ n = 11 ∨ n = 12 ∨ n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨ n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 ∨ n = 22 ∨ n = 23 ∨ n = 24 ∨ n = 25 ∨ n = 26 ∨ n = 27 ∨ n = 28 ∨ n = 29 ∨ n = 30 ∨ n = 31 ∨ n = 32 ∨ n = 33 ∨ n = 34 ∨ n = 35 ∨ n = 36 ∨ n = 37 ∨ n = 38 ∨ n = 39 ∨ n = 40 := by omega
  rcases hc with hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn
  · subst n
    exact staged_residual_a_coefficient_00
  · subst n
    exact staged_residual_a_coefficient_01
  · subst n
    exact staged_residual_a_coefficient_02
  · subst n
    exact staged_residual_a_coefficient_03
  · subst n
    exact staged_residual_a_coefficient_04
  · subst n
    exact staged_residual_a_coefficient_05
  · subst n
    exact staged_residual_a_coefficient_06
  · subst n
    exact staged_residual_a_coefficient_07
  · subst n
    exact staged_residual_a_coefficient_08
  · subst n
    exact staged_residual_a_coefficient_09
  · subst n
    exact staged_residual_a_coefficient_10
  · subst n
    exact staged_residual_a_coefficient_11
  · subst n
    exact staged_residual_a_coefficient_12
  · subst n
    exact staged_residual_a_coefficient_13
  · subst n
    exact staged_residual_a_coefficient_14
  · subst n
    exact staged_residual_a_coefficient_15
  · subst n
    exact staged_residual_a_coefficient_16
  · subst n
    exact staged_residual_a_coefficient_17
  · subst n
    exact staged_residual_a_coefficient_18
  · subst n
    exact staged_residual_a_coefficient_19
  · subst n
    exact staged_residual_a_coefficient_20
  · subst n
    exact staged_residual_a_coefficient_21
  · subst n
    exact staged_residual_a_coefficient_22
  · subst n
    exact staged_residual_a_coefficient_23
  · subst n
    exact staged_residual_a_coefficient_24
  · subst n
    exact staged_residual_a_coefficient_25
  · subst n
    exact staged_residual_a_coefficient_26
  · subst n
    exact staged_residual_a_coefficient_27
  · subst n
    exact staged_residual_a_coefficient_28
  · subst n
    exact staged_residual_a_coefficient_29
  · subst n
    exact staged_residual_a_coefficient_30
  · subst n
    exact staged_residual_a_coefficient_31
  · subst n
    exact staged_residual_a_coefficient_32
  · subst n
    exact staged_residual_a_coefficient_33
  · subst n
    exact staged_residual_a_coefficient_34
  · subst n
    exact staged_residual_a_coefficient_35
  · subst n
    exact staged_residual_a_coefficient_36
  · subst n
    exact staged_residual_a_coefficient_37
  · subst n
    exact staged_residual_a_coefficient_38
  · subst n
    exact staged_residual_a_coefficient_39
  · subst n
    exact staged_residual_a_coefficient_40
theorem polynomial_a (X Y k : F) :
    v480 X Y k = v529 X Y k *
      CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y numerator_p2_p2_a_coefficients) := by
  have hz := CriticalZeroSplitReduction20261003.Coefficients.eval_allZero k _ (CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates X Y staged_residual_a staged_a_all)
  rw [staged_residual_a_eval] at hz
  exact sub_eq_zero.mp hz
theorem polynomial_a_scaled (X Y k : F) :
    v480 X Y k = 2 ^ 3 * h k ^ 2 * X * Y ^ 3 * numerator_p2_p2_a X Y k := by
  rw [polynomial_a]
  have scale (a : F) : (2 * h k ^ 2 * X * Y ^ 3)*a = 2 ^ 3 * h k ^ 2 * X * Y ^ 3 * (a/4) := by ring
  exact scale _
#print axioms polynomial_a_scaled
theorem staged_b_all (n : ℕ) (hn : n < staged_residual_b.length) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_b.getD n []) = true := by
  rw [staged_residual_b_length] at hn
  have hc : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 ∨ n = 10 ∨ n = 11 ∨ n = 12 ∨ n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨ n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 ∨ n = 22 ∨ n = 23 ∨ n = 24 ∨ n = 25 ∨ n = 26 ∨ n = 27 ∨ n = 28 ∨ n = 29 ∨ n = 30 ∨ n = 31 ∨ n = 32 ∨ n = 33 ∨ n = 34 ∨ n = 35 ∨ n = 36 ∨ n = 37 ∨ n = 38 ∨ n = 39 ∨ n = 40 ∨ n = 41 ∨ n = 42 := by omega
  rcases hc with hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn
  · subst n
    exact staged_residual_b_coefficient_00
  · subst n
    exact staged_residual_b_coefficient_01
  · subst n
    exact staged_residual_b_coefficient_02
  · subst n
    exact staged_residual_b_coefficient_03
  · subst n
    exact staged_residual_b_coefficient_04
  · subst n
    exact staged_residual_b_coefficient_05
  · subst n
    exact staged_residual_b_coefficient_06
  · subst n
    exact staged_residual_b_coefficient_07
  · subst n
    exact staged_residual_b_coefficient_08
  · subst n
    exact staged_residual_b_coefficient_09
  · subst n
    exact staged_residual_b_coefficient_10
  · subst n
    exact staged_residual_b_coefficient_11
  · subst n
    exact staged_residual_b_coefficient_12
  · subst n
    exact staged_residual_b_coefficient_13
  · subst n
    exact staged_residual_b_coefficient_14
  · subst n
    exact staged_residual_b_coefficient_15
  · subst n
    exact staged_residual_b_coefficient_16
  · subst n
    exact staged_residual_b_coefficient_17
  · subst n
    exact staged_residual_b_coefficient_18
  · subst n
    exact staged_residual_b_coefficient_19
  · subst n
    exact staged_residual_b_coefficient_20
  · subst n
    exact staged_residual_b_coefficient_21
  · subst n
    exact staged_residual_b_coefficient_22
  · subst n
    exact staged_residual_b_coefficient_23
  · subst n
    exact staged_residual_b_coefficient_24
  · subst n
    exact staged_residual_b_coefficient_25
  · subst n
    exact staged_residual_b_coefficient_26
  · subst n
    exact staged_residual_b_coefficient_27
  · subst n
    exact staged_residual_b_coefficient_28
  · subst n
    exact staged_residual_b_coefficient_29
  · subst n
    exact staged_residual_b_coefficient_30
  · subst n
    exact staged_residual_b_coefficient_31
  · subst n
    exact staged_residual_b_coefficient_32
  · subst n
    exact staged_residual_b_coefficient_33
  · subst n
    exact staged_residual_b_coefficient_34
  · subst n
    exact staged_residual_b_coefficient_35
  · subst n
    exact staged_residual_b_coefficient_36
  · subst n
    exact staged_residual_b_coefficient_37
  · subst n
    exact staged_residual_b_coefficient_38
  · subst n
    exact staged_residual_b_coefficient_39
  · subst n
    exact staged_residual_b_coefficient_40
  · subst n
    exact staged_residual_b_coefficient_41
  · subst n
    exact staged_residual_b_coefficient_42
theorem polynomial_b (X Y k : F) :
    v526 X Y k = v532 X Y k *
      CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y numerator_p2_p2_b_coefficients) := by
  have hz := CriticalZeroSplitReduction20261003.Coefficients.eval_allZero k _ (CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates X Y staged_residual_b staged_b_all)
  rw [staged_residual_b_eval] at hz
  exact sub_eq_zero.mp hz
theorem polynomial_b_scaled (X Y k : F) :
    v526 X Y k = 2 ^ 3 * h k ^ 4 * X ^ 2 * Y ^ 3 * numerator_p2_p2_b X Y k := by
  rw [polynomial_b]
  have scale (a : F) : (4 * h k ^ 4 * X ^ 2 * Y ^ 3)*a = 2 ^ 3 * h k ^ 4 * X ^ 2 * Y ^ 3 * (a/2) := by ring
  exact scale _
#print axioms polynomial_b_scaled

end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2
