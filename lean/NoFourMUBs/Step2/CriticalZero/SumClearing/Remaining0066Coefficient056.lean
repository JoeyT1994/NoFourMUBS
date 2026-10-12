import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0066Row056Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0066Row056Batch01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0066Row056Batch02
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0066_rows_056 (i : ℕ) (hi : i < 40) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0065 r0064 56 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0066.getD 56 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 ∨ i = 21 ∨ i = 22 ∨ i = 23 ∨ i = 24 ∨ i = 25 ∨ i = 26 ∨ i = 27 ∨ i = 28 ∨ i = 29 ∨ i = 30 ∨ i = 31 ∨ i = 32 ∨ i = 33 ∨ i = 34 ∨ i = 35 ∨ i = 36 ∨ i = 37 ∨ i = 38 ∨ i = 39 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0066_row_056_000
  · subst i
    exact r0066_row_056_001
  · subst i
    exact r0066_row_056_002
  · subst i
    exact r0066_row_056_003
  · subst i
    exact r0066_row_056_004
  · subst i
    exact r0066_row_056_005
  · subst i
    exact r0066_row_056_006
  · subst i
    exact r0066_row_056_007
  · subst i
    exact r0066_row_056_008
  · subst i
    exact r0066_row_056_009
  · subst i
    exact r0066_row_056_010
  · subst i
    exact r0066_row_056_011
  · subst i
    exact r0066_row_056_012
  · subst i
    exact r0066_row_056_013
  · subst i
    exact r0066_row_056_014
  · subst i
    exact r0066_row_056_015
  · subst i
    exact r0066_row_056_016
  · subst i
    exact r0066_row_056_017
  · subst i
    exact r0066_row_056_018
  · subst i
    exact r0066_row_056_019
  · subst i
    exact r0066_row_056_020
  · subst i
    exact r0066_row_056_021
  · subst i
    exact r0066_row_056_022
  · subst i
    exact r0066_row_056_023
  · subst i
    exact r0066_row_056_024
  · subst i
    exact r0066_row_056_025
  · subst i
    exact r0066_row_056_026
  · subst i
    exact r0066_row_056_027
  · subst i
    exact r0066_row_056_028
  · subst i
    exact r0066_row_056_029
  · subst i
    exact r0066_row_056_030
  · subst i
    exact r0066_row_056_031
  · subst i
    exact r0066_row_056_032
  · subst i
    exact r0066_row_056_033
  · subst i
    exact r0066_row_056_034
  · subst i
    exact r0066_row_056_035
  · subst i
    exact r0066_row_056_036
  · subst i
    exact r0066_row_056_037
  · subst i
    exact r0066_row_056_038
  · subst i
    exact r0066_row_056_039
theorem r0066_coefficient_056_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0065 r0064 56) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0066.getD 56 []) :=
  r0066_from_rows X Y 56 r0066_rows_056

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
