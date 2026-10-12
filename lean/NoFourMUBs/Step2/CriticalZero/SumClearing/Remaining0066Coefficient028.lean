import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0066Row028Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0066Row028Batch01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0066Row028Batch02
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0066_rows_028 (i : ℕ) (hi : i < 40) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0065 r0064 28 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0066.getD 28 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 ∨ i = 21 ∨ i = 22 ∨ i = 23 ∨ i = 24 ∨ i = 25 ∨ i = 26 ∨ i = 27 ∨ i = 28 ∨ i = 29 ∨ i = 30 ∨ i = 31 ∨ i = 32 ∨ i = 33 ∨ i = 34 ∨ i = 35 ∨ i = 36 ∨ i = 37 ∨ i = 38 ∨ i = 39 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0066_row_028_000
  · subst i
    exact r0066_row_028_001
  · subst i
    exact r0066_row_028_002
  · subst i
    exact r0066_row_028_003
  · subst i
    exact r0066_row_028_004
  · subst i
    exact r0066_row_028_005
  · subst i
    exact r0066_row_028_006
  · subst i
    exact r0066_row_028_007
  · subst i
    exact r0066_row_028_008
  · subst i
    exact r0066_row_028_009
  · subst i
    exact r0066_row_028_010
  · subst i
    exact r0066_row_028_011
  · subst i
    exact r0066_row_028_012
  · subst i
    exact r0066_row_028_013
  · subst i
    exact r0066_row_028_014
  · subst i
    exact r0066_row_028_015
  · subst i
    exact r0066_row_028_016
  · subst i
    exact r0066_row_028_017
  · subst i
    exact r0066_row_028_018
  · subst i
    exact r0066_row_028_019
  · subst i
    exact r0066_row_028_020
  · subst i
    exact r0066_row_028_021
  · subst i
    exact r0066_row_028_022
  · subst i
    exact r0066_row_028_023
  · subst i
    exact r0066_row_028_024
  · subst i
    exact r0066_row_028_025
  · subst i
    exact r0066_row_028_026
  · subst i
    exact r0066_row_028_027
  · subst i
    exact r0066_row_028_028
  · subst i
    exact r0066_row_028_029
  · subst i
    exact r0066_row_028_030
  · subst i
    exact r0066_row_028_031
  · subst i
    exact r0066_row_028_032
  · subst i
    exact r0066_row_028_033
  · subst i
    exact r0066_row_028_034
  · subst i
    exact r0066_row_028_035
  · subst i
    exact r0066_row_028_036
  · subst i
    exact r0066_row_028_037
  · subst i
    exact r0066_row_028_038
  · subst i
    exact r0066_row_028_039
theorem r0066_coefficient_028_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0065 r0064 28) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0066.getD 28 []) :=
  r0066_from_rows X Y 28 r0066_rows_028

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
