import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0068Row001Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0068Row001Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0068_rows_001 (i : ℕ) (hi : i < 27) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0057 n0041 1 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0068.getD 1 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 ∨ i = 21 ∨ i = 22 ∨ i = 23 ∨ i = 24 ∨ i = 25 ∨ i = 26 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0068_row_001_000
  · subst i
    exact r0068_row_001_001
  · subst i
    exact r0068_row_001_002
  · subst i
    exact r0068_row_001_003
  · subst i
    exact r0068_row_001_004
  · subst i
    exact r0068_row_001_005
  · subst i
    exact r0068_row_001_006
  · subst i
    exact r0068_row_001_007
  · subst i
    exact r0068_row_001_008
  · subst i
    exact r0068_row_001_009
  · subst i
    exact r0068_row_001_010
  · subst i
    exact r0068_row_001_011
  · subst i
    exact r0068_row_001_012
  · subst i
    exact r0068_row_001_013
  · subst i
    exact r0068_row_001_014
  · subst i
    exact r0068_row_001_015
  · subst i
    exact r0068_row_001_016
  · subst i
    exact r0068_row_001_017
  · subst i
    exact r0068_row_001_018
  · subst i
    exact r0068_row_001_019
  · subst i
    exact r0068_row_001_020
  · subst i
    exact r0068_row_001_021
  · subst i
    exact r0068_row_001_022
  · subst i
    exact r0068_row_001_023
  · subst i
    exact r0068_row_001_024
  · subst i
    exact r0068_row_001_025
  · subst i
    exact r0068_row_001_026
theorem r0068_coefficient_001_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0057 n0041 1) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0068.getD 1 []) :=
  r0068_from_rows X Y 1 r0068_rows_001

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
