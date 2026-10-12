import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0068Row075Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0068Row075Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0068_rows_075 (i : ℕ) (hi : i < 27) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0057 n0041 75 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0068.getD 75 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 ∨ i = 21 ∨ i = 22 ∨ i = 23 ∨ i = 24 ∨ i = 25 ∨ i = 26 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0068_row_075_000
  · subst i
    exact r0068_row_075_001
  · subst i
    exact r0068_row_075_002
  · subst i
    exact r0068_row_075_003
  · subst i
    exact r0068_row_075_004
  · subst i
    exact r0068_row_075_005
  · subst i
    exact r0068_row_075_006
  · subst i
    exact r0068_row_075_007
  · subst i
    exact r0068_row_075_008
  · subst i
    exact r0068_row_075_009
  · subst i
    exact r0068_row_075_010
  · subst i
    exact r0068_row_075_011
  · subst i
    exact r0068_row_075_012
  · subst i
    exact r0068_row_075_013
  · subst i
    exact r0068_row_075_014
  · subst i
    exact r0068_row_075_015
  · subst i
    exact r0068_row_075_016
  · subst i
    exact r0068_row_075_017
  · subst i
    exact r0068_row_075_018
  · subst i
    exact r0068_row_075_019
  · subst i
    exact r0068_row_075_020
  · subst i
    exact r0068_row_075_021
  · subst i
    exact r0068_row_075_022
  · subst i
    exact r0068_row_075_023
  · subst i
    exact r0068_row_075_024
  · subst i
    exact r0068_row_075_025
  · subst i
    exact r0068_row_075_026
theorem r0068_coefficient_075_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0057 n0041 75) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0068.getD 75 []) :=
  r0068_from_rows X Y 75 r0068_rows_075

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
