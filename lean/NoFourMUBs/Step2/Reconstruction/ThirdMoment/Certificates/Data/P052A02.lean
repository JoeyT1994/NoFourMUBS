import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P034A02

set_option autoImplicit false
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
-- Exact saved-slice reuse: polynomial 52, a^2.
def P052A02 : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY :=
  CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 (P034A02.map List.tail)
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
