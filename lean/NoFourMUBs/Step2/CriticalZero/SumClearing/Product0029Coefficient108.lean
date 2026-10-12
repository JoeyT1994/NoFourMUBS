import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Row108Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Row108Batch01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Row108Batch02
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem n0029_rows_108 (i : ℕ) (hi : i<30) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow denPairZ5 n0023 108 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((n0029.getD 108 []).getD i [])))=true := by
  have hc : i=0 ∨ i=1 ∨ i=2 ∨ i=3 ∨ i=4 ∨ i=5 ∨ i=6 ∨ i=7 ∨ i=8 ∨ i=9 ∨ i=10 ∨ i=11 ∨ i=12 ∨ i=13 ∨ i=14 ∨ i=15 ∨ i=16 ∨ i=17 ∨ i=18 ∨ i=19 ∨ i=20 ∨ i=21 ∨ i=22 ∨ i=23 ∨ i=24 ∨ i=25 ∨ i=26 ∨ i=27 ∨ i=28 ∨ i=29 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact n0029_row_108_000
  · subst i
    exact n0029_row_108_001
  · subst i
    exact n0029_row_108_002
  · subst i
    exact n0029_row_108_003
  · subst i
    exact n0029_row_108_004
  · subst i
    exact n0029_row_108_005
  · subst i
    exact n0029_row_108_006
  · subst i
    exact n0029_row_108_007
  · subst i
    exact n0029_row_108_008
  · subst i
    exact n0029_row_108_009
  · subst i
    exact n0029_row_108_010
  · subst i
    exact n0029_row_108_011
  · subst i
    exact n0029_row_108_012
  · subst i
    exact n0029_row_108_013
  · subst i
    exact n0029_row_108_014
  · subst i
    exact n0029_row_108_015
  · subst i
    exact n0029_row_108_016
  · subst i
    exact n0029_row_108_017
  · subst i
    exact n0029_row_108_018
  · subst i
    exact n0029_row_108_019
  · subst i
    exact n0029_row_108_020
  · subst i
    exact n0029_row_108_021
  · subst i
    exact n0029_row_108_022
  · subst i
    exact n0029_row_108_023
  · subst i
    exact n0029_row_108_024
  · subst i
    exact n0029_row_108_025
  · subst i
    exact n0029_row_108_026
  · subst i
    exact n0029_row_108_027
  · subst i
    exact n0029_row_108_028
  · subst i
    exact n0029_row_108_029
theorem n0029_coefficient_108_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt denPairZ5 n0023 108) =
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (n0029.getD 108 []) :=
  n0029_eval_from_rows X Y 108 n0029_rows_108
#print axioms n0029_coefficient_108_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
