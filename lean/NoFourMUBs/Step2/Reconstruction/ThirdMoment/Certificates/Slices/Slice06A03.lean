import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P196A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P199A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P201A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P205A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P207A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P209A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P213A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P216A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P219A03
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice06A03_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P196A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P199A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P201A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P205A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P207A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P209A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P213A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P216A03 (P219A03))))))))

theorem Slice06A03_length : Slice06A03_residual.length = 12 := by rfl

theorem Slice06A03_checked (i : Fin 12) : zeroII (Slice06A03_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice06A03_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P196A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P199A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P201A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P205A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P207A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P209A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P213A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P216A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P219A03))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice06A03_residual (fun n hn =>
    Slice06A03_checked ⟨n, by simpa only [Slice06A03_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice06A03_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
