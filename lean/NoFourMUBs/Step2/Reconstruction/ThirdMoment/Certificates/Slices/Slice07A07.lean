import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P222A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P226A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P230A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P233A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P237A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P239A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P242A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P245A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P247A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P251A07
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice07A07_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P222A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P226A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P230A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P233A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P237A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P239A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P242A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P245A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P247A07 (P251A07)))))))))

theorem Slice07A07_length : Slice07A07_residual.length = 15 := by rfl

theorem Slice07A07_checked (i : Fin 15) : zeroII (Slice07A07_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice07A07_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P222A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P226A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P230A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P233A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P237A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P239A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P242A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P245A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P247A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P251A07)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice07A07_residual (fun n hn =>
    Slice07A07_checked ⟨n, by simpa only [Slice07A07_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice07A07_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
