import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P196A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P199A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P201A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P205A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P207A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P209A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P213A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P216A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P219A09
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice06A09_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P196A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P199A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P201A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P205A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P207A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P209A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P213A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P216A09 (P219A09))))))))

theorem Slice06A09_length : Slice06A09_residual.length = 9 := by rfl

theorem Slice06A09_checked (i : Fin 9) : zeroII (Slice06A09_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice06A09_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P196A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P199A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P201A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P205A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P207A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P209A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P213A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P216A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P219A09))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice06A09_residual (fun n hn =>
    Slice06A09_checked ⟨n, by simpa only [Slice06A09_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice06A09_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
