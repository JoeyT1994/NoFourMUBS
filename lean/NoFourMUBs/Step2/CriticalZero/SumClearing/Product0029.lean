import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient058
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient056
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient060
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient054
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient062
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient052
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient064
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient050
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient066
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient048
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient068
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient046
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient070
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient044
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient072
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient042
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient074
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient040
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient076
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient038
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient078
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient036
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient080
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient034
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient082
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient032
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient084
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient030
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient086
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient028
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient088
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient026
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient090
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient024
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient092
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient022
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient094
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient020
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient096
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient018
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient098
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient016
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient100
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient014
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient102
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient012
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient104
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient010
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient106
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient008
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient108
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient006
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient110
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient004
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient112
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient002
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Coefficient114
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Odd00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Odd01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Odd02
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Odd03
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem n0029_coefficients_eval (X Y : ℂ) (n : ℕ) (hn : n<n0029.length) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt denPairZ5 n0023 n) =
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (n0029.getD n []) := by
  rw [n0029_length] at hn
  have hc : n=0 ∨ n=1 ∨ n=2 ∨ n=3 ∨ n=4 ∨ n=5 ∨ n=6 ∨ n=7 ∨ n=8 ∨ n=9 ∨ n=10 ∨ n=11 ∨ n=12 ∨ n=13 ∨ n=14 ∨ n=15 ∨ n=16 ∨ n=17 ∨ n=18 ∨ n=19 ∨ n=20 ∨ n=21 ∨ n=22 ∨ n=23 ∨ n=24 ∨ n=25 ∨ n=26 ∨ n=27 ∨ n=28 ∨ n=29 ∨ n=30 ∨ n=31 ∨ n=32 ∨ n=33 ∨ n=34 ∨ n=35 ∨ n=36 ∨ n=37 ∨ n=38 ∨ n=39 ∨ n=40 ∨ n=41 ∨ n=42 ∨ n=43 ∨ n=44 ∨ n=45 ∨ n=46 ∨ n=47 ∨ n=48 ∨ n=49 ∨ n=50 ∨ n=51 ∨ n=52 ∨ n=53 ∨ n=54 ∨ n=55 ∨ n=56 ∨ n=57 ∨ n=58 ∨ n=59 ∨ n=60 ∨ n=61 ∨ n=62 ∨ n=63 ∨ n=64 ∨ n=65 ∨ n=66 ∨ n=67 ∨ n=68 ∨ n=69 ∨ n=70 ∨ n=71 ∨ n=72 ∨ n=73 ∨ n=74 ∨ n=75 ∨ n=76 ∨ n=77 ∨ n=78 ∨ n=79 ∨ n=80 ∨ n=81 ∨ n=82 ∨ n=83 ∨ n=84 ∨ n=85 ∨ n=86 ∨ n=87 ∨ n=88 ∨ n=89 ∨ n=90 ∨ n=91 ∨ n=92 ∨ n=93 ∨ n=94 ∨ n=95 ∨ n=96 ∨ n=97 ∨ n=98 ∨ n=99 ∨ n=100 ∨ n=101 ∨ n=102 ∨ n=103 ∨ n=104 ∨ n=105 ∨ n=106 ∨ n=107 ∨ n=108 ∨ n=109 ∨ n=110 ∨ n=111 ∨ n=112 ∨ n=113 ∨ n=114 := by omega
  rcases hc with hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn
  · subst n
    exact n0029_eval_from_whole X Y 0 n0029_whole_000
  · subst n
    exact n0029_eval_from_whole X Y 1 n0029_whole_001
  · subst n
    exact n0029_coefficient_002_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 3 n0029_whole_003
  · subst n
    exact n0029_coefficient_004_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 5 n0029_whole_005
  · subst n
    exact n0029_coefficient_006_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 7 n0029_whole_007
  · subst n
    exact n0029_coefficient_008_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 9 n0029_whole_009
  · subst n
    exact n0029_coefficient_010_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 11 n0029_whole_011
  · subst n
    exact n0029_coefficient_012_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 13 n0029_whole_013
  · subst n
    exact n0029_coefficient_014_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 15 n0029_whole_015
  · subst n
    exact n0029_coefficient_016_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 17 n0029_whole_017
  · subst n
    exact n0029_coefficient_018_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 19 n0029_whole_019
  · subst n
    exact n0029_coefficient_020_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 21 n0029_whole_021
  · subst n
    exact n0029_coefficient_022_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 23 n0029_whole_023
  · subst n
    exact n0029_coefficient_024_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 25 n0029_whole_025
  · subst n
    exact n0029_coefficient_026_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 27 n0029_whole_027
  · subst n
    exact n0029_coefficient_028_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 29 n0029_whole_029
  · subst n
    exact n0029_coefficient_030_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 31 n0029_whole_031
  · subst n
    exact n0029_coefficient_032_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 33 n0029_whole_033
  · subst n
    exact n0029_coefficient_034_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 35 n0029_whole_035
  · subst n
    exact n0029_coefficient_036_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 37 n0029_whole_037
  · subst n
    exact n0029_coefficient_038_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 39 n0029_whole_039
  · subst n
    exact n0029_coefficient_040_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 41 n0029_whole_041
  · subst n
    exact n0029_coefficient_042_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 43 n0029_whole_043
  · subst n
    exact n0029_coefficient_044_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 45 n0029_whole_045
  · subst n
    exact n0029_coefficient_046_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 47 n0029_whole_047
  · subst n
    exact n0029_coefficient_048_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 49 n0029_whole_049
  · subst n
    exact n0029_coefficient_050_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 51 n0029_whole_051
  · subst n
    exact n0029_coefficient_052_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 53 n0029_whole_053
  · subst n
    exact n0029_coefficient_054_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 55 n0029_whole_055
  · subst n
    exact n0029_coefficient_056_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 57 n0029_whole_057
  · subst n
    exact n0029_coefficient_058_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 59 n0029_whole_059
  · subst n
    exact n0029_coefficient_060_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 61 n0029_whole_061
  · subst n
    exact n0029_coefficient_062_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 63 n0029_whole_063
  · subst n
    exact n0029_coefficient_064_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 65 n0029_whole_065
  · subst n
    exact n0029_coefficient_066_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 67 n0029_whole_067
  · subst n
    exact n0029_coefficient_068_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 69 n0029_whole_069
  · subst n
    exact n0029_coefficient_070_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 71 n0029_whole_071
  · subst n
    exact n0029_coefficient_072_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 73 n0029_whole_073
  · subst n
    exact n0029_coefficient_074_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 75 n0029_whole_075
  · subst n
    exact n0029_coefficient_076_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 77 n0029_whole_077
  · subst n
    exact n0029_coefficient_078_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 79 n0029_whole_079
  · subst n
    exact n0029_coefficient_080_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 81 n0029_whole_081
  · subst n
    exact n0029_coefficient_082_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 83 n0029_whole_083
  · subst n
    exact n0029_coefficient_084_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 85 n0029_whole_085
  · subst n
    exact n0029_coefficient_086_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 87 n0029_whole_087
  · subst n
    exact n0029_coefficient_088_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 89 n0029_whole_089
  · subst n
    exact n0029_coefficient_090_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 91 n0029_whole_091
  · subst n
    exact n0029_coefficient_092_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 93 n0029_whole_093
  · subst n
    exact n0029_coefficient_094_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 95 n0029_whole_095
  · subst n
    exact n0029_coefficient_096_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 97 n0029_whole_097
  · subst n
    exact n0029_coefficient_098_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 99 n0029_whole_099
  · subst n
    exact n0029_coefficient_100_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 101 n0029_whole_101
  · subst n
    exact n0029_coefficient_102_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 103 n0029_whole_103
  · subst n
    exact n0029_coefficient_104_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 105 n0029_whole_105
  · subst n
    exact n0029_coefficient_106_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 107 n0029_whole_107
  · subst n
    exact n0029_coefficient_108_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 109 n0029_whole_109
  · subst n
    exact n0029_coefficient_110_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 111 n0029_whole_111
  · subst n
    exact n0029_coefficient_112_eval X Y
  · subst n
    exact n0029_eval_from_whole X Y 113 n0029_whole_113
  · subst n
    exact n0029_coefficient_114_eval X Y
theorem n0029_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y n0029) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0029 X Y k := by
  have checked := product_eval_eq_of_coefficients X Y k denPairZ5 n0023 n0029
    n0029_product_length (n0029_coefficients_eval X Y)
  rw [denPairZ5_eval,n0023_eval] at checked
  calc
    _ = (NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0025 X Y k * NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0028 X Y k) * NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0023 X Y k := checked
    _ = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0029 X Y k := by
      dsimp only [NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0029,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0026]
      ring
#print axioms n0029_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
