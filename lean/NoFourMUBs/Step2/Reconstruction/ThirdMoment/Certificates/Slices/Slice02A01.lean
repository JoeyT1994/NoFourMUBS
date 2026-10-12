import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P069A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P072A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P075A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P079A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P081A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P083A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P087A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P090A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P093A01
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice02A01_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P069A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P072A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P075A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P079A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P081A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P083A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P087A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P090A01 (P093A01))))))))

theorem Slice02A01_length : Slice02A01_residual.length = 12 := by rfl

theorem Slice02A01_checked (i : Fin 12) : zeroII (Slice02A01_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice02A01_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P069A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P072A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P075A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P079A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P081A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P083A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P087A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P090A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P093A01))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice02A01_residual (fun n hn =>
    Slice02A01_checked ⟨n, by simpa only [Slice02A01_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice02A01_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
