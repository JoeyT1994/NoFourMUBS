import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0099Row032Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0099Row032Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0099_rows_032 (i : ℕ) (hi : i < 20) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0086 r0088 32 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0099.getD 32 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0099_row_032_000
  · subst i
    exact r0099_row_032_001
  · subst i
    exact r0099_row_032_002
  · subst i
    exact r0099_row_032_003
  · subst i
    exact r0099_row_032_004
  · subst i
    exact r0099_row_032_005
  · subst i
    exact r0099_row_032_006
  · subst i
    exact r0099_row_032_007
  · subst i
    exact r0099_row_032_008
  · subst i
    exact r0099_row_032_009
  · subst i
    exact r0099_row_032_010
  · subst i
    exact r0099_row_032_011
  · subst i
    exact r0099_row_032_012
  · subst i
    exact r0099_row_032_013
  · subst i
    exact r0099_row_032_014
  · subst i
    exact r0099_row_032_015
  · subst i
    exact r0099_row_032_016
  · subst i
    exact r0099_row_032_017
  · subst i
    exact r0099_row_032_018
  · subst i
    exact r0099_row_032_019
theorem r0099_coefficient_032_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0086 r0088 32) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0099.getD 32 []) :=
  r0099_from_rows X Y 32 r0099_rows_032

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
