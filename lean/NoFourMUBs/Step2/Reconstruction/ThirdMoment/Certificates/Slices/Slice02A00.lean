import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P069A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P072A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P075A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P079A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P081A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P083A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P087A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P090A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P093A00
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice02A00_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P069A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P072A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P075A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P079A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P081A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P083A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P087A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P090A00 (P093A00))))))))

theorem Slice02A00_length : Slice02A00_residual.length = 11 := by rfl

theorem Slice02A00_checked (i : Fin 11) : zeroII (Slice02A00_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice02A00_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P069A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P072A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P075A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P079A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P081A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P083A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P087A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P090A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P093A00))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice02A00_residual (fun n hn =>
    Slice02A00_checked ⟨n, by simpa only [Slice02A00_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice02A00_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
