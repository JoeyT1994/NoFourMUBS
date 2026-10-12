import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0087Row019Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0087Row019Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0087_rows_019 (i : ℕ) (hi : i < 21) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0086 r0085 19 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0087.getD 19 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0087_row_019_000
  · subst i
    exact r0087_row_019_001
  · subst i
    exact r0087_row_019_002
  · subst i
    exact r0087_row_019_003
  · subst i
    exact r0087_row_019_004
  · subst i
    exact r0087_row_019_005
  · subst i
    exact r0087_row_019_006
  · subst i
    exact r0087_row_019_007
  · subst i
    exact r0087_row_019_008
  · subst i
    exact r0087_row_019_009
  · subst i
    exact r0087_row_019_010
  · subst i
    exact r0087_row_019_011
  · subst i
    exact r0087_row_019_012
  · subst i
    exact r0087_row_019_013
  · subst i
    exact r0087_row_019_014
  · subst i
    exact r0087_row_019_015
  · subst i
    exact r0087_row_019_016
  · subst i
    exact r0087_row_019_017
  · subst i
    exact r0087_row_019_018
  · subst i
    exact r0087_row_019_019
  · subst i
    exact r0087_row_019_020
theorem r0087_coefficient_019_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0086 r0085 19) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0087.getD 19 []) :=
  r0087_from_rows X Y 19 r0087_rows_019

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
