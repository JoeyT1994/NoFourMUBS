import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0087Row039Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0087Row039Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0087_rows_039 (i : ℕ) (hi : i < 21) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0086 r0085 39 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0087.getD 39 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0087_row_039_000
  · subst i
    exact r0087_row_039_001
  · subst i
    exact r0087_row_039_002
  · subst i
    exact r0087_row_039_003
  · subst i
    exact r0087_row_039_004
  · subst i
    exact r0087_row_039_005
  · subst i
    exact r0087_row_039_006
  · subst i
    exact r0087_row_039_007
  · subst i
    exact r0087_row_039_008
  · subst i
    exact r0087_row_039_009
  · subst i
    exact r0087_row_039_010
  · subst i
    exact r0087_row_039_011
  · subst i
    exact r0087_row_039_012
  · subst i
    exact r0087_row_039_013
  · subst i
    exact r0087_row_039_014
  · subst i
    exact r0087_row_039_015
  · subst i
    exact r0087_row_039_016
  · subst i
    exact r0087_row_039_017
  · subst i
    exact r0087_row_039_018
  · subst i
    exact r0087_row_039_019
  · subst i
    exact r0087_row_039_020
theorem r0087_coefficient_039_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0086 r0085 39) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0087.getD 39 []) :=
  r0087_from_rows X Y 39 r0087_rows_039

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
