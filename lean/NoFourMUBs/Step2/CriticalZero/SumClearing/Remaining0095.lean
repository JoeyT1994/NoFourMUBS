import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient040
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient042
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient038
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient044
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient036
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient046
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient034
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient048
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient032
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient050
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient030
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient052
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient028
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient054
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient026
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient056
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient024
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient058
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient022
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient060
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient020
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient062
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient018
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient064
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient016
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient066
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient014
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient068
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient012
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient070
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient010
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient072
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient008
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient074
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient006
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient076
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient004
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient078
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient002
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient080
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Coefficient082
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Whole00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Whole01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Whole02
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0095Whole03
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0095_coefficients_eval (X Y : ℂ) (n : ℕ) (hn : n < r0095.length) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0094 r0093 n) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0095.getD n []) := by
  rw [r0095_length] at hn
  have hc : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 ∨ n = 10 ∨ n = 11 ∨ n = 12 ∨ n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨ n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 ∨ n = 22 ∨ n = 23 ∨ n = 24 ∨ n = 25 ∨ n = 26 ∨ n = 27 ∨ n = 28 ∨ n = 29 ∨ n = 30 ∨ n = 31 ∨ n = 32 ∨ n = 33 ∨ n = 34 ∨ n = 35 ∨ n = 36 ∨ n = 37 ∨ n = 38 ∨ n = 39 ∨ n = 40 ∨ n = 41 ∨ n = 42 ∨ n = 43 ∨ n = 44 ∨ n = 45 ∨ n = 46 ∨ n = 47 ∨ n = 48 ∨ n = 49 ∨ n = 50 ∨ n = 51 ∨ n = 52 ∨ n = 53 ∨ n = 54 ∨ n = 55 ∨ n = 56 ∨ n = 57 ∨ n = 58 ∨ n = 59 ∨ n = 60 ∨ n = 61 ∨ n = 62 ∨ n = 63 ∨ n = 64 ∨ n = 65 ∨ n = 66 ∨ n = 67 ∨ n = 68 ∨ n = 69 ∨ n = 70 ∨ n = 71 ∨ n = 72 ∨ n = 73 ∨ n = 74 ∨ n = 75 ∨ n = 76 ∨ n = 77 ∨ n = 78 ∨ n = 79 ∨ n = 80 ∨ n = 81 ∨ n = 82 := by omega
  rcases hc with hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn
  · subst n
    exact r0095_from_whole X Y 0 r0095_whole_000
  · subst n
    exact r0095_from_whole X Y 1 r0095_whole_001
  · subst n
    exact r0095_coefficient_002_eval X Y
  · subst n
    exact r0095_from_whole X Y 3 r0095_whole_003
  · subst n
    exact r0095_coefficient_004_eval X Y
  · subst n
    exact r0095_from_whole X Y 5 r0095_whole_005
  · subst n
    exact r0095_coefficient_006_eval X Y
  · subst n
    exact r0095_from_whole X Y 7 r0095_whole_007
  · subst n
    exact r0095_coefficient_008_eval X Y
  · subst n
    exact r0095_from_whole X Y 9 r0095_whole_009
  · subst n
    exact r0095_coefficient_010_eval X Y
  · subst n
    exact r0095_from_whole X Y 11 r0095_whole_011
  · subst n
    exact r0095_coefficient_012_eval X Y
  · subst n
    exact r0095_from_whole X Y 13 r0095_whole_013
  · subst n
    exact r0095_coefficient_014_eval X Y
  · subst n
    exact r0095_from_whole X Y 15 r0095_whole_015
  · subst n
    exact r0095_coefficient_016_eval X Y
  · subst n
    exact r0095_from_whole X Y 17 r0095_whole_017
  · subst n
    exact r0095_coefficient_018_eval X Y
  · subst n
    exact r0095_from_whole X Y 19 r0095_whole_019
  · subst n
    exact r0095_coefficient_020_eval X Y
  · subst n
    exact r0095_from_whole X Y 21 r0095_whole_021
  · subst n
    exact r0095_coefficient_022_eval X Y
  · subst n
    exact r0095_from_whole X Y 23 r0095_whole_023
  · subst n
    exact r0095_coefficient_024_eval X Y
  · subst n
    exact r0095_from_whole X Y 25 r0095_whole_025
  · subst n
    exact r0095_coefficient_026_eval X Y
  · subst n
    exact r0095_from_whole X Y 27 r0095_whole_027
  · subst n
    exact r0095_coefficient_028_eval X Y
  · subst n
    exact r0095_from_whole X Y 29 r0095_whole_029
  · subst n
    exact r0095_coefficient_030_eval X Y
  · subst n
    exact r0095_from_whole X Y 31 r0095_whole_031
  · subst n
    exact r0095_coefficient_032_eval X Y
  · subst n
    exact r0095_from_whole X Y 33 r0095_whole_033
  · subst n
    exact r0095_coefficient_034_eval X Y
  · subst n
    exact r0095_from_whole X Y 35 r0095_whole_035
  · subst n
    exact r0095_coefficient_036_eval X Y
  · subst n
    exact r0095_from_whole X Y 37 r0095_whole_037
  · subst n
    exact r0095_coefficient_038_eval X Y
  · subst n
    exact r0095_from_whole X Y 39 r0095_whole_039
  · subst n
    exact r0095_coefficient_040_eval X Y
  · subst n
    exact r0095_from_whole X Y 41 r0095_whole_041
  · subst n
    exact r0095_coefficient_042_eval X Y
  · subst n
    exact r0095_from_whole X Y 43 r0095_whole_043
  · subst n
    exact r0095_coefficient_044_eval X Y
  · subst n
    exact r0095_from_whole X Y 45 r0095_whole_045
  · subst n
    exact r0095_coefficient_046_eval X Y
  · subst n
    exact r0095_from_whole X Y 47 r0095_whole_047
  · subst n
    exact r0095_coefficient_048_eval X Y
  · subst n
    exact r0095_from_whole X Y 49 r0095_whole_049
  · subst n
    exact r0095_coefficient_050_eval X Y
  · subst n
    exact r0095_from_whole X Y 51 r0095_whole_051
  · subst n
    exact r0095_coefficient_052_eval X Y
  · subst n
    exact r0095_from_whole X Y 53 r0095_whole_053
  · subst n
    exact r0095_coefficient_054_eval X Y
  · subst n
    exact r0095_from_whole X Y 55 r0095_whole_055
  · subst n
    exact r0095_coefficient_056_eval X Y
  · subst n
    exact r0095_from_whole X Y 57 r0095_whole_057
  · subst n
    exact r0095_coefficient_058_eval X Y
  · subst n
    exact r0095_from_whole X Y 59 r0095_whole_059
  · subst n
    exact r0095_coefficient_060_eval X Y
  · subst n
    exact r0095_from_whole X Y 61 r0095_whole_061
  · subst n
    exact r0095_coefficient_062_eval X Y
  · subst n
    exact r0095_from_whole X Y 63 r0095_whole_063
  · subst n
    exact r0095_coefficient_064_eval X Y
  · subst n
    exact r0095_from_whole X Y 65 r0095_whole_065
  · subst n
    exact r0095_coefficient_066_eval X Y
  · subst n
    exact r0095_from_whole X Y 67 r0095_whole_067
  · subst n
    exact r0095_coefficient_068_eval X Y
  · subst n
    exact r0095_from_whole X Y 69 r0095_whole_069
  · subst n
    exact r0095_coefficient_070_eval X Y
  · subst n
    exact r0095_from_whole X Y 71 r0095_whole_071
  · subst n
    exact r0095_coefficient_072_eval X Y
  · subst n
    exact r0095_from_whole X Y 73 r0095_whole_073
  · subst n
    exact r0095_coefficient_074_eval X Y
  · subst n
    exact r0095_from_whole X Y 75 r0095_whole_075
  · subst n
    exact r0095_coefficient_076_eval X Y
  · subst n
    exact r0095_from_whole X Y 77 r0095_whole_077
  · subst n
    exact r0095_coefficient_078_eval X Y
  · subst n
    exact r0095_from_whole X Y 79 r0095_whole_079
  · subst n
    exact r0095_coefficient_080_eval X Y
  · subst n
    exact r0095_from_whole X Y 81 r0095_whole_081
  · subst n
    exact r0095_coefficient_082_eval X Y
theorem r0095_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0095) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0095 X Y k := by
  have checked := product_eval_eq_of_coefficients X Y k r0094 r0093 r0095
    r0095_product_length (r0095_coefficients_eval X Y)
  simpa only [NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0095,r0094_eval,r0093_eval,mul_comm] using checked

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
