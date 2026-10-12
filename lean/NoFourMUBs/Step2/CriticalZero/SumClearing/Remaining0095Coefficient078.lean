import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Row078Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Row078Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0095_rows_078 (i : ℕ) (hi : i < 26) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0094 r0093 78 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0095.getD 78 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 ∨ i = 21 ∨ i = 22 ∨ i = 23 ∨ i = 24 ∨ i = 25 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0095_row_078_000
  · subst i
    exact r0095_row_078_001
  · subst i
    exact r0095_row_078_002
  · subst i
    exact r0095_row_078_003
  · subst i
    exact r0095_row_078_004
  · subst i
    exact r0095_row_078_005
  · subst i
    exact r0095_row_078_006
  · subst i
    exact r0095_row_078_007
  · subst i
    exact r0095_row_078_008
  · subst i
    exact r0095_row_078_009
  · subst i
    exact r0095_row_078_010
  · subst i
    exact r0095_row_078_011
  · subst i
    exact r0095_row_078_012
  · subst i
    exact r0095_row_078_013
  · subst i
    exact r0095_row_078_014
  · subst i
    exact r0095_row_078_015
  · subst i
    exact r0095_row_078_016
  · subst i
    exact r0095_row_078_017
  · subst i
    exact r0095_row_078_018
  · subst i
    exact r0095_row_078_019
  · subst i
    exact r0095_row_078_020
  · subst i
    exact r0095_row_078_021
  · subst i
    exact r0095_row_078_022
  · subst i
    exact r0095_row_078_023
  · subst i
    exact r0095_row_078_024
  · subst i
    exact r0095_row_078_025
theorem r0095_coefficient_078_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0094 r0093 78) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0095.getD 78 []) :=
  r0095_from_rows X Y 78 r0095_rows_078

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
