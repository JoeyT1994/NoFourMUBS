import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0087Row005Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0087Row005Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0087_rows_005 (i : ℕ) (hi : i < 21) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0086 r0085 5 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0087.getD 5 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0087_row_005_000
  · subst i
    exact r0087_row_005_001
  · subst i
    exact r0087_row_005_002
  · subst i
    exact r0087_row_005_003
  · subst i
    exact r0087_row_005_004
  · subst i
    exact r0087_row_005_005
  · subst i
    exact r0087_row_005_006
  · subst i
    exact r0087_row_005_007
  · subst i
    exact r0087_row_005_008
  · subst i
    exact r0087_row_005_009
  · subst i
    exact r0087_row_005_010
  · subst i
    exact r0087_row_005_011
  · subst i
    exact r0087_row_005_012
  · subst i
    exact r0087_row_005_013
  · subst i
    exact r0087_row_005_014
  · subst i
    exact r0087_row_005_015
  · subst i
    exact r0087_row_005_016
  · subst i
    exact r0087_row_005_017
  · subst i
    exact r0087_row_005_018
  · subst i
    exact r0087_row_005_019
  · subst i
    exact r0087_row_005_020
theorem r0087_coefficient_005_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0086 r0085 5) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0087.getD 5 []) :=
  r0087_from_rows X Y 5 r0087_rows_005

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
