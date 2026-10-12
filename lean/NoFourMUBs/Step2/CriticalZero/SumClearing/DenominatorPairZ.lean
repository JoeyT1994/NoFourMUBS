import NoFourMUBs.Step2.CriticalZero.SumClearing.DenominatorPairZZero
import NoFourMUBs.Step2.CriticalZero.SumClearing.DenominatorPairZShift
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
theorem denPairZ5_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y denPairZ5) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0025 X Y k * NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0028 X Y k := by
  have hp : NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0024 0 (X+Y) k=NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0024 X Y k := by
    dsimp only [NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0028,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0027,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0025,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0024,NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v144,NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v062,h,plusFactor,minusFactor,thirdPlusFactor,thirdMinusFactor]
    ring
  have hm : NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0027 0 (X+Y) k=NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0027 X Y k := by
    dsimp only [NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0028,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0027,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0025,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0024,NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v144,NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v062,h,plusFactor,minusFactor,thirdPlusFactor,thirdMinusFactor]
    ring
  rw [denPairZ5_shift,denPairZ5_zero_eval]
  simp only [NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0025,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0028,hp,hm]
#print axioms denPairZ5_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
