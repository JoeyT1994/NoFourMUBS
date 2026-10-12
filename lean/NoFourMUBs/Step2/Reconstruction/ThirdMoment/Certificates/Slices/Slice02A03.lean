import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P069A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P072A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P075A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P079A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P081A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P083A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P087A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P090A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P093A03
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice02A03_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P069A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P072A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P075A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P079A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P081A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P083A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P087A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P090A03 (P093A03))))))))

theorem Slice02A03_length : Slice02A03_residual.length = 12 := by rfl

theorem Slice02A03_checked (i : Fin 12) : zeroII (Slice02A03_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice02A03_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P069A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P072A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P075A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P079A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P081A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P083A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P087A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P090A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P093A03))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice02A03_residual (fun n hn =>
    Slice02A03_checked ⟨n, by simpa only [Slice02A03_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice02A03_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
