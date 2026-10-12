import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P069A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P072A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P075A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P079A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P081A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P083A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P087A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P090A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P093A08
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice02A08_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P069A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P072A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P075A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P079A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P081A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P083A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P087A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P090A08 (P093A08))))))))

theorem Slice02A08_length : Slice02A08_residual.length = 9 := by rfl

theorem Slice02A08_checked (i : Fin 9) : zeroII (Slice02A08_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice02A08_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P069A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P072A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P075A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P079A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P081A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P083A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P087A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P090A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P093A08))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice02A08_residual (fun n hn =>
    Slice02A08_checked ⟨n, by simpa only [Slice02A08_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice02A08_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
