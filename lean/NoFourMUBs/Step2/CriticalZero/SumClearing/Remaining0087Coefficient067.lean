import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0087Row067Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0087Row067Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0087_rows_067 (i : ℕ) (hi : i < 21) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0086 r0085 67 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0087.getD 67 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0087_row_067_000
  · subst i
    exact r0087_row_067_001
  · subst i
    exact r0087_row_067_002
  · subst i
    exact r0087_row_067_003
  · subst i
    exact r0087_row_067_004
  · subst i
    exact r0087_row_067_005
  · subst i
    exact r0087_row_067_006
  · subst i
    exact r0087_row_067_007
  · subst i
    exact r0087_row_067_008
  · subst i
    exact r0087_row_067_009
  · subst i
    exact r0087_row_067_010
  · subst i
    exact r0087_row_067_011
  · subst i
    exact r0087_row_067_012
  · subst i
    exact r0087_row_067_013
  · subst i
    exact r0087_row_067_014
  · subst i
    exact r0087_row_067_015
  · subst i
    exact r0087_row_067_016
  · subst i
    exact r0087_row_067_017
  · subst i
    exact r0087_row_067_018
  · subst i
    exact r0087_row_067_019
  · subst i
    exact r0087_row_067_020
theorem r0087_coefficient_067_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0086 r0085 67) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0087.getD 67 []) :=
  r0087_from_rows X Y 67 r0087_rows_067

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
