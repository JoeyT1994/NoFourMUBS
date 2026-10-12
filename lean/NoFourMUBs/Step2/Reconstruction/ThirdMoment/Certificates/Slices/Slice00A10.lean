import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P001A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P005A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P009A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P013A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P017A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P019A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P023A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P025A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P029A10
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice00A10_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P001A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P005A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P009A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P013A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P017A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P019A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P023A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P025A10 (P029A10))))))))

theorem Slice00A10_length : Slice00A10_residual.length = 7 := by rfl

theorem Slice00A10_checked (i : Fin 7) : zeroII (Slice00A10_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice00A10_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P001A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P005A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P009A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P013A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P017A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P019A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P023A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P025A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P029A10))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice00A10_residual (fun n hn =>
    Slice00A10_checked ⟨n, by simpa only [Slice00A10_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice00A10_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
