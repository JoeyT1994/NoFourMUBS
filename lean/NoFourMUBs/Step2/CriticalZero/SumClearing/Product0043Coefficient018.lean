import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row018Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row018Batch01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row018Batch02
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row018Batch03
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem n0043_rows_018 (i : ℕ) (hi : i < 28) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow n0041 NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042 18 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((n0043.getD 18 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 ∨ i = 21 ∨ i = 22 ∨ i = 23 ∨ i = 24 ∨ i = 25 ∨ i = 26 ∨ i = 27 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact n0043_row_018_000
  · subst i
    exact n0043_row_018_001
  · subst i
    exact n0043_row_018_002
  · subst i
    exact n0043_row_018_003
  · subst i
    exact n0043_row_018_004
  · subst i
    exact n0043_row_018_005
  · subst i
    exact n0043_row_018_006
  · subst i
    exact n0043_row_018_007
  · subst i
    exact n0043_row_018_008
  · subst i
    exact n0043_row_018_009
  · subst i
    exact n0043_row_018_010
  · subst i
    exact n0043_row_018_011
  · subst i
    exact n0043_row_018_012
  · subst i
    exact n0043_row_018_013
  · subst i
    exact n0043_row_018_014
  · subst i
    exact n0043_row_018_015
  · subst i
    exact n0043_row_018_016
  · subst i
    exact n0043_row_018_017
  · subst i
    exact n0043_row_018_018
  · subst i
    exact n0043_row_018_019
  · subst i
    exact n0043_row_018_020
  · subst i
    exact n0043_row_018_021
  · subst i
    exact n0043_row_018_022
  · subst i
    exact n0043_row_018_023
  · subst i
    exact n0043_row_018_024
  · subst i
    exact n0043_row_018_025
  · subst i
    exact n0043_row_018_026
  · subst i
    exact n0043_row_018_027
theorem n0043_coefficient_018_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt n0041 NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042 18) =
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (n0043.getD 18 []) :=
  n0043_eval_from_rows X Y 18 n0043_rows_018
#print axioms n0043_coefficient_018_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
