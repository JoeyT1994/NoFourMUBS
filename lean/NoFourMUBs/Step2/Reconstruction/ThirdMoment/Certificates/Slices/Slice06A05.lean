import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P196A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P199A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P201A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P205A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P207A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P209A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P213A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P216A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P219A05
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice06A05_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P196A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P199A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P201A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P205A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P207A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P209A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P213A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P216A05 (P219A05))))))))

theorem Slice06A05_length : Slice06A05_residual.length = 12 := by rfl

theorem Slice06A05_checked (i : Fin 12) : zeroII (Slice06A05_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice06A05_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P196A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P199A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P201A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P205A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P207A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P209A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P213A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P216A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P219A05))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice06A05_residual (fun n hn =>
    Slice06A05_checked ⟨n, by simpa only [Slice06A05_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice06A05_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
