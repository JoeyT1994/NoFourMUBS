import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P196A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P199A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P201A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P205A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P207A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P209A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P213A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P216A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P219A12
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice06A12_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P196A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P199A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P201A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P205A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P207A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P209A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P213A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P216A12 (P219A12))))))))

theorem Slice06A12_length : Slice06A12_residual.length = 5 := by rfl

theorem Slice06A12_checked (i : Fin 5) : zeroII (Slice06A12_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice06A12_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P196A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P199A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P201A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P205A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P207A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P209A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P213A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P216A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P219A12))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice06A12_residual (fun n hn =>
    Slice06A12_checked ⟨n, by simpa only [Slice06A12_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice06A12_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
