import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P196A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P199A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P201A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P205A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P207A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P209A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P213A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P216A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P219A11
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice06A11_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P196A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P199A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P201A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P205A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P207A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P209A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P213A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P216A11 (P219A11))))))))

theorem Slice06A11_length : Slice06A11_residual.length = 7 := by rfl

theorem Slice06A11_checked (i : Fin 7) : zeroII (Slice06A11_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice06A11_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P196A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P199A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P201A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P205A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P207A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P209A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P213A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P216A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P219A11))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice06A11_residual (fun n hn =>
    Slice06A11_checked ⟨n, by simpa only [Slice06A11_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice06A11_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
