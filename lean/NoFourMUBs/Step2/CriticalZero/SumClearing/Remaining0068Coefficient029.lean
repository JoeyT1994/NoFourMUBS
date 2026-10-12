import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0068Row029Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0068Row029Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0068_rows_029 (i : ℕ) (hi : i < 27) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0057 n0041 29 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0068.getD 29 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 ∨ i = 21 ∨ i = 22 ∨ i = 23 ∨ i = 24 ∨ i = 25 ∨ i = 26 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0068_row_029_000
  · subst i
    exact r0068_row_029_001
  · subst i
    exact r0068_row_029_002
  · subst i
    exact r0068_row_029_003
  · subst i
    exact r0068_row_029_004
  · subst i
    exact r0068_row_029_005
  · subst i
    exact r0068_row_029_006
  · subst i
    exact r0068_row_029_007
  · subst i
    exact r0068_row_029_008
  · subst i
    exact r0068_row_029_009
  · subst i
    exact r0068_row_029_010
  · subst i
    exact r0068_row_029_011
  · subst i
    exact r0068_row_029_012
  · subst i
    exact r0068_row_029_013
  · subst i
    exact r0068_row_029_014
  · subst i
    exact r0068_row_029_015
  · subst i
    exact r0068_row_029_016
  · subst i
    exact r0068_row_029_017
  · subst i
    exact r0068_row_029_018
  · subst i
    exact r0068_row_029_019
  · subst i
    exact r0068_row_029_020
  · subst i
    exact r0068_row_029_021
  · subst i
    exact r0068_row_029_022
  · subst i
    exact r0068_row_029_023
  · subst i
    exact r0068_row_029_024
  · subst i
    exact r0068_row_029_025
  · subst i
    exact r0068_row_029_026
theorem r0068_coefficient_029_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0057 n0041 29) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0068.getD 29 []) :=
  r0068_from_rows X Y 29 r0068_rows_029

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
