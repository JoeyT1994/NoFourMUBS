import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P222A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P226A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P230A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P233A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P237A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P239A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P242A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P245A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P247A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P251A13
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice07A13_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P222A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P226A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P230A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P233A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P237A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P239A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P242A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P245A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P247A13 (P251A13)))))))))

theorem Slice07A13_length : Slice07A13_residual.length = 9 := by rfl

theorem Slice07A13_checked (i : Fin 9) : zeroII (Slice07A13_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice07A13_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P222A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P226A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P230A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P233A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P237A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P239A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P242A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P245A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P247A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P251A13)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice07A13_residual (fun n hn =>
    Slice07A13_checked ⟨n, by simpa only [Slice07A13_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice07A13_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
