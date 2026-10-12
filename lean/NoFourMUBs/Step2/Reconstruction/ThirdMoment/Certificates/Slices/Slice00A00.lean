import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P001A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P005A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P009A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P013A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P017A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P019A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P023A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P025A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P029A00
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice00A00_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P001A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P005A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P009A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P013A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P017A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P019A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P023A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P025A00 (P029A00))))))))

theorem Slice00A00_length : Slice00A00_residual.length = 12 := by rfl

theorem Slice00A00_checked (i : Fin 12) : zeroII (Slice00A00_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice00A00_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P001A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P005A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P009A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P013A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P017A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P019A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P023A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P025A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P029A00))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice00A00_residual (fun n hn =>
    Slice00A00_checked ⟨n, by simpa only [Slice00A00_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice00A00_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
