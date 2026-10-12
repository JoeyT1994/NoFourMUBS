import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P222A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P226A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P230A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P233A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P237A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P239A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P242A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P245A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P247A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P251A12
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice07A12_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P222A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P226A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P230A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P233A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P237A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P239A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P242A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P245A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P247A12 (P251A12)))))))))

theorem Slice07A12_length : Slice07A12_residual.length = 10 := by rfl

theorem Slice07A12_checked (i : Fin 10) : zeroII (Slice07A12_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice07A12_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P222A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P226A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P230A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P233A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P237A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P239A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P242A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P245A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P247A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P251A12)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice07A12_residual (fun n hn =>
    Slice07A12_checked ⟨n, by simpa only [Slice07A12_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice07A12_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
