import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P161A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P165A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P168A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P172A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P175A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P179A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P182A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P186A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P189A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P191A10
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice05A10_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P161A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P165A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P168A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P172A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P175A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P179A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P182A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P186A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P189A10 (P191A10)))))))))

theorem Slice05A10_length : Slice05A10_residual.length = 12 := by rfl

theorem Slice05A10_checked (i : Fin 12) : zeroII (Slice05A10_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice05A10_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P161A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P165A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P168A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P172A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P175A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P179A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P182A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P186A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P189A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P191A10)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice05A10_residual (fun n hn =>
    Slice05A10_checked ⟨n, by simpa only [Slice05A10_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice05A10_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
