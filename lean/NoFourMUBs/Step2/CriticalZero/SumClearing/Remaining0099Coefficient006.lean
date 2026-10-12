import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0099Row006Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0099Row006Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0099_rows_006 (i : ℕ) (hi : i < 20) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0086 r0088 6 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0099.getD 6 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0099_row_006_000
  · subst i
    exact r0099_row_006_001
  · subst i
    exact r0099_row_006_002
  · subst i
    exact r0099_row_006_003
  · subst i
    exact r0099_row_006_004
  · subst i
    exact r0099_row_006_005
  · subst i
    exact r0099_row_006_006
  · subst i
    exact r0099_row_006_007
  · subst i
    exact r0099_row_006_008
  · subst i
    exact r0099_row_006_009
  · subst i
    exact r0099_row_006_010
  · subst i
    exact r0099_row_006_011
  · subst i
    exact r0099_row_006_012
  · subst i
    exact r0099_row_006_013
  · subst i
    exact r0099_row_006_014
  · subst i
    exact r0099_row_006_015
  · subst i
    exact r0099_row_006_016
  · subst i
    exact r0099_row_006_017
  · subst i
    exact r0099_row_006_018
  · subst i
    exact r0099_row_006_019
theorem r0099_coefficient_006_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0086 r0088 6) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0099.getD 6 []) :=
  r0099_from_rows X Y 6 r0099_rows_006

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
