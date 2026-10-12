import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P001A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P005A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P009A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P013A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P017A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P019A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P023A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P025A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P029A07
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice00A07_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P001A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P005A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P009A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P013A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P017A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P019A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P023A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P025A07 (P029A07))))))))

theorem Slice00A07_length : Slice00A07_residual.length = 10 := by rfl

theorem Slice00A07_checked (i : Fin 10) : zeroII (Slice00A07_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice00A07_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P001A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P005A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P009A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P013A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P017A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P019A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P023A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P025A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P029A07))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice00A07_residual (fun n hn =>
    Slice00A07_checked ⟨n, by simpa only [Slice00A07_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice00A07_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
