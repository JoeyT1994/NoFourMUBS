import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P222A15
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P226A15
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P230A15
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P233A15
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P237A15
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P239A15
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P242A15
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P245A15
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P247A15
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P251A15
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice07A15_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P222A15 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P226A15 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P230A15 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P233A15 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P237A15 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P239A15 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P242A15 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P245A15 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P247A15 (P251A15)))))))))

theorem Slice07A15_length : Slice07A15_residual.length = 6 := by rfl

theorem Slice07A15_checked (i : Fin 6) : zeroII (Slice07A15_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice07A15_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P222A15) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P226A15) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P230A15) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P233A15) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P237A15) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P239A15) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P242A15) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P245A15) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P247A15) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P251A15)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice07A15_residual (fun n hn =>
    Slice07A15_checked ⟨n, by simpa only [Slice07A15_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice07A15_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
