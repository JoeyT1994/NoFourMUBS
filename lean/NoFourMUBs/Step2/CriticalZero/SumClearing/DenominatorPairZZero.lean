import NoFourMUBs.Step2.CriticalZero.SumClearing.DenominatorPairsData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
theorem denPairZ5_zero_eval (Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret 0 Y denPairZ5) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0025 0 Y k * NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0028 0 Y k := by
  simp only [denPairZ5,denPairZ5_part00,denPairZ5_part01,denPairZ5_part02,denPairZ5_part03,List.cons_append,List.nil_append,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  dsimp only [NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0028,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0027,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0025,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0024,NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v144,NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v062,h,plusFactor,minusFactor,thirdPlusFactor,thirdMinusFactor]
  ring
#print axioms denPairZ5_zero_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
