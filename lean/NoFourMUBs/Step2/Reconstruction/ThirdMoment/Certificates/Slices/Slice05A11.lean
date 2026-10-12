import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P161A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P165A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P168A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P172A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P175A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P179A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P182A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P186A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P189A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P191A11
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice05A11_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P161A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P165A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P168A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P172A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P175A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P179A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P182A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P186A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P189A11 (P191A11)))))))))

theorem Slice05A11_length : Slice05A11_residual.length = 11 := by rfl

theorem Slice05A11_checked (i : Fin 11) : zeroII (Slice05A11_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice05A11_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P161A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P165A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P168A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P172A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P175A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P179A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P182A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P186A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P189A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P191A11)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice05A11_residual (fun n hn =>
    Slice05A11_checked ⟨n, by simpa only [Slice05A11_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice05A11_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
