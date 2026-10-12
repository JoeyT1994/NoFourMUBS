import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0058Row022Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0058Row022Batch01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0058Row022Batch02
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0058Row022Batch03
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0058_rows_022 (i : ℕ) (hi : i < 26) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0056 r0057 22 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0058.getD 22 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 ∨ i = 21 ∨ i = 22 ∨ i = 23 ∨ i = 24 ∨ i = 25 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0058_row_022_000
  · subst i
    exact r0058_row_022_001
  · subst i
    exact r0058_row_022_002
  · subst i
    exact r0058_row_022_003
  · subst i
    exact r0058_row_022_004
  · subst i
    exact r0058_row_022_005
  · subst i
    exact r0058_row_022_006
  · subst i
    exact r0058_row_022_007
  · subst i
    exact r0058_row_022_008
  · subst i
    exact r0058_row_022_009
  · subst i
    exact r0058_row_022_010
  · subst i
    exact r0058_row_022_011
  · subst i
    exact r0058_row_022_012
  · subst i
    exact r0058_row_022_013
  · subst i
    exact r0058_row_022_014
  · subst i
    exact r0058_row_022_015
  · subst i
    exact r0058_row_022_016
  · subst i
    exact r0058_row_022_017
  · subst i
    exact r0058_row_022_018
  · subst i
    exact r0058_row_022_019
  · subst i
    exact r0058_row_022_020
  · subst i
    exact r0058_row_022_021
  · subst i
    exact r0058_row_022_022
  · subst i
    exact r0058_row_022_023
  · subst i
    exact r0058_row_022_024
  · subst i
    exact r0058_row_022_025
theorem r0058_coefficient_022_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0056 r0057 22) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0058.getD 22 []) :=
  r0058_from_rows X Y 22 r0058_rows_022

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
