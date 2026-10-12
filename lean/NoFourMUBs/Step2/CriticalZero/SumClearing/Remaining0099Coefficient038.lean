import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0099Row038Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0099Row038Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0099_rows_038 (i : ℕ) (hi : i < 20) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0086 r0088 38 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0099.getD 38 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0099_row_038_000
  · subst i
    exact r0099_row_038_001
  · subst i
    exact r0099_row_038_002
  · subst i
    exact r0099_row_038_003
  · subst i
    exact r0099_row_038_004
  · subst i
    exact r0099_row_038_005
  · subst i
    exact r0099_row_038_006
  · subst i
    exact r0099_row_038_007
  · subst i
    exact r0099_row_038_008
  · subst i
    exact r0099_row_038_009
  · subst i
    exact r0099_row_038_010
  · subst i
    exact r0099_row_038_011
  · subst i
    exact r0099_row_038_012
  · subst i
    exact r0099_row_038_013
  · subst i
    exact r0099_row_038_014
  · subst i
    exact r0099_row_038_015
  · subst i
    exact r0099_row_038_016
  · subst i
    exact r0099_row_038_017
  · subst i
    exact r0099_row_038_018
  · subst i
    exact r0099_row_038_019
theorem r0099_coefficient_038_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0086 r0088 38) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0099.getD 38 []) :=
  r0099_from_rows X Y 38 r0099_rows_038

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
