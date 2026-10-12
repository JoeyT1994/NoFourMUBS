import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Row084Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Row084Batch01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Row084Batch02
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem n0029_rows_084 (i : ℕ) (hi : i<30) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow denPairZ5 n0023 84 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((n0029.getD 84 []).getD i [])))=true := by
  have hc : i=0 ∨ i=1 ∨ i=2 ∨ i=3 ∨ i=4 ∨ i=5 ∨ i=6 ∨ i=7 ∨ i=8 ∨ i=9 ∨ i=10 ∨ i=11 ∨ i=12 ∨ i=13 ∨ i=14 ∨ i=15 ∨ i=16 ∨ i=17 ∨ i=18 ∨ i=19 ∨ i=20 ∨ i=21 ∨ i=22 ∨ i=23 ∨ i=24 ∨ i=25 ∨ i=26 ∨ i=27 ∨ i=28 ∨ i=29 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact n0029_row_084_000
  · subst i
    exact n0029_row_084_001
  · subst i
    exact n0029_row_084_002
  · subst i
    exact n0029_row_084_003
  · subst i
    exact n0029_row_084_004
  · subst i
    exact n0029_row_084_005
  · subst i
    exact n0029_row_084_006
  · subst i
    exact n0029_row_084_007
  · subst i
    exact n0029_row_084_008
  · subst i
    exact n0029_row_084_009
  · subst i
    exact n0029_row_084_010
  · subst i
    exact n0029_row_084_011
  · subst i
    exact n0029_row_084_012
  · subst i
    exact n0029_row_084_013
  · subst i
    exact n0029_row_084_014
  · subst i
    exact n0029_row_084_015
  · subst i
    exact n0029_row_084_016
  · subst i
    exact n0029_row_084_017
  · subst i
    exact n0029_row_084_018
  · subst i
    exact n0029_row_084_019
  · subst i
    exact n0029_row_084_020
  · subst i
    exact n0029_row_084_021
  · subst i
    exact n0029_row_084_022
  · subst i
    exact n0029_row_084_023
  · subst i
    exact n0029_row_084_024
  · subst i
    exact n0029_row_084_025
  · subst i
    exact n0029_row_084_026
  · subst i
    exact n0029_row_084_027
  · subst i
    exact n0029_row_084_028
  · subst i
    exact n0029_row_084_029
theorem n0029_coefficient_084_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt denPairZ5 n0023 84) =
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (n0029.getD 84 []) :=
  n0029_eval_from_rows X Y 84 n0029_rows_084
#print axioms n0029_coefficient_084_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
