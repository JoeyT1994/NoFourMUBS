import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorPilot
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorA00
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorA01
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorA02
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorA03
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorA04
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorA05
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorA06
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorA07
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorA08
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorA09
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorA10
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorB00
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorB01
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorB02
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorB03
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorB04
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorB05
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorB06
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorB07
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorB08
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumeratorB09
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedSimpArgs false
set_option linter.unusedSectionVars false
set_option linter.unnecessarySeqFocus false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
variable {F : Type*} [Field F] [CharZero F]
theorem numerator_swap_a_all (X Y : F) (n : ℕ) (hn : n < 45) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (numerator_p4_m2_a_coefficients.getD n []) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII Y X (numerator_p2_m4_a_coefficients.getD n []) := by
  have hc : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 ∨ n = 10 ∨ n = 11 ∨ n = 12 ∨ n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨ n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 ∨ n = 22 ∨ n = 23 ∨ n = 24 ∨ n = 25 ∨ n = 26 ∨ n = 27 ∨ n = 28 ∨ n = 29 ∨ n = 30 ∨ n = 31 ∨ n = 32 ∨ n = 33 ∨ n = 34 ∨ n = 35 ∨ n = 36 ∨ n = 37 ∨ n = 38 ∨ n = 39 ∨ n = 40 ∨ n = 41 ∨ n = 42 ∨ n = 43 ∨ n = 44 := by omega
  rcases hc with he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he
  · subst n
    exact numerator_swap_a_00 X Y
  · subst n
    exact numerator_swap_a_01 X Y
  · subst n
    exact numerator_swap_a_02 X Y
  · subst n
    exact numerator_swap_a_03 X Y
  · subst n
    exact numerator_swap_a_04 X Y
  · subst n
    exact numerator_swap_a_05 X Y
  · subst n
    exact numerator_swap_a_06 X Y
  · subst n
    exact numerator_swap_a_07 X Y
  · subst n
    exact numerator_swap_a_08 X Y
  · subst n
    exact numerator_swap_a_09 X Y
  · subst n
    exact numerator_swap_a_10 X Y
  · subst n
    exact numerator_swap_a_11 X Y
  · subst n
    exact numerator_swap_a_12 X Y
  · subst n
    exact numerator_swap_a_13 X Y
  · subst n
    exact numerator_swap_a_14 X Y
  · subst n
    exact numerator_swap_a_15 X Y
  · subst n
    exact numerator_swap_a_16 X Y
  · subst n
    exact numerator_swap_a_17 X Y
  · subst n
    exact numerator_swap_a_18 X Y
  · subst n
    exact numerator_swap_a_19 X Y
  · subst n
    exact numerator_swap_a_20 X Y
  · subst n
    exact numerator_swap_a_21 X Y
  · subst n
    exact numerator_swap_a_22 X Y
  · subst n
    exact numerator_swap_a_23 X Y
  · subst n
    exact numerator_swap_a_24 X Y
  · subst n
    exact numerator_swap_a_25 X Y
  · subst n
    exact numerator_swap_a_26 X Y
  · subst n
    exact numerator_swap_a_27 X Y
  · subst n
    exact numerator_swap_a_28 X Y
  · subst n
    exact numerator_swap_a_29 X Y
  · subst n
    exact numerator_swap_a_30 X Y
  · subst n
    exact numerator_swap_a_31 X Y
  · subst n
    exact numerator_swap_a_32 X Y
  · subst n
    exact numerator_swap_a_33 X Y
  · subst n
    exact numerator_swap_a_34 X Y
  · subst n
    exact numerator_swap_a_35 X Y
  · subst n
    exact numerator_swap_a_36 X Y
  · subst n
    exact numerator_swap_a_37 X Y
  · subst n
    exact numerator_swap_a_38 X Y
  · subst n
    exact numerator_swap_a_39 X Y
  · subst n
    exact numerator_swap_a_40 X Y
  · subst n
    exact numerator_swap_a_41 X Y
  · subst n
    exact numerator_swap_a_42 X Y
  · subst n
    exact numerator_swap_a_43 X Y
  · subst n
    exact numerator_swap_a_44 X Y
theorem numerator_swap_b_all (X Y : F) (n : ℕ) (hn : n < 40) :
    X*(CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (numerator_p4_m2_b_coefficients.getD n [])) = Y*(CriticalZeroSplitReduction20261003.IntegerReflector.evalII Y X (numerator_p2_m4_b_coefficients.getD n [])) := by
  have hc : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 ∨ n = 10 ∨ n = 11 ∨ n = 12 ∨ n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨ n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 ∨ n = 22 ∨ n = 23 ∨ n = 24 ∨ n = 25 ∨ n = 26 ∨ n = 27 ∨ n = 28 ∨ n = 29 ∨ n = 30 ∨ n = 31 ∨ n = 32 ∨ n = 33 ∨ n = 34 ∨ n = 35 ∨ n = 36 ∨ n = 37 ∨ n = 38 ∨ n = 39 := by omega
  rcases hc with he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he | he
  · subst n
    exact numerator_swap_b_00 X Y
  · subst n
    exact numerator_swap_b_01 X Y
  · subst n
    exact numerator_swap_b_02 X Y
  · subst n
    exact numerator_swap_b_03 X Y
  · subst n
    exact numerator_swap_b_04 X Y
  · subst n
    exact numerator_swap_b_05 X Y
  · subst n
    exact numerator_swap_b_06 X Y
  · subst n
    exact numerator_swap_b_07 X Y
  · subst n
    exact numerator_swap_b_08 X Y
  · subst n
    exact numerator_swap_b_09 X Y
  · subst n
    exact numerator_swap_b_10 X Y
  · subst n
    exact numerator_swap_b_11 X Y
  · subst n
    exact numerator_swap_b_12 X Y
  · subst n
    exact numerator_swap_b_13 X Y
  · subst n
    exact numerator_swap_b_14 X Y
  · subst n
    exact numerator_swap_b_15 X Y
  · subst n
    exact numerator_swap_b_16 X Y
  · subst n
    exact numerator_swap_b_17 X Y
  · subst n
    exact numerator_swap_b_18 X Y
  · subst n
    exact numerator_swap_b_19 X Y
  · subst n
    exact numerator_swap_b_20 X Y
  · subst n
    exact numerator_swap_b_21 X Y
  · subst n
    exact numerator_swap_b_22 X Y
  · subst n
    exact numerator_swap_b_23 X Y
  · subst n
    exact numerator_swap_b_24 X Y
  · subst n
    exact numerator_swap_b_25 X Y
  · subst n
    exact numerator_swap_b_26 X Y
  · subst n
    exact numerator_swap_b_27 X Y
  · subst n
    exact numerator_swap_b_28 X Y
  · subst n
    exact numerator_swap_b_29 X Y
  · subst n
    exact numerator_swap_b_30 X Y
  · subst n
    exact numerator_swap_b_31 X Y
  · subst n
    exact numerator_swap_b_32 X Y
  · subst n
    exact numerator_swap_b_33 X Y
  · subst n
    exact numerator_swap_b_34 X Y
  · subst n
    exact numerator_swap_b_35 X Y
  · subst n
    exact numerator_swap_b_36 X Y
  · subst n
    exact numerator_swap_b_37 X Y
  · subst n
    exact numerator_swap_b_38 X Y
  · subst n
    exact numerator_swap_b_39 X Y

theorem numerator_p4_m2_a_swap (X Y k : F) :
    numerator_p4_m2_a X Y k = numerator_p2_m4_a Y X k := by
  have he := CriticalZeroSumAssembly20261003.CoefficientAt.list_eq_of_getD
    (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y numerator_p4_m2_a_coefficients)
    (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret Y X numerator_p2_m4_a_coefficients) (by rfl) (by
      intro n hn
      change n < 45 at hn
      simp only [CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_getD]
      exact numerator_swap_a_all X Y n hn)
  exact congrArg (fun a : F => a/4) (congrArg (CriticalZeroSplitReduction20261003.Coefficients.eval k) he)

theorem numerator_p4_m2_b_swap (X Y k : F) :
    X*numerator_p4_m2_b X Y k = Y*numerator_p2_m4_b Y X k := by
  have he := CriticalZeroSumAssembly20261003.CoefficientAt.list_eq_of_getD
    (CriticalZeroSplitReduction20261003.Coefficients.scale X (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y numerator_p4_m2_b_coefficients))
    (CriticalZeroSplitReduction20261003.Coefficients.scale Y (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret Y X numerator_p2_m4_b_coefficients)) (by rfl) (by
      intro n hn
      change n < 40 at hn
      simp only [CriticalZeroSumAssembly20261003.CoefficientAt.getD_scale,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_getD]
      exact numerator_swap_b_all X Y n hn)
  have hv := congrArg (CriticalZeroSplitReduction20261003.Coefficients.eval k) he
  simp only [CriticalZeroSplitReduction20261003.Coefficients.eval_scale] at hv
  simpa only [numerator_p4_m2_b,numerator_p2_m4_b,mul_div_assoc] using
    congrArg (fun a : F => a/2) hv

#print axioms numerator_p4_m2_a_swap
#print axioms numerator_p4_m2_b_swap

end NoFourMUBs.Step2.Critical.NonzeroClearing
