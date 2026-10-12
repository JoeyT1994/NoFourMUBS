import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P069A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P072A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P075A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P079A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P081A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P083A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P087A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P090A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P093A07
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice02A07_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P069A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P072A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P075A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P079A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P081A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P083A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P087A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P090A07 (P093A07))))))))

theorem Slice02A07_length : Slice02A07_residual.length = 10 := by rfl

theorem Slice02A07_checked (i : Fin 10) : zeroII (Slice02A07_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice02A07_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P069A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P072A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P075A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P079A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P081A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P083A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P087A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P090A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P093A07))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice02A07_residual (fun n hn =>
    Slice02A07_checked ⟨n, by simpa only [Slice02A07_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice02A07_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
