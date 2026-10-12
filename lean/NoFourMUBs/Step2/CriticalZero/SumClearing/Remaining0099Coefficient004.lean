import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0099Row004Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0099Row004Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0099_rows_004 (i : ℕ) (hi : i < 20) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0086 r0088 4 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0099.getD 4 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0099_row_004_000
  · subst i
    exact r0099_row_004_001
  · subst i
    exact r0099_row_004_002
  · subst i
    exact r0099_row_004_003
  · subst i
    exact r0099_row_004_004
  · subst i
    exact r0099_row_004_005
  · subst i
    exact r0099_row_004_006
  · subst i
    exact r0099_row_004_007
  · subst i
    exact r0099_row_004_008
  · subst i
    exact r0099_row_004_009
  · subst i
    exact r0099_row_004_010
  · subst i
    exact r0099_row_004_011
  · subst i
    exact r0099_row_004_012
  · subst i
    exact r0099_row_004_013
  · subst i
    exact r0099_row_004_014
  · subst i
    exact r0099_row_004_015
  · subst i
    exact r0099_row_004_016
  · subst i
    exact r0099_row_004_017
  · subst i
    exact r0099_row_004_018
  · subst i
    exact r0099_row_004_019
theorem r0099_coefficient_004_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0086 r0088 4) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0099.getD 4 []) :=
  r0099_from_rows X Y 4 r0099_rows_004

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
