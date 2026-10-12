import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P001A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P005A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P009A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P013A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P017A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P019A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P023A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P025A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P029A03
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice00A03_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P001A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P005A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P009A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P013A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P017A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P019A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P023A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P025A03 (P029A03))))))))

theorem Slice00A03_length : Slice00A03_residual.length = 12 := by rfl

theorem Slice00A03_checked (i : Fin 12) : zeroII (Slice00A03_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice00A03_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P001A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P005A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P009A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P013A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P017A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P019A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P023A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P025A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P029A03))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice00A03_residual (fun n hn =>
    Slice00A03_checked ⟨n, by simpa only [Slice00A03_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice00A03_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
