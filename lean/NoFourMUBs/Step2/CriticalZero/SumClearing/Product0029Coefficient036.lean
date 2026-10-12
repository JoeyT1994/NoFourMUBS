import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Row036Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Row036Batch01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Row036Batch02
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem n0029_rows_036 (i : ℕ) (hi : i<30) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow denPairZ5 n0023 36 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((n0029.getD 36 []).getD i [])))=true := by
  have hc : i=0 ∨ i=1 ∨ i=2 ∨ i=3 ∨ i=4 ∨ i=5 ∨ i=6 ∨ i=7 ∨ i=8 ∨ i=9 ∨ i=10 ∨ i=11 ∨ i=12 ∨ i=13 ∨ i=14 ∨ i=15 ∨ i=16 ∨ i=17 ∨ i=18 ∨ i=19 ∨ i=20 ∨ i=21 ∨ i=22 ∨ i=23 ∨ i=24 ∨ i=25 ∨ i=26 ∨ i=27 ∨ i=28 ∨ i=29 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact n0029_row_036_000
  · subst i
    exact n0029_row_036_001
  · subst i
    exact n0029_row_036_002
  · subst i
    exact n0029_row_036_003
  · subst i
    exact n0029_row_036_004
  · subst i
    exact n0029_row_036_005
  · subst i
    exact n0029_row_036_006
  · subst i
    exact n0029_row_036_007
  · subst i
    exact n0029_row_036_008
  · subst i
    exact n0029_row_036_009
  · subst i
    exact n0029_row_036_010
  · subst i
    exact n0029_row_036_011
  · subst i
    exact n0029_row_036_012
  · subst i
    exact n0029_row_036_013
  · subst i
    exact n0029_row_036_014
  · subst i
    exact n0029_row_036_015
  · subst i
    exact n0029_row_036_016
  · subst i
    exact n0029_row_036_017
  · subst i
    exact n0029_row_036_018
  · subst i
    exact n0029_row_036_019
  · subst i
    exact n0029_row_036_020
  · subst i
    exact n0029_row_036_021
  · subst i
    exact n0029_row_036_022
  · subst i
    exact n0029_row_036_023
  · subst i
    exact n0029_row_036_024
  · subst i
    exact n0029_row_036_025
  · subst i
    exact n0029_row_036_026
  · subst i
    exact n0029_row_036_027
  · subst i
    exact n0029_row_036_028
  · subst i
    exact n0029_row_036_029
theorem n0029_coefficient_036_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt denPairZ5 n0023 36) =
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (n0029.getD 36 []) :=
  n0029_eval_from_rows X Y 36 n0029_rows_036
#print axioms n0029_coefficient_036_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
