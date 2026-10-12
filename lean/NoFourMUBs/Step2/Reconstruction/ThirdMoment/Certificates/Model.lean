import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCoefficients

set_option autoImplicit false
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- Evaluate a saved b,c,d slice using the existing coefficient interpreter. -/
def sliceValue {R : Type*} [CommRing R] (b c d : R)
    (p : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY) : R :=
  Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d p)

/-- Apply the same Horner evaluator once more for the outer variable a. -/
def polynomialValue {R : Type*} [CommRing R] (a b c d : R)
    (p : List (List CriticalZeroSumAssembly20261003.DenseCoefficients.XY)) : R :=
  Coefficients.eval a (p.map (sliceValue b c d))

end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
