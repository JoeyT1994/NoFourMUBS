import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P196A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P199A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P201A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P205A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P207A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P209A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P213A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P216A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P219A10
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice06A10_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P196A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P199A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P201A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P205A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P207A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P209A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P213A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P216A10 (P219A10))))))))

theorem Slice06A10_length : Slice06A10_residual.length = 8 := by rfl

theorem Slice06A10_checked (i : Fin 8) : zeroII (Slice06A10_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice06A10_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P196A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P199A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P201A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P205A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P207A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P209A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P213A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P216A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P219A10))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice06A10_residual (fun n hn =>
    Slice06A10_checked ⟨n, by simpa only [Slice06A10_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice06A10_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
