import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Row060Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Row060Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0098_rows_060 (i : ℕ) (hi : i < 20) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0089 r0085 60 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0098.getD 60 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0098_row_060_000
  · subst i
    exact r0098_row_060_001
  · subst i
    exact r0098_row_060_002
  · subst i
    exact r0098_row_060_003
  · subst i
    exact r0098_row_060_004
  · subst i
    exact r0098_row_060_005
  · subst i
    exact r0098_row_060_006
  · subst i
    exact r0098_row_060_007
  · subst i
    exact r0098_row_060_008
  · subst i
    exact r0098_row_060_009
  · subst i
    exact r0098_row_060_010
  · subst i
    exact r0098_row_060_011
  · subst i
    exact r0098_row_060_012
  · subst i
    exact r0098_row_060_013
  · subst i
    exact r0098_row_060_014
  · subst i
    exact r0098_row_060_015
  · subst i
    exact r0098_row_060_016
  · subst i
    exact r0098_row_060_017
  · subst i
    exact r0098_row_060_018
  · subst i
    exact r0098_row_060_019
theorem r0098_coefficient_060_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0089 r0085 60) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0098.getD 60 []) :=
  r0098_from_rows X Y 60 r0098_rows_060

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
