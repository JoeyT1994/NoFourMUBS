import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P001A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P005A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P009A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P013A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P017A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P019A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P023A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P025A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P029A11
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice00A11_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P001A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P005A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P009A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P013A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P017A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P019A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P023A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P025A11 (P029A11))))))))

theorem Slice00A11_length : Slice00A11_residual.length = 6 := by rfl

theorem Slice00A11_checked (i : Fin 6) : zeroII (Slice00A11_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice00A11_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P001A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P005A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P009A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P013A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P017A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P019A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P023A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P025A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P029A11))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice00A11_residual (fun n hn =>
    Slice00A11_checked ⟨n, by simpa only [Slice00A11_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice00A11_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
