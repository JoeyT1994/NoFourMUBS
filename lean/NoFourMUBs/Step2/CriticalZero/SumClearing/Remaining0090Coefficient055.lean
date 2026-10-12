import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Row055Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Row055Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0090_rows_055 (i : ℕ) (hi : i < 19) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0089 r0088 55 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0090.getD 55 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0090_row_055_000
  · subst i
    exact r0090_row_055_001
  · subst i
    exact r0090_row_055_002
  · subst i
    exact r0090_row_055_003
  · subst i
    exact r0090_row_055_004
  · subst i
    exact r0090_row_055_005
  · subst i
    exact r0090_row_055_006
  · subst i
    exact r0090_row_055_007
  · subst i
    exact r0090_row_055_008
  · subst i
    exact r0090_row_055_009
  · subst i
    exact r0090_row_055_010
  · subst i
    exact r0090_row_055_011
  · subst i
    exact r0090_row_055_012
  · subst i
    exact r0090_row_055_013
  · subst i
    exact r0090_row_055_014
  · subst i
    exact r0090_row_055_015
  · subst i
    exact r0090_row_055_016
  · subst i
    exact r0090_row_055_017
  · subst i
    exact r0090_row_055_018
theorem r0090_coefficient_055_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0089 r0088 55) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0090.getD 55 []) :=
  r0090_from_rows X Y 55 r0090_rows_055

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
