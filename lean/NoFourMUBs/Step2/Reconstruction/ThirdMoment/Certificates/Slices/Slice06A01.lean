import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P196A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P199A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P201A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P205A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P207A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P209A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P213A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P216A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P219A01
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice06A01_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P196A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P199A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P201A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P205A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P207A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P209A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P213A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P216A01 (P219A01))))))))

theorem Slice06A01_length : Slice06A01_residual.length = 12 := by rfl

theorem Slice06A01_checked (i : Fin 12) : zeroII (Slice06A01_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice06A01_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P196A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P199A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P201A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P205A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P207A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P209A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P213A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P216A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P219A01))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice06A01_residual (fun n hn =>
    Slice06A01_checked ⟨n, by simpa only [Slice06A01_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice06A01_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
