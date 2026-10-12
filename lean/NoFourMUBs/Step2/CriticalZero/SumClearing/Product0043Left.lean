import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043LeftCheck00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043LeftCheck01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043LeftCheck02
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043LeftCheck03
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043LeftCheck04
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043LeftCheck05
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043LeftCheck06
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043LeftCheck07
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043LeftCheck08
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem n0041_all (j : ℕ) (hj : j < n0041_residual.length) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (n0041_residual.getD j []) = true := by
  rw [n0041_residual_length] at hj
  have hc : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 ∨ j = 4 ∨ j = 5 ∨ j = 6 ∨ j = 7 ∨ j = 8 ∨ j = 9 ∨ j = 10 ∨ j = 11 ∨ j = 12 ∨ j = 13 ∨ j = 14 ∨ j = 15 ∨ j = 16 ∨ j = 17 ∨ j = 18 ∨ j = 19 ∨ j = 20 ∨ j = 21 ∨ j = 22 ∨ j = 23 ∨ j = 24 ∨ j = 25 ∨ j = 26 ∨ j = 27 ∨ j = 28 ∨ j = 29 ∨ j = 30 ∨ j = 31 ∨ j = 32 ∨ j = 33 ∨ j = 34 ∨ j = 35 ∨ j = 36 ∨ j = 37 ∨ j = 38 ∨ j = 39 ∨ j = 40 ∨ j = 41 ∨ j = 42 ∨ j = 43 ∨ j = 44 := by omega
  rcases hc with hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj
  · subst j
    exact n0041_coefficient_000
  · subst j
    exact n0041_coefficient_001
  · subst j
    exact n0041_coefficient_002
  · subst j
    exact n0041_coefficient_003
  · subst j
    exact n0041_coefficient_004
  · subst j
    exact n0041_coefficient_005
  · subst j
    exact n0041_coefficient_006
  · subst j
    exact n0041_coefficient_007
  · subst j
    exact n0041_coefficient_008
  · subst j
    exact n0041_coefficient_009
  · subst j
    exact n0041_coefficient_010
  · subst j
    exact n0041_coefficient_011
  · subst j
    exact n0041_coefficient_012
  · subst j
    exact n0041_coefficient_013
  · subst j
    exact n0041_coefficient_014
  · subst j
    exact n0041_coefficient_015
  · subst j
    exact n0041_coefficient_016
  · subst j
    exact n0041_coefficient_017
  · subst j
    exact n0041_coefficient_018
  · subst j
    exact n0041_coefficient_019
  · subst j
    exact n0041_coefficient_020
  · subst j
    exact n0041_coefficient_021
  · subst j
    exact n0041_coefficient_022
  · subst j
    exact n0041_coefficient_023
  · subst j
    exact n0041_coefficient_024
  · subst j
    exact n0041_coefficient_025
  · subst j
    exact n0041_coefficient_026
  · subst j
    exact n0041_coefficient_027
  · subst j
    exact n0041_coefficient_028
  · subst j
    exact n0041_coefficient_029
  · subst j
    exact n0041_coefficient_030
  · subst j
    exact n0041_coefficient_031
  · subst j
    exact n0041_coefficient_032
  · subst j
    exact n0041_coefficient_033
  · subst j
    exact n0041_coefficient_034
  · subst j
    exact n0041_coefficient_035
  · subst j
    exact n0041_coefficient_036
  · subst j
    exact n0041_coefficient_037
  · subst j
    exact n0041_coefficient_038
  · subst j
    exact n0041_coefficient_039
  · subst j
    exact n0041_coefficient_040
  · subst j
    exact n0041_coefficient_041
  · subst j
    exact n0041_coefficient_042
  · subst j
    exact n0041_coefficient_043
  · subst j
    exact n0041_coefficient_044
theorem n0041_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y n0041) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0041 X Y k := by
  have hz := CriticalZeroSplitReduction20261003.Coefficients.eval_allZero k _ (CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates X Y n0041_residual n0041_all)
  simp only [n0041_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,
    CriticalZeroSplitReduction20261003.Coefficients.eval_add,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0041_eval] at hz
  exact (sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)).symm
#print axioms n0041_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
