import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P196A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P199A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P201A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P205A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P207A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P209A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P213A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P216A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P219A08
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice06A08_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P196A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P199A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P201A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P205A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P207A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P209A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P213A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P216A08 (P219A08))))))))

theorem Slice06A08_length : Slice06A08_residual.length = 10 := by rfl

theorem Slice06A08_checked (i : Fin 10) : zeroII (Slice06A08_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice06A08_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P196A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P199A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P201A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P205A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P207A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P209A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P213A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P216A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P219A08))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice06A08_residual (fun n hn =>
    Slice06A08_checked ⟨n, by simpa only [Slice06A08_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice06A08_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
