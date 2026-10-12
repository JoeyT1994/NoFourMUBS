import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P196A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P199A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P201A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P205A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P207A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P209A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P213A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P216A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P219A06
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice06A06_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P196A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P199A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P201A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P205A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P207A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P209A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P213A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P216A06 (P219A06))))))))

theorem Slice06A06_length : Slice06A06_residual.length = 12 := by rfl

theorem Slice06A06_checked (i : Fin 12) : zeroII (Slice06A06_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice06A06_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P196A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P199A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P201A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P205A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P207A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P209A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P213A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P216A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P219A06))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice06A06_residual (fun n hn =>
    Slice06A06_checked ⟨n, by simpa only [Slice06A06_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice06A06_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
