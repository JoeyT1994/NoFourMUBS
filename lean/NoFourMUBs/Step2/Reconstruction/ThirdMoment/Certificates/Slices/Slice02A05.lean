import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P069A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P072A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P075A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P079A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P081A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P083A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P087A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P090A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P093A05
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice02A05_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P069A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P072A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P075A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P079A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P081A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P083A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P087A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P090A05 (P093A05))))))))

theorem Slice02A05_length : Slice02A05_residual.length = 12 := by rfl

theorem Slice02A05_checked (i : Fin 12) : zeroII (Slice02A05_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice02A05_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P069A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P072A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P075A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P079A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P081A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P083A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P087A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P090A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P093A05))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice02A05_residual (fun n hn =>
    Slice02A05_checked ⟨n, by simpa only [Slice02A05_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice02A05_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
