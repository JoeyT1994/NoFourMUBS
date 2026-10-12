import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P196A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P199A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P201A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P205A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P207A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P209A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P213A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P216A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P219A00
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice06A00_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P196A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P199A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P201A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P205A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P207A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P209A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P213A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P216A00 (P219A00))))))))

theorem Slice06A00_length : Slice06A00_residual.length = 11 := by rfl

theorem Slice06A00_checked (i : Fin 11) : zeroII (Slice06A00_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice06A00_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P196A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P199A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P201A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P205A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P207A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P209A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P213A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P216A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P219A00))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice06A00_residual (fun n hn =>
    Slice06A00_checked ⟨n, by simpa only [Slice06A00_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice06A00_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
