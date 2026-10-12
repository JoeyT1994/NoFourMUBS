import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0087Row063Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0087Row063Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0087_rows_063 (i : ℕ) (hi : i < 21) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0086 r0085 63 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0087.getD 63 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0087_row_063_000
  · subst i
    exact r0087_row_063_001
  · subst i
    exact r0087_row_063_002
  · subst i
    exact r0087_row_063_003
  · subst i
    exact r0087_row_063_004
  · subst i
    exact r0087_row_063_005
  · subst i
    exact r0087_row_063_006
  · subst i
    exact r0087_row_063_007
  · subst i
    exact r0087_row_063_008
  · subst i
    exact r0087_row_063_009
  · subst i
    exact r0087_row_063_010
  · subst i
    exact r0087_row_063_011
  · subst i
    exact r0087_row_063_012
  · subst i
    exact r0087_row_063_013
  · subst i
    exact r0087_row_063_014
  · subst i
    exact r0087_row_063_015
  · subst i
    exact r0087_row_063_016
  · subst i
    exact r0087_row_063_017
  · subst i
    exact r0087_row_063_018
  · subst i
    exact r0087_row_063_019
  · subst i
    exact r0087_row_063_020
theorem r0087_coefficient_063_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0086 r0085 63) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0087.getD 63 []) :=
  r0087_from_rows X Y 63 r0087_rows_063

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
