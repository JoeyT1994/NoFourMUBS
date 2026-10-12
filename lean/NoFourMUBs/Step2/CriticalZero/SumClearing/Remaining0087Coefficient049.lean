import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0087Row049Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0087Row049Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0087_rows_049 (i : ℕ) (hi : i < 21) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0086 r0085 49 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0087.getD 49 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0087_row_049_000
  · subst i
    exact r0087_row_049_001
  · subst i
    exact r0087_row_049_002
  · subst i
    exact r0087_row_049_003
  · subst i
    exact r0087_row_049_004
  · subst i
    exact r0087_row_049_005
  · subst i
    exact r0087_row_049_006
  · subst i
    exact r0087_row_049_007
  · subst i
    exact r0087_row_049_008
  · subst i
    exact r0087_row_049_009
  · subst i
    exact r0087_row_049_010
  · subst i
    exact r0087_row_049_011
  · subst i
    exact r0087_row_049_012
  · subst i
    exact r0087_row_049_013
  · subst i
    exact r0087_row_049_014
  · subst i
    exact r0087_row_049_015
  · subst i
    exact r0087_row_049_016
  · subst i
    exact r0087_row_049_017
  · subst i
    exact r0087_row_049_018
  · subst i
    exact r0087_row_049_019
  · subst i
    exact r0087_row_049_020
theorem r0087_coefficient_049_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0086 r0085 49) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0087.getD 49 []) :=
  r0087_from_rows X Y 49 r0087_rows_049

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
