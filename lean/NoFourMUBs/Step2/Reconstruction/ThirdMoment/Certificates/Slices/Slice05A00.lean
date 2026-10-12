import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P161A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P165A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P168A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P172A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P175A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P179A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P182A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P186A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P189A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P191A00
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice05A00_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P161A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P165A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P168A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P172A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P175A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P179A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P182A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P186A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P189A00 (P191A00)))))))))

theorem Slice05A00_length : Slice05A00_residual.length = 16 := by rfl

theorem Slice05A00_checked (i : Fin 16) : zeroII (Slice05A00_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice05A00_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P161A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P165A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P168A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P172A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P175A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P179A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P182A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P186A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P189A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P191A00)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice05A00_residual (fun n hn =>
    Slice05A00_checked ⟨n, by simpa only [Slice05A00_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice05A00_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
