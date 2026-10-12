import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P069A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P072A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P075A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P079A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P081A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P083A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P087A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P090A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P093A09
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice02A09_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P069A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P072A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P075A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P079A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P081A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P083A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P087A09 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P090A09 (P093A09))))))))

theorem Slice02A09_length : Slice02A09_residual.length = 8 := by rfl

theorem Slice02A09_checked (i : Fin 8) : zeroII (Slice02A09_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice02A09_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P069A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P072A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P075A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P079A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P081A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P083A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P087A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P090A09) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P093A09))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice02A09_residual (fun n hn =>
    Slice02A09_checked ⟨n, by simpa only [Slice02A09_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice02A09_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
