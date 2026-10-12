import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Row002Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Row002Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0098_rows_002 (i : ℕ) (hi : i < 20) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0089 r0085 2 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0098.getD 2 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0098_row_002_000
  · subst i
    exact r0098_row_002_001
  · subst i
    exact r0098_row_002_002
  · subst i
    exact r0098_row_002_003
  · subst i
    exact r0098_row_002_004
  · subst i
    exact r0098_row_002_005
  · subst i
    exact r0098_row_002_006
  · subst i
    exact r0098_row_002_007
  · subst i
    exact r0098_row_002_008
  · subst i
    exact r0098_row_002_009
  · subst i
    exact r0098_row_002_010
  · subst i
    exact r0098_row_002_011
  · subst i
    exact r0098_row_002_012
  · subst i
    exact r0098_row_002_013
  · subst i
    exact r0098_row_002_014
  · subst i
    exact r0098_row_002_015
  · subst i
    exact r0098_row_002_016
  · subst i
    exact r0098_row_002_017
  · subst i
    exact r0098_row_002_018
  · subst i
    exact r0098_row_002_019
theorem r0098_coefficient_002_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0089 r0085 2) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0098.getD 2 []) :=
  r0098_from_rows X Y 2 r0098_rows_002

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
