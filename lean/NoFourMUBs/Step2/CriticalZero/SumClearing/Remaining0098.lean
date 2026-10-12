import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient032
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient030
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient034
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient028
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient036
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient026
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient038
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient024
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient040
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient022
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient042
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient020
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient044
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient018
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient046
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient016
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient048
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient014
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient050
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient012
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient052
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient010
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient054
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient008
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient056
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient006
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient058
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient004
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient060
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient002
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient062
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient000
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Coefficient064
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Whole00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Whole01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0098Whole02
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0098_coefficients_eval (X Y : ℂ) (n : ℕ) (hn : n < r0098.length) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0089 r0085 n) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0098.getD n []) := by
  rw [r0098_length] at hn
  have hc : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 ∨ n = 10 ∨ n = 11 ∨ n = 12 ∨ n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨ n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 ∨ n = 22 ∨ n = 23 ∨ n = 24 ∨ n = 25 ∨ n = 26 ∨ n = 27 ∨ n = 28 ∨ n = 29 ∨ n = 30 ∨ n = 31 ∨ n = 32 ∨ n = 33 ∨ n = 34 ∨ n = 35 ∨ n = 36 ∨ n = 37 ∨ n = 38 ∨ n = 39 ∨ n = 40 ∨ n = 41 ∨ n = 42 ∨ n = 43 ∨ n = 44 ∨ n = 45 ∨ n = 46 ∨ n = 47 ∨ n = 48 ∨ n = 49 ∨ n = 50 ∨ n = 51 ∨ n = 52 ∨ n = 53 ∨ n = 54 ∨ n = 55 ∨ n = 56 ∨ n = 57 ∨ n = 58 ∨ n = 59 ∨ n = 60 ∨ n = 61 ∨ n = 62 ∨ n = 63 ∨ n = 64 := by omega
  rcases hc with hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn
  · subst n
    exact r0098_coefficient_000_eval X Y
  · subst n
    exact r0098_from_whole X Y 1 r0098_whole_001
  · subst n
    exact r0098_coefficient_002_eval X Y
  · subst n
    exact r0098_from_whole X Y 3 r0098_whole_003
  · subst n
    exact r0098_coefficient_004_eval X Y
  · subst n
    exact r0098_from_whole X Y 5 r0098_whole_005
  · subst n
    exact r0098_coefficient_006_eval X Y
  · subst n
    exact r0098_from_whole X Y 7 r0098_whole_007
  · subst n
    exact r0098_coefficient_008_eval X Y
  · subst n
    exact r0098_from_whole X Y 9 r0098_whole_009
  · subst n
    exact r0098_coefficient_010_eval X Y
  · subst n
    exact r0098_from_whole X Y 11 r0098_whole_011
  · subst n
    exact r0098_coefficient_012_eval X Y
  · subst n
    exact r0098_from_whole X Y 13 r0098_whole_013
  · subst n
    exact r0098_coefficient_014_eval X Y
  · subst n
    exact r0098_from_whole X Y 15 r0098_whole_015
  · subst n
    exact r0098_coefficient_016_eval X Y
  · subst n
    exact r0098_from_whole X Y 17 r0098_whole_017
  · subst n
    exact r0098_coefficient_018_eval X Y
  · subst n
    exact r0098_from_whole X Y 19 r0098_whole_019
  · subst n
    exact r0098_coefficient_020_eval X Y
  · subst n
    exact r0098_from_whole X Y 21 r0098_whole_021
  · subst n
    exact r0098_coefficient_022_eval X Y
  · subst n
    exact r0098_from_whole X Y 23 r0098_whole_023
  · subst n
    exact r0098_coefficient_024_eval X Y
  · subst n
    exact r0098_from_whole X Y 25 r0098_whole_025
  · subst n
    exact r0098_coefficient_026_eval X Y
  · subst n
    exact r0098_from_whole X Y 27 r0098_whole_027
  · subst n
    exact r0098_coefficient_028_eval X Y
  · subst n
    exact r0098_from_whole X Y 29 r0098_whole_029
  · subst n
    exact r0098_coefficient_030_eval X Y
  · subst n
    exact r0098_from_whole X Y 31 r0098_whole_031
  · subst n
    exact r0098_coefficient_032_eval X Y
  · subst n
    exact r0098_from_whole X Y 33 r0098_whole_033
  · subst n
    exact r0098_coefficient_034_eval X Y
  · subst n
    exact r0098_from_whole X Y 35 r0098_whole_035
  · subst n
    exact r0098_coefficient_036_eval X Y
  · subst n
    exact r0098_from_whole X Y 37 r0098_whole_037
  · subst n
    exact r0098_coefficient_038_eval X Y
  · subst n
    exact r0098_from_whole X Y 39 r0098_whole_039
  · subst n
    exact r0098_coefficient_040_eval X Y
  · subst n
    exact r0098_from_whole X Y 41 r0098_whole_041
  · subst n
    exact r0098_coefficient_042_eval X Y
  · subst n
    exact r0098_from_whole X Y 43 r0098_whole_043
  · subst n
    exact r0098_coefficient_044_eval X Y
  · subst n
    exact r0098_from_whole X Y 45 r0098_whole_045
  · subst n
    exact r0098_coefficient_046_eval X Y
  · subst n
    exact r0098_from_whole X Y 47 r0098_whole_047
  · subst n
    exact r0098_coefficient_048_eval X Y
  · subst n
    exact r0098_from_whole X Y 49 r0098_whole_049
  · subst n
    exact r0098_coefficient_050_eval X Y
  · subst n
    exact r0098_from_whole X Y 51 r0098_whole_051
  · subst n
    exact r0098_coefficient_052_eval X Y
  · subst n
    exact r0098_from_whole X Y 53 r0098_whole_053
  · subst n
    exact r0098_coefficient_054_eval X Y
  · subst n
    exact r0098_from_whole X Y 55 r0098_whole_055
  · subst n
    exact r0098_coefficient_056_eval X Y
  · subst n
    exact r0098_from_whole X Y 57 r0098_whole_057
  · subst n
    exact r0098_coefficient_058_eval X Y
  · subst n
    exact r0098_from_whole X Y 59 r0098_whole_059
  · subst n
    exact r0098_coefficient_060_eval X Y
  · subst n
    exact r0098_from_whole X Y 61 r0098_whole_061
  · subst n
    exact r0098_coefficient_062_eval X Y
  · subst n
    exact r0098_from_whole X Y 63 r0098_whole_063
  · subst n
    exact r0098_coefficient_064_eval X Y
theorem r0098_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0098) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0098 X Y k := by
  have checked := product_eval_eq_of_coefficients X Y k r0089 r0085 r0098
    r0098_product_length (r0098_coefficients_eval X Y)
  simpa only [NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0098,r0089_eval,r0085_eval,mul_comm] using checked

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
