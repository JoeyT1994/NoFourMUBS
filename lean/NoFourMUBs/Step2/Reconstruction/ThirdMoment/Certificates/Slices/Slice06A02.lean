import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P196A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P199A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P201A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P205A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P207A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P209A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P213A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P216A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P219A02
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice06A02_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P196A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P199A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P201A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P205A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P207A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P209A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P213A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P216A02 (P219A02))))))))

theorem Slice06A02_length : Slice06A02_residual.length = 12 := by rfl

theorem Slice06A02_checked (i : Fin 12) : zeroII (Slice06A02_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice06A02_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P196A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P199A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P201A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P205A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P207A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P209A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P213A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P216A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P219A02))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice06A02_residual (fun n hn =>
    Slice06A02_checked ⟨n, by simpa only [Slice06A02_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice06A02_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
