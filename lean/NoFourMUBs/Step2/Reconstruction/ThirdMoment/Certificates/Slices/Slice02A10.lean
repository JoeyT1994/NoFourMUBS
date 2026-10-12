import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P069A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P072A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P075A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P079A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P081A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P083A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P087A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P090A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P093A10
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice02A10_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P069A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P072A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P075A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P079A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P081A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P083A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P087A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P090A10 (P093A10))))))))

theorem Slice02A10_length : Slice02A10_residual.length = 7 := by rfl

theorem Slice02A10_checked (i : Fin 7) : zeroII (Slice02A10_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice02A10_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P069A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P072A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P075A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P079A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P081A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P083A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P087A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P090A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P093A10))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice02A10_residual (fun n hn =>
    Slice02A10_checked ⟨n, by simpa only [Slice02A10_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice02A10_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
