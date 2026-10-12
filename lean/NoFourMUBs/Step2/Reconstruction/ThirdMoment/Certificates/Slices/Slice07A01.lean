import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P222A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P226A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P230A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P233A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P237A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P239A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P242A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P245A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P247A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P251A01
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice07A01_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P222A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P226A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P230A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P233A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P237A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P239A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P242A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P245A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P247A01 (P251A01)))))))))

theorem Slice07A01_length : Slice07A01_residual.length = 15 := by rfl

theorem Slice07A01_checked (i : Fin 15) : zeroII (Slice07A01_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice07A01_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P222A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P226A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P230A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P233A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P237A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P239A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P242A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P245A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P247A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P251A01)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice07A01_residual (fun n hn =>
    Slice07A01_checked ⟨n, by simpa only [Slice07A01_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice07A01_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
