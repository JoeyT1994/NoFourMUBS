import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Row080Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Row080Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0095_rows_080 (i : ℕ) (hi : i < 26) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0094 r0093 80 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0095.getD 80 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 ∨ i = 21 ∨ i = 22 ∨ i = 23 ∨ i = 24 ∨ i = 25 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0095_row_080_000
  · subst i
    exact r0095_row_080_001
  · subst i
    exact r0095_row_080_002
  · subst i
    exact r0095_row_080_003
  · subst i
    exact r0095_row_080_004
  · subst i
    exact r0095_row_080_005
  · subst i
    exact r0095_row_080_006
  · subst i
    exact r0095_row_080_007
  · subst i
    exact r0095_row_080_008
  · subst i
    exact r0095_row_080_009
  · subst i
    exact r0095_row_080_010
  · subst i
    exact r0095_row_080_011
  · subst i
    exact r0095_row_080_012
  · subst i
    exact r0095_row_080_013
  · subst i
    exact r0095_row_080_014
  · subst i
    exact r0095_row_080_015
  · subst i
    exact r0095_row_080_016
  · subst i
    exact r0095_row_080_017
  · subst i
    exact r0095_row_080_018
  · subst i
    exact r0095_row_080_019
  · subst i
    exact r0095_row_080_020
  · subst i
    exact r0095_row_080_021
  · subst i
    exact r0095_row_080_022
  · subst i
    exact r0095_row_080_023
  · subst i
    exact r0095_row_080_024
  · subst i
    exact r0095_row_080_025
theorem r0095_coefficient_080_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0094 r0093 80) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0095.getD 80 []) :=
  r0095_from_rows X Y 80 r0095_rows_080

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
