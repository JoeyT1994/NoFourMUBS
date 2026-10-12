import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P222A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P226A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P230A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P233A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P237A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P239A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P242A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P245A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P247A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P251A11
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice07A11_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P222A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P226A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P230A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P233A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P237A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P239A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P242A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P245A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P247A11 (P251A11)))))))))

theorem Slice07A11_length : Slice07A11_residual.length = 11 := by rfl

theorem Slice07A11_checked (i : Fin 11) : zeroII (Slice07A11_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice07A11_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P222A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P226A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P230A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P233A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P237A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P239A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P242A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P245A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P247A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P251A11)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice07A11_residual (fun n hn =>
    Slice07A11_checked ⟨n, by simpa only [Slice07A11_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice07A11_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
