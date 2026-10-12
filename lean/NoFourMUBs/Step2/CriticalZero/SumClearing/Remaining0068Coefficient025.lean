import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0068Row025Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0068Row025Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0068_rows_025 (i : ℕ) (hi : i < 27) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0057 n0041 25 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0068.getD 25 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 ∨ i = 21 ∨ i = 22 ∨ i = 23 ∨ i = 24 ∨ i = 25 ∨ i = 26 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0068_row_025_000
  · subst i
    exact r0068_row_025_001
  · subst i
    exact r0068_row_025_002
  · subst i
    exact r0068_row_025_003
  · subst i
    exact r0068_row_025_004
  · subst i
    exact r0068_row_025_005
  · subst i
    exact r0068_row_025_006
  · subst i
    exact r0068_row_025_007
  · subst i
    exact r0068_row_025_008
  · subst i
    exact r0068_row_025_009
  · subst i
    exact r0068_row_025_010
  · subst i
    exact r0068_row_025_011
  · subst i
    exact r0068_row_025_012
  · subst i
    exact r0068_row_025_013
  · subst i
    exact r0068_row_025_014
  · subst i
    exact r0068_row_025_015
  · subst i
    exact r0068_row_025_016
  · subst i
    exact r0068_row_025_017
  · subst i
    exact r0068_row_025_018
  · subst i
    exact r0068_row_025_019
  · subst i
    exact r0068_row_025_020
  · subst i
    exact r0068_row_025_021
  · subst i
    exact r0068_row_025_022
  · subst i
    exact r0068_row_025_023
  · subst i
    exact r0068_row_025_024
  · subst i
    exact r0068_row_025_025
  · subst i
    exact r0068_row_025_026
theorem r0068_coefficient_025_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0057 n0041 25) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0068.getD 25 []) :=
  r0068_from_rows X Y 25 r0068_rows_025

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
