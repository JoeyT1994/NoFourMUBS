import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Row018Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Row018Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0098_rows_018 (i : ℕ) (hi : i < 20) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0089 r0085 18 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0098.getD 18 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0098_row_018_000
  · subst i
    exact r0098_row_018_001
  · subst i
    exact r0098_row_018_002
  · subst i
    exact r0098_row_018_003
  · subst i
    exact r0098_row_018_004
  · subst i
    exact r0098_row_018_005
  · subst i
    exact r0098_row_018_006
  · subst i
    exact r0098_row_018_007
  · subst i
    exact r0098_row_018_008
  · subst i
    exact r0098_row_018_009
  · subst i
    exact r0098_row_018_010
  · subst i
    exact r0098_row_018_011
  · subst i
    exact r0098_row_018_012
  · subst i
    exact r0098_row_018_013
  · subst i
    exact r0098_row_018_014
  · subst i
    exact r0098_row_018_015
  · subst i
    exact r0098_row_018_016
  · subst i
    exact r0098_row_018_017
  · subst i
    exact r0098_row_018_018
  · subst i
    exact r0098_row_018_019
theorem r0098_coefficient_018_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0089 r0085 18) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0098.getD 18 []) :=
  r0098_from_rows X Y 18 r0098_rows_018

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
