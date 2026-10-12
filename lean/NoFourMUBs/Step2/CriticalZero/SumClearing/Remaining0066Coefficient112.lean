import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0066Row112Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0066Row112Batch01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0066Row112Batch02
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0066_rows_112 (i : ℕ) (hi : i < 40) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0065 r0064 112 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0066.getD 112 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 ∨ i = 21 ∨ i = 22 ∨ i = 23 ∨ i = 24 ∨ i = 25 ∨ i = 26 ∨ i = 27 ∨ i = 28 ∨ i = 29 ∨ i = 30 ∨ i = 31 ∨ i = 32 ∨ i = 33 ∨ i = 34 ∨ i = 35 ∨ i = 36 ∨ i = 37 ∨ i = 38 ∨ i = 39 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0066_row_112_000
  · subst i
    exact r0066_row_112_001
  · subst i
    exact r0066_row_112_002
  · subst i
    exact r0066_row_112_003
  · subst i
    exact r0066_row_112_004
  · subst i
    exact r0066_row_112_005
  · subst i
    exact r0066_row_112_006
  · subst i
    exact r0066_row_112_007
  · subst i
    exact r0066_row_112_008
  · subst i
    exact r0066_row_112_009
  · subst i
    exact r0066_row_112_010
  · subst i
    exact r0066_row_112_011
  · subst i
    exact r0066_row_112_012
  · subst i
    exact r0066_row_112_013
  · subst i
    exact r0066_row_112_014
  · subst i
    exact r0066_row_112_015
  · subst i
    exact r0066_row_112_016
  · subst i
    exact r0066_row_112_017
  · subst i
    exact r0066_row_112_018
  · subst i
    exact r0066_row_112_019
  · subst i
    exact r0066_row_112_020
  · subst i
    exact r0066_row_112_021
  · subst i
    exact r0066_row_112_022
  · subst i
    exact r0066_row_112_023
  · subst i
    exact r0066_row_112_024
  · subst i
    exact r0066_row_112_025
  · subst i
    exact r0066_row_112_026
  · subst i
    exact r0066_row_112_027
  · subst i
    exact r0066_row_112_028
  · subst i
    exact r0066_row_112_029
  · subst i
    exact r0066_row_112_030
  · subst i
    exact r0066_row_112_031
  · subst i
    exact r0066_row_112_032
  · subst i
    exact r0066_row_112_033
  · subst i
    exact r0066_row_112_034
  · subst i
    exact r0066_row_112_035
  · subst i
    exact r0066_row_112_036
  · subst i
    exact r0066_row_112_037
  · subst i
    exact r0066_row_112_038
  · subst i
    exact r0066_row_112_039
theorem r0066_coefficient_112_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0065 r0064 112) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0066.getD 112 []) :=
  r0066_from_rows X Y 112 r0066_rows_112

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
