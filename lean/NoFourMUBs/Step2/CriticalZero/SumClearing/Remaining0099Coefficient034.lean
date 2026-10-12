import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0099Row034Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0099Row034Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0099_rows_034 (i : ℕ) (hi : i < 20) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0086 r0088 34 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0099.getD 34 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0099_row_034_000
  · subst i
    exact r0099_row_034_001
  · subst i
    exact r0099_row_034_002
  · subst i
    exact r0099_row_034_003
  · subst i
    exact r0099_row_034_004
  · subst i
    exact r0099_row_034_005
  · subst i
    exact r0099_row_034_006
  · subst i
    exact r0099_row_034_007
  · subst i
    exact r0099_row_034_008
  · subst i
    exact r0099_row_034_009
  · subst i
    exact r0099_row_034_010
  · subst i
    exact r0099_row_034_011
  · subst i
    exact r0099_row_034_012
  · subst i
    exact r0099_row_034_013
  · subst i
    exact r0099_row_034_014
  · subst i
    exact r0099_row_034_015
  · subst i
    exact r0099_row_034_016
  · subst i
    exact r0099_row_034_017
  · subst i
    exact r0099_row_034_018
  · subst i
    exact r0099_row_034_019
theorem r0099_coefficient_034_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0086 r0088 34) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0099.getD 34 []) :=
  r0099_from_rows X Y 34 r0099_rows_034

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
