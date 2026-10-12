import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P222A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P226A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P230A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P233A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P237A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P239A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P242A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P245A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P247A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P251A05
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice07A05_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P222A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P226A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P230A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P233A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P237A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P239A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P242A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P245A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P247A05 (P251A05)))))))))

theorem Slice07A05_length : Slice07A05_residual.length = 15 := by rfl

theorem Slice07A05_checked (i : Fin 15) : zeroII (Slice07A05_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice07A05_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P222A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P226A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P230A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P233A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P237A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P239A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P242A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P245A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P247A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P251A05)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice07A05_residual (fun n hn =>
    Slice07A05_checked ⟨n, by simpa only [Slice07A05_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice07A05_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
