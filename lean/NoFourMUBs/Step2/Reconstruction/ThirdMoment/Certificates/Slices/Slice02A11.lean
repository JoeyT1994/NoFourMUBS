import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P069A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P072A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P075A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P079A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P081A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P083A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P087A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P090A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P093A11
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice02A11_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P069A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P072A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P075A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P079A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P081A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P083A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P087A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P090A11 (P093A11))))))))

theorem Slice02A11_length : Slice02A11_residual.length = 6 := by rfl

theorem Slice02A11_checked (i : Fin 6) : zeroII (Slice02A11_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice02A11_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P069A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P072A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P075A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P079A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P081A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P083A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P087A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P090A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P093A11))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice02A11_residual (fun n hn =>
    Slice02A11_checked ⟨n, by simpa only [Slice02A11_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice02A11_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
