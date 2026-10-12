import NoFourMUBs.Step2.CriticalZero.SumClearing.DenominatorPairZShift00
import NoFourMUBs.Step2.CriticalZero.SumClearing.DenominatorPairZShift01
import NoFourMUBs.Step2.CriticalZero.SumClearing.DenominatorPairZShift02
import NoFourMUBs.Step2.CriticalZero.SumClearing.DenominatorPairZShift03
import NoFourMUBs.Step2.CriticalZero.SumClearing.DenominatorPairZShift04
import NoFourMUBs.Step2.CriticalZero.SumClearing.DenominatorPairZShift05
import NoFourMUBs.Step2.CriticalZero.SumClearing.DenominatorPairZShift06
import NoFourMUBs.Step2.CriticalZero.SumClearing.DenominatorPairZShift07
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
theorem denPairZ5_shift (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y denPairZ5) =
      CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret 0 (X+Y) denPairZ5) := by
  apply congrArg (CriticalZeroSplitReduction20261003.Coefficients.eval k)
  apply CriticalZeroSumAssembly20261003.CoefficientAt.list_eq_of_getD
  · simp only [CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_length]
  · intro j hj
    have hj' : j<31 := by simpa only [CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_length,denPairZ5_length] using hj
    rw [CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_getD,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_getD]
    have hc : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 ∨ j=12 ∨ j=13 ∨ j=14 ∨ j=15 ∨ j=16 ∨ j=17 ∨ j=18 ∨ j=19 ∨ j=20 ∨ j=21 ∨ j=22 ∨ j=23 ∨ j=24 ∨ j=25 ∨ j=26 ∨ j=27 ∨ j=28 ∨ j=29 ∨ j=30 := by omega
    rcases hc with hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj
    · subst j
      exact denPairZ5_shift_coefficient_000 X Y
    · subst j
      exact denPairZ5_shift_coefficient_001 X Y
    · subst j
      exact denPairZ5_shift_coefficient_002 X Y
    · subst j
      exact denPairZ5_shift_coefficient_003 X Y
    · subst j
      exact denPairZ5_shift_coefficient_004 X Y
    · subst j
      exact denPairZ5_shift_coefficient_005 X Y
    · subst j
      exact denPairZ5_shift_coefficient_006 X Y
    · subst j
      exact denPairZ5_shift_coefficient_007 X Y
    · subst j
      exact denPairZ5_shift_coefficient_008 X Y
    · subst j
      exact denPairZ5_shift_coefficient_009 X Y
    · subst j
      exact denPairZ5_shift_coefficient_010 X Y
    · subst j
      exact denPairZ5_shift_coefficient_011 X Y
    · subst j
      exact denPairZ5_shift_coefficient_012 X Y
    · subst j
      exact denPairZ5_shift_coefficient_013 X Y
    · subst j
      exact denPairZ5_shift_coefficient_014 X Y
    · subst j
      exact denPairZ5_shift_coefficient_015 X Y
    · subst j
      exact denPairZ5_shift_coefficient_016 X Y
    · subst j
      exact denPairZ5_shift_coefficient_017 X Y
    · subst j
      exact denPairZ5_shift_coefficient_018 X Y
    · subst j
      exact denPairZ5_shift_coefficient_019 X Y
    · subst j
      exact denPairZ5_shift_coefficient_020 X Y
    · subst j
      exact denPairZ5_shift_coefficient_021 X Y
    · subst j
      exact denPairZ5_shift_coefficient_022 X Y
    · subst j
      exact denPairZ5_shift_coefficient_023 X Y
    · subst j
      exact denPairZ5_shift_coefficient_024 X Y
    · subst j
      exact denPairZ5_shift_coefficient_025 X Y
    · subst j
      exact denPairZ5_shift_coefficient_026 X Y
    · subst j
      exact denPairZ5_shift_coefficient_027 X Y
    · subst j
      exact denPairZ5_shift_coefficient_028 X Y
    · subst j
      exact denPairZ5_shift_coefficient_029 X Y
    · subst j
      exact denPairZ5_shift_coefficient_030 X Y
#print axioms denPairZ5_shift

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
