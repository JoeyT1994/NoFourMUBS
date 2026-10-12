import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P222A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P226A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P230A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P233A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P237A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P239A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P242A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P245A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P247A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P251A00
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice07A00_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P222A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P226A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P230A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P233A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P237A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P239A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P242A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P245A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P247A00 (P251A00)))))))))

theorem Slice07A00_length : Slice07A00_residual.length = 15 := by rfl

theorem Slice07A00_checked (i : Fin 15) : zeroII (Slice07A00_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice07A00_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P222A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P226A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P230A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P233A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P237A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P239A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P242A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P245A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P247A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P251A00)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice07A00_residual (fun n hn =>
    Slice07A00_checked ⟨n, by simpa only [Slice07A00_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice07A00_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
