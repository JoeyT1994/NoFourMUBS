import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P222A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P226A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P230A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P233A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P237A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P239A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P242A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P245A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P247A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P251A08
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice07A08_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P222A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P226A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P230A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P233A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P237A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P239A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P242A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P245A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P247A08 (P251A08)))))))))

theorem Slice07A08_length : Slice07A08_residual.length = 14 := by rfl

theorem Slice07A08_checked (i : Fin 14) : zeroII (Slice07A08_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice07A08_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P222A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P226A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P230A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P233A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P237A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P239A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P242A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P245A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P247A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P251A08)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice07A08_residual (fun n hn =>
    Slice07A08_checked ⟨n, by simpa only [Slice07A08_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice07A08_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
