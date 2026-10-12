import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P161A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P165A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P168A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P172A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P175A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P179A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P182A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P186A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P189A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P191A02
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice05A02_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P161A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P165A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P168A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P172A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P175A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P179A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P182A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P186A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P189A02 (P191A02)))))))))

theorem Slice05A02_length : Slice05A02_residual.length = 16 := by rfl

theorem Slice05A02_checked (i : Fin 16) : zeroII (Slice05A02_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice05A02_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P161A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P165A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P168A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P172A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P175A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P179A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P182A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P186A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P189A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P191A02)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice05A02_residual (fun n hn =>
    Slice05A02_checked ⟨n, by simpa only [Slice05A02_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice05A02_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
