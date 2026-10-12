import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckA00
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckA01
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckA02
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckA03
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckA04
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckA05
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckA06
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckA07
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckA08
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckA09
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckA10
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckA11
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckB00
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckB01
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckB02
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckB03
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckB04
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckB05
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckB06
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckB07
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckB08
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckB09
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckB10
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckB11
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4FinalCheckB12
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
variable {F : Type*} [Field F] [CharZero F]
theorem staged_a_all (n : ℕ)
    (hn : n < staged_residual_a.length) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_a.getD n []) = true := by
  rw [staged_residual_a_length] at hn
  have hc : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 ∨ n = 10 ∨ n = 11 ∨ n = 12 ∨ n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨ n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 ∨ n = 22 ∨ n = 23 ∨ n = 24 ∨ n = 25 ∨ n = 26 ∨ n = 27 ∨ n = 28 ∨ n = 29 ∨ n = 30 ∨ n = 31 ∨ n = 32 ∨ n = 33 ∨ n = 34 ∨ n = 35 ∨ n = 36 ∨ n = 37 ∨ n = 38 ∨ n = 39 ∨ n = 40 ∨ n = 41 ∨ n = 42 ∨ n = 43 ∨ n = 44 ∨ n = 45 ∨ n = 46 := by omega
  rcases hc with hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn
  · subst n
    exact staged_coefficient_a_00
  · subst n
    exact staged_coefficient_a_01
  · subst n
    exact staged_coefficient_a_02
  · subst n
    exact staged_coefficient_a_03
  · subst n
    exact staged_coefficient_a_04
  · subst n
    exact staged_coefficient_a_05
  · subst n
    exact staged_coefficient_a_06
  · subst n
    exact staged_coefficient_a_07
  · subst n
    exact staged_coefficient_a_08
  · subst n
    exact staged_coefficient_a_09
  · subst n
    exact staged_coefficient_a_10
  · subst n
    exact staged_coefficient_a_11
  · subst n
    exact staged_coefficient_a_12
  · subst n
    exact staged_coefficient_a_13
  · subst n
    exact staged_coefficient_a_14
  · subst n
    exact staged_coefficient_a_15
  · subst n
    exact staged_coefficient_a_16
  · subst n
    exact staged_coefficient_a_17
  · subst n
    exact staged_coefficient_a_18
  · subst n
    exact staged_coefficient_a_19
  · subst n
    exact staged_coefficient_a_20
  · subst n
    exact staged_coefficient_a_21
  · subst n
    exact staged_coefficient_a_22
  · subst n
    exact staged_coefficient_a_23
  · subst n
    exact staged_coefficient_a_24
  · subst n
    exact staged_coefficient_a_25
  · subst n
    exact staged_coefficient_a_26
  · subst n
    exact staged_coefficient_a_27
  · subst n
    exact staged_coefficient_a_28
  · subst n
    exact staged_coefficient_a_29
  · subst n
    exact staged_coefficient_a_30
  · subst n
    exact staged_coefficient_a_31
  · subst n
    exact staged_coefficient_a_32
  · subst n
    exact staged_coefficient_a_33
  · subst n
    exact staged_coefficient_a_34
  · subst n
    exact staged_coefficient_a_35
  · subst n
    exact staged_coefficient_a_36
  · subst n
    exact staged_coefficient_a_37
  · subst n
    exact staged_coefficient_a_38
  · subst n
    exact staged_coefficient_a_39
  · subst n
    exact staged_coefficient_a_40
  · subst n
    exact staged_coefficient_a_41
  · subst n
    exact staged_coefficient_a_42
  · subst n
    exact staged_coefficient_a_43
  · subst n
    exact staged_coefficient_a_44
  · subst n
    exact staged_coefficient_a_45
  · subst n
    exact staged_coefficient_a_46
theorem polynomial_a (X Y k : F) :
    v231 X Y k = v277 X Y k *
      CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y numerator_p2_m4_a_coefficients) := by
  have hz := CriticalZeroSplitReduction20261003.Coefficients.eval_allZero k _
    (CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates X Y staged_residual_a staged_a_all)
  rw [staged_residual_a_eval] at hz
  exact sub_eq_zero.mp hz
#print axioms polynomial_a
theorem staged_b_all (n : ℕ)
    (hn : n < staged_residual_b.length) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (staged_residual_b.getD n []) = true := by
  rw [staged_residual_b_length] at hn
  have hc : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 ∨ n = 10 ∨ n = 11 ∨ n = 12 ∨ n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨ n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 ∨ n = 22 ∨ n = 23 ∨ n = 24 ∨ n = 25 ∨ n = 26 ∨ n = 27 ∨ n = 28 ∨ n = 29 ∨ n = 30 ∨ n = 31 ∨ n = 32 ∨ n = 33 ∨ n = 34 ∨ n = 35 ∨ n = 36 ∨ n = 37 ∨ n = 38 ∨ n = 39 ∨ n = 40 ∨ n = 41 ∨ n = 42 ∨ n = 43 ∨ n = 44 ∨ n = 45 ∨ n = 46 ∨ n = 47 ∨ n = 48 := by omega
  rcases hc with hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn
  · subst n
    exact staged_coefficient_b_00
  · subst n
    exact staged_coefficient_b_01
  · subst n
    exact staged_coefficient_b_02
  · subst n
    exact staged_coefficient_b_03
  · subst n
    exact staged_coefficient_b_04
  · subst n
    exact staged_coefficient_b_05
  · subst n
    exact staged_coefficient_b_06
  · subst n
    exact staged_coefficient_b_07
  · subst n
    exact staged_coefficient_b_08
  · subst n
    exact staged_coefficient_b_09
  · subst n
    exact staged_coefficient_b_10
  · subst n
    exact staged_coefficient_b_11
  · subst n
    exact staged_coefficient_b_12
  · subst n
    exact staged_coefficient_b_13
  · subst n
    exact staged_coefficient_b_14
  · subst n
    exact staged_coefficient_b_15
  · subst n
    exact staged_coefficient_b_16
  · subst n
    exact staged_coefficient_b_17
  · subst n
    exact staged_coefficient_b_18
  · subst n
    exact staged_coefficient_b_19
  · subst n
    exact staged_coefficient_b_20
  · subst n
    exact staged_coefficient_b_21
  · subst n
    exact staged_coefficient_b_22
  · subst n
    exact staged_coefficient_b_23
  · subst n
    exact staged_coefficient_b_24
  · subst n
    exact staged_coefficient_b_25
  · subst n
    exact staged_coefficient_b_26
  · subst n
    exact staged_coefficient_b_27
  · subst n
    exact staged_coefficient_b_28
  · subst n
    exact staged_coefficient_b_29
  · subst n
    exact staged_coefficient_b_30
  · subst n
    exact staged_coefficient_b_31
  · subst n
    exact staged_coefficient_b_32
  · subst n
    exact staged_coefficient_b_33
  · subst n
    exact staged_coefficient_b_34
  · subst n
    exact staged_coefficient_b_35
  · subst n
    exact staged_coefficient_b_36
  · subst n
    exact staged_coefficient_b_37
  · subst n
    exact staged_coefficient_b_38
  · subst n
    exact staged_coefficient_b_39
  · subst n
    exact staged_coefficient_b_40
  · subst n
    exact staged_coefficient_b_41
  · subst n
    exact staged_coefficient_b_42
  · subst n
    exact staged_coefficient_b_43
  · subst n
    exact staged_coefficient_b_44
  · subst n
    exact staged_coefficient_b_45
  · subst n
    exact staged_coefficient_b_46
  · subst n
    exact staged_coefficient_b_47
  · subst n
    exact staged_coefficient_b_48
theorem polynomial_b (X Y k : F) :
    v274 X Y k = v280 X Y k *
      CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y numerator_p2_m4_b_coefficients) := by
  have hz := CriticalZeroSplitReduction20261003.Coefficients.eval_allZero k _
    (CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates X Y staged_residual_b staged_b_all)
  rw [staged_residual_b_eval] at hz
  exact sub_eq_zero.mp hz
#print axioms polynomial_b

theorem polynomial_a_scaled (X Y k : F) :
    v231 X Y k = Y*X*CriticalNonzeroLight20261003.h k*2^3*numerator_p2_m4_a X Y k := by
  rw [polynomial_a]
  have scale (a : F) : 2*X*Y*CriticalNonzeroLight20261003.h k*a =
      Y*X*CriticalNonzeroLight20261003.h k*2^3*(a/4) := by ring
  exact scale _

theorem polynomial_b_scaled (X Y k : F) :
    v274 X Y k = Y*X^2*(CriticalNonzeroLight20261003.h k)^4*2^3*numerator_p2_m4_b X Y k := by
  rw [polynomial_b]
  have scale (a : F) : 4*X^2*Y*(CriticalNonzeroLight20261003.h k)^4*a =
      Y*X^2*(CriticalNonzeroLight20261003.h k)^4*2^3*(a/2) := by ring
  exact scale _

#print axioms polynomial_a_scaled
#print axioms polynomial_b_scaled

end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
