import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Row054Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Row054Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0095_rows_054 (i : ℕ) (hi : i < 26) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0094 r0093 54 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0095.getD 54 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 ∨ i = 21 ∨ i = 22 ∨ i = 23 ∨ i = 24 ∨ i = 25 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0095_row_054_000
  · subst i
    exact r0095_row_054_001
  · subst i
    exact r0095_row_054_002
  · subst i
    exact r0095_row_054_003
  · subst i
    exact r0095_row_054_004
  · subst i
    exact r0095_row_054_005
  · subst i
    exact r0095_row_054_006
  · subst i
    exact r0095_row_054_007
  · subst i
    exact r0095_row_054_008
  · subst i
    exact r0095_row_054_009
  · subst i
    exact r0095_row_054_010
  · subst i
    exact r0095_row_054_011
  · subst i
    exact r0095_row_054_012
  · subst i
    exact r0095_row_054_013
  · subst i
    exact r0095_row_054_014
  · subst i
    exact r0095_row_054_015
  · subst i
    exact r0095_row_054_016
  · subst i
    exact r0095_row_054_017
  · subst i
    exact r0095_row_054_018
  · subst i
    exact r0095_row_054_019
  · subst i
    exact r0095_row_054_020
  · subst i
    exact r0095_row_054_021
  · subst i
    exact r0095_row_054_022
  · subst i
    exact r0095_row_054_023
  · subst i
    exact r0095_row_054_024
  · subst i
    exact r0095_row_054_025
theorem r0095_coefficient_054_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0094 r0093 54) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0095.getD 54 []) :=
  r0095_from_rows X Y 54 r0095_rows_054

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
