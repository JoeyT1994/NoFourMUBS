import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P222A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P226A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P230A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P233A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P237A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P239A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P242A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P245A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P247A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P251A03
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice07A03_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P222A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P226A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P230A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P233A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P237A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P239A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P242A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P245A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P247A03 (P251A03)))))))))

theorem Slice07A03_length : Slice07A03_residual.length = 15 := by rfl

theorem Slice07A03_checked (i : Fin 15) : zeroII (Slice07A03_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice07A03_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P222A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P226A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P230A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P233A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P237A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P239A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P242A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P245A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P247A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P251A03)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice07A03_residual (fun n hn =>
    Slice07A03_checked ⟨n, by simpa only [Slice07A03_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice07A03_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
