import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P222A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P226A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P230A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P233A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P237A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P239A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P242A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P245A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P247A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P251A02
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice07A02_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P222A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P226A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P230A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P233A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P237A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P239A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P242A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P245A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P247A02 (P251A02)))))))))

theorem Slice07A02_length : Slice07A02_residual.length = 15 := by rfl

theorem Slice07A02_checked (i : Fin 15) : zeroII (Slice07A02_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice07A02_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P222A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P226A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P230A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P233A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P237A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P239A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P242A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P245A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P247A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P251A02)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice07A02_residual (fun n hn =>
    Slice07A02_checked ⟨n, by simpa only [Slice07A02_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice07A02_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
