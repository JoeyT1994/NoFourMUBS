import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row020Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row020Batch01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row020Batch02
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row020Batch03
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem n0043_rows_020 (i : ℕ) (hi : i < 28) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow n0041 NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042 20 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((n0043.getD 20 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 ∨ i = 21 ∨ i = 22 ∨ i = 23 ∨ i = 24 ∨ i = 25 ∨ i = 26 ∨ i = 27 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact n0043_row_020_000
  · subst i
    exact n0043_row_020_001
  · subst i
    exact n0043_row_020_002
  · subst i
    exact n0043_row_020_003
  · subst i
    exact n0043_row_020_004
  · subst i
    exact n0043_row_020_005
  · subst i
    exact n0043_row_020_006
  · subst i
    exact n0043_row_020_007
  · subst i
    exact n0043_row_020_008
  · subst i
    exact n0043_row_020_009
  · subst i
    exact n0043_row_020_010
  · subst i
    exact n0043_row_020_011
  · subst i
    exact n0043_row_020_012
  · subst i
    exact n0043_row_020_013
  · subst i
    exact n0043_row_020_014
  · subst i
    exact n0043_row_020_015
  · subst i
    exact n0043_row_020_016
  · subst i
    exact n0043_row_020_017
  · subst i
    exact n0043_row_020_018
  · subst i
    exact n0043_row_020_019
  · subst i
    exact n0043_row_020_020
  · subst i
    exact n0043_row_020_021
  · subst i
    exact n0043_row_020_022
  · subst i
    exact n0043_row_020_023
  · subst i
    exact n0043_row_020_024
  · subst i
    exact n0043_row_020_025
  · subst i
    exact n0043_row_020_026
  · subst i
    exact n0043_row_020_027
theorem n0043_coefficient_020_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt n0041 NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042 20) =
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (n0043.getD 20 []) :=
  n0043_eval_from_rows X Y 20 n0043_rows_020
#print axioms n0043_coefficient_020_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
