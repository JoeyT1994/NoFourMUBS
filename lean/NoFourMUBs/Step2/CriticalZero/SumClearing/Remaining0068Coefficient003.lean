import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0068Row003Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0068Row003Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0068_rows_003 (i : ℕ) (hi : i < 27) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0057 n0041 3 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0068.getD 3 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 ∨ i = 21 ∨ i = 22 ∨ i = 23 ∨ i = 24 ∨ i = 25 ∨ i = 26 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0068_row_003_000
  · subst i
    exact r0068_row_003_001
  · subst i
    exact r0068_row_003_002
  · subst i
    exact r0068_row_003_003
  · subst i
    exact r0068_row_003_004
  · subst i
    exact r0068_row_003_005
  · subst i
    exact r0068_row_003_006
  · subst i
    exact r0068_row_003_007
  · subst i
    exact r0068_row_003_008
  · subst i
    exact r0068_row_003_009
  · subst i
    exact r0068_row_003_010
  · subst i
    exact r0068_row_003_011
  · subst i
    exact r0068_row_003_012
  · subst i
    exact r0068_row_003_013
  · subst i
    exact r0068_row_003_014
  · subst i
    exact r0068_row_003_015
  · subst i
    exact r0068_row_003_016
  · subst i
    exact r0068_row_003_017
  · subst i
    exact r0068_row_003_018
  · subst i
    exact r0068_row_003_019
  · subst i
    exact r0068_row_003_020
  · subst i
    exact r0068_row_003_021
  · subst i
    exact r0068_row_003_022
  · subst i
    exact r0068_row_003_023
  · subst i
    exact r0068_row_003_024
  · subst i
    exact r0068_row_003_025
  · subst i
    exact r0068_row_003_026
theorem r0068_coefficient_003_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0057 n0041 3) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0068.getD 3 []) :=
  r0068_from_rows X Y 3 r0068_rows_003

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
