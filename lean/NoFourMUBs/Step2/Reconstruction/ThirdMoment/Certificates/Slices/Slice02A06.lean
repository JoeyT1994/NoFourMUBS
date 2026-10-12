import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P069A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P072A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P075A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P079A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P081A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P083A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P087A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P090A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P093A06
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice02A06_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P069A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P072A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P075A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P079A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P081A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P083A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P087A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P090A06 (P093A06))))))))

theorem Slice02A06_length : Slice02A06_residual.length = 11 := by rfl

theorem Slice02A06_checked (i : Fin 11) : zeroII (Slice02A06_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice02A06_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P069A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P072A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P075A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P079A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P081A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P083A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P087A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P090A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P093A06))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice02A06_residual (fun n hn =>
    Slice02A06_checked ⟨n, by simpa only [Slice02A06_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice02A06_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
