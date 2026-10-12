import NoFourMUBs.Reuse.Archive.CriticalZeroSumRowCertificate

set_option autoImplicit false
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages

/-- Compose existing coefficient soundness before substituting large arrays. -/
theorem product_eval_eq_of_coefficients {R : Type*} [CommRing R]
    (X Y k : R) (as bs cs : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY)
    (hl : (CriticalZeroSumAssembly20261003.DenseCoefficients.mul as bs).length=cs.length)
    (hc : ∀ n : ℕ, n<cs.length →
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt as bs n) =
        CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (cs.getD n [])) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y cs) =
      CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y as) *
        CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y bs) := by
  have hI : CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y (CriticalZeroSumAssembly20261003.DenseCoefficients.mul as bs) =
      CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y cs := by
    apply CriticalZeroSumAssembly20261003.CoefficientAt.list_eq_of_getD
    · simpa only [CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_length] using hl
    · intro n hn
      have hn' : n<cs.length := by
        simpa only [CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_length,hl] using hn
      rw [CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,← CriticalZeroSumAssembly20261003.CoefficientAt.eval_mulAt,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_getD]
      exact hc n hn'
  have he := congrArg (CriticalZeroSplitReduction20261003.Coefficients.eval k) hI
  rw [CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  exact he.symm

#print axioms product_eval_eq_of_coefficients
end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
