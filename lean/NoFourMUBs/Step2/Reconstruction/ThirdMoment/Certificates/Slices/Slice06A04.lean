import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P196A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P199A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P201A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P205A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P207A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P209A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P213A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P216A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P219A04
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice06A04_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P196A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P199A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P201A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P205A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P207A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P209A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P213A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P216A04 (P219A04))))))))

theorem Slice06A04_length : Slice06A04_residual.length = 12 := by rfl

theorem Slice06A04_checked (i : Fin 12) : zeroII (Slice06A04_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice06A04_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P196A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P199A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P201A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P205A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P207A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P209A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P213A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P216A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P219A04))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice06A04_residual (fun n hn =>
    Slice06A04_checked ⟨n, by simpa only [Slice06A04_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice06A04_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
