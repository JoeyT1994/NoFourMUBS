import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P069A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P072A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P075A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P079A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P081A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P083A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P087A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P090A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P093A02
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice02A02_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P069A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P072A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P075A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P079A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P081A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P083A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P087A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P090A02 (P093A02))))))))

theorem Slice02A02_length : Slice02A02_residual.length = 12 := by rfl

theorem Slice02A02_checked (i : Fin 12) : zeroII (Slice02A02_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice02A02_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P069A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P072A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P075A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P079A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P081A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P083A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P087A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P090A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P093A02))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice02A02_residual (fun n hn =>
    Slice02A02_checked ⟨n, by simpa only [Slice02A02_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice02A02_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
