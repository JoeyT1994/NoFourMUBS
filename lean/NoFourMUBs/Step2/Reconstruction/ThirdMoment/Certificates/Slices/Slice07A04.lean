import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P222A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P226A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P230A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P233A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P237A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P239A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P242A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P245A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P247A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P251A04
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice07A04_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P222A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P226A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P230A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P233A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P237A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P239A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P242A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P245A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P247A04 (P251A04)))))))))

theorem Slice07A04_length : Slice07A04_residual.length = 15 := by rfl

theorem Slice07A04_checked (i : Fin 15) : zeroII (Slice07A04_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice07A04_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P222A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P226A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P230A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P233A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P237A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P239A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P242A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P245A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P247A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P251A04)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice07A04_residual (fun n hn =>
    Slice07A04_checked ⟨n, by simpa only [Slice07A04_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice07A04_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
