import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P161A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P165A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P168A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P172A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P175A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P179A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P182A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P186A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P189A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P191A06
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice05A06_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P161A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P165A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P168A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P172A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P175A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P179A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P182A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P186A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P189A06 (P191A06)))))))))

theorem Slice05A06_length : Slice05A06_residual.length = 15 := by rfl

theorem Slice05A06_checked (i : Fin 15) : zeroII (Slice05A06_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice05A06_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P161A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P165A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P168A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P172A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P175A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P179A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P182A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P186A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P189A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P191A06)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice05A06_residual (fun n hn =>
    Slice05A06_checked ⟨n, by simpa only [Slice05A06_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice05A06_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
