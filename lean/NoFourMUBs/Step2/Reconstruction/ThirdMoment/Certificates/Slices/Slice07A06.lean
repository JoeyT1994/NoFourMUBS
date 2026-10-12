import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P222A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P226A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P230A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P233A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P237A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P239A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P242A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P245A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P247A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P251A06
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice07A06_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P222A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P226A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P230A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P233A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P237A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P239A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P242A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P245A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P247A06 (P251A06)))))))))

theorem Slice07A06_length : Slice07A06_residual.length = 15 := by rfl

theorem Slice07A06_checked (i : Fin 15) : zeroII (Slice07A06_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice07A06_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P222A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P226A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P230A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P233A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P237A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P239A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P242A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P245A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P247A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P251A06)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice07A06_residual (fun n hn =>
    Slice07A06_checked ⟨n, by simpa only [Slice07A06_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice07A06_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
