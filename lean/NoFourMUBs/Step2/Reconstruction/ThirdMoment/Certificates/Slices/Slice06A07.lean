import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P196A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P199A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P201A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P205A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P207A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P209A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P213A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P216A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P219A07
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice06A07_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P196A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P199A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P201A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P205A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P207A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P209A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P213A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P216A07 (P219A07))))))))

theorem Slice06A07_length : Slice06A07_residual.length = 11 := by rfl

theorem Slice06A07_checked (i : Fin 11) : zeroII (Slice06A07_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice06A07_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P196A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P199A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P201A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P205A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P207A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P209A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P213A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P216A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P219A07))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice06A07_residual (fun n hn =>
    Slice06A07_checked ⟨n, by simpa only [Slice06A07_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice06A07_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
